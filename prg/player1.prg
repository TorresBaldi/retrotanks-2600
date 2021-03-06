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


		// disparo misil
		if ( key(_space) && !exists(type missile1) )
			missile1(direction, x, y);
		end



		// muevo el tanque segun corresponde
		switch (direction)

			case DIR_TOP:
				fy -= p1_speed;
				flags = 0;
				graph = png[0];
			end

			case DIR_BOTTOM:
				fy += p1_speed;
				flags = 2;
				graph = png[0];
			end

			case DIR_LEFT:
				fx -= p1_speed;
				flags = 1;
				graph = png[1];
			end

			case DIR_RIGHT:
				fx += p1_speed;
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
