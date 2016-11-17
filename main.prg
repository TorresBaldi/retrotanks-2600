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

global

	int p1_energy;
	int p1_lives;

	int p2_energy;
	int p2_lives;

end


process player1(int x, int y)

private

	int png[2];

	float speed = 1.0;

end

begin

	region = 1;
	png[0] = load_png("png/tank1-top.png");
	png[1] = load_png("png/tank1-right.png");

	graph = png[0];

	write_float(0, 0, 0, 0, &speed);

	loop

		//speed = speed * 0.999;

		if ( key (_up) )
			y -= speed;
			flags = 0;
			graph = png[0];
		end

		if ( key (_down) )
			y += speed;
			flags = 2;
			graph = png[0];
		end

		if ( key (_left) )
			x -= speed;
			flags = 1;
			graph = png[1];
		end

		if ( key (_right) )
			x += speed;
			flags = 0;
			graph = png[1];
		end

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


