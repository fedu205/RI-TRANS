declare @inf_obj_name varchar(50),
		@inf_obj_name_new varchar(50),
		@inf_obj_name_alt varchar(50),
		@inf_obj_cod varchar(50),
		@inf_obj_id int,
		@inf_obj_id_new int,
		@state_id	int,
		@road_id	int,
		@ROAD varchar(100),
		@LAND varchar(100),
		@RoadAbbr varchar(100),
		@PID int,
		@DP varchar(100),
		@PPLand int,
		@RegName varchar(100),
		@set_ETRAN bit,
		@set_ppland bit

declare x cursor for
	select inf_obj_name, inf_obj_name_new, inf_obj_name_alt, inf_obj_cod from __inf_obj_NODE
open x 
fetch next from x into @inf_obj_name, @inf_obj_name_new, @inf_obj_name_alt, @inf_obj_cod
while @@fetch_status = 0
begin
	set @inf_obj_id = null

	select top 1 
		@inf_obj_id = inf_obj_id, 
		@state_id = state_id,
		@road_id = road_id,
		@ROAD = ROAD,
		@LAND = LAND,
		@RoadAbbr = RoadAbbr,
		@PID = PID,
		@DP = DP,
		@PPLand = PPLand,
		@RegName = RegName,
		@set_ETRAN = set_ETRAN,
		@set_ppland = set_ppland 
	from inf_obj_NODE where inf_obj_cod = @inf_obj_cod and date_end = '20260228'

	if @inf_obj_id is not null
	begin
		print @inf_obj_id
		--update inf_obj_NODE set date_end = '20260228' where inf_obj_id = @inf_obj_id

		exec [dbo].[sp_inf_obj_modify]
			@type_action = 0, 
			@inf_obj_id = @inf_obj_id_new out, 
			@type_inf_id = 16, 
			@inf_obj_name = @inf_obj_name_new, 
			@inf_obj_name_full = @inf_obj_name_new, 
			@inf_obj_name_translit = @inf_obj_name_alt,  
			@inf_obj_cod = @inf_obj_cod, 
			@road_id = @road_id, 
			@state_id = @state_id, 
			@date_begin = '20260301', 
			@date_end = '20300601', 
			@comment = 'Загружено 15.04.2026', 
			@set_ppland = @set_ppland

select @inf_obj_id_new

		update inf_obj_NODE set 
			ROAD = @ROAD,
			LAND = @LAND,
			RoadAbbr = @RoadAbbr,
			PID = @PID,
			DP = @DP,
			PPLand = @PPLand,
			RegName = @RegName,
			set_ETRAN = @set_ETRAN
		from inf_obj_NODE where inf_obj_id = @inf_obj_id_new

	end
	else 
--		print '0'
	exec [dbo].[sp_inf_obj_modify]
			@type_action = 0, 
			@inf_obj_id = @inf_obj_id_new out, 
			@type_inf_id = 16, 
			@inf_obj_name = @inf_obj_name_new, 
			@inf_obj_name_full = @inf_obj_name_new, 
			@inf_obj_name_translit = @inf_obj_name_alt,  
			@inf_obj_cod = @inf_obj_cod, 
			@road_id = @road_id, 
			@state_id = @state_id, 
			@date_begin = '20260101', 
			@date_end = '20300601', 
			@comment = 'Загружено 15.04.2026', 
			@set_ppland = @set_ppland


	fetch next from x into @inf_obj_name, @inf_obj_name_new, @inf_obj_name_alt, @inf_obj_cod
end
close x
deallocate x

--state_id = 139843	road_id = 139264	ROAD = 'ГАЖК Узбекистон Темир Йуллари' LAND = 'Узбекистан'	  RoadAbbr = 'Узбк'	 PID = @PID
--select * from view_inf_obj_node where inf_obj_cod = '737213' --'737603'

/*
declare @inf_obj_id int --12143955
declare x cursor for select inf_obj_id from inf_obj_NODE where inf_obj_id >= 12143955
open x
fetch next from x into @inf_obj_id
while @@FETCH_STATUS = 0
begin
	exec [dbo].[sp_inf_obj_modify]
			@type_action = 2, 
			@type_inf_id = 16,
			@inf_obj_id = @inf_obj_id out
	fetch next from x into @inf_obj_id
end
close x
deallocate x
*/

	select top 1 
		inf_obj_id, 
		state_id,
		road_id,
		ROAD,
		LAND,
		RoadAbbr,
		PID,
		DP,
		PPLand,
		RegName,
		set_ETRAN,
		set_ppland 
	from inf_obj_NODE where inf_obj_cod = '737603' and date_end = '20260228'