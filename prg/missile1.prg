process missile1(int direction, int initial_x, int initial_y)

private

	int life = 100;

	float fx, fy;

end

begin

	graph = load_png("png/bullet1.png");

	fx = x = initial_x;
	fy = y = initial_y;

	loop

		life--;
		if (life<0)
			break;
		end


		// muevo el misil segun corresponde
		switch (direction)

			case DIR_TOP:
				fy -= missile_speed;
				flags = 0;
			end

			case DIR_BOTTOM:
				fy += missile_speed;
				flags = 2;
			end

			case DIR_LEFT:
				fx -= missile_speed;
				flags = 1;
			end

			case DIR_RIGHT:
				fx += missile_speed;
				flags = 0;
			end

		end


		// actualizo la posicion real en pantalla con la calculada
		x = fx;
		y = fy;



		frame;

	end

end
