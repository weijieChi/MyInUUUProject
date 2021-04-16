<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.master" %>

<script runat="server">


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["employeeGorup"].ToString() != "SysAdmin")
        {
            Response.Redirect("~/Manage/NotAdmin.aspx");
        }

        if (Page.IsPostBack == false)
        {
            Repeater1.DataSource = EmployeeUlility.GetAllEmployer();
            Repeater1.DataBind();
        }
    }

    protected void btnSearch_ServerClick(object sender, EventArgs e)
    {
        if (txtSearch.Text == "")
        {

        }
        else
        {
            Session["searchEmployee"] = txtSearch.Text;
            Response.Redirect("/Manage/EmployeesSearchPage.aspx");
        }
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="content">

        <div class="content-wrapper">
            <div class="container-fluid">

                <div class="input-group">
                    <asp:TextBox ID="txtSearch" runat="server" class="form-control form-control-lg" placeholder="請輸入員工 ID 查詢"></asp:TextBox>
                    <div class="input-group-append">
                        
                        <button id="btnSearch" type="submit" class="btn btn-lg btn-default" runat="server" OnServerClick="btnSearch_ServerClick">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>

                <div class="card-body table-responsive p-0">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <HeaderTemplate>
                            <table class="table table-hover table-striped text-nowrap">
                                <thead class="thead-dark ">
                                    <tr>
                                        <th scope="col">員工編號</th>
                                        <th scope="col">員工ID</th>
                                        <th scope="col">員工密碼</th>
                                        <th scope="col">員工群組</th>
                                        <th scope="col">修改</th>
                                        <th scope="col">刪除</th>

                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("employee_number") %></td>
                                <td><%# Eval("employee_name") %></td>
                                <td><%# Eval("employee_password") %></td>
                                <td><%# Eval("group") %></td>
                                <td><a href="<%# Eval("employee_number","EmployeeEdit.aspx?id={0}") %>">修改</a></td>
                                <td><a onclick="return confirm('確認要刪除員工資料嗎？')" href="<%# Eval("employee_number","EmployeeDelete.aspx?id={0}") %>">刪除</a></td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
                </table>
                            <input type="button" id="benSearchDemo" value="SearchDemo" />

                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>


        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="Server">
    <script>
        $(function () {
            $('#benSearchDemo').click(function () {
                $('#ContentPlaceHolder1_txtSearch').val('e');
            });
        });
    </script>
</asp:Content>

