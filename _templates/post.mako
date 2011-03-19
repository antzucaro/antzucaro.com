<%page args="post"/>
<div class="blog_post">
  <a name="${post.slug}"></a>
  <h2 class="blog_post_title"><a href="${post.permapath()}" rel="bookmark" title="Permanent Link to ${post.title}">${post.title}</a></h2>
  <div class="timestamp">
     <small><abbr class="timeago" title="${post.date.strftime("%Y-%m-%d %H:%M")}">${post.date.strftime("%B %d, %Y at %I:%M %p")}</abbr> at ${post.date.strftime("%I:%M %p")} in 
<% 
   category_links = []
   for category in post.categories:
       if post.draft:
           #For drafts, we don't write to the category dirs, so just write the categories as text
           category_links.append(category.name)
       else:
           category_links.append("<a href='/%s'>%s</a>" % (category.name.lower().replace(' ', '-'), category.name))
%>
${", ".join(category_links)}
   </div> <!-- end timestamp and categories -->
</small><p/>
  <div class="post_prose">
    ${self.post_prose(post)}
  </div>
</div>

<%def name="post_prose(post)">
  ${post.content}
</%def>

<%def name="title()">
  ${post.title}
</%def>
