package com.it355.logging;

public class LoggingImpl implements Logging {
    
    @Override
    public void logg() {
        System.out.println("Login na sistem");
    }

    @Override
    public void logout() {
        System.out.println("Logout sa sistema");
    }

    
}
