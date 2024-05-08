<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="apple-touch-icon" type="image/png"
        href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
    <meta name="apple-mobile-web-app-title" content="CodePen">
    <link rel="shortcut icon" type="image/x-icon"
        href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />
    <link rel="mask-icon" type="image/x-icon"
        href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-b4b4269c16397ad2f0f7a01bcdf513a1994f4c94b8af2f191c09eb0d601762b1.svg"
        color="#111" />
    <link rel="stylesheet" href="./css/login.css" />
    <title>Login Form</title>
    <link rel="canonical" href="https://codepen.io/khadkamhn/pen/ZGvPLo">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>
    <script>
        window.console = window.console || function (t) {};
    </script>
</head>

<body translate="no">
    <div class="login-wrap">
        <div class="login-html">
            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign
                In</label>
            <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
            <div class="login-form">
                <form action="login" method="post">
                    <div class="sign-in-htm">
                        <div class="group">
                            <label for="userSignIn" class="label">Username</label>
                            <input id="userSignIn" name="user" type="text" class="input">
                        </div>
                        <div class="group">
                            <label for="passSignIn" class="label">Password</label>
                            <input id="passSignIn" name="pass" type="password" class="input" data-type="password">
                        </div>
                        <div class="group">
                            <input id="checkSignIn" type="checkbox" class="check" checked>
                            <label for="checkSignIn"><span class="icon"></span> Keep me Signed in</label>
                        </div>
                        <div class="group">
                            <input type="submit" class="button" value="Sign In">
                        </div>
                        <div class="hr"></div>
                        <div class="foot-lnk">
                            <p class="text-danger">${mess}</p>
                        </div>
                    </div>
                </form>

                <form action="signup" method="post">
                    <div class="sign-up-htm">
                        <div class="group">
                            <label for="userSignUp" class="label">Username</label>
                            <input id="userSignUp" name="user" type="text" class="input">
                        </div>
                        <div class="group">
                            <label for="passSignUp" class="label">Password</label>
                            <input id="passSignUp" name="pass" type="password" class="input" data-type="password">
                        </div>
                        <div class="group">
                            <label for="passRepeatSignUp" class="label">Repeat Password</label>
                            <input id="passRepeatSignUp" name="passRepeat" type="password" class="input"
                                data-type="password">
                        </div>
                        <div class="group">
                            <input type="submit" class="button" value="Sign Up">
                        </div>
                        <div class="hr"></div>
                        
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>
