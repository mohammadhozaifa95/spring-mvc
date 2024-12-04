<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Bootstrap 4 CDN (for styling and responsiveness) -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<c:url value="/resource/css/style.css"/>">
<style>
/* Center the container vertically and horizontally */
body, html {
	height: 100%;
	margin: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #f8f9fa; /* Light background for contrast */
}

.container {
	width: 100%;
	display: flex;
	justify-content: center;
}

/* Styling the card */
.card {
	width: 100%;
	max-width: 400px; /* Limit the card's maximum width */
	background-color: #007bff; /* Blue background */
	color: white;
	border-radius: 10px; /* Rounded corners */
}

.card-body {
	padding: 30px;
}

.form-group input {
	width: 100%;
	padding: 10px;
	font-size: 16px;
	border-radius: 5px;
	border: 2px solid #007bff;
}

.btn-search {
	width: 100%;
	padding: 10px;
	background-color: #0056b3; /* Darker blue for the button */
	border: none;
	color: white;
	font-size: 16px;
	border-radius: 5px;
	margin-top: 20px;
	cursor: pointer;
}

.btn-search:hover {
	background-color: #004085; /* Darker blue on hover */
}
</style>
</head>
<body>
	<div class="container">
		<div class="card mx-auto mt-5">
			<div class="card-body">
				<h2 class="text-center text-white">MY Search</h2>
				<form action="search" class=mt-5>
					<div class="form-group">
						<input type="text" name="querybox" placeholder="Enter your keyword"
							class="form-control">
					</div>
					<!-- Search button -->
					<button type="submit" class="btn-search">Search</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
