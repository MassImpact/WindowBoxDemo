<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateWindowBox.aspx.cs" Inherits="CreateWindowBox" MasterPageFile="WindowBoxLayout.master" %>

<%@ Register Src="~/WindowBox/Controls/PlantCarousel.ascx" TagPrefix="uc1" TagName="PlantCarousel" %>
<%@ Register Src="~/WindowBox/Controls/PollinatorImpact.ascx" TagPrefix="uc1" TagName="PollinatorImpact" %>
<%@ Register Src="~/WindowBox/Controls/LeftSidebar.ascx" TagPrefix="uc1" TagName="LeftSidebar" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="LeftColumn" runat="Server">
    <uc1:LeftSidebar runat="server" ID="LeftSidebar" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainColumn" runat="Server">
    <script type="text/javascript" src="PlantDragable.js"> </script>
    
    <script type="text/javascript">
        $(document).ready(function() {
            $('#linkGuidePopup')[0].click();
        });
    </script>
    
    <style type="text/css">
        ul.step-bullet {
            clear: both;
            counter-reset: numList;
            display: block;
            font-size: 14px;
            list-style: none;
            /*background: #ccc;*/
            overflow: hidden;
            padding: 0 0 0 26px;
        }

        ul.step-bullet li {
            color: #419641;
            font-size: 18px;
            font-weight: bold;
            line-height: 40px;
            margin-bottom: 20px;
            margin-right: 44px;
            padding-left: 30px;
            position: relative;
        }

        ul.step-bullet li:before {
            -moz-border-radius: 20px;
            background: #419641;
    
            border-radius: 20px;
            color: #fff;
            content: counter(numList);
    
            counter-increment: numList;
            float: left;
            font: bold 12px sans-serif;
            font-size: 20px;
            height: 40px;
    
            left: -26px;
            line-height: 18px;
            padding-top: 10px;
            position: absolute;
    
            text-align: center;
            width: 40px;
        }
    </style>

    <a href="#getting_started_guide_popup" id="linkGuidePopup" style="display: none">Learn more</a>
    <a href="#x" class="overlay" id="getting_started_guide_popup"></a>
    <div class="popup" style="height: 380px; width: 810px;">
        <h2 style="font-weight: 700; margin: auto; text-align: center;">
            Build Your Virsual Pollinator Window Box
        </h2>

        <p>
            <ul class="step-bullet">
                <li>Pick Your Plants from native plants in your region (zip code)</li>
                <li>Search plants outside your region</li>
                <li>Add plants to Window Box</li>
                <li>Upload photo for your Window Box</li>
                <li>Save your Window Box and start sharing public profile</li>
            </ul>
        </p>
        <a href="#close" class="popup-close" onclick=" setFocusByControl(''); "></a>
    </div>
    
    <uc1:PollinatorImpact runat="server" ID="PollinatorImpact" />
        
    <br/><br/>
    <uc1:PlantCarousel runat="server" ID="PlantCarousel" />       
</asp:Content>