<html>
    <head>
        <title> Portal | Home Solar Monitoring </title>        
        <link rel="stylesheet" type="text/css" href="/css/monitor" />
        <!--style type="text/css">
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
                        
        </style-->
        <script type='text/javascript' src='/js/jquery'></script>
        <script type='text/javascript' src='/js/common'></script>
        <script>
            $(document).ready(() => {
                new EasyEdits('/edits/monitor/login','login');
                new EasyEdits('/edits/monitor/sms','sms');
                let loginMessage = window.location.href.split('?');
                if (loginMessage[1]) {
                    $('#error-lightbox').css('display','block');
                    let message = decodeURI(loginMessage[1]).split('=');
                    $('#message_area').html(message[1].toString().replace('<', "&lt;").replace('>', "&gt;").replace("'", "&#39;").replace('"', "&#34;"));                     
                }                
                let tabs = new EasyTab('tab_navigation',150);
                tabs.add('Standard Login',null,'standard_login_tab');
                tabs.add('SMS Login',null,'alt_login_tab');
                tabs.tabClick(0);
            });
        </script>
            
    </head>
    <body class="m-0 p-0 bg-[url(/images/paradigm/bg_graph.png)]">
        <div class="flex justify-center h-full w-full items-center font-bold flex-wrap place-content-center">
            <div id="message_area" class="text-red-600 text-xl w-full text-center align-center">&nbsp;</div>
            <div class="flex w-[500px] sm:w-full flex-row justify-center relative box-border">
                
                <div class="w-[25px] h-[400px] bg-gray-100 border-l-2 border-t-2 border-b-2 inline-block border-gray-300"></div>
                <div class="h-[400px] bg-white border-t-2 border-b-2 pt-4 border-gray-300 inline-block flex-grow box-border">
                    <div id="greeting" class="text-sm pl-2 pr-2 font-sans text-justify">
                        <center><b>Welcome to Home Solar Monitoring!</b></center><br />
                        
                            Choose your login method below, using your User ID and Password or enter your phone number 
                            or email to be sent a 6 digit number that you can use to login
                        
                    </div><br />
                    <div id="tab_navigation">
                        
                    </div>
                    <div id="standard_login_tab" class="w-full flex justify-center items-center text-xl font-sans text-center">
                        <div class="inline-block m-auto pt-8">
                            <form name='monitor-login-form' id='monitor-login-form' onsubmit='return false'  action='/monitor/dashboard/login' method='POST'>
                               <input type="text"     name="user_name"     id='user_name'     class="p-2 rounded-sm mb-2 w-[325px] border-transparent" placeholder="Username" /><br />
                               <input type="password" name="user_password" id='user_password' class="p-2 rounded-sm mb-2 w-[325px] border-transparent" placeholder="Password" autocomplete="off" /><br />
                               <input type="submit"   name="login-submit"  id='login-submit'  class="p-1 text-white bg-blue-600 w-[325px] cursor-pointer" value="Login" />
                             </form>     
                        </div>
                    </div>
                    <div id="alt_login_tab" class="w-full flex justify-center items-center text-xl font-sans text-center">
                        <div class="inline-block m-auto pt-8">
                            <form name='monitor-sms-form' id='monitor-sms-form' onsubmit='return false'  action='/monitor/dashboard/sms' method='POST'>
                               <input type="text"     name="sms"       id='sms'       class="p-2 rounded-sm mb-2 w-[325px] border-transparent" placeholder="Phone or Email" /><br />
                               <input type="text"     name="sms_token" id='sms_token' class="p-2 rounded-sm mb-2 w-[325px] border-transparent" placeholder="######" autocomplete="off" /><br />
                               <input type="submit"   name="sms_submit"  id='sms_submit'  class="p-1 text-white bg-blue-600 w-[325px] cursor-pointer" value="Get Token" />
                             </form>     
                        </div>                        
                    </div>
                    <div class="absolute bottom-1 h-[25px] w-full text-center">
                        <a href="/monitor/dashboard/register" class="text-sm font-mono text-blue-900 hover:underline"> Register </a> &bull; <a href="/monitor/dashboard/recover" class="text-sm font-mono text-blue-900 hover:underline" onclick="return false">Forgot Password</a>
                    </div>
                </div>
                <div class="w-[25px] h-[400px] bg-gray-100 border-r-2 border-t-2 border-b-2 inline-block border-gray-300"></div>
            </div>
        </div>
    </body>
</html>
