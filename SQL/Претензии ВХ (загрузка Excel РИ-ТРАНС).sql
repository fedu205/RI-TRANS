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
--select * from __in_RITRANS
SET DATEFORMAT 'dmy'

drop table if exists #x
;with cte as
(
select trim(left(replace(ltrim([Номер договора]), '№', ''), len(replace(ltrim([Номер договора]), '№', '')) - 14)) as contract_cod, 
	trim(left(replace(ltrim([Номер и дата письма / претензии (исх#)]), '№', ''), len(replace(ltrim([Номер и дата письма / претензии (исх#)]), '№', '')) - 14)) as pretenzia_cod, 
	trim(left(replace(ltrim([Дата и рег# номер претензии (вх#)]), '№', ''), len(replace(ltrim([Дата и рег# номер претензии (вх#)]), '№', '')) - 14)) as pretenzia_our_cod, 
	[Сумма требований предъявлено, руб#] as [Сумма], 
	trim(right([Дата и рег# номер претензии (вх#)], 10)) as [Дата_наша], 
	trim(right([Номер и дата письма / претензии (исх#)], 10)) as [Дата],
	[Начало простоя], [Конец простоя], [При погрузке / выгрузке], [Примечание],
	case
		when [При погрузке / выгрузке] = 'выгрузка' OR [При погрузке / выгрузке] = 'под выгрузкой' OR [При погрузке / выгрузке] like 'выгрузка (%' OR [При погрузке / выгрузке] like 'выгузка (%' then 0
		when [При погрузке / выгрузке] = 'погрузка' OR [При погрузке / выгрузке] = 'под погрузкой' OR [При погрузке / выгрузке] like 'погрузка (%'then 1
		when [При погрузке / выгрузке] = 'погрузка/выгрузка' OR [При погрузке / выгрузке] = 'выгрузка/погрузка' then 2
		when [При погрузке / выгрузке] = 'ин.тер.' OR [При погрузке / выгрузке] = 'ин. тер.' OR [При погрузке / выгрузке] = 'ин.тер' then 3
		when [При погрузке / выгрузке] = 'выгрузка/ин.тер.' OR  [При погрузке / выгрузке] = 'выгрузка/ин.территории' OR [При погрузке / выгрузке] = 'выгрузка/ин.тер'then 4
		when [При погрузке / выгрузке] = 'погрузка/ин.тер.' then 5
		when [При погрузке / выгрузке] like 'погрузка/выгрузка/ин.тер%' OR ([При погрузке / выгрузке] like 'выгрузка/погрузка/ин.тер%') 
			OR ([При погрузке / выгрузке] like 'выгрузка / выгрузка ин.тер%')
			OR ([При погрузке / выгрузке] like 'выгрузка/ин.тер/погрузка%') then 6
		when [При погрузке / выгрузке] = 'бросание' then 7
		when [При погрузке / выгрузке] like '%повреждение%' then 8
		when [При погрузке / выгрузке] like 'переадрес%' then 9
		when [При погрузке / выгрузке] like 'при отправлени%' then 10
		when [При погрузке / выгрузке] like 'задержка%' then 10
	end as stay_type
	from __in_RITRANS pr
)
select c.contract_id, pr.* 
into #x
from cte pr
left join view_contract c on c.contract_cod = pr.contract_cod

--select * from #x


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
	select contract_id, pretenzia_cod, pretenzia_our_cod, [Сумма], [Примечание], stay_type, [Дата_наша], [Дата], [Начало простоя], [Конец простоя] from #x  --[Дата_наша], [Дата]
open cur
fetch next from cur into @contract_id, @pretenzia_cod, @pretenzia_our_cod, @sum, @comment, @stay_type, @x, @x1, @x2, @x3
while @@fetch_status = 0
begin
select @x2
select @date_our = cast(@x as datetime)
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
	, @pretenzia_our_cod = @pretenzia_our_cod
	, @pretenzia_our_date = @date_our
	, @stay_date_begin = @date_begin
	, @stay_date_end  = @date_end
	, @stay_type = @stay_type
	, @pretenzia_type = 0
	, @comment = @comment
select @i
set @i = @i + 1
	fetch next from cur into @contract_id, @pretenzia_cod, @pretenzia_our_cod, @sum, @comment, @stay_type, @x, @x1, @x2, @x3
end
close cur
deallocate cur


--select * from view_pretenzia_shape