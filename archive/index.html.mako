<%inherit file="_templates/site.mako" />
<div id="archive">
<h2>Archive</h2>

<% current_year = bf.config.blog.posts[0].date.strftime("%Y") %>
<h3>${current_year}</h3>

<ul>
% for post in bf.config.blog.posts:
   % if post.date.strftime("%Y") != current_year:
      <% current_year = post.date.strftime("%Y") %>
      </ul>
      <h3>${current_year}</h3>
      <ul>
   % endif
   <%
      has_family = False
      for category in post.categories:
         if 'family' in category.name:
           has_family = True
   %>
   % if not has_family:
      <li>${post.date.strftime("%m/%d")}: <a href="${post.permapath()}">${post.title}</a> <span class="categories">[
<% 
   category_links = []
   for category in post.categories:
       if post.draft:
           #For drafts, we don't write to the category dirs, so just write the categories as text
           category_links.append(category.name)
       else:
           category_links.append("<a href='%s'>%s</a>" % (category.path, category.name))
%>
${", ".join(category_links)}]</span></li>
   % endif
% endfor
</ul>
</div> <!-- end Archive -->
