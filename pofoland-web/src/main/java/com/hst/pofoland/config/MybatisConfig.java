/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.config;

import javax.sql.DataSource;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.type.InstantTypeHandler;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.LocalDateTimeTypeHandler;
import org.apache.ibatis.type.LocalDateTypeHandler;
import org.apache.ibatis.type.LocalTimeTypeHandler;
import org.apache.ibatis.type.TypeHandler;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * Mybatis Configuration
 *
 * @author HG
 * @since 2018. 7. 1.
 * @see
 *
 */
@Configuration
@EnableTransactionManagement
@MapperScan(basePackages = "com.hst.pofoland", annotationClass = Mapper.class)
public class MybatisConfig {

    /**
     * SqlSessionFactory에 사용할 설정사항
     * 
     * @return
     */
    private org.apache.ibatis.session.Configuration sqlSessionFactoryBeanConfiguration() {
        org.apache.ibatis.session.Configuration ibatisConfiguration = new org.apache.ibatis.session.Configuration();
        ibatisConfiguration.setCacheEnabled(true);
        ibatisConfiguration.setDefaultExecutorType(ExecutorType.SIMPLE);
        ibatisConfiguration.setMapUnderscoreToCamelCase(true);
        ibatisConfiguration.setDefaultFetchSize(200);
        ibatisConfiguration.setJdbcTypeForNull(JdbcType.NULL);
        return ibatisConfiguration;
    }

    @Bean
    public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(dataSource);
        sqlSessionFactoryBean.setMapperLocations(
                new PathMatchingResourcePatternResolver().getResources("classpath:/mybatis/mappers/**/*.xml"));
        sqlSessionFactoryBean.setTypeAliasesPackage("com.hst.pofoland");
        sqlSessionFactoryBean.setConfiguration(sqlSessionFactoryBeanConfiguration());

        // TypeHandler 추가
        sqlSessionFactoryBean.setTypeHandlers(new TypeHandler[] { new InstantTypeHandler(),
                new LocalDateTimeTypeHandler(), new LocalDateTypeHandler(), new LocalTimeTypeHandler() });

        return sqlSessionFactoryBean.getObject();
    }

    @Bean
    public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory) {
        return new SqlSessionTemplate(sqlSessionFactory);
    }

}
