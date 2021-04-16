<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>demo</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
             integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
             crossorigin="anonymous">
</head>
<body>
    <div class="container body-content">
        <h2>RedioButton 連動顯示指定的 Feildset</h2>
        <div>
            <fieldset class="form-group">
                <legend>選項</legend>
                <div class="col-sm-10">
                    <div class="radio">
                        <label><input type="radio" name="myRadio" id="rd-select" value="1" checked>下拉選取</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="myRadio" id="rd-text" value="2">手動自訂</label>
                    </div>
                </div>
            </fieldset>
 
            <fieldset class="form-group" id="fs-select">
                <legend>下拉選取</legend>
                <div class="col-sm-10">
                    <select id="select">
                        <option>請選擇</option>
                        <option value="ABC">ABC</option>
                        <option value="AAA">AAA</option>
                    </select>
                </div>
            </fieldset>
 
            <fieldset class="form-group" id="fs-text">
                <legend>手動自訂</legend>
                <div class="col-sm-10">
                    <input type="text" id="text" />
                </div>
            </fieldset>
 
            <fieldset class="form-group">
                <div class="col-sm-10">
                    <input type="button" value="送出" onclick="return myClick();" />
                </div>
            </fieldset>
        </div>
    </div>
</body>
</html>
 
<script>
    $(function () {
 
        var fsSelect = $('#fs-select');
        var fsText = $('#fs-text');
        var select = $('#select');
        var text = $('#text');
 
        //主要radiobutton 連動 fieldset 顯示隱藏 change 事件
        $('input[type=radio][name=myRadio]').on('change', function () {
            fsSelect.hide();
            fsText.hide();
            select.prop('selectedIndex', 0)
            text.val('');
 
            if (this.value == 1) {
                fsSelect.show();
            }
            else {
                fsText.show();
            }
        });
 
        $('input[type=radio][name=myRadio]:checked').change();
 
        //顯示最後選取或是輸入的值
        window.myClick = function () {
            if ($('input[type=radio][name=myRadio]:checked').val() == 1) {
                alert(select.val());
            }
            else {
                alert(text.val());
            }
        }
    });
 
</script>
        </div>
    </form>
</body>
</html>
