/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.common.batch.domain;

/**
 * 클래스에 설명을 적는다.
 *
 * @author HG
 * @since 2018. 11. 4.
 * @see
 *
 */
public class BatchJobException extends Exception {

    private static final long serialVersionUID = -1940340303501515221L;

    private Exception originalException;
    
    public BatchJobException(Exception originalException) {
        this.originalException = originalException;
    }
    
}
