package com.niit.di;

public class Car implements Vehicle{
double CostPerKm;

public double getCostPerKm() {
	return CostPerKm;
}

public void setCostPerKm(double costPerKm) {
	CostPerKm = costPerKm;
}
@Override
	public double getCostDetails() {
		// TODO Auto-generated method stub
		return this.CostPerKm;
	}
}
