<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!-- Begin #logo -->
			 <div id="logo"><a href="http://www.henke.ws/"><img src="<mango:Blog skinurl />assets/images/logo.png" alt="Henke.WS" /></a></div>
			<!-- End #logo -->
			<!-- Begin #topMenu -->
			<div id="topMenu" class="ddsmoothmenu">
				<ul id="menu-topmenu" class="menu">
					<li><a class="current" href="<mango:Blog basePath />">Home</a></li>
					<mango:Pages parentPage="">
					<mango:Page>
						<li class="menu-item">
							<a href="<mango:PageProperty link>" title="<mango:PageProperty title />">
								<mango:PageProperty title />
							</a>
								<mango:Pages ifCountGT="0" count="1">
									<ul class="sub-menu">
								</mango:Pages>
								<mango:Pages from="1"><mango:Page>
							        <li class="menu-item"><a href="<mango:PageProperty link />" title="<mango:PageProperty title />"><mango:PageProperty title /></a></li>
								</mango:Page></mango:Pages>	
								<mango:Pages ifCountGT="0" count="1">
									</ul>
								</mango:Pages>
						</li>
					</mango:Page>
					</mango:Pages>
				</ul>
			</div>		
			
			<!-- End #topMenu -->
			<!-- Begin #topSearch -->

			<div id="topSearch">
				<!---<form id="searchform" action="" method="get">
					<input type="text" id="s" name="s" value="" />
				</form>--->
			</div>
			<!-- End #topSearch -->
			<!-- BEGIN TOP SOCIAL LINKS -->
			<div id="topSocial">
				<ul>
										<li><a href="http://www.twitter.com/mikehenke" class="twitter tip" title="Follow Me on Twitter!">
										<img src="<mango:Blog skinurl />assets/images/ico_social_twitter.png" alt="Follow Us on Twitter!" /></a></li>
										<!---<li><a href="http://www.facebook.com/site5" class="facebook" title="Join Us on Facebook!"><img src="<mango:Blog skinurl />assets/images/ico_facebook.png" alt="Join Us on Facebook!" /></a></li>--->
										<li class="rss">
											<a href="<mango:Blog rssurl />" title="RSS" class="rss">
												<img src="<mango:Blog skinurl />assets/images/ico_social_rss.png" alt="Subcribe to Our RSS Feed" />
											</a>
										</li>
				</ul>
			</div>	
			
			<!-- END TOP SOCIAL LINKS -->
			<!---
			<div style="position:absolute;bottom:-10px; left:290px; z-index:100; width:350px; border:1px dotted #8B9DA3; padding:5px;background:#eee;-moz-border-radius:4px; -webkit-border-radius:4px;text-align:center; font-size:11px;">
<a href="#" id="switcher">Switch to "Slider" View</a><br />
<small><em style="color:#666">This switcher appears on this demo only. Set your view from  Theme Options.</em></small>
			</div>
			--->
