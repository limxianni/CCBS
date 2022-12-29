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
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet" />

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
	<script>
            document.getElementById(id).className = "selected";
    </script>
	<title>Company Homepage</title>
	<link rel="stylesheet" href="css/eunicestyle.css">
	<link rel="stylesheet" href="css/modal.css">
	
	<style>
		@import
			url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap')
			;
		
		* {
			font-family: 'Poppins', sans-serif;
			font-weight: bold;
		}
	
		.badge-style {
			border-radius: 30px;
			padding:2px 10px;
		}
		
		.badge-style.badge-lightblue {
			background: lightblue;
		}
		
		.badge-style.badge-lime {
			background: lime;
		}
		
		.badge-style.badge-white {
			background: #f0f0f0;
		}
		
	</style>
</head>
<body>
	<div class="modal-backdrop" id="backdrop"></div>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="company__header">
        <img src="images/GSC-Cinema-Logo.png" style="width: 210px;"'>
        <button>Generate Sales Report</button>
    </div>

    <br> <br>
    <!-- for users to navigate and click the tabs -->
    <div class="company__alltab" style="margin: 0px 8px">
      <ul>
        <li class="selected" id="movietab" onclick="change_tab(this.id)">
          Movie
        </li>
        <li class="notselected" id="snacktab" onclick="change_tab(this.id)">
          Snack
        </li>
        <li class="notselected" id="halltab" onclick="change_tab(this.id)">
          Hall
        </li>
      </ul>
    </div>
    
    <div class="company__movietab hidden_contents" id="movietab_desc">
    
		<button type="button" class="movietab__btn btn btn-primary" style="margin-right:6rem" onclick="toggleDialog('insertMovieDialog')">Add Movie</button>
        
      	<!-- link direct to add movie history page -->
        <a target="_blank" href="./add-movie-history.jsp">
        <button type="button" class="movietab__btn btn btn-primary">
        History</button>
        </a>
        <div class="movietab__posters">
            <img src="images/Mechamato-poster.jpg" class="movietab__poster" onclick="toggleDialog('insertMovieDialog')"/>
            <img src="images/SAO-poster.jpeg" class="movietab__poster" />
            <img src="images/Wakanda-poster.jpg" class="movietab__poster" />
            <img src="images/black-adam-poster.jpg" class="movietab__poster" />
        </div>
    </div>

    <div class="hidden_contents" id="snacktab_desc">
        <h2>Snack</h2>
        <jsp:include page="snackInside.jsp" />  

    </div>

    <div class="hidden_contents" id="halltab_desc">
        <button id="hall__btn" type="button" class="btn btn-primary" data-bs-toggle="modal"
            data-bs-target="#exampleModal">
            Add Hall
        </button>
        <!-- the list -->
        <div>
            <h2><b>GSC Setia City Mall</b></h2>
            <hr style="border-top: 2px solid black" />

            <!-- need to chg, insert data backend-->
            <table class="table1">
                <tr>
                    <td>Hall 13</td>
                    <td>Pending</td>
                    <td>21 November 2022</td>
                    <td>
                        <button type="button" class="btn btn-danger">Cancel</button>
                    </td>
                </tr>
                <tr>
                    <td>Hall 14</td>
                    <td>Pending</td>
                    <td>21 November 2022</td>
                    <td>
                        <button type="button" class="btn btn-danger">Cancel</button>
                    </td>
                </tr>
                <tr>
                    <td>Hall 15</td>
                    <td>Pending</td>
                    <td>21 November 2022</td>
                    <td>
                        <button type="button" class="btn btn-danger">Cancel</button>
                    </td>
                </tr>
                <tr>
                    <td>Hall 16</td>
                    <td>Pending</td>
                    <td>21 November 2022</td>
                    <td>
                        <button type="button" class="btn btn-danger">Cancel</button>
                    </td>
                </tr>
            </table>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="" method="">
                        <div class="row mb-3">
                            <label for="branch" class="col-sm-2 col-form-label w-50">Branch</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="branch" />
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="hallType" class="col-sm-2 col-form-label w-50">Hall Type</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="hallType" />
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="airConditioner" class="col-sm-2 col-form-label w-50">Air Conditioner</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="airConditioner" />
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="soundSystem" class="col-sm-2 col-form-label w-50">Sound system</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="soundSystem" />
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="seatType" class="col-sm-2 col-form-label w-50">Seat type</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="seatType" />
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="soundSystem" class="col-sm-2 col-form-label w-50">Sound system</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="soundSystem" />
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="hallPicture" class="col-sm-2 col-form-label w-50">Hall picture</label>
                            <div class="col-sm-10">
                                <input type="file" class="form-control" id="hallPicture" />
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                        Close
                    </button>
                    <button type="button" class="btn btn-success">Submit</button>
                </div>
            </div>
        </div>
    </div>

    <div id="visible_contents"></div>
    
	<div class="dialog" id="addFoodAndBeverageDialog">
		<div class="container p-5" style="background: white;">
			<span class="float-right times-button" onclick="closeDialog('addFoodAndBeverageDialog')"><i
				class="fas fa-times"></i></span>
			<p>
				<b>Package:</b> <span class="py-1 px-4"
					style="background: lightblue; border-radius: 3px;">Combo</span>
			</p>
			<input readonly disabled name="combo" value="Medium Popcorn" /> <br>
			<br> <input readonly disabled name="food"
				value="Small Sized Drink" /> <br> <br> <input disabled
				readonly name="drink" value="Onion Ring" /><br> <br>

			<hr style="height: 3px; background: black;">

			<div class="button-rows">
				<button class="btn" style="background: lightgray">
					<b>RM14.90</b>
				</button>

				<button class="btn btn-info" onclick="closeDialog('addFoodAndBeverageDialog')">Insert</button>
			</div>
		</div>
	</div>
	
	<div class="dialog" id="insertMovieDialog">
		<div class="container p-5" style="background: white;">
			<span class="float-right times-button" onclick="closeDialog('insertMovieDialog')"><i
				class="fas fa-times"></i></span>
			<h2><b>Avatar: The Way of Water</b></h2>
			<%
				String[] badges = new String[]{"2000", "PG-13", "311mins"};
				for(int i=0;i<badges.length;i++){
					out.println("<small><span class='badge-style badge-lime'>"+badges[i]+"</span></small>");
				}
				
				String[] tags = new String[]{"Action", "Drama", "Fantastic"};
				for(int i=0;i<tags.length;i++){
					out.println("<small><span class='badge-style badge-lightblue'>"+badges[i]+"</span></small>");
				}
			%>
			
			
			<div class="row">
				<div class="col-6">
					<div class="card mt-3">
						<div class="card-body">
							<div class="card-title">Price</div>
								<table class="table table-striped">
									<tr>
										<td><b>Deluxe</b></td>
										<td><input class="form-control form-control-sm" type="number"/></td>
									</tr>
									<tr>
										<td><b>Dual Max</b></td>
										<td><input class="form-control form-control-sm" type="number"/></td>
									</tr>
									<tr>
										<td><b>3D</b></td>
										<td><input class="form-control form-control-sm" type="number"/></td>
									</tr>
									<tr>
										<td><b>DA DB</b></td>
										<td><input class="form-control form-control-sm" type="number"/></td>
									</tr>
									<tr>
										<td><b>Premium</b></td>
										<td><input class="form-control form-control-sm" type="number"/></td>
									</tr>
									<tr>
										<td><b>Classic</b></td>
										<td><input class="form-control form-control-sm" type="number"/></td>
									</tr>
							</table>
						</div>
					</div>
				</div>
				<div class="col-6">
					<img src="images/SAO-poster.jpeg" style="width:inherit"/>
				</div>
			</div>
			
			<div class="card mt-3">
				<div class="card-body">
				<div class="card-title">Description</div>
					<textarea rows="5" class="form-control" type="text" value="Jake Sully and Ney'tiri have formed a family and are doing everything to stay together. However, they must leave their home and explore the regions of Pandora. When an ancient threat resurfaces, Jake must fight a difficult war against the humans."></textarea>
				</div>
			</div>
			
			<div class="card mt-3">
				<div class="card-body">
				<div class="card-title">Casts</div>
					<table class="table table-striped">
						<tr>
							<td><b>Director</b></td>
							<!-- <td><span class="badge-style badge-white">James Cameron</span></td> -->
							<td><input value="Rick Jaffa, Shane Salerno, Josh Friedman" class="form-control" type="text"/></td>
						</tr>
						<tr>
							<td><b>Screenplay by</b></td>
							<!-- <td><span class="badge-style badge-white">James Cameron</span>	<span class="badge-style badge-white">Rick Jaffa</span>	<span class="badge-style badge-white">Amanda Silver</span> <br></td> -->
							<td><textarea value="Josh Friedman" type="text" class="form-control"></textarea></td>
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
							<td><textarea value="James Cameron, Rick Jaffa, Amanda Silver, Josh Friedman, Shane Salerno" type="text" class="form-control"></textarea></td>
						</tr>
					</table>			
				</div>
			</div>
		</div>
			
	</div>

    <script>
        // movie tab
        document.getElementById("visible_contents").innerHTML =
            document.getElementById("movietab_desc").innerHTML;

        function change_tab(id) {
            document.getElementById("visible_contents").innerHTML =
                document.getElementById(id + "_desc").innerHTML;
            document.getElementById("movietab").className = "notselected";
            document.getElementById("snacktab").className = "notselected";
            document.getElementById("halltab").className = "notselected";

            document.getElementById(id).className = "selected";
        }
    </script>

	<script type="text/javascript">
		function toggleDialog(modalId) {
			var dialog = document.getElementById(modalId);
			console.log(dialog);
			console.log(modalId);
			var backdrop = document.getElementById("backdrop");

			if (dialog.style.display == 'none' || dialog.style.display == "") {
				dialog.style.display = "block";
				backdrop.style.display = "block";
			} else {
				dialog.style.display = "none";
				backdrop.style.display = "none";
			}
		}

		function closeDialog(modalId) {
			var dialog = document.getElementById(modalId);
			var backdrop = document.getElementById("backdrop");

			dialog.style.display = "none";
			backdrop.style.display = "none";
		}
	</script>

    <!-- Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>