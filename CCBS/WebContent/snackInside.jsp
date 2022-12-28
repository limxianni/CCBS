<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/6f995c3af2.js"
	crossorigin="anonymous"></script>
<title>Home Page</title>

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap')
	;

* {
	font-family: 'Poppins', sans-serif;
	font-weight: bold;
}

.btn-info, .btn-danger {
	padding: 1px 25px;
	font-weight: bold;
}

td {
	border: 0 !important;
}

td[colspan='4'] {
	border-bottom: 3px solid black !important;
}

.modal-backdrop {
	position: fixed;
	top: 0;
	left: 0;
	z-index: 1000;
	width: 100vw;
	height: 100vh;
	background-color: #000;
	opacity: 0.5;
	display: none;
}

.dialog {
	position: absolute;
	width: auto;
	height: auto;
	background: #fff;
	top: 50%;
	transform: translate(-50%, -50%);
	left: 50%;
	min-width: 640px;
	display: none;
	z-index: 1050;
}

.button-rows {
	display: flex;
	flex-direction: column;
	gap: 15px;
	align-items: end;
}

.times-button {
	background: lightgray;
	height: 25px;
	width: 25px;
	text-align: center;
	border-radius: 30px;
}

.snack-title {
	font-size: 23px;
}
</style>
</head>
<body>
	<div class="modal-backdrop" id="backdrop" onclick="toggleDialog()"></div>
	<div class="container mt-5" style="color: #BBCFD0;">
		<button class="btn btn-success font-weight-bold" onclick="toggleDialog()">Add
			Food and Beverage</button>
		<div class="container mt-5">
			<table class="table table-border">
				<tr>
					<td colspan="4"><b class="snack-title">Combo</b></td>
				</tr>
				<%
					String[] combo = new String[]{"Signature Popcorn (Small) + 1x Regular Drink/Mineral Water",
							"Big Depper + 1x Regular Drink / Mineral Water",
							"Golden Horn Chips (Small) + 1x Regular Drink/ Mineral Water",
							"5pcs Hot Minis + 1x RegularDrink / Mineral Water"};
					double[] comboPrice = new double[]{9.9, 9.9, 9.9, 9.9};
					for (int i = 0; i < combo.length; i++) {
						out.println(String.format("<tr>" + "<td>" + combo[i] + "</td>" + "<td>RM %.2f</td>"
								+ "<td><button class='btn btn-info'>Edit</button></td>"
								+ "<td><button class='btn btn-danger'>Delete</button></td>" + "</tr>", comboPrice[i]));
					}
				%>
				<tr>
					<td colspan="4"><b class="snack-title">Food</b></td>
				</tr>
				<%
					String[] food = new String[]{"Large Size Onion Ring", "Medium PopCorn", "Medium PopCorn"};
					double[] foodPrice = new double[]{9.9, 9.9, 9.9};
					for (int i = 0; i < food.length; i++) {
						out.println(String.format("<tr>" + "<td>" + food[i] + "</td>" + "<td>RM %.2f</td>"
								+ "<td><button class='btn btn-info'>Edit</button></td>"
								+ "<td><button class='btn btn-danger'>Delete</button></td>" + "</tr>", foodPrice[i]));
					}
				%>
				<tr>
					<td colspan="4"><b class="snack-title">Drink</b></td>
				</tr>
				<%
					String[] drink = new String[]{"Sprite", "MountainDew"};
					double[] drinkPrice = new double[]{4.9, 2.9};
					for (int i = 0; i < drink.length; i++) {
						out.println(String.format("<tr>" + "<td>" + drink[i] + "</td>" + "<td>RM %.2f</td>"
								+ "<td><button class='btn btn-info'>Edit</button></td>"
								+ "<td><button class='btn btn-danger'>Delete</button></td>" + "</tr>", drinkPrice[i]));
					}
				%>

			</table>
		</div>
	</div>

	<div class="dialog" id="addFoodAndBeverageDialog">
		<div class="container p-5" style="background: white;">
			<span class="float-right times-button" onclick="closeDialog()"><i
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

				<button class="btn btn-info" onclick="closeDialog()">Insert</button>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		function toggleDialog() {
			var dialog = document.getElementById("addFoodAndBeverageDialog");
			var backdrop = document.getElementById("backdrop");

			if (dialog.style.display == 'none' || dialog.style.display == "") {
				dialog.style.display = "block";
				backdrop.style.display = "block";
			} else {
				dialog.style.display = "none";
				backdrop.style.display = "none";
			}
		}

		function closeDialog() {
			var dialog = document.getElementById("addFoodAndBeverageDialog");
			var backdrop = document.getElementById("backdrop");

			dialog.style.display = "none";
			backdrop.style.display = "none";
		}
	</script>
</body>
</html>