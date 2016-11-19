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
import "mod_wm"


include "globals.prg";
include "player1.prg";
include "player2.prg";
include "missile1.prg";
include "missile2.prg";
include "ball.prg";


begin

	id_icon = load_png("png/icon.png");
	set_icon(0, id_icon );
	set_title("RetroTanks-2600");
	unload_map(0, id_icon);

	// resolucion del juego
	scale_resolution = 06400480;
	set_mode(160,120,16);
	set_fps(60, 0);

	write_var(0, 160, 0, 2, fps);
	write_float(0, 0, 0, 0, &p1_speed);
	write_float(0, 0, 8, 0, &p1_missile_speed);



	//defino la region visible del juego
	region_define(1, 0, 10, 160, 100);


	player1(20,20);

	ball();


	loop

		// un contador general de frames, para no usar timers
		fcounter++;
		if (fcounter >= 2147483647)
			fcounter = 0;
		end

		if( key(_ESC) ) //debug
			exit("exit");
		end

		frame;

	end

end


