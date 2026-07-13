/*
выгрузка
погрузка
погрузка/выгрузка
ин.тер.
выгрузка/ин.тер.
погрузка/ин.тер.
выгрузка/погрузка/ин.тер.
*/
--select getdate()
--select convert(datetime, '21.01.2026 11:45', 104)
--delete __in_RITRANS where [Номер и дата письма / претензии (исх#)]	 is null
select * from [dbo].[__СУДЫ РИ-ТРАНС вх]

drop table if exists #x
;with cte as
(
select --trim(replace(ltrim([Договор]), '№', '')) as contract_cod, 
trim(left(trim(replace(ltrim([Договор]), '№', '')), 15)) as contract_cod,
	trim(replace([Номер дела], '№', '')) as low_claim_cod, 
 	getdate() as [low_claim_date], 
	[Наименование суда] as [court_name], 
	[Сумма иска, руб#] as [claim_sum], 
	--[Госпошлина, руб# ] as [gos_fee_sum], 
	--[Номера претензий]	as pretinzia_cod,
	[Предмет требований] as stay_period,
	[Номер дела] as [court_num], 
	[Порядок рассмотрения] as [court_status], 
	convert(datetime, trim(replace(replace(REPLACE([Дата СЗ / код доступа], '(МСК)',''), 'СЗ', ''), ',', '')), 104) as date_sz,
	--[Подготовка документов] as [prepare_documents], 
	[Комментарии / Судебный акт] as [court_data], 
	--[Взыскано по Решению / Постановлению (штраф), руб# ] as [sum_1], 	
	--[Взыскано по Решению (госпошлина), руб# ]as [sum_2], 
	--[размер г/п для возврата из ФБ РФ, руб#] as [sum_3], 
	--[Код доступа] as access_code, 
	--[№ п/п о взыскании/добровольной оплате] as [penalty_num], 
	--null as [sum_4],
	[Сумма взыскания, руб#] as [sum_5], 
	--[Взыскано, руб#] as [sum_6], 
	--[Скорректировано/отказано] as [sum_7],

	null as [gos_fee_sum], 
	null	as pretinzia_cod,
	null as [prepare_documents], 
	null as [sum_1], 	
	null as [sum_2], 
	null as [sum_3], 
	null as access_code, 
	null as [penalty_num], 
	null as [sum_4],
	null as [sum_6], 
	null as [sum_7],


	case
		when [Порядок рассмотрения] = 'Общий' then 0
		when [Порядок рассмотрения] = 'упрощенный' then 1
		when [Порядок рассмотрения] = 'АЖ' then 2
		when [Порядок рассмотрения] = 'КЖ' then 3
		when [Порядок рассмотрения] = 'Оплачено' then 4
		when [Порядок рассмотрения] = 'Оплачено, ГП' then 5
		when [Порядок рассмотрения] = 'Рассмотрено, ГП' then 6
		when [Порядок рассмотрения] = 'Рассмотрено, ИЛ' then 7

	end as court_status_type,
	[Необходимые действия ] as comment

	from [dbo].[__СУДЫ РИ-ТРАНС вх]
)
select c.contract_id, c.firm_customer_name, pr.* 
into #x
from cte pr
left join view_contract c on c.contract_cod = pr.contract_cod

select * from #x


declare @id int,
		@contract_id int, 
	@low_claim_type		int = 0,
	@low_claim_cod		varchar(100) = NULL,
	@low_claim_date		datetime = NULL,
	@court_name			varchar(100) = NULL,
	@claim_sum			money = NULL,
	@gos_fee_sum		money = NULL,
	@court_num			varchar(100) = NULL,
	@court_status		int = NULL,
	@date_sz			datetime = null,
	@prepare_documents	varchar(100) = NULL,
	@court_data			varchar(100) = NULL,
	@sum_1				money = NULL,
	@sum_2				money = NULL,
	@sum_3				money = NULL,
	@access_code		varchar(100) = NULL,
	@penalty_num		varchar(100) = NULL,
	@sum_4				money = NULL,
	@sum_5				money = NULL,
	@sum_6				money = NULL,
	@sum_7				money = NULL,
	@comment			varchar(300) = NULL


declare cur cursor for 
	select contract_id, [low_claim_cod], [low_claim_date], [court_name], [claim_sum], [gos_fee_sum], [court_num], [court_status_type], [date_sz], 
		[prepare_documents], [court_data], [sum_1], [sum_2], [sum_3], [access_code], [penalty_num], [sum_4], [sum_5], [sum_6], [sum_7], [comment] from #x
open cur
fetch next from cur into @contract_id, @low_claim_cod, @low_claim_date, @court_name, @claim_sum, @gos_fee_sum, @court_num, @court_status, @date_sz, 
		@prepare_documents, @court_data, @sum_1, @sum_2, @sum_3, @access_code, @penalty_num, @sum_4, @sum_5, @sum_6, @sum_7, @comment
while @@fetch_status = 0
begin
	exec [dbo].[sp_low_claim_modify]
	     @low_claim_id = @id out
	   , @type_action = 0
	   , @low_claim_type = 1
	   , @contract_id = @contract_id
	   , @low_claim_cod = @low_claim_cod
	   , @low_claim_date = @low_claim_date
	   , @court_name = @court_name
	   , @claim_sum = @claim_sum
	   , @gos_fee_sum = @gos_fee_sum
	   , @court_num = @court_num
	   , @court_status = @court_status
	   , @prepare_documents = @prepare_documents
	   , @court_data = @court_data
	   , @sum_1 = @sum_1
	   , @sum_2 = @sum_2
	   , @sum_3 = @sum_3
	   , @access_code = @access_code
	   , @penalty_num = @penalty_num
	   , @sum_4 = @sum_4
	   , @sum_5 = @sum_5
	   , @sum_6 = @sum_6
	   , @sum_7 = @sum_7
	   , @comment = @comment
	fetch next from cur into @contract_id, @low_claim_cod, @low_claim_date, @court_name, @claim_sum, @gos_fee_sum, @court_num, @court_status, @date_sz, 
		@prepare_documents, @court_data, @sum_1, @sum_2, @sum_3, @access_code, @penalty_num, @sum_4, @sum_5, @sum_6, @sum_7, @comment
end
close cur
deallocate cur

select * from low_claim

