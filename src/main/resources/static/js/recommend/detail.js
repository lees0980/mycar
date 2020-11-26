window.addEventListener("load", function(){
    var section = document.querySelector("#main");
    var carPhoto = section.querySelector(".carPhoto");
    var bPic = carPhoto.querySelector(".bigPicture");
    var sPic = carPhoto.querySelector(".smallPictures");
    var bPicDiv = bPic.querySelector(" div");
    
    // detail.jsp에 있는 smallPicures의 div 리스트를 배열로 가져온다. 
	var smallPictureList = sPic.querySelectorAll("img");
    
    // 작은 사진을 클릭하면 큰 사진에 올라가게 하려고 한다.
    sPic.onclick = function(e){
        e.preventDefault();		// 페이지 변동 막는 것  
        bPicDiv.innerHTML="";	// 큰사진 내용 변경 
        
        // 현재 찍은 위치의 data-id 값을 string으로 받아서 int로 변환. 
        var i = parseInt(e.target.dataset.id);
        console.log(e.target.dataset.id);
        
        // img가 들아갈 Div tag를 선택해둔다.  
        var divTag = bPic.querySelector("div");
        // DB에 있는 사진을 불러오기. 
        var srcTag = `${smallPictureList[i-1].src}`;
        console.log(srcTag);
        // div tag에 img tag를 삽입한다. 
        divTag.innerHTML = `<img style=width:500px;height:350px; src=`+srcTag+`>`;
        console.log(divTag);
    }
    
    
});