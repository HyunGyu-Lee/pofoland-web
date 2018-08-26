package com.hst.pofoland.biz.career.domain.code;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlValue;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@XmlAccessorType(XmlAccessType.FIELD)
@Data
@EqualsAndHashCode
@ToString
public class SalaryCode {
	
	@XmlValue
	private String salary;
	
	@XmlAttribute(name="code")
	private String code;
}
