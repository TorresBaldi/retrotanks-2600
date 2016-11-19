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


include "globals.prg";
include "functions.prg";
include "player1.prg";
include "player2.prg";
include "missile1.prg";
include "missile2.prg";
include "ball.prg";


begin

	// resolucion del juego
	scale_resolution = 06400480;
	set_mode(160,120,16);
	set_fps(60, 0);

	write_var(0, 160, 0, 2, fps);
	write_float(0, 0, 0, 0, &speed);
	write_float(0, 0, 8, 0, &missile_speed);



	//defino la region visible del juego
	region_define(1, 0, 10, 160, 100);


	player1(30,30);


	loop

		if( key(_ESC) ) //debug
			exit();
		end

		frame;

	end

end


