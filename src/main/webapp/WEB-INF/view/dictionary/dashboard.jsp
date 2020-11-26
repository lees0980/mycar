<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
       .w {
          font-size: 20px;
          margin: 5px;
       }
    </style>
<script src="/js/dictionary/prac.js"></script>
<link href="/css/dictionary/dashboard.css" type="text/css" rel="stylesheet">
<main id="center">
    <div class="b">
        <img src="/Image/dictionary/warning.jpg" alt="계기판" usemap="#warning">
    </div>
    <map name="warning" class="warning">
        <area shape="rect" coords="0,0,45,55" nohref onclick="click1()">

        <area shape="rect" coords="45,0,90,55" nohref onclick="click2()">

        <area shape="rect" coords="90,0,135,55" nohref onclick="click3()">

        <area shape="rect" coords="135,0,180,55" nohref onclick="click4()">

        <area shape="rect" coords="180,0,225,55" nohref onclick="click5()">

        <area shape="rect" coords="225,0,270,55" nohref onclick="click6()">

        <area shape="rect" coords="270,0,315,55" nohref onclick="click7()">

        <area shape="rect" coords="315,0,360,55" nohref onclick="click8()">

        <area shape="rect" coords="360,0,405,55" nohref onclick="click9()">

        <area shape="rect" coords="405,0,450,55" nohref onclick="click10()">

        <area shape="rect" coords="450,0,495,55" nohref onclick="click11()">

        <area shape="rect" coords="495,0,540,55" nohref onclick="click12()">

        <area shape="rect" coords="540,0,585,55" nohref onclick="click13()">

        <area shape="rect" coords="585,0,630,55" nohref onclick="click14()">

        <area shape="rect" coords="630,0,675,55" nohref onclick="click15()">

        <area shape="rect" coords="675,0,720,55" nohref onclick="click16()">

        <area shape="rect" coords="0,55,30,110" nohref onclick="click17()">

        <area shape="rect" coords="45,55,80,110" nohref onclick="click18()">

        <area shape="rect" coords="90,55,130,110" nohref onclick="click19()">

        <area shape="rect" coords="130,55,170,110" nohref onclick="click20()">

        <area shape="rect" coords="170,55,210,110" nohref onclick="click21()">

        <area shape="rect" coords="210,55,245,110" nohref onclick="click22()">

        <area shape="rect" coords="245,55,290,110" nohref onclick="click23()">

        <area shape="rect" coords="290,55,335,110" nohref onclick="click24()">

        <area shape="rect" coords="335,55,375,110" nohref onclick="click25()">

        <area shape="rect" coords="380,55,420,110" nohref onclick="click26()">

        <area shape="rect" coords="422,55,470,110" nohref onclick="click27()">

        <area shape="rect" coords="470,55,515,110" nohref onclick="click28()">

        <area shape="rect" coords="515,55,555,110" nohref onclick="click29()">

        <area shape="rect" coords="560,55,590,110" nohref onclick="click30()">

        <area shape="rect" coords="590,55,635,110" nohref onclick="click31()">

        <area shape="rect" coords="635,55,675,110" nohref onclick="click32()">

        <area shape="rect" coords="675,55,720,110" nohref onclick="click33()">

        <area shape="rect" coords="210,120,255,170" nohref onclick="click34()">

        <area shape="rect" coords="255,120,305,170" nohref onclick="click35()">

        <area shape="rect" coords="305,120,345,170" nohref onclick="click36()">

        <area shape="rect" coords="345,120,385,170" nohref onclick="click37()">

        <area shape="rect" coords="390,120,435,170" nohref onclick="click38()">

        <area shape="rect" coords="435,120,470,170" nohref onclick="click39()">

        <area shape="rect" coords="470,120,515,170" nohref onclick="click40()">

        <area shape="rect" coords="245,180,285,225" nohref onclick="click41()">

        <area shape="rect" coords="285,180,330,225" nohref onclick="click42()">

        <area shape="rect" coords="330,180,385,225" nohref onclick="click43()">

        <area shape="rect" coords="385,180,430,225" nohref onclick="click44()">

        <area shape="rect" coords="430,180,478,225" nohref onclick="click45()">

        <area shape="rect" coords="245,235,290,290" nohref onclick="click46()">

        <area shape="rect" coords="290,235,335,290" nohref onclick="click47()">

        <area shape="rect" coords="345,235,385,290" nohref onclick="click48()">

        <area shape="rect" coords="390,235,430,290" nohref onclick="click49()">

        <area shape="rect" coords="435,235,470,290" nohref onclick="click50()">

        <area shape="rect" coords="245,290,270,355" nohref onclick="click51()">

        <area shape="rect" coords="275,290,325,355" nohref onclick="click52()">

        <area shape="rect" coords="326,290,355,355" nohref onclick="click53()">

        <area shape="rect" coords="360,290,400,355" nohref onclick="click54()">

        <area shape="rect" coords="405,290,450,355" nohref onclick="click55()">

        <area shape="rect" coords="450,290,490,355" nohref onclick="click56()">

        <area shape="rect" coords="70,180,120,225" nohref onclick="click57()">

        <area shape="rect" coords="120,180,170,225" nohref onclick="click58()">

        <area shape="rect" coords="40,235,90,290" nohref onclick="click59()">

        <area shape="rect" coords="150,235,190,290" nohref onclick="click60()">

        <area shape="rect" coords="550,190,600,240" nohref onclick="click61()">

        <area shape="rect" coords="600,190,660,235" nohref onclick="click62()">

        <area shape="rect" coords="530,235,570,290" nohref onclick="click63()">

        <area shape="rect" coords="615,235,670,290" nohref onclick="click64()">
    </map>
    <nav>
        <section>
            <img width="700px" src="/Image/dictionary/경고등.png" alt="색깔경고">
        </section>
        <section class="w w1 d-none">
            <h1 style="color: #FF9800;">전면 안개등</h1>
            <h5>전조등보다 아래에 설치되는 등으로 눈이나 비가 오거나 안개가 끼는 등 날씨가 좋지않을때 주로 사용하는 등</h5>
        </section>
        <section class="w w2 d-none">
            <h1 style="color: #FF9800;">파워 스티어링 경고</h1>
            <h5>파워 스티어링에 이상이 있는 경우
                시동을 끄고 재시동을 걸면 소등되기도 하나, 계속 점등상태면 제조사 또는 렌터카 회사에 연락해서 수리.
                <br> ※ 점등 , 점멸 시 파워스티어링은 정상 작동하지 않으나, 핸들 조작은 가능</h5>
        </section>
        <section class="w w3 d-none">
            <h1>후면 안개등</h1>
            <h5>후방 안개등이 켜져있는 상태.
                안개가 아닐 경우 후방 안개등이 켜져있으면 뒤따라오는 차량에 방해가 되므로 끌 수 있도록
            </h5>
        </section>
        <section class="w w4 d-none">
            <h1 style="color: #FF9800;">워셔액 부족 경고</h1>
            <h5>워셔액이 부족한 경우.</h5>
        </section>
        <section class="w w5 d-none">
            <h1 style="color: #FF9800;">브레이크 패드 경고</h1>
            <h5>브레이크 패드의 마모 , 브레이크 시스템에 이상이 발생한 경우</h5>
        </section>
        <section class="w w6 d-none">
            <h1 style="color: green;">크루즈 컨트롤 켜짐</h1>
            <h5>크루즈 컨트롤 시스템의 속도가 설정된 경우<br>
                ※크루즈 컨트롤이란 엑셀 페달을 밟지 않아도 시속 30~100km/h로 주행 할 수 있는 장치
            </h5>
        </section>
        <section class="w w7 d-none">
            <h1>비상 점멸 표시등</h1>
            <h5>좌우 방향 지시등이 모두 점멸되고 있는 상태</h5>
        </section>
        <section class="w w8 d-none">
            <h1 style="color: #FF9800;">빗방울, 빛 감지기</h1>
            <h5>?</h5>
        </section>
        <section class="w w9 d-none">
            <h1>동절기 모드</h1>
            <h5>겨울철 외부 온도가 3~4도 이하로 떨어질 경우 도로가 결빙될 수 있음을 주의하는 뜻</h5>
        </section>
        <section class="w w10 d-none">
            <h1>정보 표시장치</h1>
            <h5>?</h5>
        </section>
        <section class="w w11 d-none">
            <h1>예열플러그 경고</h1>
            <h5>시동을 걸면 점등 . 예열이 끝나면 자동으로 소등.</h5>
        </section>
        <section class="w w12 d-none">
            <h1>저온 표시등</h1>
            <h5>외기 온도가 약 3도 이하일때 , 약 10초간 점멸 후 점등합니다.
                특별히 신경쓸 필요는 없으며 외기 온도가 높으면 자동으로 소등됩니다.</h5>
        </section>
        <section class="w w13 d-none">
            <h1 style="color: red;">점화 스위치 경고</h1>
            <h5>시동을 켜기위한 장치</h5>
        </section>
        <section class="w w14 d-none">
            <h1 style="color: #FF9800;">차내 열쇠 없음</h1>
            <h5>열쇠가 없는데욘?</h5>
        </section>
        <section class="w w15 d-none">
            <h1 style="color: red;">전자열쇠 배터리 부족</h1>
            <h5></h5>
        </section>
        <section class="w w16 d-none">
            <h1 style="color: red;">차간거리 경보장치</h1>
            <h5></h5>
        </section>
        <section class="w w17 d-none">
            <h1 style="color: #FF9800;">클러치 밟기 페달</h1>
            <h5></h5>
        </section>
        <section class="w w18 d-none">
            <h1>브레이크 밟기 페달</h1>
            <h5></h5>
        </section>
        <section class="w w19 d-none">
            <h1 style="color: red;">스티어링 잠금장치</h1>
            <h5></h5>
        </section>
        <section class="w w20 d-none">
            <h1>전조등</h1>
            <h5>전조등이 상향등(하이 빔)으로 켜져있는 경우.
                먼거리의 시야 확보에는 좋으나, 반대편 및 앞차량 안전에 큰 방해가 되므로 특별한 이유가 아니면 사용자제</h5>
        </section>
        <section class="w w21 d-none">
            <h1>타이어공기압 경고등</h1>
            <h5>타이어의 공기압이 낮을 때 점등.
                공기압을 보충해야함 보충한 후에도 계속 불이 들어오면 정차 후 서비스센터를 호출해야함.</h5>
        </section>
        <section class="w w22 d-none">
            <h1>차폭등 정보</h1>
            <h5></h5>
        </section>
        <section class="w w23 d-none">
            <h1 style="color: #FF9800;">외부 경관등 결함</h1>
            <h5>전조등, 미등, 차폭등, 후미등 같이 외부램프에 이상이 있는 경우.
                안전한 장소에 정차 후 차량 라이트 확인. 전조등이나 미등 고장 시 안전을 위해서 야간운전은 하지 않도록 해주세요
                제조사 또는 렌터카 회사에 연락해서 수리</h5>
        </section>
        <section class="w w24 d-none">
            <h1 style="color: #FF9800;">브레이크 등 경보</h1>
            <h5></h5>
        </section>
        <section class="w w25 d-none">
            <h1 style="color: #FF9800;">디젤 배기가스 장치</h1>
            <h5></h5>
        </section>
        <section class="w w26 d-none">
            <h1 style="color: #FF9800;">트레일러 견인장치 정보</h1>
            <h5></h5>
        </section>
        <section class="w w27 d-none">
            <h1 style="color: red;">공기현가장치 경보</h1>
            <h5></h5>
        </section>
        <section class="w w28 d-none">
            <h1 style="color: red;">차선이탈 경고</h1>
            <h5></h5>
        </section>
        <section class="w w29 d-none">
            <h1 style="color: red;">촉매변환장치 경고</h1>
            <h5>촉매 장치 과열, 즉시 운전을 멈추고 가연성 물질이 차체 아래에 있는지 확인</h5>
        </section>
        <section class="w w30 d-none">
            <h1 style="color: red;">안전벨트 미착용</h1>
            <h5>자동차 전원을 「ON」했을때, 앞 열에 안전벨트를 착용하지 않은 경우(안전벨트를 착용하지 않은 상태로 속도가 20~ 40 km/h 이상이 되면 점멸 또는 경고음이 남
                <br>※ 조수석에 어느정도 무게의 물건을 올려둘 경우, 사람이 앉았다고 인식하여 안전벨트 경고등과 알람이 울릴 수 있습니다.
            </h5>
        </section>
        <section class="w w31 d-none">
            <h1 style="color: red;">주차브레이크 등</h1>
            <h5>파킹 브레이크(핸드 브레이크, 풋 브레이크, 전자식 주차 브레이크 등)가 걸려있는 경우.
                <br>※ 파킹 브레이크가 걸린 상태로 주행을 하면 삐삐삐 경보음이 울립니다.
                반드시 출발 전 파킹 브레이크를 풀었는지 확인하고 출발해주세요</h5>
        </section>
        <section class="w w32 d-none">
            <h1 style="color: red;">배터리/발전기 경고</h1>
            <h5>엔진 회전중, 충전장치에 이상이 있는경우. 배터리 충전이 불량하거나, 전압이 낮을 경우.</h5>
        </section>
        <section class="w w33 d-none">
            <h1>주차 보조장치</h1>
            <h5></h5>
        </section>
        <section class="w w34 d-none">
            <h1>오일교환 및 점검</h1>
            <h5></h5>
        </section>
        <section class="w w35 d-none">
            <h1 style="color: #FF9800;">자동 전조등</h1>
            <h5></h5>
        </section>
        <section class="w w36 d-none">
            <h1 style="color: #FF9800;">전조등 범위 조정기</h1>
            <h5></h5>
        </section>
        <section class="w w37 d-none">
            <h1 style="color: #FF9800;">스포일러 경고장치</h1>
            <h5></h5>
        </section>
        <section class="w w38 d-none">
            <h1 style="color: #FF9800;">컨버터블 경고</h1>
            <h5></h5>
        </section>
        <section class="w w39 d-none">
            <h1 style="color: red;">에어백 경고</h1>
            <h5>에어백 또는 안전벨트의 프리텐서녀에 이상이 있는 경우.<br>
                점등,점멸이 계속되는 경우 차량 제조사 또는 렌터카 회사에 연락해서 수리</h5>
        </section>
        <section class="w w40 d-none">
            <h1 style="color: red;">수동식 브레이크 경고</h1>
            <h5>브레이크 오일이 부족하거나,브레이크 장치에 이상이 있는 경우.<br>
                경고등 점등으로 비상정차시 브레이크 효과가 약할 수 있으니, 평소보다 강하게 브레이크를 밟아야함</h5>
        </section>
        <section class="w w41 d-none">
            <h1 style="color: #FF9800;">연료 여과기 수분 경고</h1>
            <h5></h5>
        </section>
        <section class="w w42 d-none">
            <h1>에어백 작동 정지</h1>
            <h5></h5>
        </section>
        <section class="w w43 d-none">
            <h1>정비 시기 표시등</h1>
            <h5>주행거리가 정기점검 시기에 도달한 경우 점등</h5>
        </section>
        <section class="w w44 d-none">
            <h1>전조등 하향</h1>
            <h5></h5>
        </section>
        <section class="w w45 d-none">
            <h1>공기여과기 점검</h1>
            <h5></h5>
        </section>
        <section class="w w46 d-none">
            <h1 style="color: #FF9800;">경제운전 지시기</h1>
            <h5></h5>
        </section>
        <section class="w w47 d-none">
            <h1 style="color: #FF9800;">내리막길 주행 제어장치</h1>
            <h5>조심하셈</h5>
        </section>
        <section class="w w48 d-none">
            <h1 style="color: red;">온도 주의</h1>
            <h5>(R)고수온:냉각수의 온도가 120도 이상으로 지나치게 뜨거워졌을 경우.<br>
                점멸시: 엔진에 부담이 가지 않도록 천천히 주행<br>
                점등시: 오버히트의 위험이 있으니, 안전한 장소에 정차한 후 엔진을 식힘.<br>
                (O)저수온:엔진 냉각수 온도가 낮은 경우 계속해서 점등. 냉각수 온도가 정상으로 올라가면 소등됨.</h5>
        </section>
        <section class="w w49 d-none">
            <h1 style="color: red;">ABS 브레이크 경고</h1>
            <h5>시동을 「ON」 하면 약 3초 동안 켜졌다가 꺼집니다.
                3초 후에도 계속 경고등이 켜져 있으면 ABS 장치에
                이상이 있는 것이므로 가까운 자사 직영 서비스센터에 방문하여 점검을 받으세요.
                <br>
                주행 중에 ABS 경고등이 켜졌을 때는<br>
                1. 안전한 장소에 차를 세우고 엔진을 정지시키십시오.<br>
                2. 다시 엔진을 시동하여 경고등이 켜졌다가
                3초 후 꺼지면 이상이 없는 것입니다.<br>
                ※ABS 시스템만 작동하지 않을 뿐, 일반적인 브레이크는 문제없이 작동됨
            </h5>
        </section>
        <section class="w w50 d-none">
            <h1 style="color: #FF9800;">연료필터 주의</h1>
            <h5>연료 필터에 수분이 혼입했을 때</h5>
        </section>
        <section class="w w51 d-none">
            <h1 style="color: red;">문 열림</h1>
            <h5>자동차 문 중 어딘가 확실히 닫혀있지 않은 경우.</h5>
        </section>
        <section class="w w52 d-none">
            <h1 style="color: red;">보닛 열림</h1>
            <h5>자동차 앞의 보닛이 열려있는 경우</h5>
        </section>
        <section class="w w53 d-none">
            <h1 style="color: red;">연료 부족</h1>
            <h5>차량의 연료가 매우 부족한 상태일 경우.<br>
                ※ 소형차는 약 6리터,중형차는 약 9~10리터, 대형차는 약 12리터가 남았을 때 경고등이 들어옵니다.<br>
                    단순 참고용이며 차량마다 다르므로 경고등이 들어오면 바로 주유할 수 있게 해주세요.</h5>
        </section>
        <section class="w w54 d-none">
            <h1 style="color: #FF9800;">자동 기어박스 경고</h1>
            <h5></h5>
        </section>
        <section class="w w55 d-none">
            <h1 style="color: #FF9800;">속도제한 경보</h1>
            <h5></h5>
        </section>
        <section class="w w56 d-none">
            <h1 style="color: red;">서스펜션 현가장치 조절</h1>
            <h5></h5>
        </section>
        <section class="w w57 d-none">
            <h1 style="color: red;">유압 경고등</h1>
            <h5>엔진 회전중, 엔진 오일의 압력이 저하된경우.<br>
                차에 따라 핸들이 무겁게되어서 운행이 불가능 할 수 있음<br>
                부족한 엔진오일 양을 점검하고 부족한 양을 보충</h5>
        </section>
        <section class="w w58 d-none">
            <h1 style="color: #FF9800;">앞유리 성에 제거</h1>
            <h5></h5>
        </section>
        <section class="w w59 d-none">
            <h1 style="color: red;">트렁크 열림</h1>
            <h5>트렁크가 확실히 닫혀있지 않은 경우.</h5>
        </section>
        <section class="w w60 d-none">
            <h1>TCS/DSC 작동 표시등</h1>
            <h5>점등=> 시동을 켜면 점등했다가 잠시 후 소등 (계속해서 점등되면 고장문의)<br>
                점멸 => TCS또는 DSC가 작동하는 경우<br>
            TCS(트랙션 컨트롤 시스템)란 물에 젖은 노면이나 눈길 등, 미끄러지기 쉬운 노면에서, 헛바퀴가 도는것을 방지하고 적절한 구동력과 조작성을 확보하는 장치<br>
            DSC(다이나믹 스태빌리티 컨트롤)란 미끄러지기 쉬운 노면에서 급한 핸들조작에 의한 차량 미끄러짐을 방지하기 위해서, ABS나 TCS로 브레이크와 엔진 출력을 자동적으로 제어해서, 안전성을 확보하는 장치.</h5>
        </section>
        <section class="w w61 d-none">
            <h1 style="color: #FF9800;">레인센서 우천 감지</h1>
            <h5></h5>
        </section>
        <section class="w w62 d-none">
            <h1 style="color: #FF9800;">엔진/배기 경고</h1>
            <h5>시동을 「ON」 하면 약 3초 동안 켜졌다가 꺼집니다.<br>
                3초 후에도 계속 경고등이 켜져 있으면 엔진 제어장치, 연료 공급 장치 등에 이상이 있는 것이므로 가능한 빨리 가까운 자사 직영 서비스센터나 블루핸즈에서 점검을 받으십시오.<br>
                또한, 일부 엔진 제어 장치에 이상이 있으면 시동이
                걸리 않을 수도 있으니 이때에는 견인하십시오.</h5>
        </section>
        <section class="w w63 d-none">
            <h1 style="color: #FF9800;">뒷 유리 열선</h1>
            <h5></h5>
        </section>
        <section class="w w64 d-none">
            <h1 style="color: #FF9800;">자동 와이퍼</h1>
            <h5></h5>
        </section>




    </nav>

</main>