<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<div id="footerInner">
				<div class="boxFooter">		<h2 class="footerTitle">Favorite Links</h2>		<ul>

				<li><a href="http://www.henke.ws" title="Morbi in sem quis dui placerat ornare">Morbi in sem quis dui placerat ornare</a></li>
				<li><a href="http://www.henke.ws" title="Pellentesque dapibus ullamcorper leo">Pellentesque dapibus ullamcorper leo</a></li>
				<li><a href="http://www.henke.ws" title="Elcvne commune elaboraret his, mea amet luptatum">Elcvne commune elaboraret his, mea amet luptatum</a></li>
				<li><a href="http://www.henke.ws" title="Tempor incididunt ut labore et">Tempor incididunt ut labore et</a></li>
				</ul>

		</div>
		
		<div class="boxFooter"><h2 class="footerTitle">About</h2>			<ul>
			<ul>
				<li>

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
				<!---<mango:Author>
				<cfsavecontent variable="author_short"><mango:AuthorProperty description /></cfsavecontent>
				<cfoutput>#left(author_short,100)#</cfoutput>
				</mango:Author>--->
				</li>

						</ul>
</div>		<div class="boxFooter">		<h2 class="footerTitle">Recent Posts</h2>		<ul>
	<ul>
		<mango:Posts count="5" source="recent">
		<mango:Post>
			<li><a href="<mango:PostProperty link />"><mango:PostProperty title /></a>&nbsp;<span class="recent_date"><mango:PostProperty date dateformat="mmm dd" /></span></li>
		</mango:Post>
		</mango:Posts>
		<mango:Archive pageSize="5"><mango:ArchiveProperty ifHasNextPage>
		<li><a href="<mango:ArchiveProperty link />" title="Visit the archives!">Visit the archives for more!</a></li></mango:ArchiveProperty></mango:Archive>
	</ul
		</div><div class="boxFooter"><h2 class="footerTitle">Pages</h2>		<ul>
			<ul id="menu-topmenu" class="menu">
					<li><a class="current" href="<mango:Blog basePath />">Home</a></li>
					<mango:Pages parentPage="">
					<mango:Page>
						<li class="menu-item">
							<a href="<mango:PageProperty link>" title="<mango:PageProperty title />">
								<mango:PageProperty title />
							</a>
						</li>
					</mango:Page>
					</mango:Pages>
				</ul>
		</div>		<!-- BEGIN COPYRIGHT -->
		<div id="copyright">
			© Copyright 2010 JournalCrunch by <a href="http://www.site5.com">Site5.com</a>. All Rights Reserved.  
				<div id="site5bottom"><a href="http://gk.site5.com/t/239">Site5.com | Experts in Web Hosting.</a></div>
		</div>
		<!-- END COPYRIGHT -->	
		</div>