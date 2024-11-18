with (obj_yura)
{
	if (other.dir_vector == 1)
	{
		direction = other.dir_up;
	}
	else
	{
		direction = other.dir_down;
	}
}
dir_vector *= -1;
