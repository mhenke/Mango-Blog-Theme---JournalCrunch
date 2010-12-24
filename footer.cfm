<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<div id="footerInner">
	<div class="boxFooter">		
	<h2 class="footerTitle">Favorite Links</h2>		
		<ul>
				
					<li><a title="CFWheels" href="http://www.cfwheels.org">CFWheels</a></li>
				
					<li><a title="ColdFusion Meetup" href="http://www.meetup.com/coldfusionmeetup">ColdFusion Meetup</a></li>
				
					<li><a title="Mango Blog" href="http://www.mangoblog.org">Mango Blog</a></li>
				
					<li><a title="MXUnit" href="http://www.mxunit.org">MXUnit</a></li>
				
					<li><a title="NECFUG" href="http://www.necfug.com">NECFUG</a></li>
				
					<li><a title="UGTV" href="http://www.carehart.org/ugtv">UGTV</a></li>
				
					<li><a href="http://amzn.com/w/2YD23OCFRP6IE">My Amazon Wishlist</a></li>
				</ul>
	</div>
	<div class="boxFooter"><h2 class="footerTitle">About</h2>
		<ul>
			<li>
			I have worked with ColdFusion since 1999 for several companies. I am an advocate of Eclipse, Source Control, Mylyn, and anything to make developing ColdFusion more productive and easier.  My main focus currently is....
			</li><li>
			<a href="/author.cfm/admin">Visit the about section for more!</a>
			</li>
		</ul>
	</div>		
	<div class="boxFooter">		
		<h2 class="footerTitle">Recent Posts</h2>		
		<ul>
			<mango:Posts count="4" source="recent">
			<mango:Post>
				<li><a href="<mango:PostProperty link />"><mango:PostProperty title /></a>&nbsp;<span class="recent_date"><mango:PostProperty date dateformat="mmm dd" /></span></li>
			</mango:Post>
			</mango:Posts>
			<mango:Archive pageSize="5"><mango:ArchiveProperty ifHasNextPage>
			<li><a href="<mango:ArchiveProperty link />" title="Visit the archives!">Visit the archives for more!</a></li></mango:ArchiveProperty></mango:Archive>
		</ul>
	</div>
	<div class="boxFooter">
		<h2 class="footerTitle">Pages</h2>		
		<ul>
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
	</div>		
	<!-- BEGIN COPYRIGHT -->
	<div id="copyright">
		&copy; Copyright 2010 JournalCrunch by <a href="http://www.site5.com">Site5.com</a>. All Rights Reserved.  
			<div id="site5bottom"><a href="http://gk.site5.com/t/239">Site5.com | Experts in Web Hosting.</a></div>
	</div>
	<!-- END COPYRIGHT -->
</div>

	<!---<script type="text/javascript" src="<mango:Blog skinurl />assets/js/jquery-1.4.2.min.js"></script>--->
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
	
	<script type="text/javascript" src="<mango:Blog skinurl />assets/js/jquery.form.js"></script>

<script type="text/javascript" src="<mango:Blog skinurl />assets/js/cufon-yui.js"></script>
<script type="text/javascript" src="<mango:Blog skinurl />assets/js/ddsmoothmenu.js"></script>
<script type="text/javascript">
	Cufon.replace('h1',{hover:true,textShadow: '#fff 1px 1px'})('h2:not(.footerTitle,.boxFooter .twitter)',{hover:true,textShadow: '#fff 1px 1px'})('h3',{textShadow: '#fff 1px 1px'})('.reply',{hover:true});
</script>
