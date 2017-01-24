package com.niit.helloworld;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.niit.di.Traveller;

public class App 
{
    public static void main( String[] args )
    {
    	/**ApplicationContext context=new FileSystemXmlApplicationContext("beans.xml");
        Greetings greetings=(GreetingsImpl) context.getBean("greetingsObj");//greetingsObj is a value of id attribute
        System.out.println(greetings.sayGreetings());
      */
    	ApplicationContext context=new FileSystemXmlApplicationContext("beans.xml");
    	Traveller traveller=(Traveller)context.getBean("traveller"); //SPRING CONTAINER
    	System.out.println(traveller.getTravelDetails());

    }
}
