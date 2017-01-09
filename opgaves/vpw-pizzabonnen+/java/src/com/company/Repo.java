package com.company;

import java.util.ArrayList;
import java.util.List;

public class Repo
{
	List<Pizza> Pizzas = new ArrayList<>();
	ArrayList<Bon> bonnen = new ArrayList<>();

	public void add(Pizza Pizza)
	{
		Pizzas.add(Pizza);
	}

	public void add(Bon bon)
	{
		bonnen.add(bon);
	}

	public List<Pizza> getPizzas()
	{
		return Pizzas;
	}

	public void setPizzas(List<Pizza> Pizzas)
	{
		this.Pizzas = Pizzas;
	}

	public ArrayList<Bon> getBonnen()
	{
		return bonnen;
	}

	public void setBonnen(ArrayList<Bon> bonnen)
	{
		this.bonnen = bonnen;
	}
}
