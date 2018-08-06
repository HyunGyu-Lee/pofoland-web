/**
 * 
 */
package com.hst.pofoland.common.mvc.domain;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 계층형 구조를 표현한 추상 도메인
 * 상속받는 클래스에서는 계층구조 표현에 사용할 키, 부모키를 어떻게 제공할 것인지 직접 구현한다.
 * 
 * @author HG
 * @since 2018. 8. 6.
 * @see
 *
 */
@Data
@EqualsAndHashCode(callSuper = false)
@SuppressWarnings("unused")
public abstract class HierarchyDomain<K, E> extends BasicDomain {
    
    private static final long serialVersionUID = 8765609802087358595L;
    
    private K key;
    
    private K parentKey;
    
    private List<E> child;
    
    private int level;
    
    public abstract K getKey();
    
    public abstract K getParentKey();
    
    public List<E> getChild() {
        if (child == null)
            child = new ArrayList<>();
        
        return child;
    }
}