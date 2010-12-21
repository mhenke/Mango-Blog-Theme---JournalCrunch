<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!-- Begin #logo -->
			 <div id="logo"><a href="http://www.henke.ws/"><img src="<mango:Blog skinurl />assets/images/logo.gif" alt="JournalCrunch by Site5.com" /></a></div>
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
				<form id="searchform" action="" method="get">
					<input type="text" id="s" name="s" value="" />
				</form>
			</div>
			<!-- End #topSearch -->
			<!-- BEGIN TOP SOCIAL LINKS -->
			<div id="topSocial">
				<ul>

										<li><a href="http://www.twitter.com/mikehenke" class="twitter tip" title="Follow Me on Twitter!">
										<img src="<mango:Blog skinurl />assets/images/header_<mangox:Random items='1.jpg,2.jpg,3.jpg,4.jpg'/>" width="770" height="140" alt="<mango:Blog title />" title="<mango:Blog title />" />
										<img src="<mango:Blog skinurl />assets/images/ico_twitter.png" alt="Follow Us on Twitter!" /></a></li>
															<li><a href="http://www.facebook.com/site5" class="facebook" title="Join Us on Facebook!"><img src="<mango:Blog skinurl />assets/images/ico_facebook.png" alt="Join Us on Facebook!" /></a></li>
										<li class="rss">
											<a href="<mango:Blog rssurl />" title="RSS" class="rss">
												<img src="<mango:Blog skinurl />assets/images/ico_rss.png" alt="Subcribe to Our RSS Feed" />
											</a>
										</li>
				</ul>
			</div>	
			
			<!-- END TOP SOCIAL LINKS -->