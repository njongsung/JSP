<%@ page import="java.util.Calendar" %>
<!-- 지시부 : page 상단에 기술한다. -->
<!-- HTML 영역 -->


<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 서버 언어가 실행영역에 표시되는 공백라인을 안보이도록 설정하는 방법-->
<%@page trimDirectiveWhitespaces="true" %>

<%!
  //선언부: JSP에서 메소드나 변수를 선언하는 곳이다.
  //      단을 매개변수로 전달 받아서 구구단을 출력하는 메소드

  public String gugudan(int dan) {
    String result = "";
    for (int i = 0; i < 9; i++) {
      result += dan+"*"+i+"="+(dan*i)+"<br>";
    }
    return result;
  }

  //  임의의 수를 매개변수로 전달 받아 그 수까지의 합을 구하여 변환하는 메소드
    public int sum(int max){
    int s=0;
      for (int i = 1; i <= max ; i++) {
        s+=i;
      }
      return s;
    }
%>

<!DOCTYPE thml>
<html>
<head>
  <meta charset="UTF-8">
  <% String tel = "010-1234-5678"; %>
  <title>Insert title here</title>
  <link rel="stylesheet" href="./css_js/style.css" type="text/css"/>
  <style>
    hr{border: 1px solid red}
  </style>
  <script>
    document.write("<h2>자바스크립트에서 실행됨</h2>");
  </script>
  <script src="./css_js/scripte.js"></script>
</head>
<body>
<% // < % 사이 공간은 자바 영역이다 % >
    //스크립트릿: 변수선언, 기본명령어, if, for, while, do~while, switch, 객체생성(new), 배열)
  int a=1234;
  String b = "<b>gildong</b>";

  //클라이언트에게 정보 보내기          내장객체: out == Java의 printWriter
  out.println("이름="+b);
%>


<h1>구구단</h1>
<% // 구구단을 문자열로 만들어 리턴해주는 메소드를 호출한다.
  String gugu = gugudan(6);
  out.println(gugu);
  //< % = 변수, 수식, 메소드가 들어갈 수 있다.
%>
<hr>
a=<%=a+1111%><br>
sum(100) --> <%=sum(100)%>

<% //JSP: Java Server Page = php, asp

  System.out.println(("JSP에서 출력문 사용하기 -- Console에 출력됨"));
  out.println("<br><br> JSP에서 출력문 사용하기");

  //서버 컴퓨터의 날짜 정보 구하기
  Calendar now = Calendar.getInstance();
  int year = now.get(Calendar.YEAR);
  int month = now.get(Calendar.MONTH)+1;
  int day = now.get(Calendar.DAY_OF_MONTH);
  %>
<h1><%=year%>년 <%=month%>월 <%=day%>일</h1>

<img src="img/IMG_6464-.jpg"/>
</body>
</html>