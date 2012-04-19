<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="/feed')}" />
<link rel="alternate" type="application/atom+xml" title="Atom 1.0" href="/feed/atom" />
<link rel="stylesheet" href="/css/style.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="/css/style-responsive.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="/css/font-awesome.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="/css/shCore.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="/css/shThemeDefault.css" type="text/css" media="screen"/>

<script type="text/javascript" src="/js/head.load.min.js"></script>
<script>
    head.js("/js/jquery-1.5.1.min.js",
            "/js/jquery.timeago.js", 
            "/js/shCore.js", 
            "/js/shBrushBash.js", 
            "/js/shBrushPerl.js", 
            "/js/shBrushPython.js", 
            "/js/shBrushSql.js", 
            function() {
                SyntaxHighlighter.all()
            }
    );

    head.ready(function() {
        jQuery("span.timeago").timeago();  
    });
</script>
