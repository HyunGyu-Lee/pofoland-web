package com.hst.pofoland.biz.delete;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 클래스에 설명을 적는다.
 *
 * @author HG
 * @since 2018. 7. 1.
 * @see
 *
 */
@Service
public class UserService {

    private UserMapper userMapper;
    
    @Autowired
    public UserService(UserMapper userMapper) {
        this.userMapper = userMapper;
    }
    
    public List<User> findAll() {
        return userMapper.findAll();
    }
    
}
