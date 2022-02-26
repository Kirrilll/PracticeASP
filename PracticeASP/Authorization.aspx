<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Authorization.aspx.cs" Inherits="PracticeASP.Authorization" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <style type="text/css">
        body {
            background-color: #f7f8fc;
            
        }

        button, input, optgroup, select, textarea {
            color: inherit;
            font: inherit;
            margin: 0
        }

        button {
            overflow: visible
        }

        button, select {
            text-transform: none
        }

        button, html input[type="button"], input[type="reset"], input[type="submit"] {
            -webkit-appearance: button;
            cursor: pointer
        }

            button[disabled], html input[disabled] {
                cursor: default
            }

            button::-moz-focus-inner, input::-moz-focus-inner {
                border: 0;
                padding: 0
            }

        input {
            line-height: normal
        }

            input[type="checkbox"], input[type="radio"] {
                box-sizing: border-box;
                padding: 0
            }

            input[type="number"]::-webkit-inner-spin-button, input[type="number"]::-webkit-outer-spin-button {
                height: auto
            }

            input[type="search"] {
                -webkit-appearance: textfield;
                -moz-box-sizing: content-box;
                -webkit-box-sizing: content-box;
                box-sizing: content-box
            }

                input[type="search"]::-webkit-search-cancel-button, input[type="search"]::-webkit-search-decoration {
                    -webkit-appearance: none
                }

        .form {
            width: 400px;
            margin: 150px auto;
            -webkit-box-shadow: 0px 5px 10px 2px rgba(34, 60, 80, 0.2);
            -moz-box-shadow: 0px 5px 10px 2px rgba(34, 60, 80, 0.2);
            box-shadow: 0px 5px 10px 2px rgba(34, 60, 80, 0.2);
            padding: 30px;
            border-radius: 30px;
        }

        .form__container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-direction: row;
            margin-bottom: 15px;
        }

            .form__container input {
                border-radius: 10px;
                padding: 5px 10px;
                border: 1px solid #282f34
            }

        .form__submit {
            width: 100%;
            margin-top: 20px;
            padding: 10px;
            font-size: 20px;
            background-color: transparent;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <form class="form" id="auth" runat="server">
        <div class="form__container login">
            <asp:Label ID="Info" runat="server" Text=""></asp:Label>
            <br />
            <div> Логин </div>
            <asp:TextBox ID="login" runat="server"></asp:TextBox>
            &nbsp;
        </div>
        <div class="form__container password">
            <div>Пароль </div>
            <asp:TextBox ID="password" runat="server"></asp:TextBox>
        </div>
        &nbsp;<asp:Button ID="SubmitBtn" runat="server" OnClick="Submit" Text="Подтвердить" Height="42px" Width="397px" />
        &nbsp;</form>
    &nbsp;
</body>
</html>
