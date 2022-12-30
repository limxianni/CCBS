<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap"
	rel="stylesheet" />

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<title>Sales Report</title>
</head>
<body>
	<div class="container mt-5">
		<h1>Golden Screen Cinema Sales Report</h1>

		<div class="row mt-3">
			<div
				class="col-3"><select class="form-select">
			<option value="Day">Day</option>
			<option value="Month">Month</option>
			<option value="Year">Year</option>
		</select></div></div>

		<%String[] movies = new String[] { "Avatar", "BlackAdam", "SAO", "Jujutsu", "Pink Panther" };
			double[] price = new double[] { 23.0, 28.0, 18.0, 19.0, 18.0 };
			int[] qty = new int[] { 30, 89, 13, 43, 63 };%>

		<table class="table table-bordered mt-3">
			<thead>
				<th>No. </th>
				<th>Movie</th>
				<th>Type</th>
				<th>Price</th>
				<th>Number of Showing</th>
				<th>Total</th>
			</thead>
			<tbody>
				<%int numberShowing = 20;
			for (int i = 0; i < movies.length; i++) {%>
				<tr>
					<td><%=i%></td>
					<td><%=movies[i]%></td>
					<td>deluxe</td>
					<td><%=price[i]%></td>
					<td><%=numberShowing%></td>
					<td>RM <%=price[i] * numberShowing%></td>
				</tr>
				<%}%>
			</tbody>
		</table>
	</div>
</body>
</html>