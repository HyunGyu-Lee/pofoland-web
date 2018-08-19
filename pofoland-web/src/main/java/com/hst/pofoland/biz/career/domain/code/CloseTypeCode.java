package com.hst.pofoland.biz.career.domain.code;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlValue;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/*close-type code*/
@XmlAccessorType(XmlAccessType.FIELD)
@Data
@EqualsAndHashCode
@ToString
public class CloseTypeCode {
	
	@XmlValue
	private String closeType;
	
	@XmlAttribute(name="code")
	private String code;	
}
