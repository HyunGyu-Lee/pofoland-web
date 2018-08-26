package com.hst.pofoland.biz.career.domain;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;

import lombok.ToString;

@XmlAccessorType(XmlAccessType.FIELD)
@ToString
public class Company {
	
	 @XmlElement(name="name")
	 private String name;
	 
	 @XmlAttribute(name="href")
	 private String link;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}
	
}
