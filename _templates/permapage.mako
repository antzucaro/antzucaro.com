<%inherit file="site.mako" />
<%include file="post.mako" args="post=post" />

<!-- DISQUS -->

<div id="disqus_thread"></div>
<script type="text/javascript">
  var disqus_url = "${post.permalink}";
% if 'family' in post.category_names:
  var disqus_developer = 1;
% endif
</script>

% if bf.config.blog.disqus.enabled:
<script type="text/javascript" src="http://disqus.com/forums/${bf.config.blog.disqus.name}/embed.js"></script>
<noscript><a href="http://${bf.config.blog.disqus.name}.disqus.com/?url=ref">View the discussion thread.</a></noscript><a href="http://disqus.com" class="dsq-brlink">blog comments powered by <span class="logo-disqus">Disqus</span></a>
% endif

<!-- END DISQUS -->

<%def name="title()">
  <title>${post.title} - Random Thoughts and Geekery</title>
</%def>

<%def name="header()">
</%def>

<%def name="sidebar()">
        <div class="span4">
          <h2><a title="Random Thoughts and Geekery" href="${bf.util.site_path_helper(bf.config.blog.path)}"><span style="color:#333333">R<span style="color:#cc3333">T</span>AG</span></a></h2>
          <%include file="sidebar.mako" />
        </div>
</%def>
