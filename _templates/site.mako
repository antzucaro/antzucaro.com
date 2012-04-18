<%inherit file="base.mako" />
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Ant Zucaro's personal blog and photography.">
    <meta name="author" content="Ant Zucaro">
    ${next.title()}
    ${self.head()}
  </head>
  <body>
    <div class="container">
      <!-- HEADER -->
      ${next.header()}


      <!-- CONTENT -->
      <div class="row">
        <div class="span8">
          ${next.body()}
        </div> <!-- END MAIN -->

      <!-- SIDEBAR -->
      ${next.sidebar()}

      </div> <!-- END CONTENT -->


      <!-- FOOTER -->
      <div class="row">
        <div class="span12">
          ${self.footer()}
        </div> <!-- END FOOTER -->
      </div> <!-- END ROW -->


    </div> <!-- END CONTAINER -->

    <!-- GOOGLE ANALYTICS -->
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
      <div class="row">
        <div class="span12">
          <%include file="header.mako" />
        </div>
      </div>
</%def>

<%def name="sidebar()">
      <div class="span3">
        <%include file="sidebar.mako" />
      </div> <!-- END SIDEBAR -->
</%def>

<%def name="footer()">
  <%include file="footer.mako" />
</%def>

<%def name="title()">
  <title>Ant Zucaro.com</title>
</%def>
