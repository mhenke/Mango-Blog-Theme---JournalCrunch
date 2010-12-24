<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head profile="http://gmpg.org/xfn/11">
<mango:Post>
	<mango:Event name="beforeHtmlHeadEnd" />
	<cfinclude template="htmlhead.cfm" />
	<mango:Event name="beforeHtmlHeadEnd" />
</head>
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
				
				<div id="singlePost">
					<h1><mango:PostProperty title /></h1>
					<div class="meta">
					 <mango:PostProperty date dateformat="mmmm d, yyyy" /> by <mango:Author><a href="<mango:AuthorProperty link />"><mango:PostProperty author /></a></mango:Author>&nbsp;&nbsp;&nbsp;
					 <mango:PostProperty ifcommentsallowed><img alt="" src="<mango:Blog skinurl />assets/images/ico_post_comments.png"> 
					 <a title="Read Comments" href="#comment_list">
					 <mango:PostProperty ifCommentCountGT="0" >
					 <mango:PostProperty commentCount /> Comment<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty></mango:PostProperty>
					 <mango:PostProperty ifCommentCountLT="1">No Comments</mango:PostProperty>
					 </a>
					 &nbsp;&nbsp;&nbsp;
					 <img alt="" src="<mango:Blog skinurl />/assets/images/ico_post_date.png"> Posted under:  <mango:Categories><mango:Category><a href="<mango:CategoryProperty link />" title="View all posts in  <mango:CategoryProperty title />" rel="category tag"><mango:CategoryProperty title /></a> <mango:Category ifCurrentIsNotLast>&middot; </mango:Category></mango:Category></mango:Categories>
					</div>
					<mango:PostProperty body />
					<div class="postTags">
						<mango:Categories><mango:Category><a href="<mango:CategoryProperty link />" title="View all posts in  <mango:CategoryProperty title />" rel="category tag"><mango:CategoryProperty title /></a> <mango:Category ifCurrentIsNotLast>&middot; </mango:Category></mango:Category></mango:Categories>
					</div>
				</div>
			<mango:PostProperty ifcommentsallowed>
			<!-- You can start editing here. -->
			<h2 class="h2comments">
				<mango:PostProperty commentCount /> Comment<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty> <a class="addComment" href="#respond">+ Add Comment</a>
			</h2>
			
			<ul id="commentlist" class="commentlist">
			<mango:Comments>		
				<mango:Comment>
					<li id="comment-<mango:CommentProperty id />" class="comment depth-1 clearfix">
						<div><mangox:Gravatar size="38" class="avatar avatar-38 photo" defaultimg="assets/images/no_gravatar.png" /></div>
						<div>
							<div class="comment-meta commentmetadata clearfix">
						    	<strong><mango:CommentProperty ifhasurl><a href='<mango:CommentProperty url />' rel='external nofollow'></mango:CommentProperty><mango:CommentProperty name /><mango:CommentProperty ifIsAuthor><span class="asterisk">*</span></mango:CommentProperty><mango:CommentProperty ifhasurl></a></mango:CommentProperty></strong> <span><mango:CommentProperty date dateformat="mmm d, yyyy" /> at <mango:CommentProperty time /></span>
								<span class="c-permalink"><a href="#comment-<mango:CommentProperty id />" title="Permalink to this comment">PERMALINK</a></span>
							</div>
							<div class="text"><p><mango:CommentProperty content /></p></div>
							<div class="reply" class="comment-reply-link" rel="nofollow"></div>
						</div>
					</li>
		  		</mango:Comment>
			</mango:Comments>
			</ul>
			
			<mango:PostProperty ifCommentCountLT="1">
			<!-- If comments are open, but there are no comments. -->
			<li class="comment">
				<div class="entry">
					<h2>Got anything to say? Be the First to leave a comment!</h2>
				</div>
			</li>
			</mango:PostProperty>
			<mango:PostProperty ifCommentCountGT="0">
			<!-- If comments are open, but there are no comments. -->
			<li class="comment">
				<div class="entry">
					<h2>Got anything to say? Go ahead and leave a comment!</h2>
				</div>
			</li>
			</mango:PostProperty>
		</ul>

<div id="respond">

	<!-- Comment Form -->
	<mango:Message ifMessageExists type="comment" status="error">
		<p class="error">There was a problem: <mango:Message text /></p>
	</mango:Message>
	<mango:Message ifMessageExists type="comment" status="success">
		<p class="message"><mango:Message text /></p>
	</mango:Message>
	
	<form method="post" action="#respond" >
		<div class="commentform">
		<input type="hidden" name="action" value="addComment" />
		<input type="hidden" name="comment_post_id" value="<mango:PostProperty id />" />
		<input type="hidden" name="comment_parent" value="" />
		
		<mango:AuthenticatedAuthor ifIsLoggedIn>
			<p>You are logged in as <mango:AuthorProperty name /></p>
			<input type="hidden" name="comment_name" value="<mango:AuthorProperty name />" />
			<input type="hidden" name="comment_email" value="<mango:AuthorProperty email />" />
			<input type="hidden" name="comment_website" value="<mango:Blog url />" />
		</mango:AuthenticatedAuthor>
		
		<mango:AuthenticatedAuthor ifNotIsLoggedIn>
		
		<p><label for="author">Name (required)</label>
		<input type="text" aria-required="true" tabindex="1" size="22" value="<mango:RequestVar name='comment_name' />" id="author" name="comment_name">
		</p>
		
		<p><label for="email">Mail (will not be published) (required)</label>
		<input type="text" aria-required="true" tabindex="2" size="22" value="<mango:RequestVar name='comment_email' />" id="email" name="comment_email">
		</p>
		
		
		<p><label for="url">Website</label>
		<input type="text" tabindex="3" size="22" value="<mango:RequestVar name='comment_website' />" id="url" name="comment_website">
		</p>
		
		</mango:AuthenticatedAuthor>
		
		<p><label for="comment">Comment</label>
		<textarea tabindex="4" rows="10" cols="100%" id="comment" name="comment_content"><mango:RequestVar name="comment_content" /></textarea></p>
		</div>
						<p class="subscribe-to-comments">
						<input type="checkbox" id="subscribe" name="comment_subscribe" value="1" /> 
						<label for="subscribe">Notify me of followup comments via e-mail</label>
						<mango:Event name="beforeCommentFormEnd" />
						</p>
		<p class="commentform"><input name="submit" value="POST COMMENT" class="form_submit" type="submit" id="submit" src="<mango:Blog skinurl />assets/images/submit_comment.gif" value="Submit" /></p>

		</form>
		</div>
</mango:PostProperty>



					
			</div>
			<!-- End #colLeft -->
			</mango:Post>

<!-- Begin #colRight -->
	<div id="colRight">
	<cfinclude template="sidebar_mine.cfm" />
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
		<mango:Event name="afterFooterStart" />
			<cfinclude template="footer.cfm" />
		<mango:Event name="beforeFooterEnd" />
	</div>
	<!-- End #footer -->
</div>
<!-- End #mainWrapper -->
<script type="text/javascript">Cufon.now(); </script>

<cfinclude template="twittertooltip.cfm" />

</body>


</html>