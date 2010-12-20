<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head profile="http://gmpg.org/xfn/11">
<mango:Page>
	<mango:Event name="beforeHtmlHeadEnd" />
	<cfinclude template="htmlhead.cfm" />
	<mango:Event name="beforeHtmlHeadEnd" />
<body>
<mango:Event name="beforeHtmlBodyStart" />
<!-- Begin #mainWrapper -->
<div id="mainWrapper">
	<!-- Begin #wrapper -->
	<div id="wrapper">
		<!-- Begin #header -->
		<div id="header">
			<cfinclude template="header.cfm" />
		</div>
		<!-- End #header -->
		<!-- Begin #content -->
		<div style="position: relative;" id="content">

<!-- Begin #colleft -->
			<div id="colLeft">	
		
		<h1><mango:PageProperty title /></h1>
		<p class="breadcrumb"><mangox:PageBreadcrumb /></p>
			<div class="entry"><mango:PageProperty body /></div>
			<div class="entry-footer entry">
			<mango:Event name="beforePageContentEnd" template="page" mode="full" />
			</div>
			<p class="tagged"><mango:PageProperty ifcommentsallowed><a href="<mango:PageProperty link />#comments" title="Comment on <mango:PageProperty title />"><mango:PageProperty ifCommentCountGT="0"><mango:PageProperty commentCount /> Comment<mango:PageProperty ifCommentCountGT="1">s</mango:PageProperty></mango:PageProperty><mango:PageProperty ifCommentCountLT="1">No Comments</mango:PageProperty></a></mango:PageProperty></p>
			<div class="clear"></div>

	<div id="comments">
	<mango:PageProperty ifcommentsallowed>
	
		<h3 class="comments_headers"><mango:PageProperty commentCount /> response<mango:PageProperty ifCommentCountGT="1">s</mango:PageProperty><mango:PageProperty ifCommentCountLT="1">s</mango:PageProperty><mango:PageProperty ifcommentsallowed> so far &darr;</mango:PageProperty></h3>
	
		<ul id="comment_list">
			<mango:Comments>
			<mango:Comment>
			<li class="comment <mango:CommentProperty ifIsAuthor> highlighted</mango:CommentProperty>" id="comment-<mango:CommentProperty id />">
				<p class="comment_meta">
					<span class="comment_num"><a href="#comment-<mango:CommentProperty id />" title="Permalink to this comment"><mango:CommentProperty currentCount /></a></span>
						<strong><mango:CommentProperty ifhasurl><a href='<mango:CommentProperty url />' rel='external nofollow'></mango:CommentProperty><mango:CommentProperty name /><mango:CommentProperty ifhasurl></a></mango:CommentProperty> </strong>
						<span class="comment_time">// <mango:CommentProperty date dateformat="mmm d, yyyy" /> at <mango:CommentProperty time /></span>
				</p>
				<div class="entry">
					 <mango:CommentProperty content />
				</div>
			</li>
			</mango:Comment>
			</mango:Comments>
			
			<mango:PageProperty ifCommentCountLT="1">
			<!-- If comments are open, but there are no comments. -->
			<li class="comment">
				<div class="entry">
					<p>There are no comments yet...Kick things off by filling out the form below.</p>
				</div>
			</li>
			</mango:PageProperty>
		</ul>

	<!-- Comment Form -->
	<h3 id="respond" class="comments_headers">Leave a Comment</h3>
	<mango:Message ifMessageExists type="comment" status="error">
		<p class="error">There was a problem: <mango:Message text /></p>
	</mango:Message>
	<mango:Message ifMessageExists type="comment" status="success">
		<p class="message"><mango:Message text /></p>
	</mango:Message>
	
	<form method="post" action="#respond" id="comment_form">
		<input type="hidden" name="action" value="addComment" />
		<input type="hidden" name="comment_post_id" value="<mango:PageProperty id />" />
		<input type="hidden" name="comment_parent" value="" />
		<mango:AuthenticatedAuthor ifIsLoggedIn>
			<p>You are logged in as <mango:AuthorProperty name /></p>
			<input type="hidden" name="comment_name" value="<mango:AuthorProperty name />" />
			<input type="hidden" name="comment_email" value="<mango:AuthorProperty email />" />
			<input type="hidden" name="comment_website" value="<mango:Blog url />" />
		</mango:AuthenticatedAuthor>
		
		<mango:AuthenticatedAuthor ifNotIsLoggedIn>
		<p><input id="author" class="text_input" type="text" name="comment_name" value="<mango:RequestVar name='comment_name' />" /><label for="author"><strong>Name</strong></label></p>
		<p><input class="text_input" type="text" id="email" name="comment_email" value="<mango:RequestVar name='comment_email' />" /><label for="email"><strong>Mail</strong> (it will not be displayed)</label></p>
		<p><input class="text_input" type="text" id="url" name="comment_website" size="30" value="<mango:RequestVar name='comment_website' />"  /><label for="url"><strong>Website</strong></label></p>
		</mango:AuthenticatedAuthor>
		
		<p><textarea class="text_input text_area" id="comment" name="comment_content" rows="7"><mango:RequestVar name="comment_content" /></textarea></p>
		<p><input type="checkbox" id="subscribe" name="comment_subscribe" value="1" /> <label for="subscribe">Subscribe to this comment thread</label></p>
		<p><mango:Event name="beforeCommentFormEnd" /></p>
		<p><input name="submit" class="form_submit" type="submit" id="submit" src="<mango:Blog skinurl />assets/images/submit_comment.gif" value="Submit" /></p>
	</form>
</mango:PageProperty>
</div>

					
			</div>
			<!-- End #colLeft -->
<!-- Begin #colRight -->
	<div id="colRight">
		<mangox:PodGroup locationId="sidebar-page" template="page">
			<mangox:TemplatePod id="page-menu" title="Page Menu">
			<template:pageMenu />
			</mangox:TemplatePod>
			<template:sidebar />
		</mangox:PodGroup>
	</div>
	<!-- End #colRight -->	
</div>
		<!-- End #content -->
	</div>
	<!-- End #wrapper -->
	<!-- Begin #footer -->
	<div id="footer">
		<cfinclude template="footer.cfm" />
	</div>

	<!-- End #footer -->
</div>
<!-- End #mainWrapper -->
<script type="text/javascript">Cufon.now(); </script>

<!-- Header Twitter Tooltip -->
<div class="tooltip">
				<ul id="twitter_tooltip"></ul>
				<script type="text/javascript" src="http://twitter.com/statuses/user_timeline/site5.json?callback=twitterCallback2&amp;count=1"></script>
			</div>
<mango:Event name="beforeHtmlBodyEnd" />
</mango:Page>
</body>


</html>