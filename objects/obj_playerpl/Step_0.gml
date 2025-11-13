<<<<<<< HEAD
//Crontrole palyer
var _chao = place_meeting(x, y +1, obj_plataforma);

var _left2, _right2, _jump1, _jump2, _left1, _right1, _jump3;
_left2	= keyboard_check(inputs.left);
_right2  = keyboard_check(inputs.right);
_jump1	= keyboard_check_pressed(inputs.jump);
_jump2	= keyboard_check_pressed(inputs.jump1);
_left1	= keyboard_check(inputs.left1);
_right1 = keyboard_check(inputs.right1);
_jump3	= keyboard_check_pressed(inputs.jump2);

var _walk, _jump, _right, _left;
_jump	= _jump1 + _jump2 + _jump3;
_right  = _right1 + _right2;
_left	= _left1 + _left2;
_walk	= _right + _left;

velh	= (_right - _left) * vel;




//virar personagem
if _left 
{
	image_xscale=-6
}
if _right 
{
	image_xscale=6
}




//trocar sprite
if (!place_meeting(x,y+1,obj_plataforma))
{
	sprite_index = spr_player_jump;
}
else
{
	if (velh != 0)
	{
		sprite_index = spr_player_walk;
	}
}
if velh = 0 {
	if place_meeting(x,y+1,obj_plataforma) {
		sprite_index = spr_player_idle
	}
}
if velh != 0 {
	if place_meeting(x,y+1,obj_plataforma){
		sprite_index = spr_player_walk;
	}
}




//Gravidade
velv	+= grav;



//pulo 
if (_chao)
{
	if (_jump)
	{
		velv = -vel_jump;
	}
}
else 
{
	//Aplico a gravidade
	velv += grav;
}








//passar de fase quando pegar 3 water gun
if waterkey=6
{
	game_restart()
}


//botão para reiniciar
if keyboard_check(vk_enter)
{
	room_restart()
=======
//Crontrole palyer
var _chao = place_meeting(x, y +1, obj_plataforma);

var _left2, _right2, _jump1, _jump2, _left1, _right1, _jump3;
_left2	= keyboard_check(inputs.left);
_right2  = keyboard_check(inputs.right);
_jump1	= keyboard_check_pressed(inputs.jump);
_jump2	= keyboard_check_pressed(inputs.jump1);
_left1	= keyboard_check(inputs.left1);
_right1 = keyboard_check(inputs.right1);
_jump3	= keyboard_check_pressed(inputs.jump2);

var _walk, _jump, _right, _left;
_jump	= _jump1 + _jump2 + _jump3;
_right  = _right1 + _right2;
_left	= _left1 + _left2;
_walk	= _right + _left;

velh	= (_right - _left) * vel;




//virar personagem
if _left 
{
	image_xscale=-6
}
if _right 
{
	image_xscale=6
}




//trocar sprite
if (!place_meeting(x,y+1,obj_plataforma))
{
	sprite_index = spr_player_jump;
}
else
{
	if (velh != 0)
	{
		sprite_index = spr_player_walk;
	}
}
if velh = 0 {
	if place_meeting(x,y+1,obj_plataforma) {
		sprite_index = spr_player_idle
	}
}
if velh != 0 {
	if place_meeting(x,y+1,obj_plataforma){
		sprite_index = spr_player_walk;
	}
}




//Gravidade
velv	+= grav;



//pulo 
if (_chao)
{
	if (_jump)
	{
		velv = -vel_jump;
	}
}
else 
{
	//Aplico a gravidade
	velv += grav;
}








//passar de fase quando pegar 3 water gun
if waterkey=6
{
	game_restart()
}


//botão para reiniciar
if keyboard_check(vk_enter)
{
	room_restart()
>>>>>>> 406811f24178cb7c901e82d65b1dcb9b5c505c7c
}