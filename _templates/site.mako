<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${next.title()}
    ${self.head()}
  </head>
  <body>
    ${next.header()}
    ${next.sidebar()}

    <div id="main">
        ${next.body()}
    </div> <!-- end main -->

    <div id="footer">
        ${self.footer()}
    </div> <!-- end footer -->
    <!-- Google Analytics -->
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-1465952-2']);
        _gaq.push(['_trackPageview']);
        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>
  </body>
</html>

<%def name="head()">
  <%include file="head.mako" />
</%def>

<%def name="header()">
<div id="header">
  <%include file="header.mako" />
</div>
</%def>

<%def name="sidebar()">
<div id="sidebar">
  <%include file="sidebar.mako" />
</div>
</%def>

<%def name="footer()">
  <%include file="footer.mako" />
</%def>

<%def name="title()">
  <title>Random Thoughts and Geekery</title>
</%def>
