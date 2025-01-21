<html>
<head>
  <meta charset="UTF-8">
  <title>Monitor | Password Recovery</title>
    <link rel='stylesheet' type='text/css' href='/css/admintheme' />
    <style type='text/css'>

        .recover-card {
          /*padding: 40px;*/
          width: 400px;
          background-color: #F7F7F7;
          border-radius: 2px 0px 0px 2px;
          box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
          overflow: hidden;
        }

        .recover-card h1 {
          font-weight: 100;
          text-align: center;
          font-size: 2.3em;
        }

        .recover-card input[type=submit] {
          width: 100%;
          display: block;
          margin-bottom: 10px;
          position: relative;
        }

        .recover-card input[type=text], input[type=password] {
          height: 44px;
          font-size: 16px;
          width: 100%;
          margin-bottom: 10px;
          -webkit-appearance: none;
          background: #fff;
          border: 1px solid #d9d9d9;
          border-top: 1px solid #c0c0c0;
          padding: 0 8px;
          box-sizing: border-box;
          -moz-box-sizing: border-box;
        }

        .recover-card input[type=text]:hover, input[type=password]:hover {
          border: 1px solid #b9b9b9;
          border-top: 1px solid #a0a0a0;
          -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
          -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
          box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
        }

        .recover {
          text-align: center;
          font-size: 14px;
          font-family: 'Arial', sans-serif;
          font-weight: 700;
          height: 36px;
          padding: 0 8px;
        }

        .recover-submit {
          border: 0px;
          color: #fff;
          text-shadow: 0 1px rgba(0,0,0,0.1);
          background-color: #425445; /*#4d90fe;*/
        }

        .recover-submit:hover {
          border: 0px;
          text-shadow: 0 1px rgba(0,0,0,0.3);
          background-color:  #425445; /*#357ae8;*/
        }

        .recover-card a {
          text-decoration: none;
          color: #666;
          font-weight: 400;
          text-align: center;
          display: inline-block;
          opacity: 0.6;
          transition: opacity ease 0.5s;
        }

        .recover-card a:hover {
          opacity: 1;
        }

        .recover-help {
          width: 100%;
          text-align: center;
          font-size: 12px;
        }
        body {
            background-image: url("/web/images/bg_graph.png")
        }           
    </style>
    <script type='text/javascript' src='/js/humble-jquery'></script>
    <script type='text/javascript' src='/js/common'></script>
    <script type='text/javascript'>
        window.onload = function () {
            new EasyEdits('/web/edits/recover.json','recover-password');
            var recoverMessage = window.location.href.split('?message=');
            if (recoverMessage[1]) {
                $E('recover-error').innerHTML = unescape(recoverMessage[1]);
            }
        }
    </script>

</head>

<body>
    <table style='width: 100%; height: 100%'>
        <tr>
            <td align='center' valign='middle'>
                <table cellspacing='0' cellpadding='0'>
                    <tr>
                        <td>
                            <div id='recover-error' style='text-align: center; padding: 5px;  font-family: sans-serif; font-size: 1.1em; color: #c00; font-weight: bolder; height: 20px'>
                                {$message}
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id='card' class="recover-card">
                                <div style="border-left: 4px solid #425445; border-right: 4px solid #425445; border-top: 4px solid #425445; height: 44px"></div>
                                <div style="padding: 10px 40px 10px 40px">
                                    <center>
                                        Welcome To Monitor <br /><br />
                                        <img src='/images/humble/reset_password.png'  height='100' /><br /><br />
                                        Enter your email address to begin the password reset process<br /><br />
                                    </center>
                                    <form name='recover-form' id='recover-form' onsubmit='return false'  action='/monitor/dashboard/recover/action' method='POST'>
                                        <input type="text" name="email" id='email' placeholder="E-Mail Address">
                                        <input type="submit" name="recover-submit" id='recover-submit' class="recover recover-submit" value="recover">
                                    </form>
                                    <div class="recover-help">
                                        <a href="/monitor/dashboard/register">Register</a> • <a href="/index.html">Login</a>
                                    </div>
                                </div>
                                <div style="border-left: 4px solid #425445; border-right: 4px solid #425445; border-bottom: 4px solid #425445; height: 44px"></div>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>

</html>


