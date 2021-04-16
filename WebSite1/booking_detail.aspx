<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        booking_data bd = Session["booking_detail"] as booking_data;

        labBookingNumber.Text = bd.booking_number.ToString();
        labLastName.Text = bd.last_name;
        labFirstName.Text = bd.first_name;
        labPhone.Text = bd.phone.ToString();
        labEmail.Text = bd.email;
        labRoom.Text = bd.room;
        labChekIn.Text = bd.check_in_date;
        labChekOut.Text = bd.check_out_date;
        labTotalPrice.Text = bd.price.ToString();
        labPayMethod.Text = bd.payment_method;
        labPeople.Text = bd.people.ToString();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("/index.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/jquery-ui.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="row">
                    <div>
                        <h3>訂房詳細資訊</h3>
                        <br />
                        <p class="text-info">
                            請在入住當日向櫃台服務人員告知訂房序號及姓名電話號碼，以辦理入住手續。
                            <br/>
                            <br/>
                            現金付款客戶請在入住當日結清款項。
                        </p>
                        <br />
                        <br />
                        <table class="table">
                            <thead>
                                <tr>
                                    <th >#</th>
                                    <th >訂房序號</th>
                                    <th >姓氏</th>
                                    <th >名字</th>
                                    <th >電話</th>
                                    <th >Email</th>
                                    <th >房間</th>
                                    <th>人數</th>
                                    <th >入住日期</th>
                                    <th >退房日期</th>
                                    <th >總金額</th>
                                    <th >付款方式</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th >資料</th>
                                    <th>
                                        <asp:Label ID="labBookingNumber" runat="server" Text="Label"></asp:Label>
                                    </th>
                                    <td>
                                        <asp:Label ID="labLastName" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="labFirstName" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="labPhone" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="labEmail" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="labRoom" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="labPeople" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="labChekIn" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="labChekOut" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="labTotalPrice" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="labPayMethod" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                               
                            </tbody>
                        </table>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="返回首頁" OnClick="Button1_Click" CssClass="btn btn-success"/>
                </div>
            </div>
        </div>
    </form>
    <script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
