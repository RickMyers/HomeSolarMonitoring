<html>
    <head>
        <title> Portal | Home Solar Monitoring </title>        
        <style type="text/css">
            body {
                overflow: hidden;
            }
            #outside {
                background-color: white;
                width: 100%;
                height: 100%;
            }
            #side-banner-1 {
                background-color: ghostwhite;
                position: absolute;
                left: 10px; top: 100px;
                border-top-left-radius: 50px;
                width: 100%;
                height: 100%;
            }
            #side-banner-2 {
                background-color: #d9d9d9;
                position: absolute;
                left: 16px; top: 16px;
                border-top-left-radius: 50px;
                width: 100%;
                height: 100%;
            }
            #container {
                position: absolute;
                background-color: rgba(130,130,255,1.0);
                position: absolute;
                left: 20px; top: 20px;
                border-top-left-radius: 50px;
                width: 100%;
                height: 100%;
                background-image: url(/images/monitor/backgrounds/blue_background.jpg);
            }
            #card {
                padding: 40px;
                width: 274px;
            }
            .login-container {
                display: inline-block;
                /*position: absolute;
                right: 75px; bottom: 90px;*/
                
                white-space: nowrap;
                background-color: #F7F7F7;  
                border-radius: 2px 0px 2px 2px;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                overflow: hidden;        
            }
            .lightbox {
                background-color: rgba(77,77,77,.5);
                width: 100%;
                height: 100%;
                position: absolute; top: 0px; left: 0px; overflow: hidden;
                z-index: 999
            }
            .login-card {
                display: inline-block;
                overflow: hidden;
            }
            .login-card h1 {
              font-weight: 100;
              text-align: center;
              font-size: 2.3em;
            }
            .login-card input[type=submit] {
              width: 100%;
              display: block;
              margin-bottom: 10px;
              position: relative;
            }
            .login-card input[type=text], input[type=password] {
              height: 44px;
              font-size: 16px;
              width: 100%;
              margin-bottom: 10px;
              background: #fff;
              border: 1px solid #d9d9d9;
              border-top: 1px solid #c0c0c0;
              padding: 0 8px;
              box-sizing: border-box;
            }
            .login-card input[type=text]:hover, input[type=password]:hover {
              border: 1px solid #b9b9b9;
              border-top: 1px solid #a0a0a0;
              box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
            }
            .login {
              text-align: center;
              font-size: 14px;
              font-family: 'Arial', sans-serif;
              font-weight: 700;
              height: 36px;
              padding: 0 8px;
            }
            .login-submit {
              border: 0px;
              color: #fff;
              text-shadow: 0 1px rgba(0,0,0,0.1);
              background-color: #4d90fe;
            }
            .login-submit:hover {
              border: 0px;
              text-shadow: 0 1px rgba(0,0,0,0.3);
              background-color: #357ae8;
            }
            .login-card a {
              text-decoration: none;
              color: #666;
              font-weight: 400;
              text-align: center;
              display: inline-block;
              opacity: 0.6;
              transition: opacity ease 0.5s;
            }

            .login-card a:hover {
              opacity: 1;
            }

            .login-help {
              width: 100%;
              font-family: sans-serif;
              text-align: center;
              font-size: 12px;
            }
            
        </style>
        <script type='text/javascript' src='/js/jquery'></script>
        <script type='text/javascript' src='/js/common'></script>
        <script type='text/javascript'>
            const scroller = (() => {
                let current = 0;
                let timer = false;
                let graphs = [
                    '/images/monitor/scroller/cost_1.png',
                    '/images/monitor/scroller/cost_2.png',
                    '/images/monitor/scroller/cost_3.png',
                    '/images/monitor/scroller/cost_4.png',
                    '/images/monitor/scroller/cost_5.jpg',
                    '/images/monitor/scroller/cost_6.jpg'

                ]                
                return   {
                    init: () => {
                        $('#banner_image_current').attr('src',graphs[current]);
                        $('#banner_image_next').attr('src',graphs[++current]);
                        timer = window.setTimeout(scroller.next,8000);
                    },
                    next: () => {
                        $('#banner_image_current').fadeOut();                        
                        $('#banner_image_next').fadeIn(() => {
                            $('#banner_image_current').attr('src',graphs[current]);
                            current++;
                            if (current > graphs.length) {
                                current = 0;
                            }
                            $('#banner_image_current').css('display','block');
                            $('#banner_image_next').css('display','none').attr('src',graphs[current]);
                        });
                        

                        timer = window.setTimeout(scroller.next,8000);
                    }

                }
            })();
            window.onload = () => {
                new EasyEdits('/edits/monitor/login','login');
                let loginMessage = window.location.href.split('?');
                if (loginMessage[1]) {
                    $('#error-lightbox').css('display','block');
                    let message = decodeURI(loginMessage[1]).split('=');
                    $('#login-error').html(message[1].toString().replace('<', "&lt;").replace('>', "&gt;").replace("'", "&#39;").replace('"', "&#34;"));                     
                }
                scroller.init();
            }
            
        </script>        
    </head>
    <body>
        <div class='lightbox' id='error-lightbox' style='display: none'>
            <table style='width: 100%; height: 100%'>
                <tr>
                    <td>
                        <div style='margin-left: auto; margin-right: auto; width: 400px; padding: 20px; border-radius: 20px; background-color: ghostwhite; border: 1px solid transparent;'>
                            <div id='login-error' style=' color: red; font-family: sans-serif; font-size: 1.4em'>
                                
                            </div><br /><br />
                            <div style=''>
                                <button onclick="$('#error-lightbox').css('display','none')"> Close </button>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        
        <div id="outside" style="padding: 0px; margin: 0px;">
            <div style="float: right; margin-top: -9px; font-family: sans-serif; margin-right: 10px; font-size: 1em; color: #dd0000; font-weight: bolder">
                
            </div>
        </div>
        <div id="side-banner-1">

        </div>
        <div id="side-banner-2">
            
        </div>
        <div id="container" style="white-space: nowrap;">
            <div class="login-container">
                <div id='card' class="login-card" style="display: inline-block">
                    <center>
                        <div style='font-family: sans-serif;'>
                            <div>
                                <div><img style="height: 62px; position: relative; " src="/images/monitor/logo.png" /><br />
                                    <div style="display: none; padding: 5px">Home Solar Monitoring</div>
                                </div>
                            </div>
                        </div>
                        <div style='clear: both; margin-bottom: 20px'></div>
                    </center>
                    <form name='monitor-login-form' id='monitor-login-form' onsubmit='return false'  action='/monitor/home/login' method='POST'>
                      <input type="text"     name="user_name" id='user_name' placeholder="Username"><br />
                      <input type="password" name="user_password" id='user_password' placeholder="Password" autocomplete="off"><br />
                      <input type="submit"   name="login-submit" id='login-submit' class="login login-submit" value="login">
                    </form>

                    <div class="login-help">
                        <a style="color: #990000" href="/monitor/user/recover/form">Forgot Password</a> &nbsp; | &nbsp; <a title="Alternate login page for IPA use" style='color: blue' href="/monitor/user/register/form">Register</a>
                    </div>
                </div>
                <div style="position: relative; width: 600px; height: 343px; vertical-align: top; display: inline-block; background-image: url(/images/monitor/login_background.png); background-size: cover; background-repeat: no-repeat">
                    <img src="" id="banner_image_next" style="display: none; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%" />
                    
                    <img src="" id="banner_image_current" style="display: block; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%" />
                </div>
            </div>
        </div>
        
    </body>
</html>
