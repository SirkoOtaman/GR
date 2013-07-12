<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
            	    <li class="last"><a href="cv.jsp"><span>Резюме</span></a></li>
        	</ul>

      		<div class="contact">
	    	    <h2>Contact Us</h2>
            	    <p> <em>Phone :</em> ++ 12 34 56 78<br/>
           	    <em>Fax :</em> ++ 87 65 43 21<br/>
            	    <em>e mail:</em> <a href=" mailto:#?subject=#">address@something.com</a></p>
        	</div> 
   	 </div>

    	<div id="rightcolumn">
	<form action="InputStudents" name="student" class="def" enctype="application/x-www-form-urlencoded">
	    <div class="tableRow">
	    <p> Прізвище: </p>
		<p> <input type="text" name="lname" > </p>
	    </div>
	    <div class="tableRow">
		<p> Ім'я: </p>
		<p> <input type="text" name="fname" > </p>
	    </div>
	     <div class="tableRow">
		<p> Роки навчання: </p>
		<p>  <input type="date" name="startDate"> - <input type="date" name="endDate">  </p>
	    </div>
	    <div class="tableRow">
		<p> Пароль: </p>
		<p> <input type="password" name="password" > </p>
	    </div>
	 <input type="submit" name="action" value="Підтвердити" align="middle">
	</form>
    	</div>
      </div>
    </div>

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
