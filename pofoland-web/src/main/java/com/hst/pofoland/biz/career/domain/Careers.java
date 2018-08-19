package com.hst.pofoland.biz.career.domain;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@XmlAccessorType(XmlAccessType.FIELD)
@Data
@EqualsAndHashCode
@ToString
public class Careers {
	
	 @XmlElement(name="job")
	 List<Career> career;
	 
	 @XmlAttribute(name="count")
	 private Integer count;
	 
	 @XmlAttribute(name="start")
	 private Integer start;
	 
	 @XmlAttribute(name="total")
	 private Integer total;
}
