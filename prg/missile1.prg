process missile1(int direction, int initial_x, int initial_y)

private

	int life = 100;

	float fx, fy;

end

begin

	graph = load_png("png/bullet1.png");


	// agrego offset de acuerdo a direccion
	switch (direction)
		case DIR_TOP:
			initial_y -= 4;
		end
		case DIR_BOTTOM:
			initial_y += 4;
		end
		case DIR_LEFT:
			initial_x -= 4;
		end
		case DIR_RIGHT:
			initial_x += 4;
		end
	end


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
				fy -= p1_missile_speed;
				flags = 0;
			end

			case DIR_BOTTOM:
				fy += p1_missile_speed;
				flags = 2;
			end

			case DIR_LEFT:
				fx -= p1_missile_speed;
				flags = 1;
			end

			case DIR_RIGHT:
				fx += p1_missile_speed;
				flags = 0;
			end

		end


		// actualizo la posicion real en pantalla con la calculada
		x = fx;
		y = fy;



		frame;

	end

end
