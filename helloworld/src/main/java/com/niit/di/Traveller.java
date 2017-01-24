package com.niit.di;

public class Traveller {
int KmTravelled;
private Vehicle vehicle;
public int getKmTravelled() {
	return KmTravelled;
}
public void setKmTravelled(int kmTravelled) {
	KmTravelled = kmTravelled;
}
public Vehicle getVehicle() {
	return vehicle;
}
public void setVehicle(Vehicle vehicle) {
	this.vehicle = vehicle;
}
public String getTravelDetails() {
	 return "Total Cost " + this.KmTravelled * vehicle.getCostDetails();

	}
}
