<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PlantCarousel.ascx.cs" Inherits="WindowBox_Controls_PlantCarousel" %>

<link rel="stylesheet" type="text/css" href='<%= ResolveUrl("~/css/jquery.bxslider.css") %>' />
<script type="text/javascript" src='<%= ResolveUrl("~/js/jquery.bxslider.min.js") %>'> </script>

<script type="text/javascript">
    $(document).ready(function() {
        $('.bxslider').bxSlider({
            slideWidth: 230,
            minSlides: 2,
            maxSlides: 4,
            nextText: 'Next',
            prevText: 'Prev',
            slideMargin: 10
        });

        $('#btnSeeAll').click(function() {
            var iframeSeeAllPlants = document.getElementById('iframeSeeAllPlants');
            iframeSeeAllPlants.src = "AllPlantsView.aspx";
            iframeSeeAllPlants.height = "100%";
        });
    });
</script>

<style type="text/css">
    /*.bxslider li {
        width: 200px !important;
    }*/

    .bxslider li img {
        height: 200px;
        width: 200px;
    }

    .bx-prev { margin-left: -10px; }

    .bx-next { margin-right: -10px; }

    .bx-wrapper .bx-viewport {
        -moz-box-shadow: none;
        -webkit-box-shadow: none;
        box-shadow: none;
    }

    .bx-pager { bottom: -50px !important; }

    .bx-viewport {
        background-color: #009E0F !important;
        border: 0px !important;
    }

    #allPlantsPopupHeader {
        background-image: linear-gradient(to bottom, #f5f5f5 0, #e8e8e8 100%);
        border-top-left-radius: 5px;
        border-top-right-radius: 5px;
        font-weight: bold;
        margin: -15px;
        padding: 5px;
    }
</style>

<%--<ul class="dragable-zone">
    <li class='dragable-data' style="border:solid 2px blue">
        <img src='<%= ResolveUrl("../PlantImages/Aronia_arbutifolia.JPG") %>' />
    </li>
</ul>--%>


<%--  <div class="bx-viewport" style=" overflow: hidden; position: relative; ">

    </div>--%>

<div style="background-color: #009E0F; border: solid 1px gray;" class="clearfix">
    <h2 style="background-color: #B6D7A8; line-height: 50px; margin: 0; padding: 0 0 0 10px; width: 100%;">Native Plants 0001</h2>
    <ul class="bxslider dragable-zone" style="margin-top: 20px;">
        <li id="li1" class='dragable-data'>
            <img src='<%= ResolveUrl("../PlantImages/Aronia_arbutifolia.JPG") %>' />
        </li>
        <li id="li2" class='dragable-data'>
            <img src='<%= ResolveUrl("../PlantImages/Asclepias_fascicularis.JPG") %>' />
        </li>
        <li id="li3" class='dragable-data'>
            <img src='<%= ResolveUrl("../PlantImages/Asclepias_incarnata.JPG") %>' />
        </li>
        <li id="li4" class='dragable-data'>
            <img src='<%= ResolveUrl("../PlantImages/Asclepias_tuberosa.JPG") %>' />
        </li>
        <li id="li5" class='dragable-data'>
            <img src='<%= ResolveUrl("../PlantImages/Aster_spp.JPG") %>' />
        </li>
        <li id="li6" class='dragable-data'>
            <img src='<%= ResolveUrl("../PlantImages/Balsamorhiza_sagittata.JPG") %>' />
        </li>
    </ul>

    <%--<button id="btnSeeAll" runat="server" class="btn btn-default" aria-hidden="true" style="float: right;width: 150px;margin: 0 30px 50px 0;font-size: 18px;font-weight: bold" type="button">See All</button>--%>
    <a href="#all_plants_view_popup" id="btnSeeAll" class="button btn36" style="float: right; font-size: 16px; font-size: 20px; font-weight: 300; line-height: 10px; margin: 0 30px 30px 0;">See All</a>
    
    <a href="#x" class="overlay" id="all_plants_view_popup"></a>
    <div class="popup" style="height: 600px; width: 810px;">
        <div id="allPlantsPopupHeader">Pick Your Plants</div>
        <iframe id="iframeSeeAllPlants" frameborder="0" scrolling="yes" width="100%" target="_blank" src="" style="margin-top: 20px; padding-bottom: 30px"></iframe>
        <a href="#close" class="popup-close" onclick=" setFocusByControl(''); "></a>
    </div>
</div>