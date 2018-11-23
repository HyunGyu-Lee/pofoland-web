/**
 * 
 */
package com.hst.pofoland.common.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import com.hst.pofoland.common.mvc.domain.BasicDomain;
import com.hst.pofoland.common.mvc.domain.HierarchyDomain;

import lombok.experimental.UtilityClass;

/**
 * Collection 관련 유틸리티 클래스 (Apache Collection 유틸 확장)
 *
 * @author HG
 * @since 2018. 8. 6.
 * @see
 *
 */
@SuppressWarnings({"rawtypes", "unused", "unchecked"})
@UtilityClass
public class CollectionUtils extends org.apache.commons.collections.CollectionUtils {
    
    /**
     * 1차원 목록형 데이터를 계층형으로 변환
     * 
     * @param result 결과를 담을 리스트
     * @param source 소스 데이터를 담고있는 리스트
     * @param startWith 계층구조 매칭 시작값
     * @param startLevel 부여할 시작 레벨
     */
    public static <E extends HierarchyDomain> List<E> flatToHierarchy(List<E> source, Object startWith, int startLevel) {
        return flatToHierarchyCore(new ArrayList<>(), source, startWith, startLevel);
    }
    
    private static <E extends HierarchyDomain> List<E> flatToHierarchyCore(List<E> result, List<E> source, Object startWith, int startLevel) {
        for (E e : source) {
            if (Objects.equals(e.getParentKey(), startWith)) {
                flatToHierarchyCore(e.getChild(), source, e.getKey(), startLevel + 1);

                e.setLevel(startLevel);
                result.add(e);
            }
        }
        
        return result;
    }
    
}
