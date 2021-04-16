<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <!-- Index-Page-CSS -->
    <link rel="stylesheet" href="css/jquery-ui.css" type="text/css" media="all">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- Booking -->
    <div class="reg agileits w3layouts">
        <div class="container">

            <div class="register agileits w3layouts">

                <h2>您的訂房資訊!</h2>

                <div class="suite wow slideInLeft agileits w3layouts">
                    <div class="dropdown-button agileits w3layouts">
                        <h4>房間</h4>
                        <select class="dropdown agileits w3layouts" tabindex="10" name="roomVal" id="roomVal" data-settings='{"wrapperClass":"flat"}'>
                            <option value="0"></option>
                            <option value="1200" id="single">單人房 1200 NTD</option>
                            <option value="2700" id="double">雙人房 2700 NTD</option>
                            <option value="4000" id="quad">四人房 4000 NTD</option>
                            <option value="6700" id="octa">八人房 6700 NTD</option>
                        </select>
                    </div>
                </div>

                <div class="members wow agileits w3layouts slideInLeft">
                    <div class="adult agileits w3layouts">
                        <h4>總人數</h4>
                        <div class="dropdown-button agileits w3layouts">
                            <select class="dropdown agileits w3layouts" id="selPeople" name="people" tabindex="10" data-settings='{"wrapperClass":"flat"}'>
                                <option value="0"></option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                            </select>
                        </div>
                    </div>

                </div>


                <div class="book-pag wow agileits w3layouts slideInLeft">
                    <h4>入住日期</h4>
                    <div class="book-pag-frm1 agileits w3layouts wow slideInLeft">
                        <label>入住日期</label>
                        <input class="date agileits w3layouts" id="datepicker1" type="text" value="Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required="" autocomplete="off">
                    </div>
                    <div class="book-pag-frm2 wow agileits w3layouts slideInLeft">
                        <label>退房日期</label>
                        <input class="date agileits w3layouts" id="datepicker2" type="text" value="Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required="" autocomplete="off">
                    </div>
                    <div class="clearfix"></div>
                </div>



                <div class="submit wow agileits w3layouts slideInLeft">
                    <input type="button" value="Demo" id="btnBokkinDemo1" class="btn btn-info agileits w3layouts" />
                    <a class="popup-with-zoom-anim agileits w3layouts" id="btnBooking" href="#small-dialog">訂房</a>
                </div>



                <!-- Popup-Box -->
                <div id="popup">
                    <div id="small-dialog" class="mfp-hide agileits w3layouts">
                        <div class="pop_up agileits w3layouts">
                            <div class="payment-online-form-left agileits w3layouts">
                                <div>
                                    <h4><span class="shipping agileits w3layouts"></span>客戶基本資料</h4>
                                    <ul class="agileits w3layouts">
                                        <li class="agileits w3layouts">
                                            <input required="" class="text-box-dark agileits w3layouts" type="text" value="姓氏" id="last_name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '請輸入姓氏';}"></li>
                                        <li class="agileits w3layouts">
                                            <input required="" class="text-box-dark agileits w3layouts" type="text" value="名子" id="first_name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '請輸入名子';}"></li>
                                    </ul>
                                    <ul class="agileits w3layouts">
                                        <li class="agileits w3layouts">
                                            <input required="" class="text-box-dark agileits w3layouts" type="text" value="Email" id="email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '請輸入 Email';}"></li>
                                        <li class="agileits w3layouts">
                                            <input required="" class="text-box-dark agileits w3layouts" type="text" value="電話號碼" id="phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '請輸入電話號碼';}"></li>
                                    </ul>
                                    <div class="clearfix"></div>
                                    <h4 class="paymenthead agileits w3layouts"><span class="payment agileits w3layouts"></span>付款方式</h4>
                                    <div class="clearfix"></div>
                                    <ul class="payment-type agileits w3layouts">
                                        <li class="agileits w3layouts">
                                            <span class="col_checkbox agileits w3layouts">
                                                <input type="radio" class="custom-control-input" id="rdbCash" value="Cash" name="payment_method"/>
                                                <label class="custom-control-label" for="defaultUnchecked">現金</label>
                                                <%--<a class="visa agileits w3layouts" href="#"></a>--%>
                                            </span>
                                        </li>
                                        <li class="agileits w3layouts">
                                            <span class="col_checkbox agileits w3layouts">
                                                <input type="radio" class="custom-control-input" id="rdbVISA" value="VISA" name="payment_method" />
                                                <label class="custom-control-label" for="defaultChecked">VISA</label>
                                                <%--<a class="paypal agileits w3layouts" href="#"></a>--%>
                                            </span>
                                        </li>
                                    </ul>
                                    <div  id="VISAform">
                                        <ul class="agileits w3layouts">
                                            <li class="agileits w3layouts">
                                                <input required="" class="text-box-dark agileits w3layouts" type="text" value="Card Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Card Number';}"></li>
                                            <li class="agileits w3layouts">
                                                <input required="" class="text-box-dark agileits w3layouts" type="text" value="Name on card" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name on card';}"></li>
                                        </ul>
                                        <ul class="agileits w3layouts">
                                            <li class="agileits w3layouts">
                                                <input required="" class="text-box-light hasDatepicker agileits w3layouts" type="text" id="datepicker" value="Expiration Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Expiration Date';}"><em class="pay-date"> </em></li>
                                            <li class="agileits w3layouts">
                                                <input required="" class="text-box-dark agileits w3layouts" type="text" value="Security Code" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Security Code';}"></li>
                                        </ul>
                                    </div>
                                    <div id="CashForm">
                                        <label>請在入住當天將費用交給櫃檯人員</label>
                                    </div>


                                    <ul class="payment-sendbtns agileits w3layouts">
                                         <li class="agileits w3layouts">
                                             <input type="button" value="Demo2" id="btnBoolingDemo2" class="btn btn-info"/>
                                        </li>
                                        <li class="agileits w3layouts">
                                            <label class="label label-default" style="font-size: 20px;" id="totalPrice">總金額：99999999999</label>
                                        </li>
                                        <li class="agileits w3layouts">
                                            <input type="reset" value="取消訂房" id="btnBookingCancel"></li>
                                        <li class="agileits w3layouts">
                                            <input type="button" value="確認付款" id="confirm_payment" class="order"></li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button title="Close (Esc)" type="button" class="mfp-close agileits w3layouts">×</button>
                <!-- //Popup-Box -->

            </div>

        </div>
    </div>
    <!-- //Booking -->









</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <!-- Booking-Popup-Box-JavaScript -->
    <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $('.popup-with-zoom-anim').magnificPopup({
                type: 'inline',
                fixedContentPos: false,
                fixedBgPos: true,
                overflowY: 'auto',
                closeBtnInside: true,
                preloader: false,
                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-zoom-in'
            });
        });
    </script>
    <!-- //Booking-Popup-Box-JavaScript -->

    <!-- Slide-To-Top JavaScript (No-Need-To-Change) -->
    <script type="text/javascript">
        $(document).ready(function () {
            var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 100,
                easingType: 'linear'
            };
            $().UItoTop({ easingType: 'easeOutQuart' });
        });
    </script>
    <a href="#" id="toTop" class="agileits w3layouts" style="display: block;"><span id="toTopHover" style="opacity: 0;"></span></a>
    <!-- //Slide-To-Top JavaScript -->
    <!-- Smooth-Scrolling-JavaScript -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll, .navbar li a, .footer li a").click(function (event) {
                $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
            });
        });
    </script>
    <!-- //Smooth-Scrolling-JavaScript -->

    <!-- Date-Picker-JavaScript -->
    <script src="js/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#datepicker, #datepicker1, #datepicker2").datepicker({ dateFormat: 'yy-mm-dd' });
        });
    </script>
    <!-- //Date-Picker-JavaScript -->

    <!-- //Necessary-JavaScript-Files-&-Links -->
    <script>
        var totalPrice = 0
        $(function () {

            $('#btnBooking').click(function () {
                var roomValue = $("select[name='roomVal']").val();
                var check_in_date = $('#datepicker1').val();
                var check_out_date = $('#datepicker2').val();


                var oDate1 = new Date(check_out_date);
                var oDate2 = new Date(check_in_date);
                var totalDay = parseInt(Math.abs(oDate1 - oDate2) / 1000 / 60 / 60 / 24); // 把相差的毫秒數轉換為天數

                totalPrice = totalDay * roomValue;

                $('#totalPrice').text("總金額：" + totalPrice + ' NTD');


            });

            $('#confirm_payment').click(function () {

                var bookingData = {
                    JSONroom: $("#roomVal :selected").text(),
                    JSONpeple: $("select[name='people']").val(),
                    JSONcheck_in_date: $('#datepicker1').val(),
                    JSONcheck_out_date: $('#datepicker2').val(),
                    JSONprice: totalPrice,
                    JSONfirst_name: $('#first_name').val(),
                    JSONlast_name: $('#last_name').val(),
                    JSONemail: $('#email').val(),
                    JSONphone: $('#phone').val(),
                    JSONpayment_method: $('input[name=payment_method]:checked').val()
                };

                $.ajax({
                    type: 'POST',
                    url: '/bookingService.asmx/AddBooking',
                    data: JSON.stringify(bookingData),
                    contentType: "application/json;charset=utf-8",
                    success: function (data) {
                        location.href = "/booking_detail.aspx";
                    }
                });

            });

            $('#VISAform').hide();
            $('#CashForm').hide();

            $('input[type=radio][name=payment_method]').on('change', function () {
                $('#VISAform').hide();
                $('#CashForm').hide();

                if (this.value == 'Cash') {
                    $('#CashForm').show();

                }
                else {
                    $('#VISAform').show();
                }

            });

            $('#btnBookingCancel').click(function myfunction() {
                var c = confirm('確認取消訂房嗎？');
                if (c) {
                    alert('訂房取消，將返回首頁');
                    window.location.href = 'index.aspx';
                }
            });

            $('#btnBokkinDemo1').click(function () {
                $('#roomVal')[0].selectedIndex = 3;
                $('#selPeople')[0].selectedIndex = 4;
                $('#datepicker1').val('2021-01-08');
                $('#datepicker2').val('2021-01-11');

            });

            $('#btnBoolingDemo2').click(function () {
                $('#last_name').val('Hibiki');
                $('#first_name').val('Ethan');
                $('#email').val('ethan@newbark.town');
                $('#phone').val('021735846438');
                $('input[name="payment_method"]')[1].checked = true;
            });


        });


    </script>
</asp:Content>

