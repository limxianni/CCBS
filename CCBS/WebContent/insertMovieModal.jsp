<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container p-5" style="background: white;">
		<span class="float-right times-button"
			onclick="closeDialog('insertMovieDialog')"><i
			class="fas fa-times"></i></span>
		<h2>
			<b contenteditable="true">Avatar: The Way of Water</b>
		</h2>
		<%
			String[] badges = new String[] { "2000", "PG-13", "311mins" };
			for (int i = 0; i < badges.length; i++) {
				out.println("<small><span class='badge-style badge-lime'>" + badges[i] + "</span></small>");
			}

			String[] tags = new String[] { "Action", "Drama", "Fantastic" };
			for (int i = 0; i < tags.length; i++) {
				out.println("<small><span class='badge-style badge-lightblue'>" + badges[i] + "</span></small>");
			}
		%>


		<div class="row">
			<div class="col-6">
				<div class="card mt-3">
					<div class="card-body">
						<div class="card-title">Price</div>
						<table class="table table-striped table-sm">
							<thead>
								<th>Type</th>
								<th>Price</th>
							</thead>
							<tbody>
								<tr>
									<td><b>Deluxe</b></td>
									<td><input class="form-control form-control-sm"
										type="number" /></td>
								</tr>
								<tr>
									<td><b>Dual Max</b></td>
									<td><input class="form-control form-control-sm"
										type="number" /></td>
								</tr>
								<tr>
									<td><b>3D</b></td>
									<td><input class="form-control form-control-sm"
										type="number" /></td>
								</tr>
								<tr>
									<td><b>DA DB</b></td>
									<td><input class="form-control form-control-sm"
										type="number" /></td>
								</tr>
								<tr>
									<td><b>Premium</b></td>
									<td><input class="form-control form-control-sm"
										type="number" /></td>
								</tr>
								<tr>
									<td><b>Classic</b></td>
									<td><input class="form-control form-control-sm"
										type="number" /></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-6">
				<img src="images/SAO-poster.jpeg" style="width: 19vw" />
			</div>
		</div>

		<div class="card mt-3">
			<div class="card-body">
				<div class="card-title">Description</div>
				<textarea rows="5" class="form-control" type="text"
					value="Jake Sully and Ney'tiri have formed a family and are doing everything to stay together. However, they must leave their home and explore the regions of Pandora. When an ancient threat resurfaces, Jake must fight a difficult war against the humans."></textarea>
			</div>
		</div>

		<div class="card mt-3">
			<div class="card-body">
				<div class="card-title">Casts</div>
				<table class="table table-striped">
					<tr>
						<td><b>Director</b></td>
						<!-- <td><span class="badge-style badge-white">James Cameron</span></td> -->
						<td><input value="Rick Jaffa, Shane Salerno, Josh Friedman"
							class="form-control" type="text" /></td>
					</tr>
					<tr>
						<td><b>Screenplay by</b></td>
						<!-- <td><span class="badge-style badge-white">James Cameron</span>	<span class="badge-style badge-white">Rick Jaffa</span>	<span class="badge-style badge-white">Amanda Silver</span> <br></td> -->
						<td><textarea value="Josh Friedman" type="text"
								class="form-control"></textarea></td>
					</tr>
					<tr>
						<td><b>Story by</b></td>
						<%-- <td>
							<% 
								String[] actors = new String[]{"James Cameron", "Rick Jaffa", "Amanda Silver", "Josh Friedman", "Shane Salerno"};
								for(int i=0;i<tags.length;i++){
									out.println("<span class='badge-style badge-white'>"+actors[i]+"</span>");
								}
							%>	
							</td> --%>
						<td><textarea
								value="James Cameron, Rick Jaffa, Amanda Silver, Josh Friedman, Shane Salerno"
								type="text" class="form-control"></textarea></td>
					</tr>
				</table>

				<button class="btn btn-success float-right">Insert</button>
			</div>
		</div>
	</div>

</body>
</html>