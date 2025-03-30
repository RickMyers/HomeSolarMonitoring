<html>
    <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title> Portal | Home Solar Monitoring </title>        
        <link rel="stylesheet" type="text/css" href="/css/monitor" />
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
        </style>
        <script type='text/javascript' src='/js/jquery'></script>
        <script type='text/javascript' src='/js/common'></script>
        <script>
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
                    },
                    stop: () => {
                        window.clearTimeout(timer);
                    }

                }
            })();            
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
                scroller.init();
            });
        </script>
            
    </head>
    <body class="m-0 p-0]">
        <div id="outside" style="padding: 0px; margin: 0px;"  class="bg-midnight">
            <div style="float: right; margin-top: -9px; font-family: sans-serif; margin-right: 10px; font-size: 1em; color: #dd0000; font-weight: bolder">
                
            </div>
        </div>
        <div id="side-banner-1">

        </div>
        <div id="side-banner-2" class="bg-[url(/images/paradigm/bg_graph.png)] border-l-2 border-gray-400 border-t-2">
        <div class="flex justify-center h-full w-full items-center font-bold flex-wrap place-content-center">
            <div id="message_area" class="text-red-600 text-xl w-full text-center align-center">&nbsp;</div>
            <div class="flex lg:w-[1100px]   flex-row justify-center relative box-border">
                <div class="w-[25px] h-[400px] bg-gray-100 border-l-2 border-t-2 border-b-2 inline-block border-gray-300"></div>
                    <div class="h-[400px] w-[500px] bg-white border-t-2 border-b-2 pt-4 border-gray-300 inline-block box-border">
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
                        <div class="bottom-1 h-[25px] w-full text-center">
                            <a href="/monitor/dashboard/register" class="text-sm font-mono text-blue-900 hover:underline"> Register </a> &bull; <a href="/monitor/dashboard/recover" class="text-sm font-mono text-blue-900 hover:underline" onclick="return false">Forgot Password</a>
                        </div>   
                    </div>
                    <div class="relative align-top bg-[url(/images/monitor/login_background.png)] bg-no-repeat bg-gray-300 border-t-2 border-b-2 border-box">
                        <img src="" id="banner_image_next" style="display: none; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%" />

                        <img src="" id="banner_image_current" style="display: block; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%" />
                    </div>                
                    <div class="w-[25px] h-[400px] bg-gray-100 border-r-2 border-t-2 border-b-2 inline-block border-gray-300"></div>
                </div>
            </div>            
        </div>        

    </body>
</html>
