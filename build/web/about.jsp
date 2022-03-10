<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About</title>
    <link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet">
        <link rel="shortcut icon" href="assets/images/fav.png" type="image/x-icon">
        <link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet">
        <link rel="shortcut icon" href="assets/images/fav.jpg">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/plugins/grid-gallery/css/grid-gallery.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
</head>
<body>

	<!-- Nav Bar -->
    <header class="continer-fluid ">

            <div id="menu-jk" class="header-bottom">
                <div class="container">
                    <div class="row nav-row">
                        <div class="col-md-3 logo">
                            <img src="assets/images/logo.jpg" alt="">
                        </div>
                        <div class="col-md-9 nav-col">
                            <nav class="navbar navbar-expand-lg navbar-light">

                                <button
                                    class="navbar-toggler"
                                    type="button"
                                    data-toggle="collapse"
                                    data-target="#navbarNav"
                                    aria-controls="navbarNav"
                                    aria-expanded="false"
                                    aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarNav">
                                    <ul class="navbar-nav">
                                        <li class="nav-item active">
                                            <a class="nav-link" href="index.jsp">Home
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="about.jsp">About Us</a>
                                        </li>

                                        <li class="nav-item">
                                            <a class="nav-link" href="index.jsp">Gallery</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="index.jsp">Process</a>
                                        </li>
                                      
                                        <li class="nav-item">
                                            <a class="nav-link" href="index.jsp">Contact US</a>
                                        </li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>

	<div class="about-section">
		<h1>About Us...</h1>
		<p>This project is designed by Mr. Ocean Prajapati and Mr.
			Nishchay Pal.</p>
		<p>Resize the browser window to see that this page is responsive
			the browser window to see that this page is responsive the browser
			window to see that this page is responsive the browser window to see
			that this page is responsive by the way.</p>
	</div>
	<p></p>
	</br>
	<p></p>
        <div class="container">
            	<h2 style="text-align: center">Our Team</h2>
	<p></p>

	<div class="row">
		<div class="column">
			<div class="card">

				<div class="container">
					<h2>Ocean Prajapati</h2>
					<p class="title">Software Developer</p>
					<p>Some text that describes me lorem ipsum ipsum lorem.</p>
					<p>oceanprajapati@gmail.com</p>

				</div>
			</div>
		</div>

	


	</div>

        </div>

	<!-- CSS Styling -->

	<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
}

html {
	box-sizing: border-box;
}

*, *:before, *:after {
	box-sizing: inherit;
}

.column {
	float: left;
	width: 33.3%;
	margin-bottom: 16px;
	padding: 0 8px;
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	margin: 8px;
}

.about-section {
	padding: 50px;
	text-align: center;
	background-color: #474e5d;
	color: white;
}

.container {
	padding: 0 16px;
}

.container::after, .row::after {
	content: "";
	clear: both;
	display: table;
}

.title {
	color: grey;
}

.button {
	border: none;
	outline: 0;
	display: inline-block;
	padding: 8px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 100%;
}

.button:hover {
	background-color: #555;
}

@media screen and (max-width: 650px) {
	.column {
		width: 100%;
		display: block;
	}
}
</style>

	<p></p>
	</br>
	<p></p>
	</br>
	

</body>
</html>