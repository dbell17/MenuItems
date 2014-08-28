/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author dbell17
 */
public class WelcomeService {
    Date date = new Date();
    Calendar calendar = Calendar.getInstance();
    
   

 public String determineTime () {
     
     int hourOfDay = calendar.get(Calendar.HOUR_OF_DAY);
     String partOfDay="";
     
     if (hourOfDay >12){
         partOfDay = "It is morning. The hour is " + hourOfDay;
     } else if (hourOfDay <12){
         partOfDay = " it is night time the hour is " + hourOfDay;
         
     }
     return partOfDay;
 }
    
    public static void main(String[] args) {
        WelcomeService w = new WelcomeService();
        System.out.println(w.determineTime());
    }
}
