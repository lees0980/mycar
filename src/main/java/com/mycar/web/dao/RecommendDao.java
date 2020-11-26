package com.mycar.web.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.mycar.web.entity.Member;
import com.mycar.web.entity.Recommend;

@Mapper
public interface RecommendDao {

//---------------[recommend page 쿼리문]------------------------------------------------------------------------
   // jsp에서 controller에 보내준 값을 service에서 받아서 Dao에게 전달되고 entity에서 변수를 매칭해서 query에 넣는다.
   // query로 DB에서 데이터를 불러오고 불러온 값을 List에 담는다. 그리고 다시 contoller로 보내준다.

   
//---------20200722-------------------------수정된부분---------------------------------------------------
   @Select(
         "SELECT @rownum:=@rownum+1 as rownum, C. * "
         + "FROM (SELECT * FROM car "
         + "WHERE brand like '${param1}' "
         + "and maxPrice between '${param2}' and ${param3} "
         + "and carType like '${param4}' "
         + "and carSegment like '${param5}' "
         + "and fuelType like '${param6}'"
         + "ORDER BY maxPrice DESC) C, "
         + "(select @rownum :=0) TMP"
            )
   List<Recommend> getList(String brand, Integer minPrice,Integer maxPrice, String carType, String carSegment, String fuelType) 
         throws ClassNotFoundException, SQLException;
   @Select(
         "SELECT @rownum:=@rownum+1 as rownum, C. * "
         + "FROM (SELECT * FROM car "
         + "WHERE brand like '${param1}' "
         + "and maxPrice > '${param2}' "
         + "and carType like '${param3}' "
         + "and carSegment like '${param4}' "
         + "and fuelType like '${param5}'"
         + "ORDER BY maxPrice DESC) C, "
         + "(select @rownum :=0) TMP"
            )
      List<Recommend> getListOver(String brand, Integer minPrice, String carType, String carSegment, String fuelType) 
            throws ClassNotFoundException, SQLException;
 //---------20200722-------------------------수정된부분---------------------------------------------------
   
   
//   @Select("select * from car where maxPrice between 0 and 90000 order by maxPrice limit 10")
//   List<Recommend> getList1();
   
      @Select("SELECT @rownum:=@rownum+1 as rownum, C. * "
           + "FROM (SELECT * FROM car "
           + "WHERE brand like '${param1}' "
           + "and maxPrice between 0 and 150000 "
           + "and carType like '${param2}' "
           + "and carSegment like '${param3}' "
           + "and fuelType like '${param4}'"
           + "ORDER BY maxPrice DESC) C, "
           + "(select @rownum :=0) TMP"
          )
         List<Recommend> getList1(String brand, String carType, String carSegment, String fuelType);

//---------------[detail page 쿼리문]-----------------------------------------------------------------------   
   // 사용자가 자동차 리스트에서 선택을 하면 그 자동차의 id 값을 읽어서 그 id를 가진 자동차의 리스트를 다 가져와야 한다.
   @Select("SELECT * FROM car WHERE id = #{id}")
   Recommend getDetail(int id);

   // 사진을 불러오는 
   @Select("SELECT img1, img2, img3, img4, img5 FROM car WHERE id = #{id}")
   Recommend getPhoto(int id);
   
   @Delete("DELETE FROM car WHERE id = #{id}")
   int delCar(int id);
   
   @Insert("Insert into car(brand, carSegment, carType, carName, engine, "
   		+ "fuelType, fuelEfficiency, fuelEfficiencyGrade, maxHp, maxTorque, "
   		+ "passengers, mainWheel, maxPrice,"
   		+ "img1, img2, img3, img4, img5)"
   		+ "values('${brand}', '${carSegment}', '${carType}','${carName}', '${engine}', "
   		+ "'${fuelType}', '${fuelEfficiency}', '${fuelEfficiencyGrade}', '${maxHp}', '${maxTorque}',"
   		+ "'${passengers}', '${mainWheel}', '${maxPrice}',"
   		+ "'${carName}1.PNG', '${carName}2.PNG', '${carName}3.PNG', '${carName}4.PNG', '${carName}5.PNG');")
   int RegCar(Recommend car);
   
   @Insert("Insert into car(img1, img2, img3, img4, img5) "
   		+ "values('${param1}', '${param2}', '${param3}', '${param4}', '${param5}');")
   int imgRegCar(String img1, String img2, String img3, String img4, String img5);
}