package com.hst.pofoland.biz.career.domain;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@XmlRootElement(name="job-search")
@XmlAccessorType(XmlAccessType.FIELD)
@Data
@EqualsAndHashCode
@ToString
public class CareerSearch {
	
	@XmlElement(name="jobs")
	private Careers careers;
	 
}
