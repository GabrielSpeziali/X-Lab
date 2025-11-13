<<<<<<< HEAD
//colisão horizontal
//checar se está colidindo cm a parede
var _col	= instance_place(x + velh, y, obj_plataforma);

//grudar onde colidi
if (_col)
{
	//checar se está indo para direita
	if (velh > 0)
	{
		
	}
	
	//checar se está indo para esquerda
	if (velh < 0)
	{
		
	}
	
	//para ao colidir
	velh = 0
}

x += velh;

//plataforma
var _coli	= instance_place(x, y + velv, obj_plataforma);
if (_coli)
{
	if (velv > 0)
	{
		//indo para baixo
	}
	if (velv < 0)
	{
		//indo para cima
	}
	
	velv = 0;
}

=======
//colisão horizontal
//checar se está colidindo cm a parede
var _col	= instance_place(x + velh, y, obj_plataforma);

//grudar onde colidi
if (_col)
{
	//checar se está indo para direita
	if (velh > 0)
	{
		
	}
	
	//checar se está indo para esquerda
	if (velh < 0)
	{
		
	}
	
	//para ao colidir
	velh = 0
}

x += velh;

//plataforma
var _coli	= instance_place(x, y + velv, obj_plataforma);
if (_coli)
{
	if (velv > 0)
	{
		//indo para baixo
	}
	if (velv < 0)
	{
		//indo para cima
	}
	
	velv = 0;
}

>>>>>>> 406811f24178cb7c901e82d65b1dcb9b5c505c7c
y += velv;