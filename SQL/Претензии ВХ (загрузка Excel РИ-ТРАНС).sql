/*
выгрузка
погрузка
погрузка/выгрузка
ин.тер.
выгрузка/ин.тер.
погрузка/ин.тер.
выгрузка/погрузка/ин.тер.
*/

--delete __in_RITRANS where [Номер и дата письма / претензии (исх#)]	 is null
select * from __in_RITRANS

drop table if exists #x
;with cte as
(
select trim(left(replace(ltrim([Номер и дата письма / претензии (исх#)]), '№', ''), len(replace(ltrim([Номер и дата письма / претензии (исх#)]), '№', '')) - 14)) as contract_cod, 
	trim(left(replace(ltrim([Дата и рег# номер претензии (вх#)]), '№', ''), len(replace(ltrim([Дата и рег# номер претензии (вх#)]), '№', '')) - 14)) as pretenzia_cod, 
	[Сумма требований предъявлено, руб#], right([Дата и рег# номер претензии (вх#)], 10) as [Дата], [Начало простоя], [Конец простоя], [При погрузке / выгрузке],
	case
		when [При погрузке / выгрузке] = 'выгрузка' then 0
		when [При погрузке / выгрузке] = 'погрузка' then 1
		when [При погрузке / выгрузке] = 'погрузка/выгрузка' then 2
		when [При погрузке / выгрузке] = 'ин.тер.' then 3
		when [При погрузке / выгрузке] = 'выгрузка/ин.тер.' then 4
		when [При погрузке / выгрузке] = 'погрузка/ин.тер.' then 5
		when [При погрузке / выгрузке] = 'выгрузка/погрузка/ин.тер.' then 6
	end as stay_type
	from __in_RITRANS pr

select * from __in_RITRANS
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