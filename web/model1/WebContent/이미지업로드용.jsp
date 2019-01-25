<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>이미지 비율에 맞게</title>
    <style>
        #mainCanvas {
            border:1px solid #424242;
            display: block;
        }
    </style>
</head>
<body>
<input id="main" type="file" name="main" placeholder="이미지" class="screen_out">
<canvas id="mainCanvas" width="200" height="200"></canvas>
</body>
<script src="js/jquery.js"></script>
<script>
    var

        $mainCanvas= $("#mainCanvas"),
        $main=$("#main"),
        mainCanvas = $mainCanvas.get(0),
        mainCtx = mainCanvas.getContext("2d"),
        width=0,height=0, x = 0,  y = 0;

    var img= null;

    $main.change(function() {

        var file = $main.get(0).files[0];

        //alert(file);

        var reg =  /^image\//;

        if(!reg.test(file.type)) {

            alert("이미지를 선택해주세요~");

            $main.val("");

            return;
        }

        var reader = new FileReader();

        //파일을 DataURL로 읽어옵니다.
        reader.readAsDataURL(file);


        //다 읽었으면 onload 이벤트 발생
        reader.onload = function() {
            //alert("다 읽었어요!");

            //alert(reader.result);

            //$("img").attr("src",reader.result);

            //이미지 객체 생성후

            img = new Image();
            img.src = reader.result;


            //이미지 로딩후
            img.onload = function() {

                x = 0;
                y = 0;

                width = img.width;
                height = img.height;

                if(width<=200 || height<=200) {

                    mainCtx.clearRect(0,0,width,height);
                    $main.val("");
                    mainCtx.clearRect(0,0,200,200);

                    alert("더 큰 이미지를 선택하세요");

                    return;
                }

                console.log(width);
                console.log(height);

                // img Width의 500px 기준 배율
                var imgWidthPct = 200/img.width;
                // img Height의 500px 기준 배율
                var imgHeightPct =200/img.height;
                console.log(imgWidthPct);
                console.log(imgHeightPct);

                var rate = 0;

                if(imgWidthPct < 1 || imgHeightPct < 1){
                    if(imgWidthPct <= imgHeightPct){
                        width *= imgHeightPct;
                        height *= imgHeightPct;

                        rate = img.width * 200 / width;

                        x = (img.width-rate)/2;
                        console.log("가로가 더 김");
                    } else {
                        width *= imgWidthPct;
                        height *= imgWidthPct;

                        rate = img.height * 200 / height;

                        y = (img.height-rate)/2;
                        console.log("세로가 더 김");
                    }
                }//

                console.log(width);
                console.log(height);
                console.log(rate);
                console.log(x);
                console.log(y);

                // $imgCan.attr({width:imgW,height:imgH}).css({left:x,top:y});

                mainCtx.clearRect(0,0,200,200);
               // mainCtx.drawImage(img,0,0,width,height);

                mainCtx.drawImage(img,x,y,img.width,img.height,0,0,width,height);
            };
        };
    });


    </script>
    </body>
</html>