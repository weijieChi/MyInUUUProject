<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/jquery-ui.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="custom-control custom-radio">
                <input type="radio" class="custom-control-input" id="cash" value="cash" name="payment_method" />
                <label class="custom-control-label" for="defaultUnchecked">cash</label>
                <input type="radio" class="custom-control-input" id="VISA" value="VISA" name="payment_method" />
                <label class="custom-control-label" for="defaultChecked">VISA</label>
            </div>
            <div class="container">
                <input type="text" id="datepicker" />
                <button id="btnTest" value="test">test</button>
                <div class="col-sm-10">
                    <select id="select" name="sfsname">
                        <option>請選擇</option>
                        <option value="ABC">ABC</option>
                        <option value="AAA">AAA</option>
                    </select>
                    <br />
                    <br />
                </div>
            </div>
                <label class="myText"></label>

        </div>



    </form>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script>
        $(function () {
            $('input[type=radio][name=payment_method]').change(function () {
                if (this.value == 'cash') {
                    alert($('input[name=payment_method]:checked').val())
                }
                else if (this.value == 'VISA') {
                    alert($('input[name=payment_method]:checked').val())
                }
            });
            $('#btnTest').click(function () {
                alert($("select[name='sfsname']").val())
            })
        });
         $(function () {
            $("#datepicker").datepicker({dateFormat: 'yy-mm-dd'});
        });
    </script>
    <%--$('#myText').text($('input[name=defaultExampleRadios]:checked').val());--%>
</body>
</html>
