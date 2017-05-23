jQuery(window).on('load', function(){
	//preloader
	$("#status").fadeOut(); // will first fade out the loading animation
	$("#preloader").delay(800).fadeOut("slow"); // will fade out the white DIV that covers the website.
	$("#photostack-1").trigger('click');
	 



	var mentFirst = "고객이 추구하는 디자인";
	var mentFirstcomment = "파인인사이트의 첫걸음은 고객을 이해하는것에서 시작됩니다.고객의 요구사항을 파악하고 업무에 적합한 맞춤 서비스를 제공합니다. 직관적이고 감각적인 디자인으로 고객님의 성공을 지원합니다.";
	var mentSecond = "사용자 중심 프로세스 구축";
	var mentSecondcomment = "웹어플리케이션과 모바일어플리케이션 뉴미디어의 디스플레이 환경에 맞는 사용자 중심의 디자인과 솔루션에 대한 맞춤형 컨설팅으로 기업과 브랜드의 가치성공을 약속합니다.";
	var mentThird = "효과적 미디어 메세지 전달";
	var mentThirdcomment = "홍보와 광고에 관한 가장 효과적인 미디어 전략을 기획하여 제공합니다. 명확하고 참신한 메시지를 소비자에게 전달하는 프로세스를 구축하여 한정된 예산 범위 내에서 효과적인 전략을 수립합니다.";
	var mentFourth = "메디컬 시스템 전문가";
	var mentFourthcomment = "파인인사이트는 의료기관 통합의료정보시스템 구축 고객관리서비스 및 통합관리시스템 유지보수 분야에서 전문적인 서비스를 제공하는 스페셜 아이티그룹을 지향합니다. ";
	var mentFifth = "고객이 추구하는 디자인";
	var mentFifthcomment = "기업의 비지니스 컨셉을 이해하고 사용자 경험 중심의 디자인 패턴 분석을 반영하여 크리에이티브한 시각으로 고객이 추구하는 실용적 디자인을 완성합니다. ";
	var mentSixth = "파인인사이트에 감동하다";
	var mentSixthcomment = "빅데이터 분석과 리서치를 통해 사용자 성향 및 패턴을 분석하여 맞춤형 디자인과 솔루션을 제공해 고객님께 감동을 제공합니다.";

	$('.a0').click(function() {
		$('.description h1').html(mentFirst);
		$('.description p').html(mentFirstcomment);
	});
	$('.a1').click(function() {
		$('.description h1').html(mentSecond);
		$('.description p').html(mentSecondcomment);
	});
	$('.a2').click(function() {
		$('.description h1').html(mentThird);
		$('.description p').html(mentThirdcomment);
	});
	$('.a3').click(function() {
		$('.description h1').html(mentFourth);
		$('.description p').html(mentFourthcomment);
	});
	$('.a4').click(function() {
		$('.description h1').html(mentFifth);
		$('.description p').html(mentFifthcomment);
	});
	$('.a5').click(function() {
		$('.description h1').html(mentSixth);
		$('.description p').html(mentSixthcomment);
	});
});

