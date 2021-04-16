<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Manage/LoginPage.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/jquery-ui.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="row">
                    <div >
                        <h1 class="page-header">非系統管理者，請登入系統管理員帳號進入</h1>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="登入管理帳號" CssClass="btn btn-primary" OnClick="Button1_Click"/>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="jquery/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
