/**
 * 
 */
package com.hst.pofoland.config.logback;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import com.hst.pofoland.common.utils.StringUtils;

import ch.qos.logback.classic.Level;
import ch.qos.logback.classic.Logger;
import ch.qos.logback.classic.LoggerContext;
import ch.qos.logback.classic.spi.LoggerContextListener;
import ch.qos.logback.core.spi.ContextAwareBase;
import ch.qos.logback.core.spi.LifeCycle;

/**
 * Logback Start 리스너 클래스 
 *
 * @author 이현규
 * @since 2018. 6. 17.
 * @see
 *
 */
public class LoggerStartupListener extends ContextAwareBase implements LoggerContextListener, LifeCycle {

    private boolean started = false;
    
    private static String DEFAULT_LOG_HOME = "/logs";
    private static Properties PROPS;
    
    @Override
    public boolean isStarted() {
        return started;
    }

    @Override
    public void start() {
        if (started) {
            return;
        }

        String profile = System.getProperty("spring.profiles.active");
        
        if (StringUtils.isEmpty(profile)) {
            profile = "local";
        }
        
        try {
            PROPS = loadProperties("application-" + profile + ".properties");
        } catch (IOException e) {
            PROPS = null;
        }
        
        String logHome = StringUtils.defaultIfBlank(PROPS.getProperty("log.home"), DEFAULT_LOG_HOME);
        
        context.putProperty("LOG_HOME", logHome);
        context.putProperty("ACTIVE_PROFILE", profile);
        
        started = true;
    }

    public Properties loadProperties(String fileProps) throws IOException {
        Properties props = new Properties();
        InputStream inpStream = null;
         
        try {
            inpStream = this.getClass().getClassLoader().getResourceAsStream(fileProps);
            
            props.load(inpStream);
            return props;
        } finally {
            if (inpStream != null) {
                inpStream.close();
            }
        }
    }
    
    @Override
    public void stop() {}

    @Override
    public boolean isResetResistant() {
        return false;
    }

    @Override
    public void onLevelChange(Logger log, Level level) {}

    @Override
    public void onReset(LoggerContext context) {}

    @Override
    public void onStart(LoggerContext context) {}

    @Override
    public void onStop(LoggerContext context) {}
}
