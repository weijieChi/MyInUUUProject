<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    public int totalBookingPrice()
    {
        DateTime dtStart = Convert.ToDateTime(txtCheckIn.Text);
        DateTime dtEnd = Convert.ToDateTime(txtChekOut.Text);
        TimeSpan tsDay = dtEnd - dtStart;
        int dayCount = (int)tsDay.TotalDays;
        int totalPrice = dayCount * Convert.ToInt32(DropDownRoom.SelectedValue);

        return totalPrice;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //DateTime dtStart = Convert.ToDateTime(txtCheckIn.Text);
        //DateTime dtEnd = Convert.ToDateTime(txtChekOut.Text);
        //TimeSpan tsDay = dtEnd - dtStart;
        //int dayCount = ( int ) tsDay.TotalDays;
        //int totalPrice = dayCount * Convert.ToInt32(DropDownRoom.SelectedValue);
        labTotalPrice.Text = Convert.ToString(totalBookingPrice());
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            //string id = Request.QueryString["id"];

            //booking_data bd = BookingUtility.GetBooking(int.Parse(id));


            //labBookingNumber.Text = bd.booking_number.ToString();
            //labEnterDate.Text = bd.enter_datetime;
            //txtLastName.Text = bd.last_name;
            //txtFirstName.Text = bd.first_name;
            //txtPhone.Text = bd.phone;
            //txtEmail.Text = bd.email;
            //DropDownRoom.SelectedValue = DropDownRoom.Items.FindByText(bd.room).Value.ToString();
            //DropDownPeople.SelectedValue = DropDownPeople.Items.FindByText(bd.people.ToString()).Value.ToString();
            //txtCheckIn.Text = bd.check_in_date;
            //txtChekOut.Text = bd.check_out_date;
            //labTotalPrice.Text = bd.price.ToString();
            //DropDownPaymentMethod.SelectedValue = DropDownPaymentMethod.Items.FindByText(bd.payment_method).Value.ToString();
        }




    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        int p = totalBookingPrice();
        booking_data bd = new booking_data()
        {
            //booking_number = Convert.ToInt32(labBookingNumber.Text),
            //enter_datetime = labEnterDate.Text,
            last_name = txtLastName.Text,
            first_name = txtFirstName.Text,
            phone = txtPhone.Text,
            email = txtEmail.Text,
            room = DropDownRoom.SelectedItem.Text,
            people = Convert.ToInt32(DropDownPeople.SelectedItem.Text),
            check_in_date = txtCheckIn.Text,
            check_out_date = txtChekOut.Text,
            price = p,
            payment_method = DropDownPaymentMethod.SelectedItem.Text
        };


        BookingUtility.AddBooking(bd);

        Response.Redirect("~/Manage/BookingListManage.aspx");
    }

    protected void btnReturnList_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Manage/BookingListManage.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>訂房資料編輯</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/jquery-ui.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>訂房資料編輯</h3>
            <br />
            <div class="table-responsive">

                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">訂房序號</th>
                            <th scope="col">登記時間</th>
                            <th scope="col">姓氏</th>
                            <th scope="col">名字</th>
                            <th scope="col">電話</th>
                            <th scope="col">Email</th>
                            <th scope="col">房間</th>
                            <th scope="col">人數</th>
                            <th scope="col">入住日期</th>
                            <th scope="col">退房日期</th>
                            <th scope="col">總金額</th>
                            <th scope="col">付款方式</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">資料</th>
                            <th scope="row">
                                <asp:Label ID="labBookingNumber" runat="server" Text="Label"></asp:Label>
                            </th>
                            <td>
                                <asp:Label ID="labEnterDate" runat="server" Text="Labe2" ></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtLastName" runat="server" autocomplete="off"></asp:TextBox>
                            </td>

                            <td>
                                <asp:TextBox ID="txtFirstName" runat="server" autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtPhone" runat="server" autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtEmail" runat="server" autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownRoom" runat="server">
                                    <asp:ListItem Value="1200">單人房 1200 NTD</asp:ListItem>
                                    <asp:ListItem Value="2700">雙人房 2700 NTD</asp:ListItem>
                                    <asp:ListItem Value="4000">四人房 4000 NTD</asp:ListItem>
                                    <asp:ListItem Value="6700">八人房 6700 NTD</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownPeople" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCheckIn" runat="server" autocomplete="off" readonly="true"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtChekOut" runat="server" autocomplete="off" readonly="true"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="labTotalPrice" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownPaymentMethod" runat="server">
                                    <asp:ListItem>Cash</asp:ListItem>
                                    <asp:ListItem>VISA</asp:ListItem>
                                </asp:DropDownList>

                            </td>
                        </tr>

                    </tbody>
                </table>
                <asp:Button ID="Button1" runat="server" Text="計算總金額" OnClick="Button1_Click" />
                &nbsp
                <asp:Button ID="btnUpdate" runat="server" Text="更新訂房資料" OnClick="btnUpdate_Click" OnClientClick="return confirm('請確認修改後總金額，系統將依目前資料換算最新金額')" />
                &nbsp
                <asp:Button ID="btnReturnList" runat="server" Text="返回訂房清單管理" OnClick="btnReturnList_Click" />
                <br />
                <br />
                <input type="button" value="Demo" id="btnDemoEdit" />


            </div>
        </div>
    </form>
    <script src="plugins/jquery/jquery.min.js"></script>
    <script src="../js/jquery-ui.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('#txtCheckIn, #txtChekOut').datepicker({ dateFormat: 'yy-mm-dd' });
            $('#btnDemoEdit').click(function () {
                $('#txtLastName').val('jjj');
                $('#txtFirstName').val('jjj');
                $('#txtPhone').val('777');
                $('#txtEmail').val('jjj@jjj.jjj');
                $("#DropDownRoom ").get(0).selectedIndex = 1;
                $("#DropDownPeople ").get(0).selectedIndex = 1;
                $('#txtCheckIn').val('2021-02-05');
                $('#txtChekOut').val('2021-02-08');
                $("#DropDownPaymentMethod ").get(0).selectedIndex = 1;
            });
        });
    </script>
</body>
</html>
