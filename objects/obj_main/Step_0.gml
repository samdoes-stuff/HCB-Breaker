
if(instance_exists(obj_menu_win) || instance_exists(obj_menu_lose))
{
	exit;
}


if(!instance_exists(obj_ball))
{
	
	lives -= 1;

	
	if(lives < 0)
	{
		if(!instance_exists(obj_menu_lose))
		{
			layer_sequence_create("Sequences", room_width / 2, room_height / 2, seq_menu_lose);
		
			instance_destroy(obj_ball);
		
			instance_destroy(obj_powerup_base);
		}
	}
	
	else
	{
		
		instance_create_layer(obj_bat.x, obj_bat.y - 48, "Instances", obj_ball);
		
		
		audio_play_sound(sfx_ball_spawn, 0, false);
	}
}


var _bricks_remaining = instance_number(obj_base_brick);


if(_bricks_remaining <= 0)
{
	if(!instance_exists(obj_menu_win))
	{
		
		if(room == room_last)
		{
			layer_sequence_create("Sequences", room_width / 2, room_height / 2, seq_menu_end_game);
		}
		else
		{
			layer_sequence_create("Sequences", room_width / 2, room_height / 2, seq_menu_end_level);
		}
	
		instance_destroy(obj_ball);
	
		instance_destroy(obj_powerup_base);
	}
}