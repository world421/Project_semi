<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="./include/header.jsp" %>

<!DOCTYPE html>
<html>
  <head>
    <script src="./jquery-3.4.1.min.js"></script>
    <link
      rel="stylesheet"
      href="./bootstrapt/css/bootstrap.min.css"
    />
    <script src="./bootstrapt/js/bootstrap.min.js"></script>
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
    />

    <!-- 부가적인 테마 -->
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"
    />

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <link
      href="../../resources/static/css/bootstrap.css"
      rel="stylesheet"
    />

    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <style>
    html,
    body {
      /* background-image: url(); */
      /* background: url(MyProject\src\main\webapp\resources\static\img\mountain.jpg);
      background-size: cover; */
      height: 900px;
      width: 100%;
      margin: 0;
      overflow: hidden;
      -ms-overflow-style: none;
    }

    ::-webkit-scrollbar {
      display: none;
    }

    body > #wrap {
      display: flex;
      flex-direction: column;
      justify-content: center;
      width: 100%;
      height: 100%;
      text-align: center;

      /* justify-content: space-around;*/
      margin-top: 5px;
      margin-bottom: 5px;
      /* vertical-align: middle; */
      /* align-content: space-around; */
    }

    body > #wrap > #wrap2 {
      display: flex;
      flex-direction: row;
      /* width: max-content;
      height: max-content; */
      margin-top: 2px;
      margin-bottom: 3px;
      z-index: 10;
    }

    /* 지도 영역 */
    body > #wrap > .map-area {
      flex-direction: row;
      width: 100%;
      height: 100%;
      margin-bottom: 10px;
    }

    body > #wrap #map {
      /* display: inline-block; */
      width: 100%;
      height: 100%;

      z-index: 1;
    }

    /*버튼 정렬 */
    .btn-area {
      text-align: center;
      justify-content: center;
      /* align-content: space-around;
      z-index: 10; */
    }

    /* 버튼 스타일 */
    .custom-btn {
      display: inline-block;
      width: 100px;
      border: none;
      height: 40px;
      color: #fff;
      border-radius: 10px;
      padding: 10px 25px;
      font-family: 'Lato', sans-serif;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s ease;
      position: relative;
      display: inline-block;
      box-shadow: inset 2px 2px 2px 0px rgba(255, 255, 255, 0.5),
        7px 7px 20px 0px rgba(0, 0, 0, 0.1), 4px 4px 5px 0px rgba(0, 0, 0, 0.1);
      outline: none;
      transition: 0.5s;
      background-size: 200% auto;
      color: white;
      box-shadow: 10 0 20px #f0ecec;
      background-image: linear-gradient(
        to right,
        #457acf 0%,
        #83bad1 51%,
        #a1c4fd 100%
      );
    }

    .custom-btn:hover {
      background-position: right center;
    }

    /* 검색창 스타일 */
    .search {
      position: relative;
      width: 300px;
      justify-content: center;
      /* align-content: space-around; */
    }

    /* 검색 버튼 스타일 */
    #search {
      position: absolute;
      width: 17px;
      top: 10px;
      right: 1px;
      margin: 0;
    }

    #search_btn {
      top: 6px;
      right: -10px;
      position: absolute;
      background-image: url(/resources/static/img/search.png);
      background-color: white;
      border: none;
      width: 24px;
      height: 24px;
      cursor: pointer;
      background-size: 24px;
    }

    input {
      width: 100%;
      border: 1px solid #bbb;
      border-radius: 8px;
      padding: 10px 12px;
      font-size: 14px;
    }

    /* 마우스 오버레이 박스 */
    .area {
      position: relative;
      width: 30px;
      height: 20px;
      padding: 15px 10px;
      font-size: 16px;
      font-family: monospace;
      font-weight: bold;
      text-align: center;
      border-radius: 10px;
      margin-bottom: 30px;
      background-color: black;
      top: -50px;
    }

    /* 부트스트랩 모달 */
    .modal-open {
      overflow: hidden;
    }
    .modal {
      position: fixed;
      top: 0;
      right: 0;
      bottom: 0;
      left: 0;
      z-index: 1040;
      display: none;
      overflow: hidden;
      -webkit-overflow-scrolling: touch;
      outline: 0;
    }
    .modal.fade .modal-dialog {
      -webkit-transition: -webkit-transform 0.3s ease-out;
      -o-transition: -o-transform 0.3s ease-out;
      transition: transform 0.3s ease-out;
      -webkit-transform: translate(0, -25%);
      -ms-transform: translate(0, -25%);
      -o-transform: translate(0, -25%);
      transform: translate(0, -25%);
    }
    .modal.in .modal-dialog {
      -webkit-transform: translate(0, 0);
      -ms-transform: translate(0, 0);
      -o-transform: translate(0, 0);
      transform: translate(0, 0);
    }
    .modal-open .modal {
      overflow-x: hidden;
      overflow-y: auto;
    }
    .modal-dialog {
      position: relative;
      width: auto;
      margin: 10px;
    }
    .modal-content {
      position: relative;
      background-color: #fff;
      -webkit-background-clip: padding-box;
      background-clip: padding-box;
      border: 1px solid #999;
      border: 1px solid rgba(0, 0, 0, 0.2);
      border-radius: 6px;
      outline: 0;
      -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
      box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
    }
    .modal-backdrop {
      position: absolute;
      top: 0;
      right: 0;
      left: 0;
      background-color: #000;
    }
    .modal-backdrop.fade {
      filter: alpha(opacity=0);
      opacity: 0;
    }
    .modal-backdrop.in {
      filter: alpha(opacity=50);
      opacity: 0.5;
    }
    .modal-header {
      min-height: 16.42857143px;
      padding: 15px;
      border-bottom: 1px solid #e5e5e5;
    }
    .modal-header .close {
      margin-top: -2px;
    }
    .modal-title {
      margin: 0;
      line-height: 1.42857143;
    }
    .modal-body {
      position: relative;
      padding: 15px;
    }
    .modal-footer {
      padding: 15px;
      text-align: right;
      border-top: 1px solid #e5e5e5;
    }
    .modal-footer .btn + .btn {
      margin-bottom: 0;
      margin-left: 5px;
    }
    .modal-footer .btn-group .btn + .btn {
      margin-left: -1px;
    }
    .modal-footer .btn-block + .btn-block {
      margin-left: 0;
    }
    .modal-scrollbar-measure {
      position: absolute;
      top: -9999px;
      width: 50px;
      height: 50px;
      overflow: scroll;
    }
    @media (min-width: 768px) {
      .modal-dialog {
        width: 600px;
        margin: 30px auto;
      }
      .modal-content {
        -webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
      }
      .modal-sm {
        width: 300px;
      }
    }
    @media (min-width: 992px) {
      .modal-lg {
        width: 900px;
      }
    }

    /* 모달창 조절 */
    .modal-body {
      padding: 0px;
    }
    .modal-content > .row {
      margin: 0px;
    }
    .modal-body > .modal-img {
      padding: 0px;
    }
    .modal-body > .modal-con {
      padding: 15px;
    }
    .modal-inner {
      position: relative;
    }
    .modal-inner .profile {
      position: absolute;
      top: 0px;
      left: 0px;
    }
    .modal-inner .title {
      padding-left: 50px;
    }
    .modal-inner p {
      margin: 0px;
    }
  </style>

  <body>
    <div id="wrap">
      <div id="wrap2">
        <!-- 계절선택버튼 -->
        <div class="btn-area">
          <button class="custom-btn find-btn1">봄</button>
          <button class="custom-btn find-btn2">여름</button>
          <button class="custom-btn find-btn3">가을</button>
          <button class="custom-btn find-btn4">겨울</button>
        </div>
        <!-- 검색창 -->
        <div class="search">
          <input
            class="search_box find"
            name="search_box"
            type="text"
            placeholder="축제명 입력"
          />
          <button
            id="search_btn"
            class="search_box"
            type="button"
          ></button>
        </div>
      </div>
      <!-- 지도영역 -->
      <div class="map-area">
        <div id="map"></div>
      </div>
    </div>

    <!-- 모달 -->
    <!-- <div
      class="modal fade"
      id="snsModal"
      role="dialog"
    >
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-body row">
            <div class="modal-img col-sm-8 col-xs-6">
              <img
                src="../../resources/static/img/blueSearchIcon.png"
                id="snsImg"
                width="100%"
              />
            </div>
            <div class="modal-con col-sm-4 col-xs-6">
              <div class="modal-inner">
                <div class="profile">
                  <img src="../../resources/static/img/profile.png" />
                </div>
                <div class="title">
                  <p id="snsWriter">테스트</p>
                  <small id="snsRegdate">21시간전</small>
                </div>
                <div class="content-inner">
                  <p id="snsContent">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Aliquam vulputate elit libero, quis mattis enim tincidunt
                    non. Mauris consequat ante vel urna posuere consequat.
                  </p>
                </div>
                <div class="link-inner">
                  <a href="##"
                    ><i class="glyphicon glyphicon-thumbs-up"></i>좋아요</a
                  >
                  <a href="##"
                    ><i class="glyphicon glyphicon-comment"></i>댓글달기</a
                  >
                  <a href="##"
                    ><i class="glyphicon glyphicon-share-alt"></i>공유하기</a
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> -->
    <div
      class="modal fade"
      id="testModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div
        class="modal-dialog"
        role="document"
      >
        <div class="modal-content">
          <div class="modal-header">
            <h5
              class="modal-title"
              id="exampleModalLabel"
            >
              축제명
            </h5>
            <small id="date">축제기간</small>
            <button
              class="close"
              type="button"
              data-dismiss="modal"
              aria-label="Close"
            >
              <span aria-hidden="true">X</span>
            </button>
          </div>
          <div class="modal-body">
            <label
              for="roadAddr"
              class="col-form-label"
              >도로명 주소:</label
            >
            <div
              class="mb-3"
              id="roadAddr"
            >
              주소
            </div>
            <label
              for="phone"
              class="col-form-label"
              >전화번호:</label
            >
            <div
              class="mb-3"
              id="phone"
            >
              전화번호
            </div>
            <label
              for="content"
              class="col-form-label"
              >내용:</label
            >
            <div
              class="mb-3"
              id="content"
            >
              축제내용
            </div>
            <label
              for="url"
              class="col-form-label"
              >홈페이지:</label
            >
            <div
              class="mb-3"
              id="urlBox"
            >
              <a
                id="url"
                href="##"
                target="_blank"
                ><span id="aContent"></span
              ></a>
            </div>
          </div>
          <div class="link-inner">
            <a href="##"><i class="glyphicon glyphicon-thumbs-up"></i>좋아요</a>
            <a href="##"><i class="glyphicon glyphicon-comment"></i>댓글달기</a>
            <a href="##"
              ><i class="glyphicon glyphicon-share-alt"></i>공유하기</a
            >
          </div>
          <div class="modal-footer">
            <a
              class="btn"
              id="modalY"
              href="#"
              target="_blank"
              >예</a
            >
            <button
              class="btn"
              type="button"
              data-dismiss="modal"
            >
              아니요
            </button>
          </div>
        </div>
      </div>
    </div>

    <script
      type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a5c28d99bb31ae88bf5a825a4fd77ac6&libraries=services,clusterer,drawing"
    ></script>
    <script
      src="https://code.jquery.com/jquery-3.7.0.min.js"
      integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
      crossorigin="anonymous"
    ></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../resources/static/js/bootstrap.js"></script>

    <script>
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
          center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
          level: 13, // 지도의 확대 레벨
        };

      // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
      let map = new kakao.maps.Map(mapContainer, mapOption),
        customOverlay = new kakao.maps.CustomOverlay({});

      // 주소-좌표 변환 객체를 생성합니다
      var geocoder = new kakao.maps.services.Geocoder();

      // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
      var zoomControl = new kakao.maps.ZoomControl();
      map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

      //1. 시도 json 읽어오기
      var jsonLocation = '/resources/external_json/sido.json';

      let detailMode = false; // level에 따라 다른 json 파일 사용
      let level = '';
      let polygons = [];
      // var polygonPath = [];
      var points = [];
      //
      let Colorflag = false;

      // init('json/sido.json');
      $.getJSON(jsonLocation, function (data) {
        var data = data.features;
        var coordinates = [];
        var name = '';
        $.each(data, function (i, val) {
          if (val.geometry.type == 'Polygon') {
            coordinates = val.geometry.coordinates;
            name = val.properties.SIG_KOR_NM;

            displayArea(coordinates, name); // 호출!!
          }
        });
      });

      /* 색깔 */
      // if (!Colorflag) {
      //   $.getJSON(jsonLocation, function (data) {
      //     var data = data.features;
      //     var coordinates = [];
      //     var name = '';
      //     $.each(data, function (i, val) {
      //       if (val.geometry.type == 'Polygon') {
      //         coordinates = val.geometry.coordinates;
      //         name = val.properties.SIG_KOR_NM;

      //줌 전역으로?
      //폴리곤 표시
      function displayArea(coordinates, name) {
        var polygonPath = [];
        $.each(coordinates[0], function (i, coordinate) {
          var point = new Object();
          point.x = coordinate[1];
          point.y = coordinate[0];
          points.push(point);
          polygonPath.push(new kakao.maps.LatLng(coordinate[1], coordinate[0]));
        });

        var polygon = new kakao.maps.Polygon({
          path: polygonPath, // 그려질 다각형의 좌표 배열입니다
          strokeWeight: 3, // 선의 두께입니다
          strokeColor: '#39DE2A', // 선의 색깔입니다 초록
          //strokeColor: '#0356a9', // 선의 색깔입니다 파랑
          strokeOpacity: 0.8, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
          strokeStyle: 'longdash', // 선의 스타일입니다
          // fillColor: '#A2FF99', // 채우기 색깔입니다
          fillColor: '#EFFFED', // 채우기 색깔입니다
          fillOpacity: 0.7, // 채우기 불투명도 입니다
        });

        polygon.setMap(map); // 지도에 다각형 표시
        // polygons.push(polygon); // 폴리곤 제거하기 위한 배열(추가함)

        // 줌 이벤트
        kakao.maps.event.addListener(map, 'zoom_changed', function () {
          level = map.getLevel();

          // console.log('현재 지도 레벨은 ' + level + ' 입니다');

          if (!detailMode && level <= 10) {
            // level 에 따라 다른 json 파일을 사용한다.
            console.log('디테일 모드다!');
            detailMode = true;
            Colorflag = true; // 색 없어야
            removePolygon();
            init('/resources/external_json/sig.json');

            //여기서 계절 버튼 누르면 요청.
          } else if (detailMode && level > 10) {
            // level 에 따라 다른 json 파일을 사용한다.
            console.log('디테일 모드 아니다!');

            detailMode = false;
            Colorflag = false; // 색 있어야
            removePolygon();
            init('/resources/external_json/sido.json');
          }
        }); // 줌 이벤트 끝

        kakao.maps.event.addListener(
          polygon,
          'mouseover',
          function (mouseEvent) {
            // console.log('마우스 오버!');
            polygon.setOptions({
              fillColor: '#09f',
            });

            customOverlay.setPosition(mouseEvent.latLng);
            // customOverlay.setContent('<div class="area">' + name + '</div>');
            customOverlay.setMap(map);
          }
        );

        kakao.maps.event.addListener(
          polygon,
          'mousemove',
          function (mouseEvent) {
            Colorflag = false; // 색 있어야
            customOverlay.setPosition(mouseEvent.latLng);
          }
        );

        kakao.maps.event.addListener(
          polygon,
          'mouseout',
          function (mouseEvent) {
            // console.log('마우스아웃!');

            //customOverlay.setPosition(mouseEvent.latLng); // 추가
            polygon.setOptions({ fillColor: '#EFFFED' });
            // setTimeout(customOverlay.setMap(null), 10);
            customOverlay.setMap(null);
          }
        );

        var markers = [];
        var marker;
        var content = '';
        kakao.maps.event.addListener(polygon, 'click', function (mouseEvent) {
          console.log(name);
          if (markers.length > 0) {
            // 기존 마커 지우기
            hideMarkers();
          }
          fetch('${pageContext.request.contextPath}/festival/ftvList', {
            method: 'post',
            headers: {
              'Content-Type': 'text/plain',
            },
            body: name,
          })
            .then((res) => res.json())
            .then((data) => {
              console.log(data);
              //요청한 행정구역명에 맞는 축제 마커 찍기
              for (let i = 0; i < data.length; i++) {
                // 주소로 좌표를 검색합니다
                geocoder.addressSearch(
                  data[i].roadAddr,
                  function (result, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === kakao.maps.services.Status.OK) {
                      var coords = new kakao.maps.LatLng(
                        result[0].y,
                        result[0].x
                      );

                      // 결과값으로 받은 위치를 마커로 표시합니다
                      marker = new kakao.maps.Marker({
                        map: map,
                        position: coords,
                      });

                      //
                      // 커스텀 오버레이에 표시할 컨텐츠 입니다
                      // 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
                      // 별도의 이벤트 메소드를 제공하지 않습니다
                      content = document.createElement('div');
                      content.innerHTML = data[i].ftvName;
                      content.style.cssText =
                        'background: white; border: 1px solid black';

                      like = document.createElement('img');
                      like.setAttribute(
                        'src',
                        '/resources/static/img/like.png'
                      );
                      like.setAttribute(
                        'alt',
                        'likeIconNotClicked:' + data[i].ftvNum
                      );
                      like.setAttribute('height', 24); //px
                      like.setAttribute('width', 24);
                      content.appendChild(like);

                      like.onclick = function () {
                        console.log('좋아요 클릭했다!');
                        like.setAttribute(
                          'src',
                          '/resources/static/img/likeDarker.png'
                        );
                        like.setAttribute('alt', 'likeIconClicked');
                        like.setAttribute('height', 24); //px
                        like.setAttribute('width', 24);
                        content.appendChild(like);
                      };

                      urlDiv = document.createElement('div');
                      url = document.createElement('a');
                      url.setAttribute('href', data[i].url);
                      url.setAttribute('target', '_blank');
                      url.innerHTML = '홈페이지';
                      urlDiv.appendChild(url);
                      content.appendChild(urlDiv);
                      url.onclick = function () {
                        if (data[i].url === null)
                          alert('해당 링크가 존재하지 않습니다!');
                      };

                      roadAddr = document.createElement('div');
                      roadAddr.innerHTML = data[i].roadAddr;
                      content.appendChild(roadAddr);

                      time = document.createElement('div');
                      time.innerHTML =
                        data[i].startDate + ' ~ ' + data[i].endDate;
                      content.appendChild(time);

                      var closeBtn = document.createElement('button');
                      closeBtn.innerHTML = '닫기';
                      closeBtn.onclick = function () {
                        overlay.setMap(null);
                      };
                      content.appendChild(closeBtn);

                      // 마커 위에 커스텀오버레이를 표시합니다
                      // 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
                      var overlay = new kakao.maps.CustomOverlay({
                        content: content,
                        map: map,
                        position: marker.getPosition(),
                      });

                      // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
                      kakao.maps.event.addListener(
                        marker,
                        'click',
                        function () {
                          overlay.setMap(map);
                        }
                      );

                      // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다
                      function closeOverlay() {
                        overlay.setMap(null);
                      }
                      //

                      // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                      // map.setCenter(coords);
                      // 생성된 마커를 배열에 추가합니다
                      markers.push(marker);
                    }
                  }
                );
              } // for문 끝
            }); //.then(data)끝

          // 클릭시 확대
          //var level = map.getLevel() - 2; // 현재 레벨에서 2레벨 확대 정의

          // removePolygon();

          if (!detailMode) {
            Colorflag = false; // 색 있어야
            map.setLevel(10); // level에 따라 이벤트 변경
            var latlng = mouseEvent.latLng;
            polygon.setOptions({ fillOpacity: 0.7 });

            // 지도의 중심을 부드럽게 클릭한 위치로 이동시킵니다.
            map.panTo(latlng);
          } else {
            Colorflag = true; // 색 없어야

            while (Colorflag) {
              polygon.setOptions({ fillOpacity: 0 });
              Colorflag = false;
            }
            var latlng = mouseEvent.latLng;
            map.panTo(latlng);
            // 클릭 이벤트 함수
            // callFunctionWithRegionCode(area.location);
          }
        }); // 폴리곤 클릭 이벤트 끝
      } // displayArea() end

      // 폴리곤 생성!!!!!!!!!
      function init(path) {
        //path 경로의 json 파일 파싱
        $.getJSON(path, function (geojson) {
          var units = geojson.features; // json key값이 "features"인 것의 value를 통으로 가져온다.

          $.each(units, function (index, unit) {
            // 1개 지역씩 꺼내서 사용. val은 그 1개 지역에 대한 정보를 담는다
            var coordinates = []; //좌표 저장할 배열
            var name = ''; // 지역 이름
            var cd_location = '';
            coordinates = unit.geometry.coordinates; // 1개 지역의 영역을 구성하는 다각형의 모든 좌표 배열
            name = unit.properties.SIG_KOR_NM; // 1개 지역의 이름
            cd_location = unit.properties.SIG_CD;

            var ob = new Object();
            ob.name = name;
            ob.path = [];
            ob.location = cd_location;
            $.each(coordinates[0], function (index, coordinate) {
              ob.path.push(new kakao.maps.LatLng(coordinate[1], coordinate[0]));
            });

            areas[index] = ob;
          }); //each
        }); //getJSON

        // 지도에 영역데이터를 폴리곤으로 표시
        for (var i = 0, len = areas.length; i < len; i++) {
          displayArea(areas[i]);
        }
        // init 안
      } // init() end

      // 모든 폴리곤을 지우는 함수
      function removePolygon() {
        for (let i = 0; i < polygons.length; i++) {
          polygons[i].setMap(null);
        }
        areas = [];
        polygons = [];
      }

      ///////////////////////////////////////////////////
      // 다각형에 마우스오버 이벤트가 발생했을 때 변경할 채우기 옵션입니다
      var mouseoverOption = {
        fillColor: '#A2FF99', // 채우기 색깔입니다
        fillOpacity: 0.7, // 채우기 불투명도 입니다
      };

      // 다각형에 마우스아웃 이벤트가 발생했을 때 변경할 채우기 옵션입니다
      var mouseoutOption = {
        fillColor: '#EFFFED', // 채우기 색깔입니다
        fillOpacity: 0.8, // 채우기 불투명도 입니다
      };

      /*************************************** 축제명 검색 이벤트 ****************************************/
      // 장소 검색 객체를 생성합니다
      var ps = new kakao.maps.services.Places();

      // 검색창 구현
      let filterValue;
      document.addEventListener('DOMContentLoaded', () => {
        const searchVal = document.querySelector('.find');
        const searchBtn = document.querySelector('#search_btn');

        searchVal.addEventListener('keypress', function () {
          filterValue = searchVal.value;
          console.log(filterValue);
          searchMarker(filterValue);
        });

        searchBtn.addEventListener('click', function () {
          filterValue = searchVal.value;
          console.log(filterValue);
          searchMarker(filterValue);
        });
      });

      // 키워드명 출력 함수
      function searchMarker(filterValue) {
        let keywordSearchVal = "'" + filterValue + "'";
        console.log('keywordSearchVal: ', keywordSearchVal);
        // 키워드로 장소를 검색합니다
        ps.keywordSearch(keywordSearchVal, placesSearchCB);

        // 키워드 검색 완료 시 호출되는 콜백함수 입니다
        function placesSearchCB(data, status, pagination) {
          if (status === kakao.maps.services.Status.OK) {
            // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
            // LatLngBounds 객체에 좌표를 추가합니다
            var bounds = new kakao.maps.LatLngBounds();

            fetch('${pageContext.request.contextPath}/festival/search/', {
              method: 'post',
              headers: {
                'Content-Type': 'text/plain',
              },
              body: filterValue,
            })
              .then((res) => res.json())
              .then((data) => {
                for (var i = 0; i < data.length; i++) {
                  console.log(data[i]);
                  displayMarker(data[i]);
                  bounds.extend(
                    geocoder.addressSearch(
                      data[i].roadAddr,
                      function (result, status) {
                        // 정상적으로 검색이 완료됐으면
                        if (status === kakao.maps.services.Status.OK) {
                          var coords = new kakao.maps.LatLng(
                            result[i].latitude,
                            result[i].longitude
                          );

                          // 결과값으로 받은 위치를 마커로 표시합니다
                          var marker = new kakao.maps.Marker({
                            map: map,
                            position: coords,
                          });
                        }
                      }
                    )
                  );
                }
                console.log(data[i].roadAddr);
                // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
                map.setBounds(bounds);
              });
          }
        }

        // 지도에 마커를 표시하는 함수입니다
        function displayMarker(place) {
          // 마커를 생성하고 지도에 표시합니다
          var marker = new kakao.maps.Marker({
            map: map,
            position: new kakao.maps.LatLng(place.latitude, place.longitude),
          });

          console.log('place.latitude', place.latitude);
          console.log('place.longitude', place.longitude);
          // 마커에 클릭이벤트를 등록합니다
          kakao.maps.event.addListener(marker, 'click', function () {
            // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
            console.log('검색하고 마커 클릭!!');
            overlay.setMap(map);
          });
        }
      }

      /*****************************************계절 버튼 클릭 이벤트***********************************/
      // 지도에 표시된 마커 객체를 가지고 있을 배열입니다
      var markers = [];
      var marker;

      var content = '';
      //계절버튼 클릭 이벤트
      document.querySelector('.find-btn1').addEventListener('click', (e) => {
        if (markers.length > 0) {
          hideMarkers();
        }
        var overlay;
        //봄 클릭
        fetch('${pageContext.request.contextPath}/festival/ftvList/' + 'spring')
          .then((res) => res.json())
          .then((data) => {
            console.log(data);
            var positions = [];
            for (let i = 0; i < data.length; i++) {
              // 주소로 좌표를 검색합니다
              geocoder.addressSearch(
                data[i].roadAddr,
                function (result, status) {
                  // 정상적으로 검색이 완료됐으면
                  if (status === kakao.maps.services.Status.OK) {
                    var coords = new kakao.maps.LatLng(
                      result[0].y,
                      result[0].x
                    );

                    // 결과값으로 받은 위치를 마커로 표시합니다
                    marker = new kakao.maps.Marker({
                      map: map,
                      position: coords,
                    });
                    positions.push({ latlng: coords });

                    // 마커에 표시할 인포윈도우를 생성합니다
                    var infowindow = new kakao.maps.InfoWindow({
                      content: data[i].ftvName, // 인포윈도우에 표시할 내용
                    });

                    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
                    // 이벤트 리스너로는 클로저를 만들어 등록합니다
                    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
                    kakao.maps.event.addListener(
                      marker,
                      'mouseover',
                      makeOverListener(map, marker, infowindow)
                    );
                    kakao.maps.event.addListener(
                      marker,
                      'mouseout',
                      makeOutListener(infowindow)
                    );

                    // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
                    kakao.maps.event.addListener(marker, 'click', function () {
                      console.log('클릭한 마커의 번호: ', data[i].ftvNum);

                      // const src = '/resources/static/img/강릉 커피.png';
                      // document
                      //   .getElementById('snsImg')
                      //   .setAttribute('src', src);
                      document.getElementById('exampleModalLabel').textContent =
                        data[i].ftvName;
                      document.getElementById('date').textContent =
                        data[i].startDate + ' ~ ' + data[i].endDate;
                      document.getElementById('roadAddr').textContent =
                        data[i].roadAddr;
                      document.getElementById('phone').textContent =
                        data[i].phone;
                      document.getElementById('content').textContent =
                        data[i].ftvContent;
                      document
                        .getElementById('url')
                        .setAttribute('href', data[i].url);
                      document.getElementById('aContent').textContent =
                        data[i].url;

                      document
                        .getElementById('modalY')
                        .setAttribute('href', data[i].url);
                      document.getElementById('modalY').textContent =
                        '축제 상세보기';
                      // addMarker(mouseEvent.latLng);

                      $('#testModal').modal('show');

                      // overlay.setMap(map);
                    });

                    // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다
                    function closeOverlay() {
                      overlay.setMap(null);
                    }

                    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                    // map.setCenter(coords);
                    // 생성된 마커를 배열에 추가합니다
                    markers.push(marker);
                  } // 좌표 검색 정상인 경우
                }
              ); // 좌표 검색
            } // for문 끝

            //오버레이 여기에 두면 안뜸
          }); // .then(data => ) 끝
      }); // 클릭 이벤트 끝

      document.querySelector('.find-btn2').addEventListener('click', (e) => {
        //여름 클릭
        if (markers.length > 0) {
          hideMarkers();
        }
        fetch('${pageContext.request.contextPath}/festival/ftvList/' + 'summer')
          .then((res) => res.json())
          .then((data) => {
            console.log(data);
            for (let i = 0; i < data.length; i++) {
              // 주소로 좌표를 검색합니다
              geocoder.addressSearch(
                data[i].roadAddr,
                function (result, status) {
                  // 정상적으로 검색이 완료됐으면
                  if (status === kakao.maps.services.Status.OK) {
                    var coords = new kakao.maps.LatLng(
                      result[0].y,
                      result[0].x
                    );

                    // 결과값으로 받은 위치를 마커로 표시합니다
                    var marker = new kakao.maps.Marker({
                      map: map,
                      position: coords,
                    });

                    // 인포윈도우로 장소에 대한 설명을 표시합니다
                    // var infowindow = new kakao.maps.InfoWindow({
                    //   content:
                    //     '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>',
                    // });
                    // infowindow.open(map, marker);

                    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                    // map.setCenter(coords);
                    // 생성된 마커를 배열에 추가합니다
                    markers.push(marker);
                  }
                }
              );
            } // for문 끝
          }); // .then(data => ) 끝
      }); // 클릭 이벤트 끝

      document.querySelector('.find-btn3').addEventListener('click', (e) => {
        //가을 클릭
        if (markers.length > 0) {
          hideMarkers();
        }
        fetch('${pageContext.request.contextPath}/festival/ftvList/' + 'fall')
          .then((res) => res.json())
          .then((data) => {
            console.log(data);
            for (let i = 0; i < data.length; i++) {
              // 주소로 좌표를 검색합니다
              geocoder.addressSearch(
                data[i].roadAddr,
                function (result, status) {
                  // 정상적으로 검색이 완료됐으면
                  if (status === kakao.maps.services.Status.OK) {
                    var coords = new kakao.maps.LatLng(
                      result[0].y,
                      result[0].x
                    );

                    // 결과값으로 받은 위치를 마커로 표시합니다
                    var marker = new kakao.maps.Marker({
                      map: map,
                      position: coords,
                    });

                    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                    // map.setCenter(coords);
                    // 생성된 마커를 배열에 추가합니다
                    markers.push(marker);
                  }
                }
              );
            } // for문 끝
          }); // .then(data => ) 끝
      }); // 클릭 이벤트 끝

      document.querySelector('.find-btn4').addEventListener('click', (e) => {
        //겨울 클릭
        if (markers.length > 0) {
          // for (var i = 0; i < markers.length; i++) {
          //   markers[i].setMap(map);
          // }
          // marker.setMap(null);
          hideMarkers();
        }
        fetch('${pageContext.request.contextPath}/festival/ftvList/' + 'winter')
          .then((res) => res.json())
          .then((data) => {
            console.log(data);
            for (let i = 0; i < data.length; i++) {
              // 주소로 좌표를 검색합니다
              geocoder.addressSearch(
                data[i].roadAddr,
                function (result, status) {
                  // 정상적으로 검색이 완료됐으면
                  if (status === kakao.maps.services.Status.OK) {
                    var coords = new kakao.maps.LatLng(
                      result[0].y,
                      result[0].x
                    );

                    // 결과값으로 받은 위치를 마커로 표시합니다
                    var marker = new kakao.maps.Marker({
                      map: map,
                      position: coords,
                    });

                    // 인포윈도우로 장소에 대한 설명을 표시합니다
                    // var infowindow = new kakao.maps.InfoWindow({
                    //   content:
                    //     '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>',
                    // });
                    // infowindow.open(map, marker);

                    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                    // map.setCenter(coords);

                    // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
                    // marker.setMap(null);

                    // 생성된 마커를 배열에 추가합니다
                    markers.push(marker);
                  }
                }
              );
            } // for문 끝
          }); // .then(data => ) 끝
      }); // 클릭 이벤트 끝

      // 배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
      function setMarkers(map) {
        for (var i = 0; i < markers.length; i++) {
          markers[i].setMap(map);
        }
      }

      // "마커 감추기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에서 삭제하는 함수입니다
      function hideMarkers() {
        setMarkers(null);
      }

      // 인포윈도우를 표시하는 클로저를 만드는 함수입니다
      function makeOverListener(map, marker, infowindow) {
        return function () {
          infowindow.open(map, marker);
        };
      }

      // 인포윈도우를 닫는 클로저를 만드는 함수입니다
      function makeOutListener(infowindow) {
        return function () {
          infowindow.close();
        };
      }
    </script>
  </body>
</html>

<%@ include file="./include/footer.jsp" %>
