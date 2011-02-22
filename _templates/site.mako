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
    <div id="header">
        ${self.header()}
    </div> <!-- end header -->

    <div id="sidebar">
        ${self.sidebar()}
    </div> <!-- end sidebar -->

    <div id="main">
        ${next.body()}
    </div> <!-- end main -->

    <div id="footer">
        ${self.footer()}
    </div> <!-- end footer -->
  </body>
</html>

<%def name="head()">
  <%include file="head.mako" />
</%def>
<%def name="header()">
  <%include file="header.mako" />
</%def>
<%def name="sidebar()">
  <%include file="sidebar.mako" />
</%def>
<%def name="footer()">
  <%include file="footer.mako" />
</%def>
<%def name="title()">
  <title>Random Thoughts and Geekery</title>
</%def>
