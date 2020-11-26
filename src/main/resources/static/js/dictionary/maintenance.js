/**
 * 
 */
window.addEventListener("load",function(){
   var M0201 = document.querySelector(".M0201")
   var M0202 = document.querySelector(".M0202")
   
   M0201.onclick = function(){
      maintenance.innerHTML="<div> ① 봄철 차량관리 <br> <br> - 겨울에 제설작업 위해 도로에 뿌린 염화칼슘이 자동차 바닥에 남아 있을 경우,  자동차 강판 부식을 촉진시키는  작용을하므로 바닥 구석구석 세차를 하는 것이 좋습니다.   또한, 차량 실내환풍과 바닥매트, 트렁크매트를 건조하여 자동차 내부 공기를 쾌적한 상태로 하는 것이 좋습니다. <br> - 스노우 타이어를 떼어내고 일반 타이어로 교체하되, 대각선 방향으로 위치 교체를 해서 더 오래 사용하세요. 타이어 교체시 핸들의 떨림을 방지하기 위해서 앞 바퀴 정렬도 병행하세요. <br> - 겨울철 전기소모가 많아 배터리액, 충전상태, 터미널의 고정상태, 단지 부위의 청결상태 등을 점검하세요. <br><br> </div>"
                  + "<div> ② 여름철 차량관리 <br> <br> " +
                        "- 장마철에는 와이퍼 사용 빈도가 높습니다.  와이퍼 작동 시 줄무늬 발생 및 닦임 성능이 불량 할 경우 젖은 타올 또는 융보루로 블레이드 고무날의  오염물질 제거 또는 블레이드 점검하여 교환하는 것이 좋습니다.  또한, 와이퍼 암 고정너트 풀림 시 닦임불량, 떨림, 소음 등이 유발될 수 있으므로 예방점검이 필요합니다. <br> " +
                        "- 엔진과열을 방지하기 위해 냉각수 충만상태를 점검, 보조탱크에는 2/3정도를 보충하는 것이 좋습니다. 에어컨은 3~10분 간격으로 ON, OFF를 반복해 주는 것이 좋습니다. <br>" +
                        "- 여름철에는 온도가 올라가기 때문에 타이어가 상대적으로 팽창합니다. 따라서 적정 공기압 이상으로 공기압을 맞추면 접지능력이 떨어져 소나기에도 미끄러질 우려가 있으므로 타이어의 공기압을 잘 확인해야 합니다. 또한 오래된 타이어는 비가 오면 생기는 수막현상이 더욱 심하기 때문에 점검하는 것이 좋습니다. <br><br></div> "
                  + "<div> ③ 가을철 차량관리 <br><br> " +
                        "- 차량에 낙엽들이 있을 경우 운전시야를 방해할 수 있으며, 낙엽을 제거하지 않으면 자칫 공기실내외 통로로  유입되어 히터와 에어컨의 증발기(에바포레이터)에서 이상한 소리가 나거나, 매케한 냄새가 날수도 있으니  주의해야 합니다. <br>" +
                        "- 냉각수 점검과 부동액을 점검하고, 겨울이 오기전 히터를 미리 점검한다. 시동을 건 후 10분이상이 지났는데도 히터가 작동하지 않는다면, 점검을 받는 것이 좋다.<br><br></div>"
                  + "<div> ④ 겨울철 차량관리 <br><br> " +
                        "- 겨울철은 배터리의 자연 방전 및 배터리 성능 저하가 발생될 수 있으니 배터리 단자가 깨끗한지 확인해주시고,  배터리의 연결 부분에 조임 상태가 양호한지 확인하여 점검하는 것이 좋습니다.  또한, 눈이 내리는 날 외부 주차 시 앞 유리창 와이퍼는 어는 것과 와이퍼 휘어짐을 방지하기 위해 세워두는 것이  도움이 됩니다.<br>" +
                        "- 부동액의 양을 점검하고 스노우 타이어와 체인을 준비하세요.</div>"
   }
   M0202.onclick = function(){
      maintenance.innerHTML="<div> ① 세차 전 준비물입니다.<br><br> " +
            "- 세차 시 복장은 금속단추나 지퍼가 없는 것으로 세차 시 실수로 자동차의 차체에 흠집을 예방할 수 있습니다.<br> " +
            "- 세차를 위해 물을 담을 수 있는 양동이와 표면이 부드러운 스폰지를 준비하고 환경을 고려해 중성 세정제를 준비하는 것이 좋습니다.<br> " +
            "- 타이어 휠 등을 세척할 때 사용할 브러쉬와 세차 후 물기를 제거할 부드러운 세차전용 천을 준비하세요. <br><br></div>"
            + "<div> ② 차량외부 청소 방법입니다. <br><br> " +
                  "- 차 전체에 비눗물을 칠하기 전 자동차 바퀴 주변과 휠 하우스 내부의 흙을 먼저 털어내세요.<br> " +
                  "- 스폰지를 이용하여 위쪽에서부터 차례로 비눗물을 칠한 후 가볍게 문질러 얼룩을 지우시고, 스폰지로 차체 표면의 더러운 곳을 닦을 때는 원을 그리듯이 여러 번에 나누어 닦아서 차량의 도색과 청결함을 유지하세요. <br>" +
                  "- 세차 중에는 차 표면이 항상 젖어 있는 상태를 유지해주세요.<br> " +
                  "- 차량의 밑 부분에 묻어 있는 콜타르 등의 기름때는 별도로 상품화된 세제나 휘발유와 엔진오일을 3:1로 섞어 만든 액체를 부드러운 천에 묻혀 가볍게 문질러주세요.<br> " +
                  "- 유리 틈에 끼워 두는 전단지로 인해 트렁크룸의 배수구와 도어의 배수구 도어 내부에 물이 고이지 않도록 점검해주세요. <br> " +
                  "- 비눗물이 남지 않도록 깨끗이 물로 씻어 내고 남은 물기는 마른 수건으로 닦아 내주시고, 그늘진 곳에 세워 두고 완전히 말리면 세차가 끝납니다. </div> "
   }
   M0203.onclick = function(){
      alert("차량 내부관리");
   }
   M0204.onclick = function(){
      alert("소모품 교체 주기");
   }
   
})