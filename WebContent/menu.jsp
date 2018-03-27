<html>
<head>
<title>this is menu</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">LibraryManagement</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Issue
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="addissue.jsp">New</a></li>
          <li><a href="index.jsp">List</a></li>
        </ul>
      </li>
       <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Books
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="bookslist.jsp">List</a></li>
          <li><a href="BookForm.jsp">Add</a></li>
          <li><a href="#">Update</a></li>
          <li><a href="#">Delete</a></li>
        </ul>
      </li>
       <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">User
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="userslist.jsp">List</a></li>
          <li><a href="userform.jsp">Add</a></li>
          <li><a href="#">Update</a></li>
          <li><a href="#">Delete</a></li>
        </ul>
      </li>
    </ul>
  </div>
</nav>

</body>
</html>