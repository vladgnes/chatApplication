<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">

    <title>Login</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
    <style>
        #InvalidData {
            display: none;
            color: red;
            margin-bottom: 0%;
            margin-top: 0%;
            margin-left: 10%;
        }
        h1 {
            color: white;
            margin-left: 15%;
        }
        :root {
            --baseColor: #606468;
        }
        .align {
            align-items: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        :root {
            --gridMaxWidth: 20rem;
            --gridWidth: 90%;
        }
        .grid {
            margin-left: auto;
            margin-right: auto;
            max-width: var(--gridMaxWidth);
            width: var(--gridWidth);
        }
        .hidden {
            border: 0;
            clip: rect(0 0 0 0);
            height: 1px;
            margin: -1px;
            overflow: hidden;
            padding: 0;
            position: absolute;
            width: 1px;
        }
        :root {
            --iconFill: var(--baseColor);
        }
        .icons {
            display: none;
        }
        .icon {
            display: inline-block;
            fill: var(--iconFill);
            font-size: 1rem;
            height: 1em;
            vertical-align: middle;
            width: 1em;
        }
        :root {
            --htmlFontSize: 100%;
            --bodyBackgroundColor: #2c3338;
            --bodyColor: var(--baseColor);
            --bodyFontFamily: 'Open Sans';
            --bodyFontFamilyFallback: sans-serif;
            --bodyFontSize: 0.875rem;
            --bodyFontWeight: 400;
            --bodyLineHeight: 1.5;
        }
        * {
            box-sizing: inherit;
        }
        html {
            box-sizing: border-box;
            font-size: var(--htmlFontSize);
            height: 100%;
        }
        body {
            background-color: var(--bodyBackgroundColor);
            color: var(--bodyColor);
            font-family: var(--bodyFontFamily), var(--bodyFontFamilyFallback);
            font-size: var(--bodyFontSize);
            font-weight: var(--bodyFontWeight);
            height: 100%;
            line-height: var(--bodyLineHeight);
            margin: 0;
            min-height: 100%;
        }
        :root {
            --anchorColor: #eee;
        }
        a {
            color: var(--anchorColor);
            outline: 0;
            text-decoration: none;
        }
        a:focus,
        a:hover {
            text-decoration: underline;
        }
        :root {
            --formFieldMargin: 0.875rem;
        }
        input {
            background-image: none;
            border: 0;
            color: inherit;
            font: inherit;
            margin: 0;
            outline: 0;
            padding: 0;
            transition: background-color 0.3s;
        }
        input[type='submit'] {
            cursor: pointer;
        }
        .form {
            margin: calc(var(--formFieldMargin) * -1);
        }
        .form input[type='password'],
        .form input[type='text'],
        .form input[type='submit'] {
            width: 100%;
        }
        .form__field {
            display: flex;
            margin: var(--formFieldMargin);
        }
        .form__input {
            flex: 1;
        }
        :root {
            --loginBorderRadus: 0.25rem;
            --loginColor: #eee;
            --loginInputBackgroundColor: #3b4148;
            --loginInputHoverBackgroundColor: #434a52;
            --loginLabelBackgroundColor: #363b41;
            --loginSubmitBackgroundColor: #6495ED;
            --loginSubmitColor: #eee;
            --loginSubmitHoverBackgroundColor: #6495EF;
        }
        .login {
            color: var(--loginColor);
        }
        .login label,
        .login input[type='text'],
        .login input[type='password'],
        .login input[type='submit'] {
            border-radius: var(--loginBorderRadus);
            padding: 1rem;
        }
        .login label {
            background-color: var(--loginLabelBackgroundColor);
            border-bottom-right-radius: 0;
            border-top-right-radius: 0;
            padding-left: 1.25rem;
            padding-right: 1.25rem;
        }
        .login input[type='password'],
        .login input[type='text'] {
            background-color: var(--loginInputBackgroundColor);
            border-bottom-left-radius: 0;
            border-top-left-radius: 0;
        }
        .login input[type='password']:focus,
        .login input[type='password']:hover,
        .login input[type='text']:focus,
        .login input[type='text']:hover {
            background-color: var(--loginInputHoverBackgroundColor);
        }
        .login input[type='submit'] {
            background-color: var(--loginSubmitBackgroundColor);
            color: var(--loginSubmitColor);
            font-weight: 700;
            text-transform: uppercase;
        }
        .login input[type='submit']:focus,
        .login input[type='submit']:hover {
            background-color: var(--loginSubmitHoverBackgroundColor);
        }
        /* modules/text.css */
        :root {
            --paragraphMarginBottom: 1.5rem;
            --paragraphMarginTop: 1.5rem;
        }
        p {
            margin-bottom: var(--paragraphMarginBottom);
            margin-top: var(--paragraphMarginTop);
        }
        .text--center {
            text-align: center;
        }
    </style>
</head>

<body class="align">

<div class="grid">

    <h1>Chat Application</h1>
    <form:form name="submitForm" method="POST" class="form login">
        <div class="form__field">
            <label for="login__login"><svg class="icon"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#user"></use></svg><span class="hidden">Login</span></label>
            <input id="login__login" type="text" name="login" class="form__input" placeholder="Login" required>
        </div>

        <div class="form__field">
            <label for="login__password"><svg class="icon"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#lock"></use></svg><span class="hidden">Password</span></label>
            <input id="login__password" type="password" name="password" class="form__input" placeholder="Password" required>
        </div>
        <p id = "InvalidData">Wrong username or password</p>
        <div class="form__field">
            <input type="submit" value="Sign In">
        </div>
    </form:form>

    <p class="text--center">Don't have an account? <a href="/signUp">Sign up now</a> <svg class="icon"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/images/icons.svg#arrow-right"></use></svg></p>

</div>

<svg xmlns="http://www.w3.org/2000/svg" class="icons"><symbol id="arrow-right" viewBox="0 0 1792 1792"><path d="M1600 960q0 54-37 91l-651 651q-39 37-91 37-51 0-90-37l-75-75q-38-38-38-91t38-91l293-293H245q-52 0-84.5-37.5T128 1024V896q0-53 32.5-90.5T245 768h704L656 474q-38-36-38-90t38-90l75-75q38-38 90-38 53 0 91 38l651 651q37 35 37 90z"/></symbol><symbol id="lock" viewBox="0 0 1792 1792"><path d="M640 768h512V576q0-106-75-181t-181-75-181 75-75 181v192zm832 96v576q0 40-28 68t-68 28H416q-40 0-68-28t-28-68V864q0-40 28-68t68-28h32V576q0-184 132-316t316-132 316 132 132 316v192h32q40 0 68 28t28 68z"/></symbol><symbol id="user" viewBox="0 0 1792 1792"><path d="M1600 1405q0 120-73 189.5t-194 69.5H459q-121 0-194-69.5T192 1405q0-53 3.5-103.5t14-109T236 1084t43-97.5 62-81 85.5-53.5T538 832q9 0 42 21.5t74.5 48 108 48T896 971t133.5-21.5 108-48 74.5-48 42-21.5q61 0 111.5 20t85.5 53.5 62 81 43 97.5 26.5 108.5 14 109 3.5 103.5zm-320-893q0 159-112.5 271.5T896 896 624.5 783.5 512 512t112.5-271.5T896 128t271.5 112.5T1280 512z"/></symbol></svg>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        <c:if test="${msg == true}">
        $("#InvalidData").show(100);
        </c:if>
    });
</script>

</html>