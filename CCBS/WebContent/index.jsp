<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="./css/eunicestyle.css" />
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
<script>
	document.getElementById(id).className = "selected";
</script>
<title>Company Homepage</title>
<link rel="stylesheet" href="css/eunicestyle.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="company__header">
		<img src="images/GSC-Cinema-Logo.png" style="width: 210px;"'>
		<button>Generate Sales Report</button>
	</div>

	<br>
	<br>
	<!-- for users to navigate and click the tabs -->
	<div class="company__alltab" style="margin: 0px 8px">
		<ul>
			<li class="selected" id="movietab" onclick="change_tab(this.id)">
				Movie</li>
			<li class="notselected" id="snacktab" onclick="change_tab(this.id)">
				Snack</li>
			<li class="notselected" id="halltab" onclick="change_tab(this.id)">
				Hall</li>
		</ul>
	</div>

	<div class="company__movietab hidden_contents" id="movietab_desc">
		<!-- link direct to add movie history page -->
		<div
			style="justify-content: flex-end; display: flex; flex-direction: row;">

			<button style="margin-right: 20px;" id="hall__btn" type="button"
				class="btn btn-primary" data-bs-toggle="modal"
				data-bs-target="#insertMovieModel">Add Movie</button>
			<a target="_blank" href="./add-movie-history.jsp">
				<button type="button" class="btn btn-primary">History</button>
			</a>
		</div>


		<div class="movietab__posters">
			<a id="movie1" target="_blank" href="./movieDetail.jsp">
				<img src="images/Mechamato-poster.jpg" class="movietab__poster" /> 
			</a>
			<a id="movie2" target="_blank" href="./movieDetail.jsp">
				<img src="images/SAO-poster.jpeg" class="movietab__poster" /> 
			</a>
			<a id="movie3" target="_blank" href="./movieDetail.jsp">
				<img src="images/Wakanda-poster.jpg" class="movietab__poster" /> 
			</a>
			<a id="movie4" target="_blank" href="./movieDetail.jsp">
				<img src="images/black-adam-poster.jpg" class="movietab__poster" />
			</a>
		</div>
	</div>

	<div class="hidden_contents" id="snacktab_desc">
		<h2>Snack</h2>
		<jsp:include page="snackInside.jsp" />

	</div>

	<div class="hidden_contents" id="halltab_desc">


		<div
			style="justify-content: flex-end; display: flex; flex-direction: row;">

			<button id="hall__btn" type="button" class="btn btn-primary"
				style="margin-right: 20px" data-bs-toggle="modal"
				data-bs-target="#branchModal">Add Branch</button>

			<button id="hall__btn" type="button" class="btn btn-primary"
				data-bs-toggle="modal" data-bs-target="#exampleModal">Add
				Hall</button>
		</div>

		<!-- the list -->
		<div>
			<h2>
				<b>GSC Setia City Mall</b>
			</h2>
			<hr style="border-top: 2px solid black" />

			<!-- need to chg, insert data backend-->
			<table class="table1">
				<tr>
					<td>Hall 13</td>
					<td>Pending</td>
					<td>21 November 2022</td>
					<td>
						<button type="button" class="btn btn-primary">Manage</button>
						<button type="button" class="btn btn-danger">Cancel</button>
					</td>
				</tr>
				<tr>
					<td>Hall 14</td>
					<td>Pending</td>
					<td>21 November 2022</td>
					<td>
						<button type="button" class="btn btn-primary">Manage</button>
						<button type="button" class="btn btn-danger">Cancel</button>
					</td>
				</tr>
				<tr>
					<td>Hall 15</td>
					<td>Pending</td>
					<td>21 November 2022</td>
					<td>
						<button type="button" class="btn btn-primary">Manage</button>
						<button type="button" class="btn btn-danger">Cancel</button>
					</td>
				</tr>
				<tr>
					<td>Hall 16</td>
					<td>Pending</td>
					<td>21 November 2022</td>
					<td>
						<button type="button" class="btn btn-primary">Manage</button>
						<button type="button" class="btn btn-danger">Cancel</button>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Add Hall</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="" method="">
						<div class="form-group">
							<label for="branch" class="col-sm-5 col-form-label w-50">Branch</label>
							<div class="col-sm-10">
								<select id="branch" class="form-control">
									<option selected value="L1">Location 1</option>
									<option value="L2">Location 2</option>
									<option value="L3">Location 3</option>
									<option value="L4">Location 4</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="hallType" class="col-sm-5 col-form-label w-50">Hall
								Type</label>
							<div class="col-sm-10">
								<select id="hallType" class="form-control">
									<option selected value="2D">2D Hall</option>
									<option value="DolbyAtmosHall">Dolby Atmos Hall</option>
									<option value="IMAX">IMAX</option>
									<option value="D-BOX">D-BOX</option>
								</select>
							</div>

						</div>
						<div class="form-group">
							<label for="airConditioner" class="col-sm-5 col-form-label w-50">Air
								Conditioner</label>
							<div class="col-sm-10">
								<select id="airConditioner" class="form-control">
									<option selected value="taurus">Taurus Tech</option>
									<option value="eurus">Eurus</option>
									<option value="ocean">Ocean TechMe</option>
									<option value="aquarius">AQUARIUS</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="soundSystem" class="col-sm-5 col-form-label w-50">Sound
								system</label>
							<div class="col-sm-10">
								<select id="soundSystem" class="form-control">
									<option selected value="DolbyAtmosSound">Dolby Atmos
										Cinema Sound</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="hallPicture" class="col-sm-5 col-form-label w-50">Hall
								picture</label>
							<div class="col-sm-10">
								<input type="file" class="form-control" id="hallPicture" />
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-success">Submit</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="branchModal" tabindex="-1"
		aria-labelledby="branchModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="branchModalLabel">Add Branch</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="" method="">
						<div class="form-group">
							<label for="branchName" class="col-sm-5 col-form-label w-50">Branch
								Name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="branchName" />
							</div>
						</div>
						<div class="form-group">
							<label for="address" class="col-sm-5 col-form-label w-50">Address</label>
							<div class="col-sm-10">
								<textarea class="form-control" id="address"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="branchPostcode" class="col-sm-5 col-form-label w-50">Postcode</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="branchPostcode" />
							</div>
						</div>
						<div class="form-group">
							<label for="branchCity" class="col-sm-5 col-form-label w-50">City</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="branchCity" />
							</div>
						</div>
						<div class="form-group">
							<label for="branchState" class="col-sm-5 col-form-label w-50">State</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="branchState" />
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-success">Submit</button>
				</div>
			</div>
		</div>


	</div>
	<div class="modal fade" id="insertMovieModel" tabindex="-1"
		aria-labelledby="insertMovieModelLabel" aria-hidden="true">
		<div class="modal-dialog" style="max-width: 1000px">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="insertMovieModelLabel">Add Movie</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="" method="">
						<div class="form-group">
							<label for="movieName" class="col-form-label w-50">Movie
								Name</label> <input type="text" class="form-control" id="movieName" />
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="year" class="">Year</label> <input type="text"
									class="form-control" id="year" />
							</div>
							<div class="form-group col-md-4">
								<label for="category" class="">category</label> <input
									type="text" class="form-control" id="category" />
							</div>
							<div class="form-group col-md-4">
								<label for="duration" class="">Duration</label> <input
									type="text" class="form-control" id="duration" />
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
								<label for="description" class="col-form-label w-50">Description</label>
								<textarea class="form-control" id="description"></textarea>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="director" class="">Director by</label>
								<textarea class="form-control" id="director"></textarea>
							</div>
							<div class="form-group col-md-4">
								<label for="screenplay" class="">ScreenPlay By</label>
								<textarea class="form-control" id="screenplay"></textarea>
							</div>
							<div class="form-group col-md-4">
								<label for="story" class="">Story By</label>
								<textarea class="form-control" id="story"></textarea>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
								<label for="tag" class="">Tag</label>
								<textarea class="form-control" id="tag"></textarea>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
								<div class="form-group row">
									<label for="pricedeluxe" class="col-sm-6 col-form-label">Deluxe:
										RM</label>
									<div class="col-sm-6">
										<input type="number" class="form-control" id="pricedeluxe"
											value="0" min=0>
									</div>
								</div>
								<div class="form-group row">
									<label for="pricepremium" class="col-sm-6 col-form-label">Premium:
										RM</label>
									<div class="col-sm-6">
										<input type="number" class="form-control" id="pricepremium"
											value="0" min=0>
									</div>
								</div>
								<div class="form-group row">
									<label for="pricedualmax" class="col-sm-6 col-form-label">DualMax:
										RM</label>
									<div class="col-sm-6">
										<input type="number" class="form-control" id="pricedeluxe"
											value="0" min=0>
									</div>
								</div>
								<div class="form-group row">
									<label for="price2d" class="col-sm-6 col-form-label">2D:
										RM</label>
									<div class="col-sm-6">
										<input type="number" class="form-control" id="price2d"
											value="0" min=0>
									</div>
								</div>
								<div class="form-group row">
									<label for="price3d" class="col-sm-6 col-form-label">3D:
										RM</label>
									<div class="col-sm-6">
										<input type="number" class="form-control" id="price3d"
											value="0" min=0>
									</div>
								</div>
							</div>
						
						</div>
						<div class="form-row">
							<label class="form-label" for="customFile">Default file input example</label> 
							<input type="file" class="form-control" id="customFile" />
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-success">Submit</button>
				</div>
			</div>
		</div>
	</div>

	<div id="visible_contents"></div>

	<script>
		// movie tab
		document.getElementById("visible_contents").innerHTML = document
				.getElementById("movietab_desc").innerHTML;

		function change_tab(id) {
			document.getElementById("visible_contents").innerHTML = document
					.getElementById(id + "_desc").innerHTML;
			document.getElementById("movietab").className = "notselected";
			document.getElementById("snacktab").className = "notselected";
			document.getElementById("halltab").className = "notselected";

			document.getElementById(id).className = "selected";
		}
	</script>

	<!-- Bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>

</html>