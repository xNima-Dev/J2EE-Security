
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>J2EE Security | Login</title>
</head>
<body>
    <h1>J2EE Security Login</h1>

    <p style="color:red">
        ${requestScope.message}
    </p>
    <form method="post" action="/login">
        <table>
            <tr>
                <th>Username:</th>
                <td><input type="text" name="username" /></td>
            </tr>
            <tr>
                <th>Password::</th>
                <td><input type="password" name="password" /></td>
            </tr>
            <tr>
                <th>:</th>
                <td><input type="submit" value="login" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
