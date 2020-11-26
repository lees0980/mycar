package com.mycar.web.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycar.web.entity.Recommend;
import com.mycar.web.service.RecommendService;

@Controller
@RequestMapping("/recommend/")
public class RecommendController {

	@Autowired
	private RecommendService recommendService;

	// customize.jsp에 입력된 사용자 값을 contoller로 받아서 service로 보내준다.
	// DAO에서 query로 DB에서 데이터를 불러와서 List에 저장한 것을 controller에서 Model을 써서 불러온다.
	// return값으로 JSP 주소를 입력하고 보내준다.
	@GetMapping("customize")
	public String customize(@RequestParam(name = "budget", required = false) Integer minPrice, Integer maxPrice,
			@RequestParam(name = "brand", required = false, defaultValue = "%") String brand,
			@RequestParam(name = "carType", required = false, defaultValue = "%") String carType,
			@RequestParam(name = "carSegment", required = false, defaultValue = "%") String carSegment,
			@RequestParam(name = "fuelType", required = false, defaultValue = "%") String fuelType, Model model)
			throws ClassNotFoundException, SQLException {
		// customize페이지에 넘어 갔을 때, 사용자 선택이 되었을 때와 안되었을 때를 나눈 것.
		if (minPrice != null) {
			List<Recommend> list = recommendService.getList(brand, minPrice, maxPrice, carType, carSegment, fuelType);
			model.addAttribute("list", list);
		} else {
			List<Recommend> list1 = recommendService.getList1(brand, carType, carSegment, fuelType);
			model.addAttribute("list", list1);
		}

		System.out.printf("recommendController1 : %d, %s, %s, %s\n", maxPrice, carType, carSegment, fuelType);
		return "recommend.customize";
	}

	// 자동차 세부 페이지로 가기 위해 customize.jsp에서 id 값을 받온다.
	// detail.jsp에서'n'이라는 이름으로 리스트를 보내준다.
	@GetMapping("detail/{id}")
	public String detail(@PathVariable("id") int id, Model model) throws ClassNotFoundException, SQLException {

		Recommend recommend = recommendService.getDetail(id);
		model.addAttribute("n", recommend);

		return "recommend.detail";
	}

	// 사진을 불러 와서 나열하는 것. 근데 이거 ajax를 써야 하는 거 아닌가....
	// 이게 맞는 건가???
	@GetMapping("????")
	public String photo(@PathVariable("id") int id, Model model) throws ClassNotFoundException, SQLException {
		Recommend recommend = recommendService.getPhoto(id);
		model.addAttribute("p", recommend);

		return "recommend.photo";
	}
}