process ball()

private

	graphs[2];

end

begin

	x = 50;
	y = 50;

	graphs[0] = load_png("powerup1-1.png");
	graphs[1] = load_png("powerup1-2.png");

	loop

		// TODO ver forma mas linda de conseguir ese efecto
		graph = graphs[ (fcounter/10) % 2 ];

		if( collision( type player1 ) )

			p1_speed = 0.6;
			p1_missile_speed = 0.9;

			break;
		end

		frame;

	end

end
