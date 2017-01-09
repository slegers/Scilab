package com.company;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Bon
{
	int tb;
	int gp;
	boolean used = false;
	ArrayList<Pizza> betalenpizzas = new ArrayList<>();
	ArrayList<Pizza> gratispizzas = new ArrayList<>();

	public Bon(int tb, int gp)
	{
		this.tb = tb;
		this.gp = gp;
	}

	public void addPizzas(List<Pizza> pizzas)
	{
		List<Pizza> collect = pizzas.parallelStream().sorted(new durePizzaComparator()).collect(Collectors.toList());
		List<Pizza> collect1 = collect.stream().limit(tb).collect(Collectors.toList());
		collect.removeAll(collect1);
		betalenpizzas.addAll(collect1);
		assert collect.size() == gp;
		gratispizzas.addAll(collect);
	}

	public int getTb()
	{
		return tb;
	}

	public void setTb(int tb)
	{
		this.tb = tb;
	}

	public int getGp()
	{
		return gp;
	}

	public void setGp(int gp)
	{
		this.gp = gp;
	}

	public ArrayList<Pizza> getBetalenpizzas()
	{
		return betalenpizzas;
	}

	public ArrayList<Pizza> getGratispizzas()
	{
		return gratispizzas;
	}

	public boolean isUsed()
	{
		return gratispizzas.size() == gp && betalenpizzas.size() == tb;
	}

	public int getTotal()
	{
		return gp+tb;
	}

	public int getPrijs()
	{
		return betalenpizzas.stream().mapToInt(Pizza::getPice).sum();
	}
}
