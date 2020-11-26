window.addEventListener("load", function(){
    var section = document.querySelector("#main");
//    var center = section.querySelector(".center");
    var carPhoto = section.querySelector(".carPhoto");
    var bPic = carPhoto.querySelector(".bigPicture");
    var sPic = carPhoto.querySelector(".smallPictures");
    var bPicDiv = bPic.querySelector("div");
    
    
    var smallPictureList = [
        {id:1, src:"/src/main/resources/static/Image/qm61.png"},
        {id:2, src:"/src/main/resources/static/Image/qm62.png"},
        {id:3, src:"/src/main/resources/static/Image/qm63.png"},
        {id:4, src:"/src/main/resources/static/Image/qm64.png"},
        {id:5, src:"/src/main/resources/static/Image/qm65.png"} 
    ];
   
    // 작은 사진을 클릭하면 큰 사진에 올라가게 하려고 한다.
    sPic.onclick = function(e){
        e.preventDefault();		// 페이지 변동 막는 
        bPicDiv.innerHTML="";	// 큰사진 내용 변
        
        // 현재 찍은 위치의 data-id 값을 string으로 받아서 int로 변환. 
        var i = parseInt(e.target.dataset.id);
        console.log(e.target.dataset.id);
        
        // img가 들아갈 Div tag를 선택해둔다.  
        var divTag = bPic.querySelector("div");
        // DB에 있는 사진을 불러오기. 
        var srcTag = `${smallPictureList[i-1].src}`;
        console.log(srcTag);
        // div tag에 img tag를 삽입한다. 
        divTag.innerHTML = `<img src="`+srcTag+`"/>`;
        console.log(divTag);
    }

    window.onload = function() {
        console.log("detail id ="+id);
        // XMLHttpRequest 객체의 인스턴스를 생성한다.
        var xhr = new XMLHttpRequest();
        // xhr 객체의 status 값을 검사한다. 
        xhr.onload = function(){
            // 서버로부터 받은 데이터를 처리할 코드 
            if(xhr.readyState === 4 && xhr.status === 200){
                var image = JSON.parse(xhr.responseText);
                var img = "";
                img = "<img src="+image.img1+"/>";
                bPic.innerHTML = img;
            }
        }

        // open() 메서드는 요청을 준비하는 메서드입니다.
        // (http 메서드, 데이터를 받아올 URL 경로, 비동기 여부)
        xhr.open("GET", "recommend/detail="+id, true);

        // send() 메서드는 준비된 요청을 서버로 전송하는 메서드입니다.
        // (서버에 전달될 정보)
        xhr.send();
    }
});