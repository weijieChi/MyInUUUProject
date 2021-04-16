<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        string SearchByPhone = Session["clientSearchByPhone"].ToString();

        if (SearchByPhone == "")
        {
            Label1.Text = "請輸入查詢電話號碼";
        }
        else if ((BookingUtility.GetBookingByPhone(SearchByPhone)).Count == 0)
        {
            Label1.Text = "查無該電話號碼訂房資料";
        }
        else
        {
            Repeater1.DataSource = BookingUtility.GetBookingByPhone(SearchByPhone);
            Repeater1.DataBind();
        }

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="gallery agileits w3layouts">
        <div class="container">
            <p>如需要更改或取消訂房起聯繫客服人員處理</p>
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
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody>
                </table>

            </FooterTemplate>
        </asp:Repeater>

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

