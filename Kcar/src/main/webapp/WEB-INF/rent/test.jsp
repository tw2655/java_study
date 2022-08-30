<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<!-- <head> -->
<!-- <meta charset="UTF-8"> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<!-- <meta http-equiv="X-UA-Compatible" content="ie=edge"> -->

<!-- <meta charset="UTF-8"> -->
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->

<!-- <title>popup 예제</title> -->
<!-- <script type="text/javascript"> -->
<!-- 	function showPopUp() { -->

<!-- 		//창 크기 지정 -->
<!-- 		var width = 500; -->
<!-- 		var height = 500; -->

<!-- 		//pc화면기준 가운데 정렬 -->
<!-- 		var left = (window.screen.width / 2) - (width/2); -->
<!-- 		var top = (window.screen.height / 4); -->

<!-- 	    	//윈도우 속성 지정 -->
<!-- 		var windowStatus = 'width='+width+', height='+height+', left='+left+', top='+top+', scrollbars=yes, status=yes, resizable=yes, titlebar=yes'; -->

<!-- 	    	//연결하고싶은url -->
<!-- 	    	const url = "http://localhost/map1"; -->

<!-- 		//등록된 url 및 window 속성 기준으로 팝업창을 연다. -->
<!-- 		window.open(url, "hello popup", windowStatus); -->
<!-- } -->
<!-- </script> -->
<!-- </head> -->


<body>
  <header>
    <nav id="tab-button-nav">
      <button class="tab-button" data-tab-section="tab-section-1">탭 1</button>
      <button class="tab-button" data-tab-section="tab-section-2">탭 2</button>
    </nav>
  </header>
  <main>
    <br>
    <section id="tab-section-1" class="tab-section">
      <div>탭 1 페이지</div>
    </section>
    <section id="tab-section-2" class="tab-section" hidden>
      <div>탭 2 페이지</div>
    </section>
  </main>
  
  <script>
    const $nav = document.querySelector('#tab-button-nav')
    const $sections = document.querySelectorAll('.tab-section');

    $nav.addEventListener('click', (e) => {
      if (!e.target.classList.contains('tab-button')) {
        return;
      }
      
      const focusedTabId = e.target.dataset.tabSection;

      $sections.forEach(($section) => {
        if ($section.id === focusedTabId) {
          $section.removeAttribute('hidden');
        } else {
          $section.setAttribute('hidden', true);
        }
      });
    });
  </script>
</body>


</html>