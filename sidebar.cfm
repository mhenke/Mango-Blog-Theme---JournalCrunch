<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<cfif thisTag.executionMode EQ "start">
	
	<mangox:TemplatePod id="blog-description" title="">
	<div class="alert-box entry">
	<h2>Welcome</h2>
	<p><mango:Blog description descriptionParagraphFormat /></p>
	</div>
	</mangox:TemplatePod>

	<mangox:TemplatePod id="keep-updated" title="Keep Updated">
    <div id="rss-feed" class="clear"> 
		<p>Get the latest and the greatest news from <mango:Blog title /> delivered to your inbox:</p>
		<a class="rss" href="<mango:Blog rssurl />">RSS Feed</a>
		<!--- set to your information in the setting table with path=/theme/vigilance and name=twitter, name=feedburner --->
		<mango:Setting>
			<mango:SettingProperty ifHasName="feedburner">
				<a class="email" href="http://feedburner.google.com/fb/a/mailverify?uri=<mango:SettingProperty name="feedburner" />&amp;loc=en_US">Email Updates</a>
			</mango:SettingProperty>
		</mango:Setting>
		<mango:Setting>
			<mango:SettingProperty ifHasName="twitter">
				<a class="twitter" href="http://twitter.com/<mango:SettingProperty name="twitter" />">Twitter</a>
			</mango:SettingProperty>
		</mango:Setting>
		
    </div>
	</mangox:TemplatePod>
		
	<!--- recent posts --->
	<mangox:TemplatePod id="posts" title="Recent Posts">
		<ul>
		<mango:Posts count="5" source="recent">
		<mango:Post>
			<li><a href="<mango:PostProperty link />"><mango:PostProperty title /></a></li>
		</mango:Post>
		</mango:Posts>
		<mango:Archive pageSize="5"><mango:ArchiveProperty ifHasNextPage>
		<li><a href="<mango:ArchiveProperty link />" title="Visit the archives!">Visit the archives for more...</a></li></mango:ArchiveProperty></mango:Archive>
		</ul>
	</mangox:TemplatePod>
	
	<!--- categories with RSS --->
	<mangox:TemplatePod id="categories" title="Categories">
	<mango:Categories>
		<ul>
		<mango:Category>
		<li><a href="<mango:CategoryProperty link />" title="<mango:CategoryProperty title />"><mango:CategoryProperty title /></a> </li>
		</mango:Category>
		</ul>
	</mango:Categories>
	</mangox:TemplatePod>
	
	<!--- search box --->
	<mangox:TemplatePod id="search" title="Search">
		<form id="search_form" method="get" action="<mango:Blog searchUrl />">
		<div>
			<input type="text" class="search_input" name="term" value="type and press enter" id="term" onfocus="if (this.value == 'To search, type and hit enter') {this.value = '';}" onblur="if (this.value == '') {this.value = 'To search, type and hit enter';}" />
			<input type="hidden" id="searchsubmit" value="Search" />
		</div>
		</form>
	</mangox:TemplatePod>

	<!--- category cloud --->
	<mangox:TemplatePod id="category-cloud" title="Tag Cloud">
		<div><mangox:CategoryCloud includeStyle="false" /></div>
	</mangox:TemplatePod>
	
	<!--- all archives by month --->
	<mangox:TemplatePod id="monthly-archives" title="Archives">
		<ul>
		<mango:Archives type="month" count="6"><mango:Archive>
			<li><a href="<mango:ArchiveProperty link />"><mango:ArchiveProperty title dateformat="mmmm yyyy" /> (<mango:ArchiveProperty postcount />)</a></li>
		</mango:Archive></mango:Archives>
		</ul>
	</mangox:TemplatePod>
	
	<!--- all links by category --->
	<mangox:TemplatePod id="links-by-category">
		<ul>
		<mangox:LinkCategories>
			<mangox:LinkCategory>
			<li class="widget">
				<h2 class="widgettitle"><mangox:LinkCategoryProperty name /></h2>
			</mangox:LinkCategory>
				<ul>
				<mangox:Links>
				<mangox:Link>
					<li><a href="<mangox:LinkProperty address />" title="<mangox:LinkProperty title />"><mangox:LinkProperty title /></a></li>
				</mangox:Link>
				</mangox:Links>
				</ul>
			</li>
		</mangox:LinkCategories>
		</ul>
	</mangox:TemplatePod>
	
	<!--- output all the pods, including the ones added by plugins --->
	<mangox:Pods>
		<div class="rightBox">
			<div class="rightBoxInner">
			<mangox:Pod>
				<mangox:PodProperty ifHasTitle>
				<ul><li class="widget">
					<h2 class="widgettitle"><mangox:PodProperty title /></h2>
						<mangox:PodProperty content />
					</li>
				</ul>
				</mangox:PodProperty>
			
				<!--- output the content as is, good for "templatePods" --->
				<mangox:PodProperty ifNotHasTitle>
					<mangox:PodProperty content />
				</mangox:PodProperty>
			</mangox:Pod>
			</div>
		</div>
	</mangox:Pods>
</cfif>