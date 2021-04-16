<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">


    protected void btnBookingSearch_Click(object sender, EventArgs e)
    {
        Session["clientSearchByPhone"] = txtSearchByPhone.Text;
        Response.Redirect("~/searchList.aspx");
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <style>
        .padding {
    padding: 10rem !important
}

body {
    background-color: #f8fafe
}

.domain-form .form-group {
    border: 1px solid #9ff0c8;
    padding: 20px
}

.domain-form .form-group input {
    height: 70px !important;
    border: transparent
}

.form-control {
    height: 52px !important;
    background: #fff !important;
    color: #3a4348 !important;
    font-size: 18px;
    border-radius: 0px;
    -webkit-box-shadow: none !important;
    box-shadow: none !important
}

.px-4 {
    padding-left: 1.5rem !important
}

.domain-form .form-group .search-domain {
    background: #22d47b;
    border: 2px solid #22d47b;
    color: #fff;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    -ms-border-radius: 0;
    border-radius: 0
}

.domain-price span {
    color: #3a4348;
    margin: 0 10px
}

.domain-price span small {
    color: #24bdc9
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="row justify-content-center padding">
    <div class="col-md-8 ftco-animate fadeInUp ftco-animated">
        <div class="domain-form">
            <div class="form-group d-md-flex">
                <asp:TextBox ID="txtSearchByPhone" runat="server" class="form-control px-4" placeholder="請輸入電話號碼查詢" autocomplete="off"></asp:TextBox>
                <asp:Button ID="btnBookingSearch" runat="server" Text="電話訂房查詢" class="search-domain btn btn-primary px-5" value="Search Domain" OnClick="btnBookingSearch_Click" />
            </div>
                <input type="button" value="SearchDemo" class="btn btn-default" id="btnSearchDemo" />
        </div>
    </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <script>
    $('#btnSearchDemo').click(function () {
        $('#ContentPlaceHolder1_txtSearchByPhone').val('021735846438');
    });
    </script>
</asp:Content>

