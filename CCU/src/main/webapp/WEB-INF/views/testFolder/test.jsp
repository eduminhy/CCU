
</head>

<style>

</style>
<script>
function ex_onload() 
{
  // 이벤트 바인드 : 파일 업로드 
  // #del-upload > #btn-upload
  var upload = document.getElementById( "btn-upload" );
  if ( upload ) upload.onchange = ex_file_upload;

  // 이벤트 바인드 : 메인 이미지 변경 
  var thumnail = document.getElementById( "thumnail" );
  if ( thumnail ) thumnail.onload = ex_img_onload;
}
function ex_file_upload (e) 
{
  // 파일 리스트 초기화 (file.files)
  var self = this; // <input type="file" />

  var filelist = this.files;
  if ( filelist.length == 0 ) return;

  // FileReader 객체 생성
  var fileReader = new FileReader();
  // FileReader.onload 바인드 
  fileReader.onload = function () {
    // #del-upload 속성 변경
    self.parentNode.setAttribute ( "data-file", "1" ); 

    // 메인 이미지 (#thumnail) 
    // #del-upload > .ct-img > .img-main#thumnail
    var thumnail = document.getElementById( "thumnail" );
    thumnail.src = this.result; // 이미지 src 
  };

  fileReader.readAsDataURL( filelist[0] ); // base64 인코딩 스트링 데이터
}
function ex_img_onload (e)
{
  // this == img (이미지 노드)  
  var self = this;

  // #canvas-main 메인 캔버스 
  var cnv = document.getElementById( "canvas-main" );
  var ctx = cnv.getContext( "2d" );
  
  cnv.setAttribute( "width", this.width ); // #thumnail 사이즈 
  cnv.setAttribute( "height", this.height );

  // 캔버스 이미지 그리기
  ctx.drawImage( this, 0, 0, this.width, this.height );

  // 캔버스 데이터 (RGBA) 불러오기
  var imgData = ctx.getImageData( 0, 0, cnv.width, cnv.height );

  // 캔버스 데이터 파싱 
  var colors = []; // 색상 배열 (값-hex)
  var blocksize = 1; // 블록 사이즈 (px)
  
  var count = 0; 
  var i = -4; // R,G,B,A (4)

  while ( ( i += blocksize * 4 ) < imgData.data.length )
  {
    ++ count; // 카운트

    // getImageData().data 에서 해당 픽셀 RGBA 값 추출
    var v_rgba = [ imgData.data[i], imgData.data[i + 1], imgData.data[i + 2], imgData.data[i + 3] ];

    // Array.prototype.map : RGBA 값(0~255) -> HEX 값 변환 
    var v_hex = v_rgba.map( function(color_val) { 
      var _hex = color_val.toString(16);
      return _hex.length == 1 ? "0" + _hex : _hex;; 
    } );

    v_hex = v_hex.join( "" ); // Array -> String 합치기 
    colors.push( v_hex ); // 색상 배열 추가
  }
  
  // 색상 별 카운트
  var picaker = {};
  var old_color = null; // 이전 색상(hex)
  colors.sort().forEach( function(colorhex, arrindx, arr){

    // item == 현재 생상 값 (current color) (hex)
    if ( old_color != colorhex )
    {
      // 새 색상 배열 추가        
      picaker[colorhex] = 0; 
      old_color = colorhex; // 이전(마지막) 색상 업데이트      
    }

    return picaker[colorhex] = ( picaker[colorhex] || 0 ) + 1; // 색상 카운트
  } );

  // 정렬(sort) : 색상 코드 반복 횟수 
  colors = picaker;
  picaker = [];

  for ( var color in colors ) 
  {    
    picaker.push( [color, colors[color]] ); // [색상, 횟수]
  }

  // 상위 5개 추출
  picaker.sort( function ( a,b ) { return a[1] - b[1]; } );
  picaker.reverse();

  picaker = picaker.slice(0, 5); // 추출
  
  // 배경 그레디언트, 색상표 아이템 생성
  var color_gradient = "";

  // #palette > div
  var palette = document.getElementById( "palette" );  
  palette.innerHTML = "";
  picaker.forEach( function(item) {
    var _color = item[0];

    // 배경 그레디언트 
    if ( color_gradient != "" ) color_gradient += ",";
    color_gradient += " #" + _color;    

    // 색상표 아이템 생성 (div)
    var _div = document.createElement( "div" );
    // div 배경 색상(background-color) 초기화
    _div.style.backgroundColor = "#" + _color;
    palette.appendChild( _div );

  } );

  // 배경 색상 그레디언트 (document.body)
  var body = document.body;
  body.style.mozBackground = "linear-gradient(to right, " + color_gradient + ")";
  body.style.webkitBackground = "linear-gradient(to right, " + color_gradient + ")";
  body.style.background = "linear-gradient(to right, " + color_gradient + ")";
}
</script>
</head>
<body>
	<!-- 메인 컨텐츠 영역 -->
    <main id="main-body">
    
		<!-- example : 컨테이너 -->
        <section class="container flex-align-center flex-column" id="example"> 
			<!-- example : 컨텐츠 -->
            <article class="content" name="example"> 

                <!-- 이미지 업로드 영역 -->
                <label id="del-upload" for="btn-upload">

                    <input type="file" id="btn-upload"  accept="image/png, image/jpeg" />

                    <!-- 이미지 컨테이너 (figure) -->
                    <figure class="ct-img">

                        <!-- 메인 이미지 (썸네일) (#thumnail) -->
                        <img class="img-main" id="thumnail" decoding="async" loading="lazy" />

                        <!-- 색상표 (palette) -->
                        <figcaption id="palette"></figcaption>
                    </figure>

                </label>
                
                <!-- canvas : 메인 캔버스(canvas) -->
                <canvas id="canvas-main" ></canvas>

            </article>
            
        </section>
      
    </main>

</body>
</html>