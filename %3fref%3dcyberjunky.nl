<!DOCTYPE html>
<html>

  <head>
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <meta name="description" content="MrChromebox.tech : Custom coreboot firmware and firmware utilities for your Chromebook/Chromebox">

    <link rel="stylesheet" type="text/css" media="screen" href="stylesheets/stylesheet.css">
    <script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>

    <title>MrChromebox.tech</title>
  </head>

  <body>

    <!-- HEADER -->
    <div id="header_wrap" class="outer">
        <header class="inner">

          <h1 id="project_title">MrChromebox.tech</h1>
          <h2 id="project_tagline">Custom coreboot firmware and firmware utilities for your Chromebook/Chromebox</h2>

        </header>
    </div>
    
    <!-- MAIN CONTENT -->
    <div id="main_content_wrap" class="outer">
      <!-- Left Menu Bar -->
      <div id="nav" class="nav">
          <ul>
            <li id="_home" class="active"><a href="javascript:gofor('static/home.html')" onclick="document.getElementById('main_content').style='';" id="home">Home</a></li>
            <li id="_chromeos"><a href="javascript:gofor('static/chromeos.html')" onclick="document.getElementById('main_content').style='';" id="chromeos">ChromeOS Boot Modes</a></li>
            <li id="_devmode"><a href="javascript:gofor('static/devmode.html')" onclick="document.getElementById('main_content').style='';" id="devmode">Developer Mode</a></li>
            <li id="_firmware"><a href="javascript:gofor('static/firmware.html')" onclick="document.getElementById('main_content').style='';" id="firmware">All About Firmware</a></li>
            <li id="_bootmodes"><a href="javascript:gofor('static/bootmodes.html')" onclick="document.getElementById('main_content').style='';" id="bootmodes">Legacy Boot and UEFI</a></li>
            <li id="_alt_os"><a href="javascript:gofor('static/alt_os.html')" onclick="document.getElementById('main_content').style='';" id="alt_os">Alternative OSes</a></li>
            <li id="_fwscript"><a href="javascript:gofor('static/fwscript.html')" onclick="document.getElementById('main_content').style='';" id="fwscript">Firmware Utility Script</a></li>
            <li id="_kodi"><a href="javascript:gofor('static/kodi.html')" onclick="document.getElementById('main_content').style='';" id="kodi">Kodi E-Z Setup Script</a></li>
            <li id="_devices"><a href="javascript:gofor('static/devices.html')"" onclick="document.getElementById('main_content').style='height: 400em';" id="devices">Supported Devices</a></li>
            <li id="_support"><a href="javascript:gofor('static/support.html')" onclick="document.getElementById('main_content').style='';" id="support">Services and Support</a></li>
            <li id="_faq"><a href="javascript:gofor('static/faq.html')" onclick="document.getElementById('main_content').style='';" id="faq">FAQ</a></li>
            <li><center><form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
      <input type="hidden" name="cmd" value="_s-xclick">
      <input type="hidden" name="hosted_button_id" value="VS8JKCK492NHW">
      <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
      <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
              </form></li>
          </ul>
      
        </div>
      <section id="main_content" class="inner" frameborder="0" >
      </section>
    </div>

    <!-- FOOTER  -->
    <div id="footer_wrap" class="footer">
      <p>
        <center><a href="https://twitter.com/MrChromebox" class="twitter-follow-button" data-show-count="false">Follow @MrChromebox</a> <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script></center>
      </p>
    </div>
  </body>

<script>
    var gofor; 

    gofor = function (page) {
        var pageName = page.replace('static/','').slice(0, -5);
        $('#main_content').load(page);
        document.getElementById('main_content_wrap').scrollTop =0;
        window.location.hash = '#' + pageName;
    }

    if (window.location.hash) {
        var hash = window.location.hash.substring(1);
        var pageUrl = 'static/' + hash + '.html';
        gofor(pageUrl);
        $('#nav').find('li').removeClass('active');
        $('#nav').find('#_' + hash).addClass('active');
    } else {
        $('#main_content').load("static/home.html");
    }

    $(function() { 
        $('#nav li a').click(function() {
           $(".nav").find(".active").removeClass("active");
           $(this).parent().addClass("active");
        });        
    });
</script>

</html>
