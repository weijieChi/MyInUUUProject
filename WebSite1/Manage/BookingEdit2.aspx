<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.master" %>

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

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string id = Request.QueryString["id"];
            booking_data bd = BookingUtility.GetBooking(int.Parse(id));

            //HiddenFieldBookinNumber.Value = bd.booking_number.ToString();
            //HiddenFieldBokkingEnterDate.Value = bd.enter_datetime;

            labBookingNumber.Text = bd.booking_number.ToString();
            labEnterDate.Text = bd.enter_datetime;

            txtLastName.Text = bd.last_name;
            txtFirstName.Text = bd.first_name;
            txtPhone.Text = bd.phone;
            txtEmail.Text = bd.email;
            DropDownRoom.SelectedValue = DropDownRoom.Items.FindByText(bd.room).Value.ToString();
            DropDownPeople.SelectedValue = DropDownPeople.Items.FindByText(bd.people.ToString()).Value.ToString();
            txtCheckIn.Text = bd.check_in_date;
            txtChekOut.Text = bd.check_out_date;
            labTotalPrice.Text = bd.price.ToString();
            DropDownPaymentMethod.SelectedValue = DropDownPaymentMethod.Items.FindByText(bd.payment_method).Value.ToString();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        labTotalPrice.Text = Convert.ToString(totalBookingPrice());
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        int p = totalBookingPrice();
        booking_data bd = new booking_data()
        {
            booking_number = Convert.ToInt32(labBookingNumber.Text),
            enter_datetime = labEnterDate.Text,
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
        BookingUtility.UpdateBooking(bd);

        Response.Redirect("~/Manage/BookingListManage.aspx");
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/jquery-ui.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>修改訂房資料</h1>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </section>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">訂房資料</h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <div role="form">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label>訂房編號：</label>
                                        <br />
                                        <asp:Label ID="labBookingNumber" runat="server" Text="Label"></asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <label>登記時間：</label>
                                        <br />
                                        <asp:Label ID="labEnterDate" runat="server" Text="Labe2"></asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtLastName">姓氏：</label>
                                        <asp:TextBox ID="txtLastName" runat="server" class="form-control" autocomplete="off"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtFirstName">名字：</label>
                                        <asp:TextBox ID="txtFirstName" runat="server" class="form-control" autocomplete="off"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtPhone">電話號碼：</label>
                                        <asp:TextBox ID="txtPhone" runat="server" class="form-control" autocomplete="off"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtEmail">Email：</label>
                                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" autocomplete="off"></asp:TextBox>
                                    </div>
                                    <%--<div class="form-group">
                                        <label for="">電話號碼：</label>
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" autocomplete="off"></asp:TextBox>
                                    </div>--%>
                                    <div class="form-group">
                                        <label>房型：</label>
                                        <asp:DropDownList ID="DropDownRoom" runat="server" class="form-control">
                                            <asp:ListItem Value="1200">單人房 1200 NTD</asp:ListItem>
                                            <asp:ListItem Value="2700">雙人房 2700 NTD</asp:ListItem>
                                            <asp:ListItem Value="4000">四人房 4000 NTD</asp:ListItem>
                                            <asp:ListItem Value="6700">八人房 6700 NTD</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label>入住人數：</label>
                                        <asp:DropDownList ID="DropDownPeople" runat="server" class="form-control">
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
                                    </div>
                                    <div class="form-group">
                                        <label for="">入住日期：</label>
                                        <asp:TextBox ID="txtCheckIn" runat="server" autocomplete="off" ReadOnly="true" class="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="">退房日期：</label>
                                        <asp:TextBox ID="txtChekOut" runat="server" autocomplete="off" ReadOnly="true" class="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="">付款方式：</label>
                                        <asp:DropDownList ID="DropDownPaymentMethod" runat="server" class="form-control">
                                            <asp:ListItem>Cash</asp:ListItem>
                                            <asp:ListItem>VISA</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label for="">總金額：</label>
                                        <asp:Label ID="labTotalPrice" runat="server" Text="Label" class="form-control"></asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <asp:Button ID="Button1" runat="server" Text="計算總金額" OnClick="Button1_Click" />
                                    </div>


                                </div>
                                <!-- /.card-body -->

                                <div class="card-footer">
                                    <%--<button type="submit" class="btn btn-primary">更改訂房資料</button>--%>
                                    <asp:Button ID="btnUpdate" runat="server" Text="更新訂房資料" OnClick="btnUpdate_Click" OnClientClick="return confirm('請確認修改後總金額，系統將依目前資料換算最新金額')" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <input type="button" value="Demo" id="btnDemoEdit" />
            </div>
        </section>
        <asp:HiddenField ID="HiddenFieldBookinNumber" Value="" runat="server" />
        <asp:HiddenField ID="HiddenFieldBokkingEnterDate" Value="" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="Server">
    <script src="plugins/jquery/jquery.min.js"></script>
    <script src="../js/jquery-ui.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('#ContentPlaceHolder1_txtCheckIn, #ContentPlaceHolder1_txtChekOut').datepicker({ dateFormat: 'yy-mm-dd' });
            $('#btnDemoEdit').click(function () {
                $('#ContentPlaceHolder1_txtLastName').val('jjj');
                $('#ContentPlaceHolder1_txtFirstName').val('jjj');
                $('#ContentPlaceHolder1_txtPhone').val('777');
                $('#ContentPlaceHolder1_txtEmail').val('jjj@jjj.jjj');
                $("#ContentPlaceHolder1_DropDownRoom ").get(0).selectedIndex = 1;
                $("#ContentPlaceHolder1_DropDownPeople ").get(0).selectedIndex = 1;
                $('#ContentPlaceHolder1_txtCheckIn').val('2021-02-05');
                $('#ContentPlaceHolder1_txtChekOut').val('2021-02-08');
                $("#ContentPlaceHolder1_DropDownPaymentMethod ").get(0).selectedIndex = 1;
            });
        })
    </script>
</asp:Content>

