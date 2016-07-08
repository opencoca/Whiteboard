{% extends "info.tpl" %}
{% set title = 'Whiteboard' %}
{% set nav_page = 'Home' %}
{% block content %}
	<canvas id="anim_canvas" width="500px" height="350px"></canvas>
	<div class="container">
		<br><br><br><br><br>
		<h1 class="center">Express Yourself Visually</h1>
		<h3 class="center"><a class="bright" href="/new">Start Drawing Now</a></h3>
		<br><br><br><br><br><br>
		<table>
			<tr>
				<td>
					<h2>Presentation Mode</h2>
					<img src="/static/images/present.png">
					<p>Don't want others messing with the board? With a <a href="/new/protected">protected board</a>, everyone can see it, but only the chosen ones may draw.</p>
				</td>
				<td>
					<h2>Stay Undercover</h2>
					<img src="/static/images/spy.png">
					<p>Paranoid about people stealing your million-dollar idea? <a href="/new/private">Private boards</a> can only be accessed by you.</p>
				</td>
			</tr>
			<tr>
				<td>
					<h2>Touch Friendly</h2>
					<p>Draw and view on any device! Well, maybe. I'm not really sure how well it works.</p>
				</td>
				<td>
					<h2>LaTeX Support</h2>
					<p><s>This one's for the geeks! Format equations with full-featured LaTeX with live preview.</s></p>
					<p>Currently broken.</p>
				</td>
			</tr>
		</table>
	</div>
	<script type="text/javascript" src="/static/js/board/draw.js"></script>
	<script type="text/javascript" src="/static/js/board/auto_drawer.js"></script>
{% endblock %}
