function int can_move_up(int x, int y)

begin

	return y>18;

end

function int can_move_down(int x, int y)

begin

	return y<120-18;

end

function int can_move_left(int x, int y)

begin

	return x>8;

end

function int can_move_right(int x, int y)

begin

	return x>160-8;

end
