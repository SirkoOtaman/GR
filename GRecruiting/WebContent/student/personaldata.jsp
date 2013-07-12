<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Працевлаштування</title>

    <link rel="stylesheet" type="text/css" href="../styles/style.css" />
  </head>

<body>

  <div id="wrapper">

     <jsp:include page="../WEB-INF/includes/Header.jsp"></jsp:include>
    

      <ul class="glossymenu">
	  <li><a href="index.jsp"><b>Головна</b></a></li>
          <li class="current"><a href="student.jsp"><b>Студенту</b></a></li>
          <li><a href="faculty.jsp"><b>Кафедрі</b></a></li>
          <li><a href="company.jsp"><b>Роботодавцю</b></a></li>
           <li><a href=" "><b>Допомога</b></a></li>
      </ul>	 
    <div id="container">
      <div id="main">	
    	<div id="leftcolumn">
	    <h2>Навігація</h2>
        	<ul id="menu">
            	    <li><a href="personaldata.jsp"><span>Персональні дані</span></a></li>
            	    <li><a href="vacancy.jsp"><span>Вакансії</span></a></li>
            	    <li class="student/last"><a href="cv.jsp"><span>Резюме</span></a></li>
        	</ul>

      		<div class="contact">
	    	    <h2>Contact Us</h2>
            	    <p> <em>Phone :</em> ++ 12 34 56 78<br/>
           	    <em>Fax :</em> ++ 87 65 43 21<br/>
            	    <em>e mail:</em> <a href=" mailto:#?subject=#">address@something.com</a></p>
        	</div> 
   	 </div>

    	<div id="rightcolumn">
			<form action="InputOutputResume" name="student" class="def" enctype="application/x-www-form-urlencoded">
	     <div class="tableRow">
		<p> ID студента: </p>
		<p> <input type="text" name="studID" > </p>
	    </div>
	    <div class="tableRow">
		<p> Адреса: </p>
		<p> <input type="text" name="adress" > </p>
	    </div>
	    <div class="tableRow">
		<p>Дата народження: </p>
		<p>   <input type="date" name="birthDate"> </p>
	    </div>
	    	 <div class="tableRow">
		<p>Місце народження: </p>
		<p>   <input type="text" name="birthPLace"> </p>
	    </div>
	    <div class="tableRow">
		<p> Середній бал: </p>
		<p> <input type="number" name="avrgMark" min="3" max="5" step="0.1">  </p>
	    </div>
	    <div class="tableRow">
		<p> E-mail: </p>
		<p> <input type="text" name="email" ></p>
	    </div>
	    <div class="tableRow">
		<p> Іноземні мови: </p>
		<p> <input type="checkbox" name="eng" >Англійська <input type="checkbox" name="deu" >Німецька <input type="checkbox" name="fra" >Французька </p>
	    </div>
	    <div class="tableRow">
		<p> Бажана посада: </p>
		<p> <input type="text" name="wantedPost" > </p>
	    </div>
	    <div class="tableRow">
		<p> Ключова інформація: </p>
		<p> <textarea name="keyInfo" rows="5" cols="50"> - Знання принципів ООП і т.д.</textarea> </p>
	    </div>
	    <div class="tableRow">
		<p> Інтереси та особисті навички: </p>
		<p> <textarea name="interests" rows="5" cols="50"></textarea> </p>
	    </div>
	 <input type="submit" name="action" value="Додати дані">
	</form>
                <div class="clear"></div>
		<div id="triplebox">
		 </div>
		 <!-- End Right Column -->
		 
		 <!-- Begin Footer -->
    <div id="footer">
    </div>
		 <!-- End Footer -->
		 
   </div>
   <!-- End Wrapper -->
   
</body>
</html>