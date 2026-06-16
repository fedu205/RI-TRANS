/*
выгрузка
погрузка
погрузка/выгрузка
ин.тер.
выгрузка/ин.тер.
погрузка/ин.тер.
выгрузка/погрузка/ин.тер.
*/

--delete __out_RITRANS where [№п/п]	 is null
--select * from __out_RITRANS
SET DATEFORMAT 'dmy'

drop table if exists #x
;with cte as
(
select trim(left(replace(ltrim([Договор (номер, дата)]), '№', ''), len(replace(ltrim([Договор (номер, дата)]), '№', '')) - 14)) as contract_cod, 
	trim(left(replace(ltrim([Номер претензии, дата]), '№', ''), len(replace(ltrim([Номер претензии, дата]), '№', '')) - 14)) as pretenzia_cod, 
	[Сумма требований] as [Сумма], 
	trim(right([Номер претензии, дата], 10)) as [Дата],
	[Начало простоя], [Конец простоя], [Предмет требований], [Комментарии (данные об операторе)],
	case
		when [Предмет требований] = 'выгрузка' then 0
		when [Предмет требований] = 'погрузка' then 1
		when [Предмет требований] = 'погрузка/выгрузка' then 2
		when [Предмет требований] = 'ин.тер.'  then 3
		when [Предмет требований] = 'выгрузка/ин.тер.'then 4
		when [Предмет требований] = 'погрузка/ин.тер.' then 5
		when [Предмет требований] like 'погрузка/выгрузка/ин.тер%' then 6
		when [Предмет требований] = 'бросание' then 7
		when [Предмет требований] like '%повреждение%' then 8
		when [Предмет требований] like 'переадрес%' then 9
		when [Предмет требований] like 'при отправлени%' then 10
		when [Предмет требований] like 'задержка%' then 11
		when [Предмет требований] like 'штраф%' then 12
		when [Предмет требований] like 'убытки%' then 13
		when [Предмет требований] = 'убытки/штраф' then 14
		when [Предмет требований] = 'расходы' then 15
		when [Предмет требований] = 'неустойка' then 16
		
	end as stay_type
	from __out_RITRANS pr
)
select c.contract_id, pr.* 
into #x
from cte pr
left join view_contract c on c.contract_cod = pr.contract_cod

select * from #x


declare @id int,
		@contract_id int, 
		@pretenzia_cod varchar(50), 
		@pretenzia_our_cod varchar(50), 
		@sum money, 
		@date datetime, 
		@date_our datetime, 
		@date_begin datetime, 
		@date_end datetime, 
		@comment varchar(1000), 
		@stay_type_name varchar(50),
		@stay_type int,
		@i int = 0,
		@x varchar(20), @x1 varchar(20), @x2 varchar(20), @x3 varchar(20)

declare cur cursor for 
	select contract_id, pretenzia_cod, [Сумма], [Комментарии (данные об операторе)], stay_type, [Дата], [Начало простоя], [Конец простоя] from #x  --[Дата_наша], [Дата]
open cur
fetch next from cur into @contract_id, @pretenzia_cod, @sum, @comment, @stay_type, @x1, @x2, @x3
while @@fetch_status = 0
begin
select @x2
select @date = cast(@x1 as datetime)
select @date_begin = cast(@x2 as datetime)
select @date_end = cast(@x3 as datetime)
	exec [dbo].[sp_pretenzia_shape_modify]			 
	  @pretenzia_shape_id = @id out
	, @type_action = 0
	, @contract_id = @contract_id
	, @pretenzia_cod = @pretenzia_cod
	, @pretenzia_sum = @sum
	, @pretenzia_date = @date
	, @date_begin = @date_begin
	, @date_end	 = @date_end
	, @pretenzia_our_cod = @pretenzia_cod
	, @pretenzia_our_date = @date
	, @stay_date_begin = @date_begin
	, @stay_date_end  = @date_end
	, @stay_type = @stay_type
	, @pretenzia_type = 1
	, @comment = @comment
select @i
set @i = @i + 1
	fetch next from cur into @contract_id, @pretenzia_cod, @sum, @comment, @stay_type, @x1, @x2, @x3
end
close cur
deallocate cur


--select * from view_pretenzia_shape