<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String selectLanguage = "Language";
%>
<div class="fh5co-cover" style="background-image: url(resources/images/indexphoto.jpeg);"></div>
<div class="fh5co-overlay"/>
    <div id="fh5co-wrapper">
		<div id="fh5co-page">
		<div id="fh5co-header">
			<div class="top">
				<div class="container">
					<span><%=selectLanguage%></span>&nbsp;&nbsp;
						<select name="language" id="language" onchange="javascript:changeLanguage();" >
						    <option value="kor" selected>korean</option>
						    <option value="eng">english</option>
						</select>
						
					<span> <a href="#"><i>@</i>mjsili@gmail.com</a></span>
					<span> <a href="tel://+12345678910"><i class="icon-mobile3"></i>204-698-8905</a></span>
				</div>
			</div>
			<!-- end:top -->
			<header id="fh5co-header-section">
				<div id="background_dark" style="
					    width: 100%;
					    height: 159px;
					    background: #051839;
					    position: absolute;
					    opacity: 0.7;
					    top: 0;"></div>
				<div class="container">
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
						<!-- <h1 id="fh5co-logo"><a href="./">Betis</a></h1> -->
						<h1 id="fh5co-logo"><a href="./"><img src="resources/images/betis-logo.png"></a>
						</h1><br/>						
						<!-- START #fh5co-menu-wrap -->
					<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<!-- <li class="active"> -->
							<li class="betis"><a href="./">Home</a></li>
							<li class="betis"><a href="#fh5co-work-section">Work</a></li>
							<li class="betis"><a href="#fh5co-services-section">Service</a></li>
							<li class="betis"><a href="#fh5co-content-section">About Us</a></li>
							<li class="betis"><a href="#fh5co-blog-section">Contact</a></li>
							<li class="betis">
								<a href="./board" class="fh5co-sub-ddown">Board</a>
								<ul class="fh5co-sub-menu">
								 	<li><a href="left-sidebar.html">Board1</a></li>
								 	<li><a href="right-sidebar.html">Board2</a></li>
									<li>
										<a href="#" class="fh5co-sub-ddown">Special Board</a>
										<!-- <ul class="fh5co-sub-menu">
											<li><a href="http://freehtml5.co/preview/?item=build-free-html5-bootstrap-template" target="_blank">Special Board1</a></li>
											<li><a href="http://freehtml5.co/preview/?item=work-free-html5-template-bootstrap" target="_blank">Special Board2</a></li>
											<li><a href="http://freehtml5.co/preview/?item=light-free-html5-template-bootstrap" target="_blank">Special Board3</a></li>
										</ul> -->
									</li>
								</ul>
							</li>
						</ul>
					</nav>
					</div>
				</div>
			</header>
		</div>
		
</body> 
<script type = "text/javascript">
 function changeLanguage (){
		  var selectedLanguage = document.getElementById("language");
		  var language = selectedLanguage.options[selectedLanguage.selectedIndex].text;
		  console.log(language);
		  
		 if(language == "korean"){
			 document.getElementById("ourService_text").innerHTML ="바이오에너지 분야의 최근 기술을 모니터링 하는 동시에 기술전문가에 의한 심층적 분석을 통해 고객 맞춤형 기술 Trend 및 Insight 보고서를 제공합니다.";
			 document.getElementById("techReporting_name").innerHTML = "기술이슈 리포팅";
			 document.getElementById("techReporting_text").innerHTML = "타깃기술에 대한 글로벌 주요 이슈를 정리하여</br>e-mail로 주 1회 제공";
			 document.getElementById("thesisAnalysis_name").innerHTML = "특허 및 논문분석 서비스";
			 document.getElementById("thesisAnalysis_text").innerHTML = "타깃기술에 대한 특허 포트폴리오 및 논문 프로파일을 분석하여 보고서로 제공";
			 document.getElementById("techTrendReporting_name").innerHTML = "산업기술 동향 보고서";
			 document.getElementById("techTrendReporting_text").innerHTML = "타깃국가의 기술 또는 산업현황을 심층분석하여</br>시장확대 전략수립 시 활용할 수 있는</br>기술 동향 보고서 제공";
			 document.getElementById("techConsulting_name").innerHTML = "기술 컨설팅 서비스";
			 document.getElementById("techConsulting_text").innerHTML = "기술 및 기업분석을 기반으로 고객이 성공적으로 기술을 선택 및 확보할 수 있도록 기술 컨설팅 서비스 제공";
			 document.getElementById("ourWork_text").innerHTML = "실시간 Global 기술이슈</br> 조사, Data의 시각화, 기술</br> Trend 분석 뿐만 아니라</br>필요 시 기술활용 전략을</br>수립하여 고객에게</br>제안합니다.";
			 document.getElementById("dataCollecting_name").innerHTML = "데이터 수집";
			 document.getElementById("dataCollecting_text").innerHTML = "논문, 특허, 전자저널 및 기술 간행물 등 다양한 경로를 통해 신속하게 타깃기술에 대한 정보를 수집할 수 있는 유용한 정보원을 확보 및 관리하고 있습니다.";
			 document.getElementById("niceInfo_name").innerHTML = "유용한 정보 선별";
			 document.getElementById("niceInfo_text").innerHTML = "전세계 산재된 많은 자료 중 고객의 Needs에 초점을 맞춰 데이터의 정확도를 높이고, 고객이 필요로 하는  정보만을 정확하게 선별 제공하고 있습니다.";
			 document.getElementById("dataView_name").innerHTML = "데이터 시각화";
			 document.getElementById("dataView_text").innerHTML = "당사가 수집/분석한 결과물에 대하여 고객이 쉽고 빠르며 정확하게 이해할 수 있도록 각종 프로그램을 활용하여 데이터를 시각화하고 있습니다.";
			 document.getElementById("trendAnalysis_name").innerHTML = "트렌드 분석";
			 document.getElementById("trendAnalysis_text").innerHTML = "통계 및 객관적 근거를 기반으로 기술전문가의 심층분석을 통해 단순 데이터에 가치를 더하여 고객에게 Insight를 제공하고 있습니다.";
			 document.getElementById("reportMake_name").innerHTML = "보고서 작성";
			 document.getElementById("reportMake_text").innerHTML = "효과적이고, 정확한 정보전달 및 효율적인 의사소통을 위해 표준화된 보고서 양식을 이용하고 있습니다.";
			 document.getElementById("origin_name").innerHTML = "출처 제공";
			 document.getElementById("origin_text").innerHTML = "보고서에 제시된 각종 데이터에 대한 출처를 제공함으로써 고객이 필요 시 해당 데이터를 활용할 수 있도록 하고 있습니다.";
			 document.getElementById("betisInfo_name").innerHTML = "Betis 소개";
			 document.getElementById("betisInfo_text").innerHTML = "Betis(Bio-Energy Tech. Intelligence Service)는 2016년에 창설된 신규기업으로 바이오에너지 기술정보 분석에 전문화된 기업입니다. 고객과의 긴밀한 소통 및 협업을 통해 고객의 수요를 파악하고, 고객이 필요로 하는 정보를 조사/분석/제공하는 정보서비스 뿐만 아니라 고객사의 사업전략 수립 시 필요로 하는 기술에 대한 컨설팅 서비스를 제공하는 기업입니다. 이를 통해 궁극적으로는 바이오에너지기술의 경쟁력을 제고하고, 산업적 측면에서의 가치창출을 통해 전세계의 바이오에너지 사용비율을 높임으로써 청정기술 발전 및 자연환경 보호에 기여하고자 합니다.</br></br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-한국 본사(010-7187-7709)</br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-북미 사무실(1-204-698-8905)  </br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-대표메일(mjsili.lee@gmail.com)";
			 document.getElementById("betisGreet_name").innerHTML = "대표이사 인사말";
			 document.getElementById("betisGreet_text").innerHTML = "저희 Betis 사이트를 방문해주신 고객 여러분 환영합니다. 바이오에너지 기술은 지속적으로 연구/개발/활용되어야 할 환경친화적인 기술로서 전세계적으로 그 수요가 증가하고 있으며 향후 관련된 산업의 시장규모 또한 더욱 커질 것으로 전망되고 있습니다. 저희 Betis는 빠르게 변화하는 기술환경 그리고 넘쳐나는 정보 속에서 고객이 원하는 유용한 정보만을 효과적으로 전달할 수 있는 최고의 정보분석 전문기업이 될 수 있도록 최선을 다하고 있습니다. 새롭게 시작하는 신생기업인 만큼 패기와 열정으로 내딛는 Betis의 힘찬 발걸음과 도전에 많은 성원과 격려부탁드립니다. 감사합니다.";
			 document.getElementById("betisGreet_ceo").innerHTML = "Betis 이명주 대표이사";
			 console.log('korean');
		 }else{
			 console.log('english');
			 document.getElementById("ourService_text").innerHTML = "Our technical experts monitor the latest technologies in the bio-energy industry based on our client’s needs and we provide technical insight to our client";
			 document.getElementById("techReporting_name").innerHTML = "Technical News Report";
			 document.getElementById("techReporting_text").innerHTML = "Supplying the latest update reports on relevant, cutting-edge technology on a weekly basis through email";
			 document.getElementById("thesisAnalysis_name").innerHTML = "Analysis of Patent & Research Paper";
			 document.getElementById("thesisAnalysis_text").innerHTML = "Analyzing Patent Portfolios and paper profiles of our client’s technological interests, and making analysis reports to provide updates on the ever-changing technological trends.";
			 document.getElementById("techTrendReporting_name").innerHTML = "Industry Technology Trend Report";
			 document.getElementById("techTrendReporting_text").innerHTML = "Supplying in-depth reports about industry and technology trends in our client’s target market to develop effective expansion strategies.";
			 document.getElementById("techConsulting_name").innerHTML = "Technical Consulting Service";
			 document.getElementById("techConsulting_text").innerHTML = "Providing professional consultation for our clients to create technical strategies to emerge into new markets based on the appropriate use of technology, and potential local business partnerships";
			 document.getElementById("ourWork_text").innerHTML = "Real time data collection, filtering and analysis of new, relevant technologies to provide our clients with new technical strategies";
			 document.getElementById("dataCollecting_name").innerHTML = "Collection of Data";
			 document.getElementById("dataCollecting_text").innerHTML = "We are able to collect and analyze technical information through many useful sources including academic journals and patent databasest";
			 document.getElementById("niceInfo_name").innerHTML = "Filtering of the information";
			 document.getElementById("niceInfo_text").innerHTML = "Our team of experts select pertinent information to cater to our client’s specific needs";
			 document.getElementById("dataView_name").innerHTML = "Providing Visual Interpretations of Data";
			 document.getElementById("dataView_text").innerHTML = "We will deliver our technological information through visual interpretations including graphs, trends, maps and diagrams";
			 document.getElementById("trendAnalysis_name").innerHTML = "Analysis of Trends";
			 document.getElementById("trendAnalysis_text").innerHTML = "Providing our clients with technical insight and in-depth analysis, to create meaningful interpretations of raw data and statistics";
			 document.getElementById("reportMake_name").innerHTML = "Reporting";
			 document.getElementById("reportMake_text").innerHTML = "We use standardized reporting systems for effective, accurate and efficient delivery of information";
			 document.getElementById("origin_name").innerHTML = "Providing references";
			 document.getElementById("origin_text").innerHTML = "All of our reports maintain thorough reference records and can be provided upon request.";
			 document.getElementById("betisInfo_name").innerHTML = "test";
			 document.getElementById("betisInfo_text").innerHTML = "test";
			 document.getElementById("betisGreet_name").innerHTML = "test";
			 document.getElementById("betisGreet_text").innerHTML = "test";
			 document.getElementById("betisGreet_CEO").innerHTML = "test";
		 } 
 }
 window.onload=changeLanguage;
</script>  
</html>