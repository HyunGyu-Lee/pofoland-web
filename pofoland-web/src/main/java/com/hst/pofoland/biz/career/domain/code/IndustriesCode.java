package com.hst.pofoland.biz.career.domain.code;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlValue;

import lombok.ToString;

@XmlAccessorType(XmlAccessType.FIELD)
@ToString
public class IndustriesCode {
	
	@XmlValue
	private String industries;
	
	@XmlAttribute(name="code")
	private String code;

	public String getIndustries() {
		return industries;
	}

	public void setIndustries(String industries) {
		this.industries = industries;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	
}
