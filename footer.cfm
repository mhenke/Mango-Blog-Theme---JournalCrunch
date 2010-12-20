<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<div id="footerInner">
				<div class="boxFooter">		<h2 class="footerTitle">Favorite Links</h2>		<ul>

				<li><a href="http://wordpress.site5.net/journalcrunch/?p=233" title="Nusquam percipitur cotidieque ut vis">Nusquam percipitur cotidieque ut vis</a></li>
				<li><a href="http://wordpress.site5.net/journalcrunch/?p=41" title="Morbi in sem quis dui placerat ornare">Morbi in sem quis dui placerat ornare</a></li>
				<li><a href="http://wordpress.site5.net/journalcrunch/?p=39" title="Pellentesque dapibus ullamcorper leo">Pellentesque dapibus ullamcorper leo</a></li>
				<li><a href="http://wordpress.site5.net/journalcrunch/?p=33" title="Elcvne commune elaboraret his, mea amet luptatum">Elcvne commune elaboraret his, mea amet luptatum</a></li>
				<li><a href="http://wordpress.site5.net/journalcrunch/?p=27" title="Tempor incididunt ut labore et">Tempor incididunt ut labore et</a></li>
				</ul>

		</div><div class="boxFooter"><h2 class="footerTitle">Text Widget</h2>			<ul>
			<li><a href="http://wordpress.org/" title="Powered by WordPress, state-of-the-art semantic personal publishing platform.">WordPress.org</a></li>

						</ul>
</div>		<div class="boxFooter">		<h2 class="footerTitle">Recent Posts</h2>		<ul>
	<ul>
		<mango:Posts count="5" source="recent">
		<mango:Post>
			<li><a href="<mango:PostProperty link />"><mango:PostProperty title /></a><span class="recent_date"><mango:PostProperty date dateformat="m.dd" /></span></li>
		</mango:Post>
		</mango:Posts>
		<mango:Archive pageSize="5"><mango:ArchiveProperty ifHasNextPage>
		<li><a href="<mango:ArchiveProperty link />" title="Visit the archives!">Visit the archives for more!</a></li></mango:ArchiveProperty></mango:Archive>
	</ul
		</div><div class="boxFooter"><h2 class="footerTitle">Pages</h2>		<ul>
			<template:pageMenu />

		</div>		<!-- BEGIN COPYRIGHT -->
		<div id="copyright">
			© Copyright 2010 JournalCrunch by <a href="http://www.site5.com">Site5.com</a>. All Rights Reserved.  
				<div id="site5bottom"><a href="http://gk.site5.com/t/239">Site5.com | Experts in Web Hosting.</a></div>
		</div>
		<!-- END COPYRIGHT -->	
		</div>