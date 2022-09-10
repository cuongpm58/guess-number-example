<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Xếp hạng</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1 class="font-weight-bold text-center">Xếp hạng</h1>
	<div class="row justify-content-center mt-5">
        <div class="col-md-8">
            <table class="table table-borderless">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">User name</th>
                        <th scope="col">Game session id</th>
                        <th scope="col">Number of guess</th>
                    </tr>
                    </thead>
                    <tbody>
                    <script>
                        console.log('gameSession', '${gameSessions}')
                    </script>
                    <c:forEach var="gameSession" items="${gameSessions}" varStatus="loop">
                        <tr class="table-success">
                            <th scope="row">${loop.index + 1}</td>
                            <td>${gameSession.username}</td>
                            <td>${gameSession.id}</td>
                            <td>${gameSession.minGuess}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
        </div>
    </div>

</body>
</html>