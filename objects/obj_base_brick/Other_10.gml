_hitpoints--;

image_index++;


if(_hitpoints <= 0)
{
	
	score += _reward;

	
	var _chance = floor(irandom(99));

	
	if(_chance == 0)
	{
		instance_create_layer(x, y, "Instances", obj_powerup_extralife);
	}
	
	
	else if(_chance < 15)
	{
		instance_create_layer(x, y, "Instances", choose(obj_powerup_largebat, obj_powerup_pointball));
	}

	
	else if(_chance < 20)
	{
		instance_create_layer(x, y, "Instances", obj_powerup_multiball);
	}
	
	
	instance_destroy();
}