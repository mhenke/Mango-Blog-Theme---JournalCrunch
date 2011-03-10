<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<cfif thisTag.executionmode is 'start'>
<mango:PageProperty ifcommentsallowed>
			<!-- You can start editing here. -->
			<h2 class="h2comments">
				<mango:PageProperty commentCount /> Comment<mango:PageProperty ifCommentCountGT="1">s</mango:PageProperty> <a class="addComment" href="#respond">+ Add Comment</a>
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
			
			<mango:PageProperty ifCommentCountLT="1">
			<!-- If comments are open, but there are no comments. -->
			<li class="comment">
				<div class="entry">
					<h2>Got anything to say? Be the First to leave a comment!</h2>
				</div>
			</li>
			</mango:PageProperty>
			<mango:PageProperty ifCommentCountGT="0">
			<!-- If comments are open, but there are no comments. -->
			<li class="comment">
				<div class="entry">
					<h2>Got anything to say? Go ahead and leave a comment!</h2>
				</div>
			</li>
			</mango:PageProperty>
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
		<input type="hidden" name="comment_post_id" value="<mango:PageProperty id />" />
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
</mango:PageProperty>
</cfif>
