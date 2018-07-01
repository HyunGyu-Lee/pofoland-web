/**
 * 
 */
package com.hst.pofoland.config.logback;

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
    
    private static final String DEFAULT_LOG_HOME = "C:\\app\\platform\\repository\\git\\pofoland-web\\logs";
    
    @Override
    public boolean isStarted() {
        return started;
    }

    @Override
    public void start() {
        if (started) {
            return;
        }
        
        // TODO 차후 환경 profiles 분리 시 로그홈 가져오는 로직 변경할 것
        
        context.putProperty("LOG_HOME", DEFAULT_LOG_HOME);
        
        started = true;
    }

    @Override
    public void stop() {
    }

    @Override
    public boolean isResetResistant() {
        return false;
    }

    @Override
    public void onLevelChange(Logger arg0, Level arg1) {
    }

    @Override
    public void onReset(LoggerContext arg0) {
    }

    @Override
    public void onStart(LoggerContext arg0) {
    }

    @Override
    public void onStop(LoggerContext arg0) {
    }
    
}
