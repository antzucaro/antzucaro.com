<%inherit file="_templates/site.mako" />
<div id="archive">
<h2>Family</h2><br />

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
   % if has_family:
      <li>${post.date.strftime("%m/%d")}: <a href="${post.permapath()}">${post.title}</a></li>
   % endif
% endfor
</ul>
</div> <!-- end Archive -->
