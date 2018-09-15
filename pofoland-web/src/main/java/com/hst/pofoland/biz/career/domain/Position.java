package com.hst.pofoland.biz.career.domain;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;

import com.hst.pofoland.biz.career.domain.code.IndustriesCode;
import com.hst.pofoland.biz.career.domain.code.JobCategoryCode;
import com.hst.pofoland.biz.career.domain.code.JobTypeCode;
import com.hst.pofoland.biz.career.domain.code.LocationCode;
import com.hst.pofoland.biz.career.domain.code.RequiedEducationLevelCode;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@XmlAccessorType(XmlAccessType.FIELD)
@Data
@EqualsAndHashCode
@ToString
public class Position {
	
	@XmlElement(name="title")
	private String title;
	
	@XmlElement(name="location")
	private LocationCode locationCode;
	
	@XmlElement(name="job-type")
    private JobTypeCode jobTypeCode;
	
	@XmlElement(name="industries")
	private IndustriesCode industriesCode;
	
	@XmlElement(name="job-category")
	private JobCategoryCode jobCategoryCode;
	
	@XmlElement(name="open-quantity")
	private String openQuantity;
	
	@XmlElement(name="required-education-level")
	private RequiedEducationLevelCode requiredEducationLevelCode;
}
