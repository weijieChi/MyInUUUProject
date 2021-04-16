<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            Repeater1.DataSource = BookingUtility.GetAllBookings();
            Repeater1.DataBind();
        }
    }

    protected void btnSearchByPhone_Click(object sender, EventArgs e)
    {
        Session["bookinSearch"] = txtSearchByPhone.Text;
        Response.Redirect("~/Manage/BookingSearchListManage.aspx");

    }

    protected void btnAddBooking_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Manage/BookingAdd2.aspx");
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="plugins/jquery-ui/jquery-ui.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="container-fluid">

            <div>
                <asp:Button ID="btnSearchByPhone" CssClass="btn btn-primary" runat="server" Text="電話查詢" OnClick="btnSearchByPhone_Click" />
                <asp:TextBox ID="txtSearchByPhone" runat="server" placeholder="請輸入電話號碼" autocomplete="off"></asp:TextBox>
            </div>
            <h4>訂房清單管理</h4>
            <asp:Button ID="btnAddBooking" runat="server" class="btn btn-secondary" Text="新增訂房" OnClick="btnAddBooking_Click" />
            <input type="button" id="btnSearchDemo" value="Search Demo" />
            <div class="card">
                <div class="card-body table-responsive p-0">
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

                </div>
            </div>
        </div>





    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="Server">
    <script>
        $('#btnSearchDemo').click(function () {
            $('#ContentPlaceHolder1_txtSearchByPhone').val('021735846438');
        })
    </script>
</asp:Content>

