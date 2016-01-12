<html>

	<head>
		<meta charset="UTF-8">
		<title>Whiteboard</title>
		<link rel="stylesheet" type="text/css" href="/static/normalise.css">
		<link rel="stylesheet" type="text/css" href="/static/style.css">
	</head>

	<body class="whiteboard">
		<div>
			<canvas id="canvas1" width="1980" height="1080" onclick="void(0)"></canvas>
			<canvas id="canvas2" width="1980" height="1080" onclick="void(0)"></canvas>
		</div>
		<div class="toolbar">
			<img id="button_pencil" src="/static/pencil_select.png"><br>
			<img id="button_eraser" src="/static/eraser.png"><br>
			<img id="button_text"   src="/static/text.png"><br>
			<img id="button_clear"  src="/static/clear.png"><br>
			<img id="colour_blue"   src="/static/col_blue.png"></br>
			<img id="colour_red"    src="/static/col_red.png"></br>
			<img id="colour_black"  src="/static/col_black.png"></br>
		</div>
		<div class="absolute">
			<div id="text_input_pane" class="text_display">
				<div class="toolbar text_display">
					<img class="text_display" src="/static/cancel.png" id="text_cancel_button" onclick="cancelTextInput()"></br>
				</div>
				<div class="text_display">
					<p contenteditable id="text_input_text" class="text_display">Enter Text</p>
				</div>
			</div>
		</div>
	</body>

	<script type="text/javascript" src="//code.jquery.com/jquery-1.9.0.min.js"></script>
	<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/socket.io/1.3.5/socket.io.min.js"></script>
	<script src="/static/geometry.js"></script>
	<script src="/static/whiteboard.js"></script>
	<script type="text/javascript">whiteboard_id = "{{board_id}}";</script>

</html>