<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!-- Begin #logo -->
			 <div id="logo"><a href="http://wordpress.site5.net/journalcrunch/"><img src="<mango:Blog skinurl />assets/images/logo.png" alt="JournalCrunch by Site5.com" /></a></div>
			<!-- End #logo -->logo.png
			<!-- Begin #topMenu -->
			<div id="topMenu" class="ddsmoothmenu">
				<ul id="menu-topmenu" class="menu">
					<li><a class="current" href="<mango:Blog basePath />">front page</a></li>
					<mango:Pages parentPage="">
						<mango:Page>
							<li id="menu-item-225" class="menu-item menu-item-type-custom current-menu-item current_page_item menu-item-home menu-item-225">
								<a href="<mango:PageProperty link>" title="<mango:PageProperty title />">
								<mango:PageProperty title />
								</a>
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

										<li><a href="http://www.twitter.com/site5" class="twitter tip" title="Follow Us on Twitter!">
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