package com.niit.helloworld;

public class GreetingsImpl implements Greetings{
private String message;

public String getMessage() {
	return message;
}

public void setMessage(String message) {
	this.message = message;
}
@Override
	public String sayGreetings() {
		// TODO Auto-generated method stub
		return this.message;
	}
}
