<style>
.container {
    width: 45%;
    margin: 0 auto;
    background-color: white;
    margin-top: 50px
}

*,
::after,
::before {
    box-sizing: border-box;
}

.box {
    padding: 130px 30px;
    width: 75%;
    margin: 0 auto;
}

body {
    background-color: #EFEEE9;
}

h2 {
    text-align: center;
    margin-top: 0 !important;
}

table {
    width: 100%;
    padding: 20px;
}

.formLogin input[type="text"],
.formLogin input[type="password"] {
    width: 100%;
    height: 42px;
    border-radius: 4px;
    border: solid 1.5px lightgray;
    padding: 15px;
}

.formLogin table {
    border-collapse: separate;
    border-spacing: 7px;
}

.gt {
    position: relative;
}

.gt input[type="text"],
input[type="passaword"] {
    background: white;
}

input[type="submit"] {
    width: 100%;
    padding: 11px 18px;
    border-radius: 5px;
    border: 1px solid #bab6b6;
    cursor: pointer;
    background-color: rgb(235, 61, 67);
    color: white
}

input[type="submit"]:hover {
    background-color: rgb(206, 37, 43);
}

em {
    display: inline-block;
    width: 8px;
    height: 8px;
    background-image: url(../images/error.png);
    margin-right: 4px;
}

span {
    display: block;
    padding-top: 5px;
    color: #E82228;
    clear: both;
    font-size: 2vh;
}
</style>
<div class="container formLogin">
    <div class="box">
        <h2>
            QUẢN TRỊ VIÊN
        </h2>
        <form method="POST" action="index.php" id="form_Login">
            <table>

                <tr>
                    <td colspan="2">

                        <input type="text" id="username" name="login_username" placeholder="Nhập tên tài khoản của bạn"
                            required>

                    </td>
                </tr>
                <tr>

                    <td colspan="2" style="padding-top:10px">

                        <input type="password" id="password" name="login_password" placeholder="Nhập mật khẩu của bạn"
                            required>

                    </td>
                </tr>


                <tr>
                    <td colspan="2" style="padding-top:20px">
                        <input type="submit" name="btnLogin" value="Đăng nhập">
                    </td>
                </tr>
          
            </table>
        </form>

    </div>

</div>