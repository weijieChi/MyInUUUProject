<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnLogin_Click(object sender, EventArgs e)
    {

        if (txtUserName.Text == "" && txtPasswoed.Text == "")
        {
            Label1.Text = "請輸入帳號密碼";
            return;
        }



        employee Employee = EmployeeUlility.GetEmployeeByName(txtUserName.Text);
        if (Employee == null)
        {
            Label1.Text = "帳號密碼錯誤";
            return;
        }

        else if ((Employee.employee_name == txtUserName.Text) && (Employee.employee_password == txtPasswoed.Text))
        {
            Session["employeeName"] = txtUserName.Text;
            Session["employeePassword"] = txtPasswoed.Text;
            Session["employeeGorup"] = Employee.group;
            Response.Redirect("~/Manage/BooikngsList.aspx");

            //abel1.Text = "登入成功"
        }


    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>訂房資料管理帳號登入</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="loginPageScript/css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container-scroller">
                <div class="container-fluid page-body-wrapper full-page-wrapper">
                    <div class="content-wrapper d-flex align-items-center auth px-0">
                        <div class="row w-100 mx-0">
                            <div class="col-lg-4 mx-auto">
                                <input type="button" id="btnDemoLoginByEmployee" value="Demo 員工帳號登入" />
                                <input type="button" id="btnDemoLoginBySysAdmin" value="Demo 系統管理員帳號登入" />
                                <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                                    <h4>管理後台登入頁面</h4>
                                    <h6 class="font-weight-light">請輸入帳號密碼登入管理後台</h6>
                                    <div class="pt-3">
                                        <div class="form-group">
                                            <asp:TextBox ID="txtUserName" runat="server" class="form-control form-control-lg" placeholder="請輸入帳號" autocomplete="off"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="txtPasswoed" runat="server" class="form-control form-control-lg" placeholder="請輸入密碼" TextMode="Password"></asp:TextBox>
                                        </div>
                                        <div class="mt-3">
                                            <asp:Button ID="btnLogin" runat="server" Text="登入" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" OnClick="btnLogin_Click"/>
                                            <br />
                                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- content-wrapper ends -->
                </div>
                <!-- page-body-wrapper ends -->
            </div>
            <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
            <script src="loginPageScript/js/off-canvas.js"></script>
            <script src="loginPageScript/js/hoverable-collapse.js"></script>
            <script src="loginPageScript/js/template.js"></script>
            <script src="loginPageScript/js/todolist.js"></script>
            <script>
                $('#btnDemoLoginByEmployee').click(function () {
                    $('#txtUserName').val('pikachu');
                    $('#txtPasswoed').val('pikapika');
                });
                $('#btnDemoLoginBySysAdmin').click(function () {
                    $('#txtUserName').val('red');
                    $('#txtPasswoed').val('red123');
                });
            </script>
        </div>
    </form>
</body>
</html>
