/*
выгрузка
погрузка
погрузка/выгрузка
ин.тер.
выгрузка/ин.тер.
погрузка/ин.тер.
выгрузка/погрузка/ин.тер.
*/
drop table if exists #x
;with cte as
(
select trim(left(replace(ltrim([№ договора]), '№', ''), len(replace(ltrim([№ договора]), '№', '')) - 14)) as contract_cod, 
	trim(replace([№ претензии], '№', '')) as pretenzia_cod, 
	[Сумма], [Дата], [Начало периода], [Конец периода], [Примечание], [Место простоя],
	case
		when [Место простоя] = 'выгрузка' then 0
		when [Место простоя] = 'погрузка' then 1
		when [Место простоя] = 'погрузка/выгрузка' then 2
		when [Место простоя] = 'ин.тер.' then 3
		when [Место простоя] = 'выгрузка/ин.тер.' then 4
		when [Место простоя] = 'погрузка/ин.тер.' then 5
		when [Место простоя] = 'выгрузка/погрузка/ин.тер.' then 6
	end as stay_type
	from __in_pret pr
)
select c.contract_id, pr.* 
into #x
from cte pr
left join view_contract c on c.contract_cod = pr.contract_cod

--select * from #x


declare @id int,
		@contract_id int, 
		@pretenzia_cod varchar(50), 
		@sum money, 
		@date datetime, 
		@date_begin datetime, 
		@date_end datetime, 
		@comment varchar(1000), 
		@stay_type_name varchar(50),
		@stay_type int

declare cur cursor for 
	select contract_id, pretenzia_cod, [Сумма], [Дата], [Начало периода], [Конец периода], [Примечание], stay_type from #x
open cur
fetch next from cur into @contract_id, @pretenzia_cod, @sum, @date, @date_begin, @date_end, @comment, @stay_type
while @@fetch_status = 0
begin
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
	, @pretenzia_type = 0
	, @comment = @comment

	fetch next from cur into @contract_id, @pretenzia_cod, @sum, @date, @date_begin, @date_end, @comment, @stay_type
end
close cur
deallocate cur


select * from view_pretenzia_shape