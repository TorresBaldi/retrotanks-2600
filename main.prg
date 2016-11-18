import "mod_video"
import "mod_screen"
import "mod_key"
import "mod_map"
import "mod_proc"
import "mod_grproc"
import "mod_text"
import "mod_file"
import "mod_string"
import "mod_regex"
import "mod_time"
import "mod_rand"
import "mod_say"
import "mod_math"

const

	// direcciones en las que mira el tanque
	DIR_TOP 	= 0;
	DIR_RIGHT 	= 1;
	DIR_BOTTOM 	= 2;
	DIR_LEFT 	= 3;

end

global

	int p1_energy = 100;
	int p1_lives = 3;

	int p2_energy = 100;
	int p2_lives = 3;

	float speed = 0.3;

end


process player1(int x, int y)

private

	// posicion precisa para permitir avanzar menos de una unidad por frame
	float fx, fy;

	int png[2];

	int direction;

end

begin

	fx = x;
	fy = y;

	region = 1;
	png[0] = load_png("png/tank1-top.png");
	png[1] = load_png("png/tank1-right.png");

	graph = png[0];

	write_float(0, 0, 0, 0, &speed);

	loop

		//speed = speed * 0.999;


		// controles
		if ( key(_up) )
			direction = DIR_TOP;
		end
		if ( key(_down))
			direction = DIR_BOTTOM;
		end
		if (key(_left))
			direction = DIR_LEFT;
		end
		if (key(_right))
			direction = DIR_RIGHT;
		end



		// muevo el tanque segun corresponde
		switch (direction)

			case DIR_TOP:
				fy -= speed;
				flags = 0;
				graph = png[0];
			end

			case DIR_BOTTOM:
				fy += speed;
				flags = 2;
				graph = png[0];
			end

			case DIR_LEFT:
				fx -= speed;
				flags = 1;
				graph = png[1];
			end

			case DIR_RIGHT:
				fx += speed;
				flags = 0;
				graph = png[1];
			end
		end

		// actualizo la posicion real en pantalla con la calculada
		x = fx;
		y = fy;

		frame;

	end

end


process misile1()

begin

end


process player2()

begin

end


process misile2()

begin

end


process ball()

begin

end


begin

	// resolucion del juego
	scale_resolution = 06400480;
	set_mode(160,120,16);
	set_fps(60, 0);

	write_var(0, 160, 0, 2, fps);


	//defino la region visible del juego
	region_define(1, 0, 10, 160, 100);


	player1(20,20);


	loop

		if( key(_ESC) ) //debug
			exit();
		end

		frame;

	end

end


