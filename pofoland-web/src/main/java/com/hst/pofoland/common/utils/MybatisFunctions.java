/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.common.utils;

import java.lang.reflect.Array;
import java.util.List;
import java.util.Map;

/**
 * Mybatis에서 사용하는 함수
 *
 * @author HG
 * @since 2018. 11. 25.
 * @see
 *
 */
public class MybatisFunctions {

    @SuppressWarnings("rawtypes")
    public static Boolean empty(Object obj) {
        if (obj instanceof String) {
            return obj == null || "".equals(obj.toString().trim());
        } else if (obj instanceof List) {
            return obj == null || ((List) obj).isEmpty();
        } else if (obj instanceof Map) {
            return obj == null || ((Map) obj).isEmpty();
        } else if (obj instanceof Object[]) {
            return obj == null || Array.getLength(obj) == 0;
        } else {
            return obj == null;
        }
    }
    
    public static Boolean isNotEmpty(Object obj) {
        return !empty(obj);
    }
    
}
