
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Trainer</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
         <style>
              body {
                background-color: antiquewhite;
                font-style: "Georgia", "serif";
            }
            form, h1 {
                text-align: center;
                margin: 0 auto;
            }
            div#list {
                padding-top: 20px;
                text-align: center;
            }
            #likeabutton {
                  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 8px 16px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 20px;
            }
            input {
                margin: 5px;
                padding: 5px;
            }
            input#subject {
                margin-left: 20px;
            }
            </style>
    </head>
    <body>
        <div class="container">
        <h1>Register a new Trainer</h1>
    <form:form method="POST" action="new" modelAttribute="trainer">
        <form:input type="hidden" path="id" id="id"/>
        First Name: <form:input path="firstName" /><br />
        Last Name: <form:input path="lastName" /><br />
        Subject : <form:input path="subject" /><br />          
        <input id="likeabutton" type="submit">
    </form:form>
    <div id="msg">${message}</div>
    <div id="list"><a href="<c:url value='/${listurl}' />">Back to the list of Trainers</a></div>
        </div>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
