<html>
    <head>
        <title> Portal | Home Solar Monitoring </title>        
        <link rel="stylesheet" type="text/css" href="/css/monitor" />
        <script type='text/javascript' src='/js/jquery'></script>
        <script type='text/javascript' src='/js/common'></script>
        <script>
            $(document).ready(() => {
                new EasyEdits('/edits/monitor/register','register');
            });
        </script>
            
    </head>
    <body class="m-0 p-0 bg-[url(/images/paradigm/bg_graph.png)]">
        <div class="flex justify-center h-full w-full items-center flex-wrap place-content-center">
            <div id="message_area" class="text-red-600 text-xl w-full text-center align-center">&nbsp;</div>
            <div class="flex w-[600px] flex-row justify-center relative box-border">
                <div class="w-[25px] h-[600px] bg-gray-100 border-l-2 border-t-2 border-b-1 inline-block border-gray-300"></div>
                <div class="h-[600px] bg-white border-t-2 border-b-1 pt-4 border-gray-300 inline-block flex-grow box-border">
                    
                    <form name="hsm_registration_form" id="hsm_registration_form" onsubmit="return false">
                        Instructions<br ><br />
                            Please fill out the information below, none of it will be used for any other purpose than logging in to your Home Solar Monitoring Dashboard.
                            If you include a phone number or email, you can use those as an alternate means of logging in<br /><br /><hr />
                            <div class="w-full m-0 p-0 border-box mb-1">
                                <div class="w-1/3 inline-block">
                                    <div class="w-full font-mono text-sm pt-2 pb-1 bg-gray-100 border-b-1 border-gray-300 border-r-2">
                                        First Name
                                    </div>
                                    <div class="w-full font-sans pl-4 border-b-1 border-gray-300 bg-gray-100 border-r-2"> 
                                        <input type="text" class="w-full pl-1" name="first_name" id="first_name" />
                                    </div>
                                </div><div class="w-1/3 inline-block">
                                    <div class="w-full font-mono text-sm pt-2 pb-1 bg-gray-100 border-b-1 border-gray-300 border-r-2">
                                        Last Name
                                    </div>
                                    <div class="w-full font-sans pl-4 border-b-1 border-gray-300 bg-gray-100 border-r-2"> 
                                        <input type="text" class="w-full pl-1" name="last_name" id="last_name" />
                                    </div>
                                </div><div class="w-1/3 inline-block">
                                    <div class="w-full font-mono text-sm pt-2 pb-1 bg-gray-100 border-b-1 border-gray-300 border-r-2">
                                        Date Of Birth
                                    </div>
                                    <div class="w-full font-sans pl-4 border-b-1 border-gray-300 bg-gray-100 border-r-2"> 
                                        <input type="text" class="w-full text-center" name="date_of_birth" id="date_of_birth" placeholder="##/##/####" />
                                    </div>
                                </div>                                
                            </div>
                            <div class="w-full mb-1">
                                <div class="w-2/3 inline-block">
                                    <div class="w-full font-mono text-sm pt-2 pb-1 bg-gray-100 border-b-1 border-gray-300 border-r-2">
                                        E-Mail
                                    </div>
                                    <div class="w-full font-sans pl-4 border-b-1 border-gray-300 bg-gray-100 border-r-2"> 
                                        <input type="text" class="w-full pl-1" name="email" id="email" />
                                    </div>
                                </div><div class="w-1/3 inline-block">
                                    <div class="w-full font-mono text-sm pt-2 pb-1 bg-gray-100 border-b-1 border-gray-300 border-r-2">
                                        Gender
                                    </div>
                                    <div class="w-full font-sans border-b-1 border-gray-300 bg-gray-100 border-r-2"> 
                                        <select class="w-full" name="gender" id="gender">
                                            <option value=""> </option>
                                            <option value="M"> Male </option>
                                            <option value="F"> Female </option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full">
                                <div class="w-1/3 inline-block">
                                    <div class="w-full font-mono text-sm pt-2 pb-1 bg-gray-100 border-b-1 border-gray-300 border-r-2">
                                        Password
                                    </div>
                                    <div class="w-full pl-4 font-sans border-b-1 border-gray-300 bg-gray-100 border-r-2"> 
                                        <input class="pl-1 w-full" type="password" name="user_password" id="user_password" />
                                    </div>
                                </div><div class="w-1/3 inline-block">
                                    <div class="w-full font-mono text-sm pt-2 pb-1 bg-gray-100 border-b-1 border-gray-300 border-r-2">
                                        Confirm Password
                                    </div>
                                    <div class="pl-4 font-sans border-b-1 border-gray-300 bg-gray-100 border-r-2"> 
                                        <input class="pl-1 w-full" type="password" name="confirm_password" id="confirm_password" />
                                    </div>
                                </div><div class="w-1/3 inline-block">
                                    <div class="font-mono text-sm pt-2 pb-1 bg-gray-100 border-b-1 border-gray-300 border-r-2">
                                        Phone Number
                                    </div>
                                    <div class="pl-4 font-sans border-b-1 border-gray-300 bg-gray-100 border-r-2"> 
                                        <input type="text" class="w-full text-center" name="phone_number" id="phone_number" placeholder="(###)-###-####" />
                                    </div>
                                </div>
                            </div>
                            
                            <hr />
                            <div class="p-2 text-center"> 
                                <br /><br />
                                <input type="button" id="register-submit" class="cursor-pointer bg-blue-600 text-white text-xl px-4 py-2 rounded-lg" value="Register" />
                            </div>
                            
                    </form>
                </div>
                <div class="w-[25px] h-[600px] bg-gray-100 border-r-2 border-t-2 border-b-1 inline-block border-gray-300"></div>
            </div>
        </div>
    </body>
</html>
