<%--
  Created by IntelliJ IDEA.
  User: Darklane
  Date: 9/21/2021
  Time: 11:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Ticket</title>
</head>
<body>





Create Ticket
<form action="" method="post">
    Name <input type="text" name="name">
    Title <input type="text" name="title">
    Description <input type="text" name="description">
    Priority <input type="text" name="priority">
    <label for="priority">Priority</label>
    <select id="priority" name="priority">
        <option value="1">Very Low</option>
        <option value="2">Low</option>
        <option value="3">Medium</option>
        <option value="4">High</option>
        <option value="5">Critical</option>
    </select>
    <input type="submit" name="submit" value="Create Ticket">

</form>
</body>
</html>

<!-- html dropdown -->