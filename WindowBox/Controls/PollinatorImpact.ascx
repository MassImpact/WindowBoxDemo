<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PollinatorImpact.ascx.cs" Inherits="WindowBox_Controls_PollinatorImpact" %>

<style type="text/css">
    .confirmSavePopupHeader {
        background-image: linear-gradient(to bottom, #f5f5f5 0, #e8e8e8 100%);
        border-top-left-radius: 5px;
        border-top-right-radius: 5px;
        font-weight: bold;
        margin: -15px;
        padding: 5px;
    }

    .garden div {
        /*border: solid 1px red;*/
        display: block;
        position: absolute;
    }

    .garden div:hover {
        -moz-border-radius: 50%;
        -webkit-border-radius: 50%;
        background: rgba(100, 100, 100, 0.5);
        border-radius: 50%;
    }

    .garden ul li.pot img { z-index: -1; }
</style>


<script type="text/javascript">
    $(document).ready(function() {
        $('#<%= btnSave.ClientID %>').click(function() {
            $('#create_account')[0].click();
            return false;
        });

        $('#btnConfirmSaveOK').click(function() {
            $('#save_success')[0].click();
            setTimeout(redirectToWindowBoxProfile, 5000);

            return false;
        });
    });

    function redirectToWindowBoxProfile() {
        document.location = '<%= ResolveUrl("../WindowBoxDisplay.aspx") %>';
    }
</script>


<a href="#save_success_popup" id="save_success" style="display: none"></a>
<a href="#x" class="overlay" id="save_success_popup"></a>
<div class="popup" style="height: 160px; width: 600px;">
    <div class="confirmSavePopupHeader">Information</div>

    <p style="color: black; font-family: Arial; font-size: 13px; margin-top: 30px;">
        Save successfully. It will redirect to your publically visiable Window Box in 5 seconds. 
        <br/>
        Click <a href=<%= ResolveUrl("../WindowBoxDisplay.aspx") %> style="color: blue">here</a> if you don't want to wait.
    </p>
    <a href="#close" class="popup-close" onclick=" setFocusByControl(''); "></a>
</div>


<%--<a href="#create_account_popup" class="overlay" id="create_account">aaaa</a>--%>

<a href="#create_account_popup" id="create_account" style="display: none"></a>
<a href="#x" class="overlay" id="create_account_popup"></a>

<div class="popup" style="height: 350px; width: 600px;">
    <div class="confirmSavePopupHeader">Create Account</div>
    <div style="font-size: 18px; font-weight: bold; margin-top: 15px; text-align: center; width: 100%;">
        Create An Account
    </div>

    <p>
        If you would like to be able to make changes to your Window Box, please enter a password and display name.
    </p>
            
    <p>
        <asp:TextBox MaxLength="100" Width="100%" Height="54" ID="txtDisplayName" runat="server" class="text" ToolTip="Enter your display name" placeholder="Display Name" required></asp:TextBox>
        <asp:TextBox MaxLength="100" Width="100%" Height="54" ID="txtPassword" runat="server" class="text" ToolTip="Enter your password" placeholder="Password" required></asp:TextBox>
        
        <div style="text-align: center; width: 100%;">
            <a type="button" class="btn btn-danger" aria-hidden="true" style="color: white; font-size: 16px; margin: auto;" href="">
                No Thanks <br/>
                I don't need to make changes
            </a>
        
            <a type="button" class="btn btn-success" id="btnConfirmSaveOK" aria-hidden="true" style="color: white; font-size: 16px; margin: auto;" href="">
                Let's do it<br/>
                Who knows how my garden will grow!
            </a>
        </div>
    </p>
    <a href="#close" class="popup-close" onclick=" setFocusByControl(''); "></a>
</div>


<h1 style="margin-left: 10px">Pick Your Plants</h1>

<div style="float: right; text-align: center; width: 200px;">
    <h3>Pollinator Impact</h3>
    
    <img src='<%= ResolveUrl("../Images/pollinator_impact.png") %>'/>
    <br/><br/><br/><br/><br/>
    <button id="btnReset" runat="server" class="btn btn-danger" aria-hidden="true" style="width: 150px" type="button">Reset</button>
    <br/><br/>
    <button id="btnSave" runat="server" class="btn btn-success" aria-hidden="true" style="width: 150px" type="button">SAVE</button>
</div>

<!--Drop Zone-->
<div class="garden" style="background: url(<%= ResolveUrl("../Images/WindowBox_Flowers2.png") %>) no-repeat 50%; background-size: 100% 100%; height: 450px; margin: 0 200px 0; width: 666px;">
  
    <div id="Li1" class="pot" style="height: 130px; margin-left: 45px; margin-top: 195px; width: 130px;" frame-radius='85' frame-left='25' frame-top='25'></div>
    
    <div id="Li2" class="pot" style="height: 90px; left: 220px; top: 220px; width: 90px;" frame-radius='50' frame-left='20' frame-top='25'></div>
 
    <div id="Li3" class="pot" style="height: 90px; left: 350px; top: 210px; width: 100px;" frame-radius='50' frame-left='25' frame-top='20'></div>

    <div id="Li4" class="pot" style="height: 90px; left: 500px; top: 215px; width: 100px;" frame-radius='60' frame-left='15' frame-top='13'></div>
     
    <%--        <li id="pot1" class="pot" style="width: 130px;height:130px;top:-140px;margin-left:15px;" frame-radius='85' frame-left='25' frame-top='225'></li>
        <li id="pot2" class="pot" style="width: 80px;height: 80px;top:-155px;left:15px;" frame-radius='60' frame-left='10' frame-top='245'></li>
        <li id="pot3" class="pot" style="width: 90px;height: 90px;top:-155px;left:25px;" frame-radius='60' frame-left='20' frame-top='230'></li>
        <li id="pot4" class="pot" style="width: 90px;height: 90px;top:-155px;left:45px;" frame-radius='60' frame-left='20' frame-top='230'></li>--%>

</div>