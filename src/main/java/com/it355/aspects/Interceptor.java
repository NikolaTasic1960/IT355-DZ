package com.it355.aspects;

import java.lang.reflect.Method;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.aop.MethodBeforeAdvice;

@Aspect
public class Interceptor implements MethodBeforeAdvice {
    
    @Override
    public void before(Method arg0, Object[] arg1, Object arg2)
            throws Throwable {
        System.out.println("logBefore() is running!");
        System.out.println("hijacked : " + arg0.getName());
        System.out.println("******");
    }

    @After("execution(*com.it355.logging.LoggingImpl.logg(..))")
    public void logAfter(JoinPoint joinPoint) {
        System.out.println("intercepting : "
                + joinPoint.getSignature().getName());
        System.out.println("******");
}
    
}
