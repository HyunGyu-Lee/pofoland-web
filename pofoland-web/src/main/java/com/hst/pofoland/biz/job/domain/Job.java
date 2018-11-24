package com.hst.pofoland.biz.job.domain;

import lombok.Data;
import net.sf.jsqlparser.expression.DateTimeLiteralExpression.DateTime;

@Data
public class Job {
	private String jobTtl;
	private String jobCompanyNm;
	private int jobCategoryCd;
	private DateTime jobNotiStartDt;
	private DateTime jobNotiEndDt;
	private String jobNotiLink;
	private String jobRcYn;
	private int jobMinSalary;
	private int jobMaxSalary;
	private String jobLocation;
	private int jobCareerMin;
	private int jobCareerMax;
	private String jobKeyword;
}
