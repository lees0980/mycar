window.addEventListener("load", function () {
   var interrior= document.querySelector(".M02");
   var test = document.querySelector(".board");
   var test2= document.querySelector(".locationParts")
    
    inmenu1 = function () {
       
       test.innerHTML="";
       test2.innerHTML="";

           
        test.innerHTML =`<div class="divtest"><img src="../image/dictionary/parts/핸들.png" style="width: 260px; height: 260px;">
                    <p class="dis">핸들:<br> 손으로 열거나 들거나 붙잡을 수 있도록 덧붙여 놓은 부분을 말하지만, 자동차에서는 조향 핸들을 가리키는 것이 일반적이다.</p></div>
                  <div class="divtest"><img src="../image/dictionary/parts/와이퍼.png" style="width: 260px; height: 260px;">
                  <p class="dis">와이퍼 제어장치:<br>차량용 와이퍼 제어장치는 와이퍼를 동작시키기 위한 모터부, 와이퍼의 동작 모드를 입력 받은 후 원래 위치로 되돌아오는 와이퍼 동작 입력부, 동작 모드에 따라 모터부를 제어하는 제어부, 및 와이퍼의 동작 모드를 임시로 저장하여, 모터부, 와이퍼 인터페이스, 또는 제어부의 사이에 통신 장애가 발생하는 경우, 와이퍼 인터페이스의 위치에 상관없이 와이퍼가 일정한 속도로 동작하도록 모터부에 지시하는 예비 동작부를 포함한다</p></div>`;
        test2.innerHTML=`<div> 핸들  와이퍼</div>
                       <img src="../image/dictionary/parts/sketch/핸들스케치.png" style="width: 300px; height: 260px;">`

    }
    
    inmenu2 = function () {
       
       test.innerHTML="";
       test2.innerHTML="";
      
          
          
        test.innerHTML =`<div class="divtest"><img src="../image/dictionary/parts/핸들.png" style="width: 260px; height: 260px;">
                  <p class="dis">핸들:<br> 손으로 열거나 들거나 붙잡을 수 있도록 덧붙여 놓은 부분을 말하지만, 자동차에서는 조향 핸들을 가리키는 것이 일반적이다.</p></div>
                  <div class="divtest"><img src="../image/dictionary/parts/방향등.png" style="width: 260px; height: 260px;">
                  <p class="dis">방향등:<br>방향 지시등은 자동차(피견인차 포함)의 회전방향을 표시하는 신호수단이다. 오늘날은 대부분 점멸식 방향 지시등이 대부분이며, 점멸은 전원을 단속(ON-OFF)하는 방법으로 한다. 점멸주파수는 1분당 90±30 정도가 대부분이다.

</p></div>`;
        test2.innerHTML=`<div>핸들  방향등</div>
         <img src="../image/dictionary/parts/sketch/방향등스케치.png" style="width: 300px; height: 260px;">`
        
    }
    inmenu3 = function () {
       test.innerHTML="";
       test2.innerHTML="";

          
          
        test.innerHTML =`<div class="divtest"><img src="../image/dictionary/parts/계기판.png" style="width: 260px; height: 260px;">
                  <p class="dis">계기판: <br>운전자의 시야에 들어오는 경고등과 다이얼 장치들. 차량의 기능에 대해 알려준다.</p></div>
                  <div class="divtest"><img src="../image/dictionary/parts/계기판2.png" style="width: 260px; height: 260px;">
                  <p class="dis">설명설명</p></div>`;
        test2.innerHTML=`<div> 계기판????</div>
         <img src="../image/dictionary/parts/sketch/계기판스케치.png" style="width: 300px; height: 260px;">`
        
 
    }
    inmenu4 = function () {
       test.innerHTML="";
       test2.innerHTML="";
     
          
          
        test.innerHTML =`<div class="divtest"><img src="../image/dictionary/parts/엑셀.png" style="width: 260px; height: 260px;">
         <p class="dis">엑셀: <br>밟을수록  rpm 상승후 빠르게 움직임 </p></div>
         <div class="divtest"><img src="../image/dictionary/parts/브레이크.png" style="width: 260px; height: 260px;">
         <p class="dis">브레이크: <br>밟을시 멈춤</p></div>`;
        test2.innerHTML=`<div> 브레이크  엑셀</div>
         <img src="../image/dictionary/parts/sketch/엑셀스케치.png" style="width: 300px; height: 260px;">`
         
  
    }
    inmenu5 = function () {
       test.innerHTML="";
       test2.innerHTML="";
     
          
          
        test.innerHTML =`<div class="divtest"><img src="../image/dictionary/parts/에어백2.png" style="width: 260px; height: 260px;">
         <p class="dis">에어백:<br> 자동차가 사고로 충격을 받았을 때 사망률과 부상률을 낮춰주기 위해 자동차에 설치된 공기주머니이다. 좌석의 전면이나 측면에 설치된다. 공기주머니가 처음에는 숨어있었던 것이 자동차가 사고로 충격을 받게 되면 공기주머니가 공기주머니를 터트려주는 센서에 의하여 터진다. 현대자동차와 기아자동차의 경우, 최근 출시되는 신차에 어드밴스드 에어백을 적용하고 있다. 하지만 어드밴스드 에어백이 있는 자동차라도 자동차에 탔을 때에는 먼저 안전띠부터 바르게 착용해야 하며, 탑승자가 키가 작은 어린이일 때는 카시트를 반드시 뒷좌석에 하여 태워주어야 한다. 만약 카시트를 조수석에 설치하여 어린이가 탑승한 경우 에어백과의 거리가 가까워져 더 큰 충격을 받아 심각한 사고가 날수 있다.</p></div>
         <div class="divtest"><img src="../image/dictionary/parts/안전벨트1.png" style="width: 260px; height: 260px;">
         <p class="dis">안전벨트:<br>자동차나 비행기 등의 충돌이나 급정거로 인한 사고에서 운전자와 승객의 사망률을 낮춰 주기 위해 좌석에 설치되어 있는 띠이다. 안전벨트 또는 좌석벨트라고도 하며, 자동차나 비행기를 타면 먼저 안전띠부터 바르게 착용해야 한다.</p></div>`;
        test2.innerHTML=`<div>에어백 안전벨트</div>
         <img src="../image/dictionary/parts/sketch/에어백스케치.png" style="width: 300px; height: 260px;">`

    }
    inmenu6 = function () {
       test.innerHTML="";
       test2.innerHTML="";
       
          
          
        test.innerHTML =`<div class="divtest"><img src="../image/dictionary/parts/센터페시아.png" style="width: 260px; height: 260px;">
         <p class="dis">센터페시아:<br>대시보드 중에서 운전석과 조수석 사이에 있는 컨트롤 패널 부분을 말한다. 대시보드와 시프트레버가 수직으로 만나는 부위로, 이곳에는 오디오·에어컨·히터의 컨트롤러, 내비게이터, 송풍구, 시거잭과 재떨이, 컵홀더 따위를 설치한다. 또한 이것은 센터콘솔과 함께 운전석과 조수석을 구분하는 벽의 역할도 한다.
           </p></div>
         <div class="divtest"><img src="../image/dictionary/parts/콘솔.png" style="width: 260px; height: 260px;">
         <p class="dis">콘솔 :<br>
           각종 스위치를 한곳에 모아 제어할 수 있도록 한 조정용 장치.</p></div>`;
        test2.innerHTML=`<div> 브레이크  엑셀</div>
         <img src="../image/dictionary/parts/sketch/콘솔스케치.png" style="width: 300px; height: 260px;">`
    
    }
    exmenu1=function(){
       test.innerHTML="";
       test2.innerHTML="";
   
          
          
        test.innerHTML =`<div class="divtest"><img src="../image/dictionary/parts/사이드미러1.png" style="width: 260px; height: 260px;">
         <p class="dis">사이드미러:<br> 차체(車體)의 앞쪽 옆면에 다는 거울.</p></div>
         <div class="divtest"><img src="../image/dictionary/parts/사이드미러2.png" style="width: 260px; height: 260px;">
         <p class="dis"></p></div>`;
        test2.innerHTML=`<div>사이드미러 </div>
         <img src="../image/dictionary/parts/sketch/사이드미러스케치.png" style="width: 300px; height: 260px;">`
    }
    exmenu2=function(){
       test.innerHTML="";
       test2.innerHTML="";
   
          
          
        test.innerHTML =`<div class="divtest"><img src="../image/dictionary/parts/외부와이퍼.png" style="width: 260px; height: 260px;">
         <p class="dis">와이퍼:<br>자동차의 앞 유리에 들이치는 빗방울 따위를 좌우로 움직이면서 닦아 내는 장치.</p></div>
         <div class="divtest"><img src="../image/dictionary/parts/워셔액분사구.png" style="width: 260px; height: 260px;">
         <p class="dis">워셔액:<br>차량 앞유리를 닦을 때 쓰이는 세정액으로 와이퍼 레버를 조작하면 본넷 쪽에서 차량 전면 유리쪽으로 액체를 뿜어내는데 그것을 워셔액이라고 합니다. 앞유리의 진흙이나 먼지, 유막 등 불순물을 와이퍼를 이용하여 제거하는 용도로 사용합니다.

           워셔액은 알코올을 주성분으로, 소량의 계면활성제와 방녹제(부식방지), 물 등으로 구성되어 있습니다.


</p></div>`;
        test2.innerHTML=`<div>와이퍼 위치입니다.</div>
         <img src="../image/dictionary/parts/sketch/와이퍼스케치.png" style="width: 300px; height: 260px;">`
    }
    exmenu3=function(){
       test.innerHTML="";
       test2.innerHTML="";

          
          
        test.innerHTML =`<div class="divtest"><img src="../image/dictionary/parts/타이어.png" style="width: 260px; height: 260px;">
         <p class="dis">타이어:<br>   자동차, 자전거 따위의 바퀴 굴통에 끼우는 테. 주로 고무로 만들며 안쪽에 압축 공기를 채워 노면에서 받는 충격을 흡수한다.</p></div>
         <div class="divtest"><img src="../image/dictionary/parts/휠.png" style="width: 260px; height: 260px;">
         <p class="dis">휠 :<br>차축과 연결되어 차체의 하중을 지탱하는 바퀴에서 타이어를 제외한 부분입니다.

휠은 타이어를 일정한 형태로 유지하며 자동차에서 발생하는 구동력과 제동력을 전달합니다. 그 밖에 제동 시 휠과 브레이크의 마찰로 발생한 휠의 열을 방출하는 역할도 있습니다.

휠의 종류는 재질, 제조방식, 구조, 디자인에 따라 분류되며, 각 분류에 장/단점이 있으므로, 구매 시 신중한 선택이 필요합니다.


</p></div>`;
        test2.innerHTML=`<div>타이어 위치입니다.</div>
         <img src="../image/dictionary/parts/sketch/타이어스케치.png" style="width: 300px; height: 260px;">`
    }
    exmenu4=function(){
       test.innerHTML="";
       test2.innerHTML="";
 
          
          
        test.innerHTML =`<div class="divtest"><img src="../image/dictionary/parts/헤드라이트.png" style="width: 260px; height: 260px;">
         <p class="dis">헤드라이트: <br>기차나 자동차 따위의 앞에 단 등. 앞을 비추는 데에 쓴다.

</p></div>
         <div class="divtest"><img src="../image/dictionary/parts/안개등.png" style="width: 260px; height: 260px;">
         <p class="dis">안개등:<br>옐로 타입(황색)과 클리어 타입(백색)의 두 가지가 있다. 전조등(헤드램프)보다 가까운 곳을 비추며, 투과성이 높고 빛의 조사 각도가 넓어 가까이 있는 맞은편 차량이나 보행자의 존재를 확인하는 데 효과적이다. 안개는 지표 가까운 곳에 끼고 밀도가 낮으므로 안개등은 가급적 낮은 위치에 장착하는 것이 원칙이다. 운전자의 시야확보와 더불어 다른 운전자들에게도 유용하다. 자신의 위치를 다른 운전자들에게 알려 방어운전을 유도하기 때문이다.
           </p></div>`;
        test2.innerHTML=`<div>헤드라이트 위치입니다.</div>
         <img src="../image/dictionary/parts/sketch/헤드라이트스케치.png" style="width: 300px; height: 260px;">`
    }
    exmenu5=function(){
       test.innerHTML="";
       test2.innerHTML="";
     
          
          
        test.innerHTML =`<div class="divtest"><img src="../image/dictionary/parts/후미등.png" style="width: 260px; height: 260px;">
         <p class="dis">후미등 :<br>차량 뒤쪽에 있으며 신호를 표시할 용도로 사용되는 규정 조명 장치.

</p></div>
         <div class="divtest"><img src="../image/dictionary/parts/브레이크등.png" style="width: 260px; height: 260px;">
         <p class="dis">브레이크등:<br>뒤차의 운전자에게 내 차의 정지 상태를 알려 추돌 상황을 방지하는 역할</p></div>`;
        test2.innerHTML=`<div>후미등 위치입니다.</div>
         <img src="../image/dictionary/parts/sketch/후미등스케치.png" style="width: 300px; height: 260px;">`
    }
    
    exmenu6=function(){
       test.innerHTML="";
       test2.innerHTML="";
       
          
          
        test.innerHTML =`<div class="divtest"><img src="../image/dictionary/parts/트렁크.png" style="width: 260px; height: 260px;">
         <p class="dis">트렁크:<br>정식 명칭은 트렁크리드(trunk lid)이다. 트렁크는 원래 '여행용 가방'을 뜻한다. 초기 자동차에서는 실제로 여행용 가방인 트렁크를 객실 뒷쪽에 매달고 다녔다고 한다. 그 뒤로 짐을 실을 수 있는 공간의 필요성이 증대되면서 오늘날과 같은 트렁크가 만들어졌다. 보통 사람이 타는 객실 뒷부분에 설치되는 것이 일반적이다.
           </p></div>
         <div class="divtest"><img src="../image/dictionary/parts/비상탈출레버.png" style="width: 260px; height: 260px;">
         <p class="dis">비상탈출레버: <br>트렁크안에 갇혔을때 문을열수있게 해주는 레버</p></div>`;
        test2.innerHTML=`<div>트렁크 위치입니다.</div>
         <img src="../image/dictionary/parts/sketch/트렁크스케치.png" style="width: 300px; height: 260px;">`
    }
    
    exmenu7=function(){
       test.innerHTML="";
       test2.innerHTML="";
   
          
          
        test.innerHTML =`<div class="divtest"><img src="../image/dictionary/parts/주유구.png" style="width: 260px; height: 260px;">
         <p class="dis">주유구:<br> 기름을 넣을 수 있도록 만든 구멍.</p></div>
         <div class="divtest"><img src="../image/dictionary/parts/요소수.png" style="width: 260px; height: 260px;">
         <p class="dis">요소수:<br>요소수(尿素水) 또는 디젤배기유체(Diesel exhaust fluid)는 디젤 엔진 따위에서 선택적 촉매 환원을 통해 질소 산화물을 질소로 환원시켜 배출을 절감하기 위해 쓰이는 표준화된 농도의 요소의 수용액이다. ISO 22241에 의해 32.5%의 요소와 60.5%의 탈이온수(정제수의 일종)를 쓰도록 정해졌다.</p></div>`;
        test2.innerHTML=`<div>주유구 위치입니다.</div>
         <img src="../image/dictionary/parts/sketch/주유구스케치.png" style="width: 300px; height: 260px;">`
    }
    

});