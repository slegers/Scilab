package com.company;

import java.util.Comparator;

public class BonComparator implements Comparator<Bon>
{
	@Override
	public int compare(Bon bon, Bon t1)
	{
		if (bon.getGp() - bon.getTb() > t1.getGp() - t1.getTb())
		{
			return 1;
		}
		if (bon.getGp() - bon.getTb() < t1.getGp() - t1.getTb())
		{
			return -1;
		}
		return 0;
	}
}
