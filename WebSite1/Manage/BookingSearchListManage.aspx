<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string phone = Session["bookinSearch"].ToString();

            if (phone == "")
            {
                Label1.Text = ("請輸入資料查詢");
            }
            else if ((BookingUtility.GetBookingByPhone(phone)).Count == 0)
            {
                Label1.Text = "查無該電話號碼訂房資料";

            }
            else
            {
                Repeater1.DataSource = BookingUtility.GetBookingByPhone(phone);
                Repeater1.DataBind();
            }



        }
    }

    protected void btnBackList_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Manage/BookingListManage.aspx");
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="plugins/jquery-ui/jquery-ui.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="container-fluid">
            <div>
                <asp:Button ID="btnBackList" CssClass="btn btn-primary" runat="server" Text="返回訂房清單" OnClick="btnBackList_Click" />
            </div>
            <h4>訂房查詢管理
            </h4>

            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table class="table table-hover table-striped">
                        <thead class="thead-dark ">
                            <tr>
                                <th scope="col">訂房號碼</th>
                                <th scope="col">登記時間</th>
                                <th scope="col">房間</th>
                                <th scope="col">入住時間</th>
                                <th scope="col">退房時間</th>
                                <th scope="col">人數</th>
                                <th scope="col">費用</th>
                                <th scope="col">姓氏</th>
                                <th scope="col">名字</th>
                                <th scope="col">Email</th>
                                <th scope="col">電話</th>
                                <th scope="col">付款方式</th>
                                <th scope="col">修改</th>
                                <th scope="col">刪除</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("booking_number") %></td>
                        <td><%# Eval("enter_datetime") %></td>
                        <td><%# Eval("room") %></td>
                        <td><%# Eval("check_in_date") %></td>
                        <td><%# Eval("check_out_date") %></td>
                        <td><%# Eval("people") %></td>
                        <td><%# Eval("price") %></td>
                        <td><%# Eval("last_name") %></td>
                        <td><%# Eval("first_name") %></td>
                        <td><%# Eval("email") %></td>
                        <td><%# Eval("phone") %></td>
                        <td><%# Eval("payment_method") %></td>
                        <td><a href="<%# Eval("booking_number","BookingEdit2.aspx?id={0}") %>">修改</a></td>
                        <td><a onclick="return confirm('確認要刪除訂房資料嗎？')" href="<%# Eval("booking_number","bookingDelete.aspx?id={0}") %>">刪除</a></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
                </table>

                </FooterTemplate>
            </asp:Repeater>

            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>



    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="Server">
</asp:Content>

