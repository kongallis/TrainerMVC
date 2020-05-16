<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trainers' List</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
         <style>
              body {
                background-color: antiquewhite;
                font-style: "Georgia", "serif";
            }
            table, h1 {
                text-align: center;
                margin: 0 auto;
            }
            tr:nth-child(1){
                font-weight: bold;
            }   
             tr:nth-child(odd){
                background-color:#A9ABC1;
            }  
              tr:nth-child(even){
                background-color: #C1C3DD;
            }  
            td {
                padding-right: 15px;
            }
            
            </style>
    </head>
    <body>
       <h1>Trainers' List</h1>
        <table>
		<tr>
                    <td>ID</td><td>FIRST NAME</td><td>LAST NAME</td><td>SUBJECT</td><td></td>
		</tr>
		<c:forEach items="${trainers}" var="trainer">
			<tr>
                            <!-- edit: http://localhost:8081/edit/{id} -->
                            <td><a href="<c:url value='${editurl}/${trainer.id}' />">${trainer.id}</a></td>
                            <td>${trainer.firstName}</td>
                            <td>${trainer.lastName}</td>
                            <td>${trainer.subject}</td>                       
                            <td><a href="<c:url value='${deleteurl}/${trainer.id}' />">delete</a></td>
			</tr>
		</c:forEach>
	</table>
        <div id="msg">${msg}</div>
          <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
