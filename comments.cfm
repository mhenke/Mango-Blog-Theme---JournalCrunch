<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<div id="comments">
		<mango:PageProperty ifcommentsallowed>
				<!-- Comment Form -->
	<h2 id="commentsForm">Got anything to say? Go ahead and leave a comment!</h2>
	<mango:Message ifMessageExists type="comment" status="error">
		<p class="error">There was a problem: <mango:Message text /></p>
	</mango:Message>
	<mango:Message ifMessageExists type="comment" status="success">
		<p class="message"><mango:Message text /></p>
	</mango:Message>

				<form method="post" action="#respond">
					<div class="commentform">
					<div style="display:none;">
					<input type="hidden" name="action" value="addComment" />
					<input type="hidden" name="comment_post_id" value="<mango:PageProperty id />" />
					<input type="hidden" name="comment_parent" value="" />
					<mango:AuthenticatedAuthor ifIsLoggedIn>
						<p>You are logged in as <mango:AuthorProperty name /></p>
						<input type="hidden" name="comment_name" value="<mango:AuthorProperty name />" />
						<input type="hidden" name="comment_email" value="<mango:AuthorProperty email />" />
						<input type="hidden" name="comment_website" value="<mango:Blog url />" />
					</mango:AuthenticatedAuthor>
					</div>
					<mango:AuthenticatedAuthor ifNotIsLoggedIn>
			            <p><label for="comment_name" class="comment-field"><small>Name (required):</small></label><input class="text-input" type="text" name="comment_name" id="author" value="<mango:RequestVar name='comment_name' />" size="22" tabindex="1" /></p>
			        	<p><label for="comment_email" class="comment-field"><small>Email  (it will not be displayed):</small></label><input class="text-input" type="text" name="comment_email" id="email" value="<mango:RequestVar name='comment_email' />" size="22" tabindex="2" /></p>
			        	<p><label for="comment_website" class="comment-field"><small>Website:</small></label><input class="text-input" type="text" name="comment_website" id="url" value="<mango:RequestVar name='comment_website' />" size="22" tabindex="3" /></p>
					</mango:AuthenticatedAuthor>

						<p>
							<label class="comment-field" for="comment">
								<small>Comment:</small>
							</label>
							<textarea class="text_input text_area" id="comment" name="comment_content" rows="7" cols="50"><mango:RequestVar name="comment_content" /></textarea>
						</p>
						</div>
						<p class="subscribe-to-comments">
						<input type="checkbox" id="subscribe" name="comment_subscribe" value="1" /> 
						<label for="subscribe">Notify me of followup comments via e-mail</label>
						<mango:Event name="beforeCommentFormEnd" />
						</p>
		      			<p class="commentform">
		      				<input name="submit" type="submit" id="submit" tabindex="5" value="Submit Comment" />
						</p>
		    </form><!--end commentform-->
		 </div><!--end respond-->
		</mango:PageProperty>		
