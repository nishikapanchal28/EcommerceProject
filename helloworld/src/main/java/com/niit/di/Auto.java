package com.niit.di;

public class Auto implements Vehicle{
	double PricePerKm;

	public double getPricePerKm() {
		return PricePerKm;
	}

	public void setPricePerKm(double pricePerKm) {
		PricePerKm = pricePerKm;
	}
	@Override
	public double getCostDetails() {
		// TODO Auto-generated method stub
		return this.PricePerKm;
	}

}
