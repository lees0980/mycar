package com.mycar.web.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycar.web.dao.RecommendDao;
import com.mycar.web.entity.Recommend;
import com.mycar.web.entity.Talk;

@Service
public class RecommendService {
	@Autowired
	private RecommendDao recommendDao;

	// jsp에서 controller에 보내준 값을 service에서 받아서 Dao에게 전달한다.
	// 사용자 선택시 받는 목록.

	public List<Recommend> getList(String brand, Integer minPrice, Integer maxPrice, String carType, String carSegment,
			String fuelType) throws ClassNotFoundException, SQLException {
		maxPrice = minPrice + 1000;

		if (minPrice == 6000)
			return recommendDao.getListOver(brand, minPrice, carType, carSegment, fuelType);

		return recommendDao.getList(brand, minPrice, maxPrice, carType, carSegment, fuelType);
	}

	// 페이지 열면 기본적으로 나오는 목록.
	public List<Recommend> getList1(String brand, String carType, String carSegment, String fuelType) {

		return recommendDao.getList1(brand, carType, carSegment, fuelType);
	}

//   detail page - 자동차의 이름을 클릭하면 Dao에서 id 값을 받아온다.
	public Recommend getDetail(int id) {
		return recommendDao.getDetail(id);
	}

	public Recommend getPhoto(int id) {

		return recommendDao.getPhoto(id);
	}
	
	public void regCar(Recommend car) {

		recommendDao.RegCar(car);
	}
	
	public void imgRegCar(String img1, String img2, String img3, String img4, String img5) {
		recommendDao.imgRegCar(img1, img2, img3, img4, img5);
	}
	
	public int delCar(int id) {
		return recommendDao.delCar(id);

	}

}