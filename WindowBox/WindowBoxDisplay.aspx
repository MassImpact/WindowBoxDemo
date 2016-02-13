<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WindowBoxDisplay.aspx.cs" Inherits="WindowBox_WindowBoxDisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <webopt:BundleReference ID="BundleReference1" runat="server" Path="~/Content/css" />
        <webopt:BundleReference ID="BundleReference2" runat="server" Path="~/css" />
    </head>
    <body>
        <form id="form1" runat="server">
            <style type="text/css">
                body {
                    font-family: Arial;
                    min-width: 0px;
                    padding: 10px;
                }
            </style>
            <div style="height: 360px">
                <div style="float: left; height: 100%; padding-top: 70px; width: 25%;">
                    <p>
                        <img src='Images/USDA_logo.png' />
                    </p>
                    <p>
                        <img src='Images/pollinator partnership.jpg' />
                    </p>
                    <p>
                        <h4 style="font-size: 14px; font-weight: bold">Protect their lives. Preserve ours.</h4>
                    </p>
                </div>
                <div style="float: left; height: 100%; text-align: center; width: 50%;">
                    <h1>Josh McLoin's Window Box</h1>
                    <h4>California, United States of America</h4>
                    <img src='Images/plant_window.png'/>
                </div>
                <div style="float: left; height: 100%; width: 25%;">
                    <a href="#" style="float: right;">Login</a>
                    <div style="margin-top: 150px; text-align: center"><h3>SHARE</h3></div>
                    <ul class="social" style="margin-left: 0px">
                        <li title="Share now!"><a class="fa fa-share-alt solo" href="#"><span>Share</span></a>
                            <ul class="fallback" style="margin-left: -110px; right: 60px;">
                                <li title="Share on Facebook"><a class="fa fa-facebook solo" href="#" onClick=" window.open('http://www.facebook.com/sharer.php?u=<%= PageURL %>', 'SHARE - Get on the Map Today!', 'width=600,height=400') "><span>Facebook</span></a></li>
                                <li title="Share on Twitter"><a class="fa fa-twitter solo" href="#"  onClick=" window.open('http://twitter.com/share?url=<%= PageURL %>&amp;text=SHARE - Get on the Map Today!', 'Pollinator Partnership - Get on the map', 'width=600,height=400') "><span>Twitter</span></a></li>
                                <li title="Share on Google plus"><a class="fa fa-google-plus solo" href="#" onClick=" window.open('https://plus.google.com/share?url=<%= PageURL %>', 'SHARE - Get on the Map Today!', 'width=600,height=400') "><span>Google+</span></a></li>
                                <li title="Share on LinkedIn">
                                    <a class="fa fa-linkedin solo" href="http://www.linkedin.com/shareArticle?mini=true&url=<%= PageURL %>" target="_blank"><span>LinkedIn</span></a>
                                </li>
                                <li title="Share on Pinterest"><a class="fa fa-pinterest solo" href="javascript:void((function()%7Bvar%20e=document.createElement('script');e.setAttribute('type','text/javascript');e.setAttribute('charset','UTF-8');e.setAttribute('src','http://assets.pinterest.com/js/pinmarklet.js?r='+Math.random()*99999999);document.body.appendChild(e)%7D)());" target="_blank"><span>Pinterest</span></a></li>
                                <li title="Send from Gmail"><a class="fa fa-envelope solo" href="mailto:?Subject=SHARE - Get on the Map Today!&Body=I%20saw%20this%20and%20thought%20of%20you!%20 <%= PageURL %>" target="_blank"><span>Email</span></a></li>
                            </ul>
                        </li>
                        <li title="Share on Facebook"><a class="fa fa-facebook solo" href="#" onClick=" window.open('http://www.facebook.com/sharer.php?u=<%= PageURL %>', 'SHARE - Get on the Map Today!', 'width=600,height=400') "><span>Facebook</span></a></li>
                        <li title="Share on Twitter"><a class="fa fa-twitter solo" href="#" onClick=" window.open('http://twitter.com/share?url=<%= PageURL %>&amp;text=SHARE - Get on the Map Today!', 'SHARE - Get on the Map Today!', 'width=600,height=400') "><span>Twitter</span></a></li>
                        <li title="Share on Google plus"><a class="fa fa-google-plus solo" href="#" onClick=" window.open('https://plus.google.com/share?url=<%= PageURL %>', 'SHARE - Get on the Map Today!', 'width=600,height=400') "><span>Google+</span></a></li>
                    </ul> 
                </div>
            </div>
        
            <div style="clear: both; margin-top: 0px;">
                <div style="background-color: #B6D7A8; color: white; line-height: 40px; padding: 0 0 0 5px"><h3>Window Box Information</h3></div>
            </div>
            <div style="background-color: #009E0F; clear: both; height: 220px;">
                <div style="color: white; float: left; text-align: center; width: 25%;">
                    <h4 style="color: white; margin-top: 5px">IRL Photo</h4>
                    <img src='PlantImages/window_box_photo_upload.png' style="height: 150px"/> 
                </div>
                <div style="float: left; text-align: center; width: 50%;">
                    <h4 style="color: white; margin-top: 5px">Pollinator Impact</h4>
    
                    <img src='<%= ResolveUrl("Images/pollinator_impact.png") %>' style="height: 150px"/>
                </div>
                <div style="color: white; float: left; text-align: center; width: 25%;">
                    <h4 style="color: white; margin-top: 5px; text-align: left;">Plant List</h4>
                    <div style="margin-top: -15px">
                        <h4 style="color: yellow; font-size: 12px; text-align: left;">Aquilegia</h4>
                        <label style="color: yellow; font-size: 10px; font-style: italic; font-weight: 300; line-height: 5px; margin-top: -5px;">Aquilegia caerulea</label>
                    </div>
                    <div style="margin-top: -5px">
                        <h4 style="color: yellow; font-size: 12px; text-align: left;">Asclepias</h4>
                        <label style="color: yellow; font-size: 10px; font-style: italic; font-weight: 300; line-height: 5px; margin-top: -5px;">Asclepias tuberosa</label>
                    </div>
                    <div style="margin-top: -5px">
                        <h4 style="color: white; font-size: 12px; text-align: left;">Amelanchier</h4>
                        <label style="color: white; font-size: 10px; font-style: italic; font-weight: 300; line-height: 5px; margin-top: -5px;">Amelanchier arborea</label>
                    </div>
                    <div style="margin-top: -5px">
                        <h4 style="color: white; font-size: 12px; text-align: left;">Balsamorhiza</h4>
                        <label style="color: white; font-size: 10px; font-style: italic; font-weight: 300; line-height: 5px; margin-top: -5px;">Balsamorhiza sagittata</label>
                    </div>
                </div>
            </div>
            <div style="background-color: orange; clear: both; height: 60px;">
                <div style="color: white; font-size: 30px; font-weight: bold; height: 100%; padding-top: 15px; text-align: center;">Create Your Own Window Box Today!</div>
                <a href="CreateWindowBox.aspx" id="btnSeeAll" class="button btn36" style="float: right; font-size: 16px; font-size: 20px; font-weight: 300; line-height: 3px; margin: -45px 20px 30px 0">Start Here</a>
            </div>
        </form>
    </body>
</html>