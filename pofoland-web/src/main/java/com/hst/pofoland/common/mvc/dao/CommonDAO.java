/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.common.mvc.dao;

import java.util.List;

/**
 * 추상 DAO 인터페이스
 * 
 * 기본적인 CRUD 인터페이스 제공
 * 추가기능은 각 DAO에서 구현
 *
 * @author HG
 * @since 2018. 7. 8.
 * @see
 *
 */
public interface CommonDAO<Key, Entity> {
    
    /**
     * Entity 목록 조회
     * 
     * @param entityCondition 검색 Entity 상태
     * @return
     */
    public List<Entity> findList(Entity entityCondition);
    
    /**
     * Key값으로 단 건 조회
     * 
     * @param key 조회할 Entity의 키
     * @return
     */
    public Entity findOne(Key key);
    
    /**
     * Entity 등록
     * 
     * @param entity 등록 entity
     * @return
     */
    public int create(Entity entity);
    
    /**
     * Entity 수정
     * 
     * @param entity 수정 entity
     * @return
     */
    public int update(Entity entity);
    
    /**
     * Entity 삭제
     * 
     * @param key 삭제할 key
     * @return
     */
    public int delete(Key key);
}
