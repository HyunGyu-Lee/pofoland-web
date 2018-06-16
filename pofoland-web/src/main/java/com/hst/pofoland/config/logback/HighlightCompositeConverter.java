/**
 * 
 */
package com.hst.pofoland.config.logback;

import org.springframework.stereotype.Component;

import ch.qos.logback.classic.Level;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.pattern.color.ANSIConstants;
import ch.qos.logback.core.pattern.color.ForegroundCompositeConverterBase;

/**
 * 
 * 시스템명 : 여행 기록 저장 시스템
 * com.hst.pofoland.config.logback.HighlightCompositeConverter.java
 * 클래스 설명 : Ansi지원하는 콘솔에 컬러 로그 출력 설정
 *
 * @author 이현규
 * @since 2018. 6. 13.
 * @version 1.0.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 * 수정일          수정자         수정내용
 * -------------------------------------------------
 * 2018. 6. 13.     이현규         최초생성
 * </pre>
 */
@Component
public class HighlightCompositeConverter extends ForegroundCompositeConverterBase<ILoggingEvent> {

    @Override
    protected String getForegroundColorCode(ILoggingEvent event) {
        Level level = event.getLevel();
        
        switch (level.toInt()) {
            case Level.ERROR_INT:
                return ANSIConstants.BOLD + ANSIConstants.RED_FG;
            case Level.WARN_INT:
                return ANSIConstants.GREEN_FG;
            case Level.INFO_INT:
                return "92";
                //return ANSIConstants.BOLD + "95";
            case Level.DEBUG_INT:
                if (event.getLoggerName().toLowerCase().contains("com.hst.pofoland")) {
                    return "9;44";
                }
                
                return ANSIConstants.DEFAULT_FG;
            default:
                return ANSIConstants.DEFAULT_FG;
        }
    }
    
}
