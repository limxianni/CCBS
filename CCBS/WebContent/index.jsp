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
                    	<button type="button" class="btn btn-info" onclick="toggleDialog('manageSchedulDialog')">Manage</button>
                        <button type="button" class="btn btn-danger">Cancel</button>
                    </td>
                </tr>
                <tr>
                    <td>Hall 14</td>
                    <td>Pending</td>
                    <td>21 November 2022</td>
                    <td>
                    	<button type="button" class="btn btn-info" onclick="toggleDialog('manageSchedulDialog')">Manage</button>
                        <button type="button" class="btn btn-danger">Cancel</button>
                    </td>
                </tr>
                <tr>
                    <td>Hall 15</td>
                    <td>Pending</td>
                    <td>21 November 2022</td>
                    <td>
                    	<button type="button" class="btn btn-info" onclick="toggleDialog('manageSchedulDialog')">Manage</button>
                        <button type="button" class="btn btn-danger">Cancel</button>
                    </td>
                </tr>
                <tr>
                    <td>Hall 16</td>
                    <td>Pending</td>
                    <td>21 November 2022</td>
                    <td>
                    	<button type="button" class="btn btn-info" onclick="toggleDialog('manageSchedulDialog')">Manage</button>
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
		<jsp:include page="addSnackModal.jsp"></jsp:include>
	</div>
	
	<div class="dialog" id="insertMovieDialog">
		<jsp:include page="insertMovieModal.jsp"></jsp:include>	
	</div>
	
	<div class="dialog" id="manageSchedulDialog">
		<jsp:include page="manageSchedulDialog.jsp"></jsp:include>	
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