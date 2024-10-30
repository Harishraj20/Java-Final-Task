<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Users Details</title>
</head>
<body>
    <table border="1">
        <thead>
            <tr>
                <th>User Id</th>
                <th>Name</th>
                <th>Visit Count</th>
                <th>Last Login</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${userList}">
                <tr>
                    <td>${user.id}</td> 
                    <td>${user.userName}</td>
                    <td>${user.visitCount}</td> 
                    <td>${user.lastLogin}</td> 
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
