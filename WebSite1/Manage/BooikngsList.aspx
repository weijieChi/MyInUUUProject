<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../jsGrid/jsgrid-theme.css" rel="stylesheet" />
    <link href="../jsGrid/jsgrid.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="container-fluid">
            <h1>訂房清單
            </h1>
            <div id="bookingDetail">
            </div>
        </div>


    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="Server">
    <script src="../jsGrid/jsgrid.js"></script>
    <script>
        $(function () {
            $('#bookingDetail').jsGrid({

                width: "100%",
                height: "400px",

                autoload: true,
                pageLoading: true,

                //inserting: true,
                //editing: true,
                deleteConfirm: "確認需要刪除資料？",
                loadMessage: "正在載入資料，請稍候......",
                fields: [
                    { name: "booking_number", type: "number", title: "訂房號碼", editing: false, inserting: false, },
                    { name: "enter_datetime", type: "text", title: "登記時間", editing: false, inserting: false, },
                    { name: " room", type: "text", title: "房間" },
                    { name: "check_in_date", type: "text", title: "入住時間" },
                    { name: "check_out_date", type: "text", title: "退房時間" },
                    { name: "people", type: "number", title: "人數" },
                    { name: "price", type: "number", title: "費用" },
                    { name: "last_name", type: "text", title: "名字" },
                    { name: "first_name", type: "text", title: "姓氏" },
                    { name: "email", type: "text", },
                    { name: "phone", type: "text", title: "電話" },
                    { name: "payment_method", type: "text", title: "付款方式" },
                    //{type: "control"}
                ],
                controller: {
                    loadData: function (filter) {
                        var myData = null;
                        var itemCount = 0;
                        $.ajax({

                            type: "POST",
                            async: false,
                            url: "/bookingService.asmx/getBooKings",
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                myData = data.d.AllBookings;
                                itemCount = data.d.TotalCount;
                            },
                            failure: function (errMsg) {
                                alert(errMsg);
                            }
                        });
                        return {
                            data: myData,
                            itemsCount: itemCount
                        };

                    },

                    //insertItem: function (item) {
                    //    $.ajax({
                    //        type: "POST",
                    //        async: false,
                    //        url: "/bookingService.asmx/insertBooking",
                    //        contentType: "application/json; charset=utf-8",
                    //        data: JSON.stringify({ Booking_Data: item }),
                    //        dataType: "json",
                    //        success: function (data) { alert("OK"); }
                    //    });
                    //},


                }

            });
        })
    </script>
</asp:Content>

