package com.company;

import java.util.Comparator;

public class durePizzaComparator implements Comparator<Pizza>
{
	@Override
	public int compare(Pizza pizza, Pizza t1)
	{
		if (pizza.getPice() > t1.getPice())
			return 1;
		if (pizza.getPice() < t1.getPice())
			return -1;
		return 0;
	}
}
