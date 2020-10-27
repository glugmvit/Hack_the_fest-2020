/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dependencyinjection;

/**
 *
 * @author Ali
 */
public class DependencyInjection {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        Services s1=new Services("Serices 1");
        Services s2=new Services("Serices 2");
        Services s3=new Services("Serices 3");
        
        Customer c1=new Customer(s1);
        Customer c2=new Customer(s2);
        Customer c3=new Customer(s3);
        c1.viewCustomerServices();
        c2.viewCustomerServices();
        c3.viewCustomerServices();
        
    }
    
}
