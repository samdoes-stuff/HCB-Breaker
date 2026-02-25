

var _offset = sprite_get_width(spr_life);
for(var _i = 0; _i < lives; _i++) {
	draw_sprite(spr_life, 0, 600 + _offset * _i, 85);
}


draw_sprite(spr_Score, 0, 100, 50);


var _draw_colour = c_white;


var _font_old = draw_get_font();
draw_set_font(fnt_font);


draw_text_color(300, 40, string(score), _draw_colour, _draw_colour, _draw_colour, _draw_colour, 1);


draw_set_font(_font_old);