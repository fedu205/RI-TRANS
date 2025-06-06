        ��  ��                  w  <   ��
 S P _ Q U E R Y _ C R E A T E       0         DECLARE @query_id int,
		@connect_id int, 
		@users_id int, 
		@period_begin datetime, 
		@period_end datetime,
		@object_id	int,
		@connect_period_begin datetime,
		@connect_period_end	datetime,
		@set_check bit

	
SELECT	connect_id, db_users_id, read_first_date, read_interval, read_doc_type_id
		INTO #connect
FROM	etran_connect_new 
WHERE	set_load = 1

SELECT		connect_id, max(query_id) as last_query_id
			INTO #query
FROM		etran_query_new
GROUP BY	connect_id


BEGIN TRY
	BEGIN TRANSACTION

	DECLARE cur_create_period CURSOR FOR
			SELECT * FROM 
			(	SELECT	#connect.connect_id, #connect.db_users_id, 
						--isnull(isnull(etran_query_new.oper_date,etran_query_new.period_end), read_first_date) period_begin,
						dateadd(hh, case when read_doc_type_id = 110 then -2 else 0 end, isnull(isnull(etran_query_new.oper_date,etran_query_new.period_end), read_first_date)) period_begin,
						dateadd(mi, read_interval, isnull(isnull(etran_query_new.oper_date,etran_query_new.period_end), read_first_date)) period_end
				FROM	#connect
						left join #query on #query.connect_id = #connect.connect_id
						left join etran_query_new on #query.last_query_id = etran_query_new.query_id
				WHERE	(query_xml is not null) or (etran_query_new.query_id is null)
			) x1 
			WHERE period_end < getdate()


	OPEN cur_create_period
	FETCH NEXT FROM cur_create_period INTO @connect_id, @users_id, @period_begin, @period_end

	WHILE @@FETCH_STATUS = 0 BEGIN
		SELECT	@connect_period_begin =	read_first_date, 
				@connect_period_end	  = dateadd(mi, read_interval, read_first_date)
		FROM	etran_connect_new 
		WHERE	connect_id = @connect_id

		IF @connect_period_begin > @period_begin BEGIN
			SET @period_begin = @connect_period_begin
			SET @period_end   = @connect_period_end
		END
		
		print	right('    ' + cast(@connect_id as varchar),8) + ':' +  
				convert(varchar, @period_begin, 112) + ':' + 
				convert(varchar, @period_end, 112)

		SELECT @object_id = object_id FROM etran_object_base WHERE object_physic_name = 'ETRAN_QUERY_NEW'
		INSERT INTO etran_global_id ( object_id,  users_owner_id,  date_enter, global_color)
		VALUES						(@object_id, @users_id,         GetDate(),            0)

		SET @query_id = SCOPE_IDENTITY()

		SELECT @set_check = set_check FROM etran_connect_new WHERE connect_id = @connect_id

		INSERT INTO etran_query_new	( query_id,  connect_id,  period_begin,  period_end, query_xml, query_date_load, set_load,  set_check)
		VALUES					    (@query_id, @connect_id, @period_begin, @period_end,      null,			   null,        1, @set_check)

		FETCH NEXT FROM cur_create_period INTO @connect_id, @users_id, @period_begin, @period_end
	END

	CLOSE cur_create_period
	DEALLOCATE cur_create_period

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
	IF XACT_STATE() <> 0
		ROLLBACK TRANSACTION
END CATCH

DROP TABLE #connect
DROP TABLE #query    @   ��
 S P _ Q U E R Y _ D O C S _ G E T       0         UPDATE etran_query_docs_new 
SET set_load = 0
WHERE query_docs_id in (

SELECT query_docs_id
FROM 
		(	SELECT	etran_query_docs_new.query_docs_id, error_param
			FROM	etran_query_docs_new 
					inner join etran_query_error on etran_query_docs_new.query_docs_id = etran_query_error.query_id		
			WHERE	doc_date_load is null and set_load = 1
					AND PATINDEX('%<error>%',error_param) <> 0
		) x1
GROUP BY query_docs_id
HAVING sum(case when PATINDEX('%<errorCode value="4"/>%',error_param) <> 0 then 1 else 0 end) >	10
)

SELECT	query_docs_id,
		etran_ip,
		etran_login,
		etran_password,
		db_users_name,
		db_password,
		db_name,
		db_server,
		doc_type_cod,		
		doc_type_name,
		users_group_name,
		doc_id, 
		case 	
			--when doc_type_cod =  '-2' then '<getDocOper version="1.0"><docID value="' + cast(doc_id as varchar(20)) + '"/><useECP/></getDocOper>'
			when doc_type_cod =  '-2' then '<getDocOper version="1.0"><docID value="' + cast(doc_id as varchar(20)) + '"/></getDocOper>'
			when doc_type_cod =  '-1' then '<getDocLink version="1.0"><docID value="' + cast(doc_id as varchar(20)) + '"/></getDocLink>'
			when doc_type_cod =   '1' then '<getClaim version="1.0"><claimID value="' + cast(doc_id as varchar(20)) + '"/><useMod11/></getClaim>'
			when doc_type_cod =   '2' then '<getInvoice version="1.0"><invoiceID value="' + cast(doc_id as varchar(20)) + '"/><useMod11/></getInvoice>'
			when doc_type_cod =  '27' then '<getCumulativeList version="1.0"><cumId value="' + cast(doc_id as varchar(20)) + '"/></getCumulativeList>'
			when doc_type_cod =  '29' then '<getRT version="1.0"><rtId value="' + cast(doc_id as varchar(20)) + '"/><useMod11/></getRT>'
			when doc_type_cod =  '40' then '<getRegCont version="1.0"><rcId value="' + cast(doc_id as varchar(20)) + '"/><useMod11/></getRegCont>'
			when doc_type_cod =  '41' then '<getVPU version="1.0"><vpuId value="' + cast(doc_id as varchar(20)) + '"/><useMod11/></getVPU>'
			when doc_type_cod =  '44' then '<getAct version="1.0"><actId value="' + cast(doc_id as varchar(20)) + '"/><useMod11/></getAct>'
			when doc_type_cod =  '50' then '<getOtstClaim version="1.0"><docID value="' + cast(doc_id as varchar(20)) + '"/><useMod11/></getOtstClaim>'
			when doc_type_cod =  '88' then '<getActUslug><DocId value="' + cast(doc_id as varchar(20)) + '"/></getActUslug>'
			when doc_type_cod =  '71' then '<getCSN><CSNID>' + cast(doc_id as varchar(20)) + '</CSNID><useMod11/></getCSN>'			
			else null 
		end as send_xml,
		case 				
			when doc_type_cod =  '-2' then 9
			when doc_type_cod =  '-1' then 10
			when doc_type_cod =   '1' then 2
			when doc_type_cod =   '2' then 0
			when doc_type_cod =  '27' then 3
			when doc_type_cod =  '29' then 4
			when doc_type_cod =  '40' then 5
			when doc_type_cod =  '41' then 6
			when doc_type_cod =  '44' then 7
			when doc_type_cod =  '50' then 1
			when doc_type_cod =  '88' then 8
			when doc_type_cod =  '71' then 11
			else 100
		end column_order
		INTO #query_docs_tmp
FROM	view_query_docs_new 
WHERE	doc_date_load is null
		AND isnull(set_load,1) = 1
		AND isnull(set_connect_load,1) = 1
--		AND datediff(dd, query_period_begin, getdate()) < 179
--		AND datediff(dd, isnull(query_period_begin,getdate()) , getdate()) < 179


SELECT	etran_query_error.query_id, datediff(hh, max(error_date), getdate()) as last_error_hour, count(1) cnt_error INTO #query_error
FROM	etran_query_error 
		inner join #query_docs_tmp on etran_query_error.query_id = #query_docs_tmp.query_docs_id
GROUP BY etran_query_error.query_id

SELECT	top 200 #query_docs_tmp.* 
FROM	#query_docs_tmp left join #query_error on #query_docs_tmp.query_docs_id = #query_error.query_id
WHERE	(isnull(#query_error.cnt_error,0) <= 5) OR (last_error_hour > 1)
ORDER BY column_order

DROP TABLE #query_docs_tmp
DROP TABLE #query_error  8   ��
 S P _ Q U E R Y _ G E T         0         SELECT	query_id,
		etran_ip,
		etran_login,
		etran_password,
		db_users_name,
		db_password,
		db_name,
		db_server,
		doc_type_cod,
		connect_name,  
		period_begin, 
		period_end, 
		doc_type_name,
		users_group_name,
		case 
			when doc_type_cod =   '1' then '<claimToAgreementStatus version="1.0"><fromDate value="' + period_begin_etran_format + '"/><toDate value="' + period_end_etran_format + '"/><useRecip/><useSender/><usePayer/><useAll/><useCarrier/><useCarOwner/></claimToAgreementStatus>'
			
			when doc_type_cod =   '2' and users_group_cod in     ('0', '35') then '<invoiceStatus version="1.0"><fromDate value="' + period_begin_etran_format + '"/><toDate value="' + period_end_etran_format + '"/><useSender/><usePayer/><useRecip/><useOwnerCar/><useAll/></invoiceStatus>'
			when doc_type_cod =   '2' and users_group_cod not in ('0', '35') then '<invoiceStatus version="1.0"><fromDate value="' + period_begin_etran_format + '"/><toDate value="' + period_end_etran_format + '"/><useSender/><usePayer/><useRecip/><useAll/></invoiceStatus>'

			when doc_type_cod =  '27' then '<cumulativeStatus version="1.0"><fromDate value="' + period_begin_etran_format + '"/><toDate value="' + period_end_etran_format + '"/></cumulativeStatus>'
			when doc_type_cod =  '29' then '<rtStatus version="1.0"><fromDate value="' + period_begin_etran_format + '"/><toDate value="' + period_end_etran_format + '"/></rtStatus>'
			when doc_type_cod =  '40' then '<regContStatus version="1.0"><fromDate value="' + period_begin_etran_format + '"/><toDate value="' + period_end_etran_format + '"/></regContStatus>'
			when doc_type_cod =  '41' then '<vpuStatus version="1.0"><fromDate value="' + period_begin_etran_format + '"/><toDate value="' + period_end_etran_format + '"/></vpuStatus>'
			
			when doc_type_cod =  '71' then '<CSNStatus><fromDate>' + period_begin_etran_format + '</fromDate><toDate>' + period_end_etran_format + '</toDate></CSNStatus>'


			when doc_type_cod = '100' then '<GetKkrDocs version="1.0"><StartPeriod value="' + period_begin_etran_format + '"/><FinishPeriod value="' + period_end_etran_format + '"/></GetKkrDocs>'
			when doc_type_cod = '110' then '<getKkrDebetNew version="1.0"><fromDate value="' + period_begin_etran_date + '"/><toDate value="' + period_begin_etran_date + '"/></getKkrDebetNew>'
			when doc_type_cod = '120' then '<getKkrCredit version="1.0"><fromDate value="' + period_begin_etran_format + '"/><toDate value="' + period_end_etran_format + '"/></getKkrCredit>'
			when doc_type_cod = '130' then '<getKkrTransfer version="1.0"><fromDate value="' + period_begin_etran_format + '"/><toDate value="' + period_end_etran_format + '"/></getKkrTransfer>'
			when doc_type_cod = '140' then '<getKkrSaldo version="1.0"><fromDate value="' + period_begin_etran_date + '"/><toDate value="' + period_end_etran_date + '"/></getKkrSaldo>'

			
			
			when doc_type_cod = '900' then '<GetKkrDebet version="1.0"><StartPeriod value="' + period_begin_etran_format + '"/><FinishPeriod value="' + period_end_etran_format + '"/><PayPlace value="1"/><useName/></GetKkrDebet>'

			

			when doc_type_cod =  '44' then '<actStatus version="1.0"><fromDate value="' + period_begin_etran_format + '"/><toDate value="' + period_end_etran_format + '"/><useSetoff/><useOverLoad/></actStatus>'
			when doc_type_cod =  '50' then '<otstClaimStatus  version="1.0"><fromDate value="' + period_begin_etran_format + '"/><toDate value="' + period_end_etran_format + '"/></otstClaimStatus>'
			when doc_type_cod =  '88' then '<ActUslugStatus><fromDate value="' + period_begin_etran_format + '"/><toDate value="' + period_end_etran_format + '"/></ActUslugStatus>'
			
			else null 
		end as send_xml
		INTO #query_tmp
FROM	view_query_new 
WHERE	query_xml is null 
		AND set_load = 1
		AND set_connect_load = 1

SELECT	etran_query_error.query_id, datediff(hh, max(error_date), getdate()) as last_error_hour, count(1) cnt_error INTO #query_error
FROM	etran_query_error 
		inner join #query_tmp on etran_query_error.query_id = #query_tmp.query_id
GROUP BY etran_query_error.query_id

SELECT	#query_tmp.* 
FROM	#query_tmp left join #query_error on #query_tmp.query_id = #query_error.query_id
WHERE	((isnull(#query_error.cnt_error,0) <= 5) OR (last_error_hour >= 1))

DROP TABLE #query_tmp
DROP TABLE #query_error
   4  @   ��
 S P _ Q U E R Y _ S A V E _ N E W       0         ﻿DECLARE
	@query_id	int,
	@query_xml	varchar(max)

SET @query_id	 = :query_id
SET @query_xml	 = :query_xml

SET CURSOR_CLOSE_ON_COMMIT ON
SET XACT_ABORT ON
SET NOCOUNT ON

DECLARE @doc_type_cod	varchar(10),
		@doc_type_id	int,
		@doc_type_history_id	int,
		@doc_type_link_id	int,
		@query_docs_id	int,
		@doc_id			int,
		@users_owner_id	int,
		@object_id		int,
		@oper_date		datetime,
		@oper_id		bigint

set @oper_id = null

DECLARE @xml xml
DECLARE @s varchar(4000)

SET @xml = @query_xml

CREATE TABLE #doc_list_id (doc_id int)

BEGIN TRY
	BEGIN TRANSACTION

	SELECT	@doc_type_cod = doc_type_cod,
			@doc_type_id  = doc_type_id
	FROM	dbo.view_query_new
	WHERE	query_id = @query_id

	-- SELECT * FROM [dbo].[ETRAN_DOC_TYPE] WHERE doc_type_cod = -1
	-- Связанные документы
	SELECT @doc_type_history_id	= doc_type_id FROM etran_doc_type WHERE doc_type_cod = '-1'
	-- SELECT * FROM [dbo].[ETRAN_DOC_TYPE] WHERE doc_type_cod = -2
	-- Операции над документом
	SELECT @doc_type_link_id	= doc_type_id FROM etran_doc_type WHERE doc_type_cod = '-2'


	-- SELECT * FROM [dbo].[ETRAN_DOC_TYPE] WHERE doc_type_cod in ('1', '2', '27', '29', '900', '44', '40', '41', '100', '110', '120', '130', '140')
	--1		Заявка
	--2		Накладная
	--27	Накопительная ведомость
	--29	Телеграмма
	--40	Ведомость учета контейнеров
	--41	Ведомость учета вагонов
	--44	Акт
	--88	Акт оказанных услуг
	--100	ККР
	--110	ККР (дебет new)
	--120	ККР (кредит)
	--130	ККР (движение)
	--140	ККР (сальдо)
	--900	ККР (дебет)
	IF @doc_type_cod not in ('1', '2', '27', '29', '900', '44', '40', '41', '100', '110', '120', '130', '140', '50', '88', '71') BEGIN
		SET @s = 'Документ [' + @doc_type_cod + '] не поддерживается.'
		RAISERROR(@s, 16, 1)
	END

	-- SELECT * FROM [dbo].[ETRAN_DOC_TYPE] WHERE doc_type_cod = 1
	-- Заявка
	IF @doc_type_cod = '1'
	BEGIN

		IF @xml.exist('claimToAgreementStatusReply') = 0 BEGIN
			SET @s = 'Ошибка не найден тег claimToAgreementStatusReply.' + cast(@query_xml as varchar(3000))
			RAISERROR(@s, 16, 1)
		END

		INSERT INTO #doc_list_id(doc_id)
		SELECT	ref.value ('@value','bigint')	as doc_id
		FROM	@xml.nodes('/claimToAgreementStatusReply/claim/claimID') as node(ref)

		SELECT	@oper_date = ref.value('(OperDate/@value)[1]','datetime'),
				@oper_id   = ref.value('(OperId/@value)[1]','bigint')
		FROM	@xml.nodes('/claimToAgreementStatusReply') as node(ref)
	END

	-- SELECT * FROM [dbo].[ETRAN_DOC_TYPE] WHERE doc_type_cod = 2
	-- Накладная
	IF @doc_type_cod = '2'
	BEGIN

		IF @xml.exist('invoiceStatusReply') = 0 BEGIN
			SET @s = 'Ошибка не найден тег invoiceStatusReply.' + cast(@query_xml as varchar(3000))
			RAISERROR(@s, 16, 1)
		END

		INSERT INTO #doc_list_id(doc_id)
		SELECT	ref.value ('@value','bigint')	as doc_id
		FROM	@xml.nodes('/invoiceStatusReply/invoice/invoiceID') as node(ref)

		SELECT	@oper_date = ref.value('(OperDate/@value)[1]','datetime'),
				@oper_id   = ref.value('(OperId/@value)[1]','bigint')
		FROM	@xml.nodes('/invoiceStatusReply') as node(ref)
	END

	-- SELECT * FROM [dbo].[ETRAN_DOC_TYPE] WHERE doc_type_cod = 27
	-- Накопительная ведомость
	IF @doc_type_cod = '27'
	BEGIN
		IF @xml.exist('cumulativeStatusReply') = 0 BEGIN --------------------
			SET @s = 'Ошибка не найден тег cumulativeStatusReply.' + cast(@query_xml as varchar(3000))
			RAISERROR(@s, 16, 1)
		END

		INSERT INTO #doc_list_id(doc_id)
		SELECT	ref.value ('@value','bigint')	as doc_id
		FROM	@xml.nodes('/cumulativeStatusReply/cum/cumID') as node(ref)


		SELECT	@oper_id   = ref.value('(OperId/@value)[1]','bigint')
		FROM	@xml.nodes('/cumulativeStatusReply') as node(ref)

		SELECT	@oper_date = period_end
		FROM	etran_query_new
		WHERE	query_id = @query_id
	END

	-- SELECT * FROM [dbo].[ETRAN_DOC_TYPE] WHERE doc_type_cod = 44
	-- Акт
	IF @doc_type_cod = '44'
	BEGIN
		IF @xml.exist('actStatusReply') = 0 BEGIN ------------------
			SET @s = 'Ошибка не найден тег actStatusReply.' + cast(@query_xml as varchar(3000))
			RAISERROR(@s, 16, 1)
		END

		INSERT INTO #doc_list_id(doc_id)
		SELECT	ref.value ('@value','bigint')	as doc_id
		FROM	@xml.nodes('/actStatusReply/act/actID') as node(ref)

		SELECT	@oper_id   = ref.value('(OperId/@value)[1]','bigint')
		FROM	@xml.nodes('/actStatusReply') as node(ref)

		SELECT	@oper_date = period_end
		FROM	etran_query_new
		WHERE	query_id = @query_id
	END

	-- SELECT * FROM [dbo].[ETRAN_DOC_TYPE] WHERE doc_type_cod = 50
	-- Заявка на отстой
	IF @doc_type_cod = '50'
	BEGIN
		IF @xml.exist('otstClaimStatusReply') = 0 BEGIN ------------------
			SET @s = 'Ошибка не найден тег otstClaimStatusReply.' + cast(@query_xml as varchar(3000))
			RAISERROR(@s, 16, 1)
		END

		INSERT INTO #doc_list_id(doc_id)
		SELECT	ref.value ('@value','bigint')	as doc_id
		FROM	@xml.nodes('/otstClaimStatusReply/otstClaim/otstClaimID') as node(ref)

		SELECT	@oper_date = ref.value('(OperDate/@value)[1]','datetime'),
				@oper_id   = ref.value('(OperId/@value)[1]','bigint')
		FROM	@xml.nodes('/otstClaimStatusReply') as node(ref)


		--SELECT	@oper_date = period_end
		--FROM	etran_query_new
		--WHERE	query_id = @query_id
	END

	-- SELECT * FROM [dbo].[ETRAN_DOC_TYPE] WHERE doc_type_cod = 40
	-- Ведомость учета контейнеров
	IF @doc_type_cod = '40'
	BEGIN
		IF @xml.exist('regContStatusReply') = 0 BEGIN ------------------
			SET @s = 'Ошибка не найден тег regContStatusReply.' + cast(@query_xml as varchar(3000))
			RAISERROR(@s, 16, 1)
		END

		INSERT INTO #doc_list_id(doc_id)
		SELECT	ref.value ('@value','bigint')	as doc_id
		FROM	@xml.nodes('/regContStatusReply/rc/rcID') as node(ref)


		SELECT	@oper_id   = ref.value('(OperId/@value)[1]','bigint')
		FROM	@xml.nodes('/regContStatusReply') as node(ref)

		SELECT	@oper_date = period_end
		FROM	etran_query_new
		WHERE	query_id = @query_id
	END

	-- SELECT * FROM [dbo].[ETRAN_DOC_TYPE] WHERE doc_type_cod = 41
	-- Ведомость учета вагонов
	IF @doc_type_cod = '41'
	BEGIN
		IF @xml.exist('vpuStatusReply') = 0 BEGIN ------------------
			SET @s = 'Ошибка не найден тег vpuStatusReply.' + cast(@query_xml as varchar(3000))
			RAISERROR(@s, 16, 1)
		END

		INSERT INTO #doc_list_id(doc_id)
		SELECT	ref.value ('@value','bigint')	as doc_id
		FROM	@xml.nodes('/vpuStatusReply/vpu/vpuID') as node(ref)


		SELECT	@oper_id   = ref.value('(OperId/@value)[1]','bigint')
		FROM	@xml.nodes('/vpuStatusReply') as node(ref)

		SELECT	@oper_date = period_end
		FROM	etran_query_new
		WHERE	query_id = @query_id
	END

	-- SELECT * FROM [dbo].[ETRAN_DOC_TYPE] WHERE doc_type_cod = 29
	-- Телеграмма
	IF @doc_type_cod = '29'
	BEGIN

		IF @xml.exist('rtStatusReply') = 0 BEGIN
			SET @s = 'Ошибка не найден тег rtStatusReply.' + cast(@query_xml as varchar(3000))
			RAISERROR(@s, 16, 1)
		END

		INSERT INTO #doc_list_id(doc_id)
		SELECT	ref.value ('@value','bigint')	as doc_id
		FROM	@xml.nodes('/rtStatusReply/rt/rtID') as node(ref)


		SELECT	@oper_date = ref.value('(OperDate/@value)[1]','datetime'),
				@oper_id   = ref.value('(OperId/@value)[1]','bigint')
		FROM	@xml.nodes('/rtStatusReply') as node(ref)


		SELECT	@oper_date = period_end
		FROM	etran_query_new
		WHERE	query_id = @query_id
	END


	-- SELECT * FROM [dbo].[ETRAN_DOC_TYPE] WHERE doc_type_cod = 900
	-- ККР (дебет)
	IF @doc_type_cod = '900'
	BEGIN
		DELETE #doc_list_id
		EXEC sp_doc_kkr_save @doc_xml_info = @query_xml

		SELECT	@oper_date = period_end
		FROM	etran_query_new
		WHERE	query_id = @query_id
	END


	-- SELECT * FROM [dbo].[ETRAN_DOC_TYPE] WHERE doc_type_cod = 110
	-- ККР (дебет new)
	IF @doc_type_cod = '110'
	BEGIN
		DELETE #doc_list_id
		EXEC sp_SAVE_kkr_debet @doc_xml_info = @query_xml, @query_id = @query_id

		SELECT	@oper_date = period_end
		FROM	etran_query_new
		WHERE	query_id = @query_id
	END

	-- SELECT * FROM [dbo].[ETRAN_DOC_TYPE] WHERE doc_type_cod = 120
	-- ККР (кредит)
	IF @doc_type_cod = '120'
	BEGIN
		DELETE #doc_list_id
		EXEC sp_SAVE_kkr_credit @doc_xml_info = @query_xml

		SELECT	@oper_date = period_end
		FROM	etran_query_new
		WHERE	query_id = @query_id
	END

	-- SELECT * FROM [dbo].[ETRAN_DOC_TYPE] WHERE doc_type_cod = 130
	-- ККР (движение)
	IF @doc_type_cod = '130'
	BEGIN
		DELETE #doc_list_id
		EXEC sp_SAVE_kkr_transfer @doc_xml_info = @query_xml

		SELECT	@oper_date = period_end
		FROM	etran_query_new
		WHERE	query_id = @query_id
	END

	-- SELECT * FROM [dbo].[ETRAN_DOC_TYPE] WHERE doc_type_cod = 140
	-- ККР (сальдо)
	IF @doc_type_cod = '140'
	BEGIN
		DELETE #doc_list_id
		EXEC sp_SAVE_kkr_saldo @doc_xml_info = @query_xml

		SELECT	@oper_date = period_end
		FROM	etran_query_new
		WHERE	query_id = @query_id
	END

	-- Акт оказанных услуг
	IF @doc_type_cod = '88'
	BEGIN
		IF @xml.exist('ActUslugStatusReply') = 0 BEGIN --------------------
			SET @s = 'Ошибка не найден тег ActUslugStatusReply.' + cast(@query_xml as varchar(3000))
			RAISERROR(@s, 16, 1)
		END

		INSERT INTO #doc_list_id(doc_id)
		SELECT	ref.value ('@value','bigint')	as doc_id
		FROM	@xml.nodes('/ActUslugStatusReply/actuslug/ActUslugID') as node(ref)

		SELECT	@oper_date = ref.value('(OperDate/@value)[1]','datetime'),
				@oper_id   = ref.value('(OperId/@value)[1]','bigint')
		FROM	@xml.nodes('/ActUslugStatusReply') as node(ref)


		--SELECT	@oper_date = period_end
		--FROM	etran_query_new
		--WHERE	query_id = @query_id
	END


	IF @doc_type_cod = '71'
	BEGIN
		IF @xml.exist('CSNStatusReply') = 0 BEGIN --------------------
			SET @s = 'Ошибка не найден тег CSNStatusReply.' + cast(@query_xml as varchar(3000))
			RAISERROR(@s, 16, 1)
		END

		INSERT INTO #doc_list_id(doc_id)
		SELECT	ref.value ('(DocId)[1]','bigint') as doc_id
		FROM	@xml.nodes('/CSNStatusReply/CSN') as node(ref)

		SELECT	@oper_date = ref.value('(OperDate)[1]','datetime'),
				@oper_id   = ref.value('(OperId/@value)[1]','bigint')
		FROM	@xml.nodes('/CSNStatusReply') as node(ref)

	END


	UPDATE	etran_query_new
	SET		query_xml = @query_xml,
			query_date_load = getdate(),
			oper_date = isnull(@oper_date, period_begin),
			oper_id = @oper_id
	WHERE	query_id = @query_id



	DECLARE mmpp CURSOR FOR SELECT doc_id FROM #doc_list_id
	OPEN mmpp
	FETCH NEXT FROM mmpp INTO @doc_id

	WHILE @@FETCH_STATUS = 0 BEGIN

		IF not exists(SELECT 1 FROM etran_query_docs_new WHERE query_id = @query_id AND doc_id = @doc_id)
		BEGIN

			SELECT @users_owner_id = users_id	FROM etran_users		WHERE users_name = system_user
			SELECT @object_id = object_id		FROM etran_object_base	WHERE object_physic_name = 'ETRAN_QUERY_DOCS_NEW'

			-- Документ
			INSERT INTO etran_global_id ( object_id,  users_owner_id,  date_enter, global_color)
			VALUES						(@object_id, @users_owner_id,   GetDate(),            0)

			SET @query_docs_id = SCOPE_IDENTITY()

			INSERT INTO etran_query_docs_new ( query_docs_id,  query_id,  doc_type_id,  doc_id,  doc_date_load, xml_reply_id, set_load)
			VALUES							 (@query_docs_id, @query_id, @doc_type_id, @doc_id,           null,         null,        1)


			-- SELECT * FROM [dbo].[ETRAN_DOC_TYPE] WHERE doc_type_cod = 44
			-- Акт
			IF @doc_type_cod not in ('44') BEGIN
				-- История
				INSERT INTO etran_global_id ( object_id,  users_owner_id,  date_enter, global_color)
				VALUES						(@object_id, @users_owner_id,   GetDate(),            0)

				SET @query_docs_id = SCOPE_IDENTITY()

				INSERT INTO etran_query_docs_new ( query_docs_id,  query_id,	   doc_type_id,  doc_id,  doc_date_load, xml_reply_id, set_load)
				VALUES							 (@query_docs_id, @query_id, @doc_type_link_id, @doc_id,           null,         null,        1)

				-- Св. документы
--				INSERT INTO etran_global_id ( object_id,  users_owner_id,  date_enter, global_color)
--				VALUES						(@object_id, @users_owner_id,   GetDate(),            0)
--
--				SET @query_docs_id = SCOPE_IDENTITY()
--
--				INSERT INTO etran_query_docs_new ( query_docs_id,  query_id,          doc_type_id,  doc_id,  doc_date_load, xml_reply_id, set_load)
--				VALUES							 (@query_docs_id, @query_id, @doc_type_history_id, @doc_id,           null,         null,        1)
			END
		END

		FETCH NEXT FROM mmpp INTO @doc_id
	END

	CLOSE mmpp
	DEALLOCATE mmpp

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
	SET @s = ERROR_MESSAGE()
	RAISERROR(@s, 16, 1)

	IF XACT_STATE() <> 0
		ROLLBACK TRANSACTION

	EXEC sp_query_error
		@query_id    = @query_id,
		@set_server  = 1,
		@error_cod   = '105',
		@error_name  = 'sp_query_save_new',
		@error_param = @s
END CATCH


DROP TABLE #doc_list_id



   