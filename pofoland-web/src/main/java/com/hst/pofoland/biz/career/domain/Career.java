package com.hst.pofoland.biz.career.domain;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;

import com.hst.pofoland.biz.career.domain.code.CloseTypeCode;
import com.hst.pofoland.biz.career.domain.code.SalaryCode;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@XmlAccessorType(XmlAccessType.FIELD)
@Data
@EqualsAndHashCode
@ToString
public class Career {
	
	@XmlElement(name="id")
	private String id;
	
	@XmlElement(name="url")
	private String url;
	
	@XmlElement(name="active")
	private String actvie;
	
	@XmlElement(name="posting-timestamp")
	private String upostingTimestamprl;
	
	@XmlElement(name="modification-timestamp")
	private String modificationTimestamp;
	
	@XmlElement(name="opening-timestamp")
	private String openingTimestamp;
	
	@XmlElement(name="expiration-timestamp")
	private String expirationTimestamp;
	
	@XmlElement(name="close-type")
	private CloseTypeCode closeTypeCode;
	
	@XmlElement(name="company")
	private Company company;
	
	@XmlElement(name="position")
	private Position position;
	
	@XmlElement(name="keyword")
	private String keyword;
	
	@XmlElement(name="salary")
	private SalaryCode salaryCode;

}
