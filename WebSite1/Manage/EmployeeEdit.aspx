<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.master" %>

<script runat="server">


    protected void Button1_Click(object sender, EventArgs e)
    {
        employee Employee = new employee();

        Employee.employee_number = Convert.ToInt32(HiddenField1.Value);
        Employee.employee_name = txtEmployeeName.Text;
        Employee.employee_password = txtPassword.Text;
        Employee.group = DropDownEmployessGroup.SelectedItem.Text;

        EmployeeUlility.UpdateEmployee(Employee);
        Response.Redirect("/Manage/EmployeesList.aspx");


    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            int empNumber = Convert.ToInt32(Request.QueryString["id"]);

            employee db = EmployeeUlility.GetEmployee(empNumber);

            HiddenField1.Value = db.employee_number.ToString();
            txtEmployeeName.Text = db.employee_name;
            txtPassword.Text = db.employee_password;
            DropDownEmployessGroup.SelectedValue = DropDownEmployessGroup.Items.FindByText(db.group).Value.ToString();
        }
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <input type="button" id="btnDemoEditEmployee" value="Demo Edit Emoloyee" />
                        <!-- general form elements -->
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">編輯員工資料</h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <%--<label for="">員工帳號名稱</label>--%>
                                        <asp:Label ID="labEmployeeName" runat="server" for="" Text="員工帳號名稱"></asp:Label>
                                        <%--<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">--%>
                                        <asp:TextBox ID="txtEmployeeName" class="form-control" runat="server" placeholder="請輸入帳號" autocomplete="off"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <%--<label for="exampleInputPassword1">Password</label>--%>
                                        <asp:Label ID="labPassword" runat="server" Text="密碼"></asp:Label>
                                        <%--<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">--%>
                                        <asp:TextBox ID="txtPassword" class="form-control" runat="server" TextMode="Password" placeholder="請輸入密碼" autocomplete="off"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:DropDownList ID="DropDownEmployessGroup" runat="server" CssClass="custom-select form-control-border">
                                            <asp:ListItem>Employee</asp:ListItem>
                                            <asp:ListItem>SysAdmin</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <!-- /.card-body -->

                                <div class="card-footer">
                                    <%--<button type="submit" class="btn btn-primary">Submit</button>--%>
                                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="修改" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                        <!-- /.card -->
                    </div>
                </div>
            </div>
        </section>
        <asp:HiddenField ID="HiddenField1" Value="" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="Server">
    <script>
        $('#btnDemoEditEmployee').click(function () {
            $('#ContentPlaceHolder1_txtEmployeeName').val('gardevoir');
            $('#ContentPlaceHolder1_txtPassword').val('gardevoir123');
            $("#ContentPlaceHolder1_DropDownEmployessGroup ").get(0).selectedIndex = 0;
        });
    </script>
</asp:Content>

