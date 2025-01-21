<html>
    <head>
        <link rel='stylesheet' href='/css/common'/>
        <link rel='stylesheet' href='/css/bootstrap'/>
        <style type="text/css">
            body {
                margin: 0px;
                border: 0px;
                box-sizing: border-box
            }
            #page {
                display: flex;
                flex-direction: column;
                color: white;
                margin: 0px; border: 0px
            }
            #menu-bar {
                background-color: #000000; height: 40px
            }
            #outer {
                display: flex;
                background-color: #333333;
                flex-direction: row;
                align-items: stretch
            }
            #quick-nav {
                background-color: #555555;
                width: 50px;

            }
            #profile-area {
                background-color: #777;
                width: 300px;

            }
            #container {
                background-color: #999;
                flex: 1
            }
            #status-bar {
                background-color: #aaa;
                height: 25px
                    
            }
        </style>
        <script src="/js/common"></script>
        <script src="/js/jquery"></script>
        <script src="/js/vue"></script>
        <script>
            const resize = () => {
                document.getElementById('outer').style.height = (window.innerHeight - (document.getElementById('menu-bar').offsetHeight + document.getElementById('status-bar').offsetHeight))+'px';
            }
            window.onload = () => {
                document.getElementById('outer').style.height = (window.innerHeight - (document.getElementById('menu-bar').offsetHeight + document.getElementById('status-bar').offsetHeight))+'px';
            }
            window.onresize = resize;
        </script>
    </head>
    <body>
        <div id="page">
            <div id="menu-bar"></div>
            <div id="outer">
                <div id="quick-nav">
                    <div class='dashboard-mini-icon' title='Dashboard' onclick='Argus.dashboard.home()'>
                        <i class="glyphicons glyphicons-dashboard glyph-active"></i>
                    </div>
                    <div class='dashboard-mini-icon' title='Toggle Profile' onclick='Argus.profile.toggle()'>
                        <i class="glyphicons glyphicons-vcard glyph-active"></i>
                    </div>
                    <div class='dashboard-mini-icon' title='Toggle Profile' onclick="$('#dashboard-user-graphs').slideToggle()">
                        <i class="glyphicons glyphicons-charts glyph-active"></i>
                    </div>                    
                </div>
                <div id="profile-area">
                        <div id='user-name'>
                            {*assign var=data value=$info->userData()}
                              {if ($appl && isset($appl.appellation_id))}
                                {assign var=appl value=$appellation->setId($appl.appellation_id)->load()}
                            {/if}
                            {if (isset($data.entity_name) && $data.entity_name )}<div style='font-size: .8em'>{$data.entity_name}</div>{/if*}
         
                                {*if (($appl) && (isset($appl.appellation)))}{$appl.appellation}{/if}
                                {if ($member->getUsePreferredName() == 'Y')}
                                    {$member->getPreferredName()}
                                {else}
                                    {$member->getFirstName()}
                                {/if*}
         
                        </div>
                        <div id='user-email'>{$user->getEmail()}</div>
                    </div>
                    <!--div id="argus-landing-logout-countdown" style='position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; z-index: 999'>
                        The system is going down, please save your work.  The system will log you out in
                        <div id="landing-logout-countdown">
                            01
                        </div>
                        <div style="text-align: center; padding: 4px">
                            SECONDS
                        </div>
                    </div-->
                    </div>
                    <div id='user-calendar'></div>
                    <!--div id='office-news-header' class='app-header'>
                        HEDIS News {if ($editor)}<a class="add-article" href="#" style="float: right;" onclick="Argus.hedis.article.form(); return false">Add Article</a>{/if}
                    </div>
                    <div id='office-news-data' style='overflow:auto; height:140px;' class='app-data'>
                        {* where news will go dynamically *}
                    </div-->
                    <div id='office-alerts'>
                        <div id='office-alerts-header' class='app-header'>
                            Office Information
                        </div>
                        <div id='office-alerts-data' class='app-data'>
                        </div>
                    </div>                    
                </div>
                <div id="container"></div>
            </div>
            <div id="status-bar">
                Status Bar
            </div>
        </div>
    </body>
</html>