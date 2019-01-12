package com.hst.pofoland.biz.careers.domain;

import lombok.Data;
import net.sf.jsqlparser.expression.DateTimeLiteralExpression.DateTime;

@Data
public class CareerInfo {
	private String careerTtl;
	private String careerCompanyNm;
	private int careerCategoryCd;
	private DateTime careerNotiStartDt;
	private DateTime careerNotiEndDt;
	private String careerNotiLink;
	private String careerRcYn;
	private int careerMinSalary;
	private int careerMaxSalary;
	private String careerCompanyLocation;
	private int careerMinCareer;
	private int careerMaxCareer;
	private String careerKeyword;
}
