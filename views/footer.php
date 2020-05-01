	<footer id="footer">
		<div class="copyright">
			<div class="container">
				<p>&copy; Copyright <?php echo date('Y');?> | All Rights Reserved | Powered by <a href="http://federalpolyilaro.edu.ng">Computer Science, Federal Polytechnic Ilaro</a></p>
			</div>
		</div>
	</footer> <!-- end #footer -->

</div> <!-- end #main-wrapper -->

<!-- Scripts -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="assets/js/jquery-1.11.0.min.js"><\/script>')</script>
<script src="http://maps.google.com/maps/api/js?sensor=false&libraries=geometry&v=3.7"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/maplace.min.js"></script>
<script src="assets/js/jquery.ba-outside-events.min.js"></script>
<script src="assets/js/jquery.responsive-tabs.js"></script>
<script src="assets/js/jquery.flexslider-min.js"></script>
<script src="assets/js/jquery.fitvids.js"></script>
<script src="assets/js/jquery-ui-1.10.4.custom.min.js"></script>
<script src="assets/js/jquery.inview.min.js"></script>
<script src="assets/js/script.js"></script>
<script type="text/javascript">
var data = [{
	    lat: 5.53,
	    lon: 7.48,
	    title: 'Title A1',
	    html: '<h3>Content A1</h3>',
	    zoom: 8,
	    icon: 'http://www.google.com/mapfiles/markerA.png'
	},{
	    lat: 44.8,
	    lon: 1.7,
	    title: 'Title B1',
	    html: '<h3>Content B1</h3>',
	    show_infowindow: false
	}
];
new Maplace({
    locations: data,
    controls_title: 'Choose a location:'
}).Load();

</script>
</body>
</html>