#region movi, grav, pulo
hspd = 0;
vspd =0;
vspd_min = -7;
vspd_max = 7;
grv = 0.3

move_dir = 0;
move_spd = 0;
move_spd_max = 5.0;
acc = 0.3; //aceleração
dcc = 0.3; //desaceleração

jump_height = 8;
coyote_time_max = 5;
coyote_time = 0;

move_dir = 0; // Começa apontando para a direita (0 graus)
#endregion

global.music_started_2 = false;
music_volume = 0.5;

#region dano
is_damaged_timer_running = false;
can_take_damage = true; // O jogador pode sofrer dano imediatamente
damage_delay = 80; // Define o atraso em quadros (1 segundo)
is_damaged = false; // Variável para controlar se o jogador está em estado de dano
global.life = 5;
player_x = x;
player_y = y;

// Variáveis para controlar a regeneração da vida
life_regeneration_delay = room_speed * 5; // A cada 5 segundos
life_regeneration_amount = 1; // A quantidade de vida a ser regenerada
#endregion

can_move = true;

