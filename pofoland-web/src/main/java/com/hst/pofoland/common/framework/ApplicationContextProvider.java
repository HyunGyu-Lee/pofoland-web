/**
 * 
 */
package com.hst.pofoland.common.framework;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

/**
 * Spring Application Context provider 
 *
 * @author HG
 * @since 2018. 11. 11.
 * @see
 *
 */
@Component
public class ApplicationContextProvider implements ApplicationContextAware {

    private ApplicationContext applicationContext;
    
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }
    
    /**
     * @return the applicationContext
     */
    public ApplicationContext getApplicationContext() {
        return applicationContext;
    }
    
}
