<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<cfif thisTag.executionmode is 'start'>
<div id="footerInner">
	<div class="boxFooter">		
	<h2 class="footerTitle">Recent Comments</h2>		
		<ul>
	<mango:Comments recent count="4">
		<mango:Comment>
	<li><strong><a href="<mango:CommentProperty entryLink />#comment-<mango:CommentProperty id />" title="on <mango:CommentProperty entryTitle />"><mango:CommentProperty name /></a></strong>: <mango:CommentProperty excerptChars="80" /></li>
	</mango:Comment>
	</mango:Comments>
</ul>
	</div>
	<div class="boxFooter">
		<h2 class="footerTitle">On MangoBlog</h2>
		
		<ul>
			<mango:Posts categoryName="MangoBlog" count="3">
			<mango:post>
			<li>
			<a href="<mangoPostProperty permalink>"><mango:PostProperty title></a></li>
			<li>
			</mango:post>
			</mango:Posts>
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
	<!-- BEGIN COPYRIGHT --
	<div id="copyright">
		&copy; Copyright 2010 JournalCrunch by <a href="http://www.site5.com">Site5.com</a>. All Rights Reserved.  
			<div id="site5bottom"><a href="http://gk.site5.com/t/239">Site5.com | Experts in Web Hosting.</a></div>
	</div>
	<!-- END COPYRIGHT -->
</div>

	<script type="text/javascript" src="<mango:Blog skinurl />assets/js/all.js"></script>
	<script type="text/javascript">
		Cufon.replace('h1',{hover:true,textShadow: '#fff 1px 1px'})('h2:not(.footerTitle,.boxFooter .twitter)',{hover:true,textShadow: '#fff 1px 1px'})('h3',{textShadow: '#fff 1px 1px'})('.reply',{hover:true});
	</script>
	
</cfif>	