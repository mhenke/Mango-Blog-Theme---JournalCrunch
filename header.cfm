<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<cfif thisTag.executionmode is "start">
<!-- Begin #logo -->
			 <div id="logo">
				 
				 <h1><a href="<mango:Blog url/>"><mango:Blog title></a></h1>
				 <mango:Blog tagline>
				 
				<!--- 	 <img src="<mango:Blog skinurl />assets/images/logo.png" alt="Henke.WS" /> --->
				</a>
			</div>
			<!-- End #logo -->
			<!-- Begin #topMenu -->
			<div id="topMenu" class="ddsmoothmenu">
				<ul id="menu-topmenu" class="menu">
					<li><a class="current" href="<mango:Blog basePath />">Home</a></li>
					<mango:Pages parentPage="">
					<mango:Page>
						<li class="menu-item">
							<a href="<mango:PageProperty link>"">
								<mango:PageProperty title />
							</a>
								<mango:Pages ifCountGT="0" count="1">
									<ul class="sub-menu">
								</mango:Pages>
								<mango:Pages from="1"><mango:Page>
							        <li class="menu-item"><a href="<mango:PageProperty link />"><mango:PageProperty title /></a></li>
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
				
				<form id="search_form" method="get" action="<mango:Blog searchUrl />">
		<div>
			<input type="text" class="search_input" name="term" value="type and press enter" id="term" onfocus="if (this.value == 'To search, type and hit enter') {this.value = '';}" onblur="if (this.value == '') {this.value = 'To search, type and hit enter';}" />
			<input type="hidden" id="searchsubmit" value="Search" />
		</div>
		</form>
  </div>
<input type="hidden" value="googlesearch-search" name="event">
					<input type="hidden" value="event" name="action"></form>
			<!-- End #topSearch -->
			<!-- BEGIN TOP SOCIAL LINKS -->
			<div id="topSocial">
				<ul>
					<li><a href="http://www.twitter.com/bph"  class="twitter" title="Follow Me on Twitter!"><img src="<mango:Blog skinurl />assets/images/ico_social_twitter.png" alt="Follow Me on Twitter!" /></a></li>
					<li><a href="<mango:Blog basePath />page.cfm/contact-me" class="facebook" title="Email Me!"><img src="<mango:Blog skinurl />assets/images/ico_social_facebook.png" alt="Email Me!" /></a></li>
					<li class="rss"><a href="<mango:Blog rssurl />" title="Follow Me On RSS!" class="rss"><img src="<mango:Blog skinurl />assets/images/ico_social_rss.png" alt="Subcribe to Our RSS Feed" /></a></li>
				</ul>
			</div>	
			
			<!-- END TOP SOCIAL LINKS -->
</cfif>