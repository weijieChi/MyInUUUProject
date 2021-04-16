<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    

	<!-- Gallery -->
	<div class="gallery agileits w3layouts">
		<div class="container">

			<h2>Our Latest Project</h2>

			<div class="col-md-6 col-sm-6 gallery-grids agileits w3layouts gallery-grids1 wow slideInLeft">
				<div class="gallery-grid-images agileits w3layouts">
					<div class="col-md-4 col-sm-4 gallery-grid agileits w3layouts gallery-grid-1">
						<img src="images/project-1.jpg" alt="Agileits W3layouts">
					</div>
					<div class="col-md-4 col-sm-4 gallery-grid agileits w3layouts gallery-grid-2">
						<img src="images/project-3.jpg" alt="Agileits W3layouts">
					</div>
					<div class="col-md-4 col-sm-4 gallery-grid agileits w3layouts gallery-grid-3">
						<img src="images/project-5.jpg" alt="Agileits W3layouts">
					</div>
					<div class="col-md-4 col-sm-4 gallery-grid agileits w3layouts gallery-grid-4">
						<img src="images/project-6.jpg" alt="Agileits W3layouts">
					</div>
					<div class="col-md-4 col-sm-4 gallery-grid agileits w3layouts gallery-grid-5">
						<img src="images/project-7.jpg" alt="Agileits W3layouts">
					</div>
					<div class="col-md-4 col-sm-4 gallery-grid agileits w3layouts gallery-grid-6">
						<img src="images/project-8.jpg" alt="Agileits W3layouts">
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="gallery-grid-info wow agileits w3layouts fadeInLeft">
					<h3>The Exotica</h3>
					<h4>Richmond Beach</h4>
					<h5>Miami, FL</h5>
				</div>
			</div>

			<div class="col-md-6 col-sm-6 gallery-grids agileits w3layouts gallery-grids2 wow slideInRight">
				<img src="images/gallery.jpg" alt="Agileits W3layouts">
			</div>
			<div class="clearfix"></div>
			
		</div>
	</div>
	<!-- //Gallery -->



	<!-- Details -->
	<div class="details agileits w3layouts">
		<div class="container">

			<h3>Details</h3>

			<div class="details-grids agileits w3layouts">
				<div class="col-md-4 col-sm-4 details-grid agileits w3layouts details-grid-1 wow slideInUp">
					<div class=" details-grid1 agileits w3layouts">
						<div class="details-grid-image agileits w3layouts">
							<img src="images/project-1.jpg" alt="Agileits W3layouts">
						</div>
						<div class="details-grid-info agileits w3layouts">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod	tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam.</p>
						</div>
						<button class="btn btn-primary wow agileits w3layouts fadeInLeft" data-toggle="modal" data-target="#myModal">EXPLORE<span class="glyphicon agileits w3layouts glyphicon-arrow-right" aria-hidden="true"></span></button>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 details-grid details-grid-2 wow agileits w3layouts slideInUp">
					<div class="details-grid2 agileits w3layouts">
						<div class="details-grid-image agileits w3layouts">
							<img src="images/project-6.jpg" alt="Agileits W3layouts">
						</div>
						<div class="details-grid-info agileits w3layouts">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod	tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam.</p>
						</div>
						<button class="btn btn-primary wow agileits w3layouts fadeInLeft" data-toggle="modal" data-target="#myModal2">EXPLORE<span class="glyphicon agileits w3layouts glyphicon-arrow-right" aria-hidden="true"></span></button>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 details-grid agileits w3layouts details-grid-3 wow slideInUp">
					<div class="details-grid3 agileits w3layouts">
						<div class="details-grid-image agileits w3layouts">
							<img src="images/project-7.jpg" alt="Agileits W3layouts">
						</div>
						<div class="details-grid-info agileits w3layouts">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod	tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam.</p>
						</div>
						<button class="btn btn-primary agileits w3layouts wow fadeInLeft" data-toggle="modal" data-target="#myModal3">EXPLORE<span class="glyphicon agileits w3layouts glyphicon-arrow-right" aria-hidden="true"></span></button>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>

			<!-- Tooltip-Content -->
			<div class="tooltip-content agileits w3layouts">

				<div class="modal fade agileits w3layouts details-modal" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog agileits w3layouts modal-lg">
						<div class="modal-content agileits w3layouts">
							<div class="modal-header agileits w3layouts">
								<button type="button" class="close agileits w3layouts" data-dismiss="modal" aria-hidden="true">&times;</button>
								<h4 class="modal-title agileits w3layouts">LOREM IPSUM</h4>
							</div>
							<div class="modal-body agileits w3layouts">
								<img src="images/project-1.jpg" alt="Agileits W3layouts">
								<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia.</p>
							</div>
						</div>
					</div>
				</div>

				<div class="modal fade agileits w3layouts details-modal" id="myModal2" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-lg agileits w3layouts">
						<div class="modal-content agileits w3layouts">
							<div class="modal-header agileits w3layouts">
								<button type="button" class="close agileits w3layouts" data-dismiss="modal" aria-hidden="true">&times;</button>
								<h4 class="modal-title agileits w3layouts">LOREM IPSUM</h4>
							</div>
							<div class="modal-body agileits w3layouts">
								<img src="images/project-6.jpg" alt="Agileits W3layouts">
								<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia.</p>
							</div>
						</div>
					</div>
				</div>

				<div class="modal fade details-modal agileits w3layouts" id="myModal3" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-lg agileits w3layouts">
						<div class="modal-content agileits w3layouts">
							<div class="modal-header agileits w3layouts">
								<button type="button" class="close agileits w3layouts" data-dismiss="modal" aria-hidden="true">&times;</button>
								<h4 class="modal-title agileits w3layouts">LOREM IPSUM</h4>
							</div>
							<div class="modal-body agileits w3layouts">
								<img src="images/project-7.jpg" alt="Agileits W3layouts">
								<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia.</p>
							</div>
						</div>
					</div>
				</div>

				<script>
					$('#myModal').modal('');
				</script>

			</div>
			<!-- //Tooltip-Content -->
			
		</div>
	</div>
	<!-- //Details -->



	<!-- Ventures -->
	<div class="ventures agileits w3layouts">
		<div class="container">

			<h3>Our Latest Ventures</h3>

			<div class="ventures-grids agileits w3layouts">
				<div class="col-md-3 col-sm-3 ventures-grid agileits w3layouts ventures-grid1 ventures-grid-image wow slideInUp">
					<img src="images/project-5.jpg" alt="Agileits W3layouts">
				</div>
				<div class="col-md-3 col-sm-3 ventures-grid agileits w3layouts ventures-grid2 ventures-grid-info wow slideInUp">
					<h4>Lorem Ipsum Dolores</h4>
					<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>
				</div>
				<div class="col-md-3 col-sm-3 ventures-grid agileits w3layouts ventures-grid3 ventures-grid-image wow slideInUp">
					<img src="images/project-8.jpg" alt="Agileits W3layouts">
				</div>
				<div class="col-md-3 col-sm-3 ventures-grid agileits w3layouts ventures-grid4 ventures-grid-info wow slideInUp">
					<h4>Sitamet Consectetur</h4>
					<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>
				</div>
				<div class="col-md-3 col-sm-3 ventures-grid agileits w3layouts ventures-grid5 ventures-grid-image wow slideInUp">
					<img src="images/project-9.jpg" alt="Agileits W3layouts">
				</div>
				<div class="col-md-3 col-sm-3 ventures-grid agileits w3layouts ventures-grid6 ventures-grid-info wow slideInUp">
					<h4>Adipiscing Elit Num</h4>
					<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>
				</div>
				<div class="col-md-3 col-sm-3 ventures-grid agileits w3layouts ventures-grid7 ventures-grid-image wow slideInUp">
					<img src="images/project-10.jpg" alt="Agileits W3layouts">
				</div>
				<div class="col-md-3 col-sm-3 ventures-grid agileits w3layouts ventures-grid8 ventures-grid-info wow slideInUp">
					<h4>Ased eiusmod tempor</h4>
					<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>
				</div>
				<div class="clearfix"></div>
			</div>
			
		</div>
	</div>
	<!-- //Ventures -->



	<!-- Team -->
	<div class="team agileits w3layouts">
		<div class="container">

			<h3>Behind Our Success</h3>

			<div class="team-grids agileits w3layouts grid">
				<div class="col-md-4 col-sm-4 team-grid agileits w3layouts team-grid1 wow slideInUp">
					<figure class="effect-zoe agileits w3layouts">
						<img src="images/team-1.jpg" alt="Agileits W3layouts"/>
						<figcaption>
							<h4>John <span>Doe</span></h4>
							<ul class="social-icons agileits w3layouts">
								<li><a href="#" class="facebook agileits w3layouts" title="Go to Our Facebook Page"></a></li>
								<li><a href="#" class="twitter agileits w3layouts" title="Go to Our Twitter Account"></a></li>
								<li><a href="#" class="googleplus agileits w3layouts" title="Go to Our Google Plus Account"></a></li>
								<li><a href="#" class="instagram agileits w3layouts" title="Go to Our Instagram Account"></a></li>
							</ul>
							<p class="description agileits w3layouts">Contrary to popular belief, Lorem Ipsum is not simply random text.</p>
						</figcaption>
					</figure>
				</div>
				<div class="col-md-4 col-sm-4 team-grid agileits w3layouts team-grid2 wow slideInUp">
					<figure class="effect-zoe agileits w3layouts">
						<img src="images/team-2.jpg" alt="Agileits W3layouts"/>
						<figcaption>
							<h4>Jane <span>Doe</span></h4>
							<ul class="social-icons agileits w3layouts">
								<li><a href="#" class="facebook agileits w3layouts" title="Go to Our Facebook Page"></a></li>
								<li><a href="#" class="twitter agileits w3layouts" title="Go to Our Twitter Account"></a></li>
								<li><a href="#" class="googleplus agileits w3layouts" title="Go to Our Google Plus Account"></a></li>
								<li><a href="#" class="instagram agileits w3layouts" title="Go to Our Instagram Account"></a></li>
							</ul>
							<p class="description agileits w3layouts">It has roots in a piece of classical Latin literature from 45 BC.</p>
						</figcaption>
					</figure>
				</div>
				<div class="col-md-4 col-sm-4 team-grid agileits w3layouts team-grid3 wow slideInUp">
					<figure class="effect-zoe agileits w3layouts">
						<img src="images/team-3.jpg" alt="Agileits W3layouts"/>
						<figcaption>
							<h4>Jack <span>Doe</span></h4>
							<ul class="social-icons agileits w3layouts">
								<li><a href="#" class="facebook agileits w3layouts" title="Go to Our Facebook Page"></a></li>
								<li><a href="#" class="twitter agileits w3layouts" title="Go to Our Twitter Account"></a></li>
								<li><a href="#" class="googleplus agileits w3layouts" title="Go to Our Google Plus Account"></a></li>
								<li><a href="#" class="instagram agileits w3layouts" title="Go to Our Instagram Account"></a></li>
							</ul>
							<p class="description agileits w3layouts">Richard McClintock is a Latin professor at Hampden-Sydney College.</p>
						</figcaption>
					</figure>
				</div>
				<div class="clearfix"></div>
			</div>
			
		</div>
	</div>
	<!-- //Team -->




</asp:Content>

