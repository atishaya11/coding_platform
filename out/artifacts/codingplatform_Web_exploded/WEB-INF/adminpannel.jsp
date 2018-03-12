<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin pannel</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>


<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/js/materialize.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
	<nav>
	<div class="nav-wrapper blue darken-1">
		<a href="#" class="brand-logo" style="margin-left: 30px;">{Code In
			Less}</a>
		<ul id="nav-mobile" class="right hide-on-med-and-down">
			<li><a href="#"> <span><b>WELCOME ${name}</b></span></a></li>
			<li><a href="dashboard">Dashboard</a></li>
			<li><a href="rules">Rules</a></li>
			<li><a href="leaderboard">Leaderboard</a></li>
			<li><a href="admin">Log Out</a></li>
		</ul>
	</div>
	</nav>


	<div id="snackbar">${invalid}</div>
	<div id="main">
		<div class="card col s6 offset-s3"
			style="background: rgba(255, 255, 255, .5); margin-top: 20px; padding: 20px;">
			<div class="card-content" align="center">
				<p style="font-size: 30px; color: #0572d2;">GET STARTED</p>
			</div>
			<div class="card-tabs">
				<ul class="tabs tabs-fixed-width"
					style="background: rgba(255, 255, 255, .7);">
					<li class="tab" onclick="indicator();"><a class="active"
						href="#ques_form" style="color: #1E88E5;">ADD QUES</a></li>
					<li class="tab" onclick="indicator();"><a href="#"
						style="color: #1E88E5;">DELTE QUESTION</a></li>
					<li class="tab" onclick="indicator();"><a href="#"
						style="color: #1E88E5;">EDIT QUESTION</a></li>
					<li class="tab" onclick="indicator();"><a href="#"
						style="color: #1E88E5;">ADD USER</a></li>
				</ul>
			</div>
			<div class="card-content " id="cards"
				style="background: rgba(255, 255, 255, .5); margin-top: 0;">


				<div id="ques_form" align="center">

					<div id="ques" class="z-depth-1" align="center">
						<h5>ADD QUESTIONS</h5>

						<form:form modelAttribute="question" action="addques" method="post">

							<div class="input-field col s6">
								<form:input type="text" id="first_name" path="quesid"/>
								<label for="question id">enter question id:</label>
							</div>

							<div class="input-field col s6">
								<form:input type="text" id="name" path="title" /> <label
									for="question id">enter title:</label>
							</div>

							<div class="input-field col s6">
								<form:textarea id="detail" path="detail" />
								<label for="question id">enter detail:</label>
							</div>

							<div class="input-field col s6">
								<form:textarea id="constraints" path="constraints" />
								<label for="question id">enter constraints:</label>
							</div>

							<div class="input-field col s6">
								<form:textarea id="inputformat" path="inputformat" />
								<label for="question id">input format:</label>
							</div>
							<div class="input-field col s6">
								<form:textarea id="outputformat" path="outputformat" required="required"/>
								<label for="question id">output format:</label>
							</div>

							<div class="input-field col s6">
								<form:textarea id="sampletestcase" path="sampletestcase" required="required"/>
								<label for="question id">enter sample test case:</label>
							</div>
							<div class="input-field col s6">
								<form:input type="text" id="outputfilepath" path="outputfilepath"
									required="required"/> <label for="question id">enter output
									file path:</label>
							</div>

							<div class="input-field col s10">
								<form:input type="text" id="inputfilepath" path="inputfilepath"
									required="required"/> <label for="question id">enter input
									file path:</label>
							</div>
							<div class="input-field col s10">
								<form:input type="text" id="inputfilepath" path="timeLimit"
											required="required"/> <label for="question id">Enter
								time limit:</label>
							</div>
							<div align="center">
								<button type="submit" class="waves-effect waves-light btn blue"
									style="margin-bottom: 0;">Submit</button>
							</div>

						</form:form>
					</div>
				</div>
			</div>

		</div>
	</div>






</body>


<script>
          CKEDITOR.replace( 'detail', {
        	  
        	// Define the toolbar groups as it is a more accessible solution.
    			toolbarGroups: [
    				{"name":"basicstyles","groups":["basicstyles"]},
    				{"name":"links","groups":["links"]},
    				{"name":"paragraph","groups":["list","blocks"]},
    				{"name":"document","groups":["mode"]},
    				{"name":"insert","groups":["insert"]},
    				{"name":"styles","groups":["styles"]},
    				{"name":"about","groups":["about"]}
    			],
    			// Remove the redundant buttons from toolbar groups defined above.
    			removeButtons: 'Underline,Strike,Subscript,Superscript,Anchor,Styles,Specialchar',
            
  			width: '50%',
  			height: '60%'
  		} );
            
        </script>



<script>
          CKEDITOR.replace( 'constraints', {
        	// Define the toolbar groups as it is a more accessible solution.
  			toolbarGroups: [
  				{"name":"basicstyles","groups":["basicstyles"]},
  				{"name":"links","groups":["links"]},
  				{"name":"paragraph","groups":["list","blocks"]},
  				{"name":"document","groups":["mode"]},
  				{"name":"insert","groups":["insert"]},
  				{"name":"styles","groups":["styles"]},
  				{"name":"about","groups":["about"]}
  			],
  			// Remove the redundant buttons from toolbar groups defined above.
  			removeButtons: 'Underline,Strike,Subscript,Superscript,Anchor,Styles,Specialchar',
          
  			width: '50%',
  			height: '60%'
  		} );
          </script>
<script>
          CKEDITOR.replace( 'inputformat', {  // Define the toolbar groups as it is a more accessible solution.
    			toolbarGroups: [
      				{"name":"basicstyles","groups":["basicstyles"]},
      				{"name":"links","groups":["links"]},
      				{"name":"paragraph","groups":["list","blocks"]},
      				{"name":"document","groups":["mode"]},
      				{"name":"insert","groups":["insert"]},
      				{"name":"styles","groups":["styles"]},
      				{"name":"about","groups":["about"]}
      			],
      			// Remove the redundant buttons from toolbar groups defined above.
      			removeButtons: 'Underline,Strike,Subscript,Superscript,Anchor,Styles,Specialchar',
              
      			
      			width: '50%',
      			height: '60%'
    		} );
            </script>
<script>
           
          CKEDITOR.replace( 'outputformat', {// Define the toolbar groups as it is a more accessible solution.
    			toolbarGroups: [
      				{"name":"basicstyles","groups":["basicstyles"]},
      				{"name":"links","groups":["links"]},
      				{"name":"paragraph","groups":["list","blocks"]},
      				{"name":"document","groups":["mode"]},
      				{"name":"insert","groups":["insert"]},
      				{"name":"styles","groups":["styles"]},
      				{"name":"about","groups":["about"]}
      			],
      			// Remove the redundant buttons from toolbar groups defined above.
      			removeButtons: 'Underline,Strike,Subscript,Superscript,Anchor,Styles,Specialchar',
              
      			width: '50%',
      			height: '60%'
    		} );
            </script>
<script> 
          CKEDITOR.replace( 'sampletestcase', {
        	  
        	// Define the toolbar groups as it is a more accessible solution.
    			toolbarGroups: [
    				{"name":"basicstyles","groups":["basicstyles"]},
    				{"name":"links","groups":["links"]},
    				{"name":"paragraph","groups":["list","blocks"]},
    				{"name":"document","groups":["mode"]},
    				{"name":"insert","groups":["insert"]},
    				{"name":"styles","groups":["styles"]},
    				{"name":"about","groups":["about"]}
    			],
    			// Remove the redundant buttons from toolbar groups defined above.
    			removeButtons: 'Underline,Strike,Subscript,Superscript,Anchor,Styles,Specialchar',
            
    			width: '50%',
      			height: '60%'
    		} );
            
   </script>

<script>
	function indicator() {
		$(".indicator").css("background", "#1E88E5");
	}
	function snackBar() {
		var x = document.getElementById("snackbar")
		if ($('#snackbar').is(':empty')) {
			return;
		} else {
			x.className = "show";
			setTimeout(function() {
				x.className = x.className.replace("show", "");
			}, 3000);
		}

	}
	$(function() {
		indicator();
		snackBar();
	});
</script>
</html>