package com.hst.pofoland.common.batch.jobs.career;

import org.springframework.batch.item.ItemProcessor;
import org.springframework.stereotype.Component;

import com.hst.pofoland.biz.career.domain.Career;
import com.hst.pofoland.biz.careers.domain.CareerInfo;

@Component
public class CareerInfoItemProcessor implements ItemProcessor<Career, CareerInfo>{

	@Override
	public CareerInfo process(Career item) throws Exception {
		CareerInfo careerInfo = new CareerInfo();
		careerInfo.setCareerTtl(item.getPosition().getTitle());
		careerInfo.setCareerCompanyNm(item.getCompany().getName());
		//careerInfo.setCareerCategoryCd(Integer.parseInt(item.getPosition().getJobCategoryCode().getCode()));
		//careerInfo.setCareerNotiStartDt();
		//careerInfo.setCareerNotiEndDt(careerNotiEndDt);
		careerInfo.setCareerNotiLink(item.getCompany().getLink());
		careerInfo.setCareerRcYn(item.getPosition().getRequiredEducationLevelCode().getRequiedEducationLevel());
		//careerInfo.setCareerMinSalary(item.get);
		//careerInfo.setCareerMaxSalary();
		careerInfo.setCareerCompanyLocation(item.getPosition().getLocationCode().getLocation());
		//careerInfo.setCareerMinCareer(item.getPosition().get);
		//careerInfo.setCareerMaxCareer(careerMaxCareer);
		careerInfo.setCareerKeyword(item.getKeyword());
		return careerInfo;
	}
	
}
