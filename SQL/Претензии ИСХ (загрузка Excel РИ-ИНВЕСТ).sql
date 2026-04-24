SELECT [№п/п]
      ,[Корреспондент]
      ,[Адресат]
      ,[Номер претензии]
      ,[Дата претензии]
      ,[Сумма требований]
      ,[Договор (номер, дата)]
      ,[Начало периода]
      ,[Конец периода]
  FROM [Lis1].[dbo].[__out_pret]

drop table if exists #x
;with cte as
(
select trim(left(replace(ltrim([Договор (номер, дата)]), '№', ''), len(replace(ltrim([Договор (номер, дата)]), '№', '')) - 14)) as contract_cod, 
	trim(replace([Номер претензии], '№', '')) as pretenzia_cod, 
	[Сумма требований], convert(datetime, [Дата претензии]) as [Дата претензии], convert(datetime, [Начало периода]) as [Начало периода], convert(datetime, [Конец периода]) as [Конец периода]
	from __out_pret pr
)
select c.contract_id, pr.* 
into #x
from cte pr
left join view_contract c on c.contract_cod = pr.contract_cod

select * from #x


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
	select contract_id, pretenzia_cod, [Сумма требований], [Дата претензии], [Начало периода], [Конец периода] from #x
open cur
fetch next from cur into @contract_id, @pretenzia_cod, @sum, @date, @date_begin, @date_end
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
	, @pretenzia_type = 1
	, @comment = @comment

	fetch next from cur into @contract_id, @pretenzia_cod, @sum, @date, @date_begin, @date_end
end
close cur
deallocate cur


--select * from view_pretenzia_shape



