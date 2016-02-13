<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LeftSidebar.ascx.cs" Inherits="WindowBox_Admin_Controls_LeftSidebar" %>
<link rel="stylesheet" href="<%= ResolveUrl("~/css/style.css") %>" />
<script>
    function linkUser() {
        document.location.href = "<%= ResolveUrl("~/WindowBox/Admin/User") %>";
    }

    function linkFlower() {
        document.location.href = "<%= ResolveUrl("~/WindowBox/Admin/Flower") %>";
    }

    function linkWindowBox() {
        document.location.href = "<%= ResolveUrl("~/WindowBox/Admin/WindowBox") %>";
    }

    function linkStatistic() {
        document.location.href = "<%= ResolveUrl("~/WindowBox/Admin/Statistic") %>";
    }

    function linkAdmin() {
        document.location.href = "<%= ResolveUrl("~/WindowBox/Admin/Admin") %>";
    }
</script>
<div style="border: 2px solid #808080">
    <div style="background-color: orange; padding: 10px">
        <div style="border: 1px solid black; border-radius: 50%; float: left; height: 40px; text-align: center; width: 40px;">
            <i class="fa fa-user" style="color: white; font-size: 30px"></i>
        </div>
        <div style="float: left; padding-top: 15px; text-align: center; width: 70%;">
            {Username}
        </div>
        <div style="float: right">
            <a style="cursor: pointer; text-decoration: underline;">logout
            </a>
        </div>
        <div style="clear: both">
        </div>
    </div>
    <div class="leftmenu">
        <h3>Users</h3>
        <p>
            <span onclick=" linkUser(); ">All Users (##)<br />
            </span>
            <span onclick=" linkUser(); ">Incomplete Users (##)<br />
            </span>
            <span onclick=" linkUser(); ">Email Only (##)<br />
            </span>
            <span onclick=" linkUser(); ">Full Users (##)<br />
            </span>
        </p>

        <h3>Flowers</h3>
        <p>
            <span onclick=" linkFlower(); ">All Flowers (##)<br />
            </span>
            <span  onclick=" linkFlower(); ">Missing Images (##)<br />
            </span>
        </p>

        <h3>Window Boxes</h3>
        <p>
            <span onclick=" linkWindowBox(); ">All Window Boxes (##)<br />
            </span>
            <span onclick=" linkWindowBox(); ">Unclaimed (##)<br />
            </span>
            <span onclick=" linkWindowBox(); ">Claimed (##)<br />
            </span>
        </p>

        <h3 style="cursor: pointer" onclick=" linkStatistic(); ">Statistics</h3>

        <h3 style="cursor: pointer" onclick=" linkAdmin(); ">Admin</h3>

    </div>
</div>

<style>
    .col_left {
        bottom: 0;
        display: block;
        float: left;
        height: auto;
        left: 0;
        /*background-color: orange;*/
        padding: 10px;
        position: absolute;
        top: 0;
        width: 250px;
    }

    .col_main {
        bottom: 0;
        display: block;
        height: auto;
        left: 280px;
        position: absolute;
        right: 0;
        top: 0;
    }

    .leftmenu { padding-left: 10px; }

    .leftmenu h3 { margin: 25px 0px 0px 0px; }

    .leftmenu p {
        line-height: 30px;
        margin: 5px 0px 0px 0px;
    }

    .leftmenu p span { cursor: pointer; }

    .divtable { padding-top: 30px; }

    .table-hover { border: solid 1px #ddd; }

    .table-hover > tbody > tr > th {
        background-image: linear-gradient(to bottom, #f5f5f5 0, #e8e8e8 100%);
        font-size: 14px;
        height: 60px;
        padding: 15px 8px 8px 8px;
        pointer-events: none;
        white-space: nowrap;
    }

    .table-hover > tbody > tr > td {
        height: 50px;
        padding: 15px 8px 8px 8px;
    }

    .table-hover > tbody > tr:nth-of-type(even) { background-color: #f9f9f9; }

    .table-hover > tbody > tr:hover { background-color: #f5f5f5; }

    tr:last-of-type { background-color: white !important; }

    .pager div { margin-top: 20px; }

    .pager div { margin-top: 20px; }

    .pager select {
        color: black;
        display: inline;
        height: 30px;
        padding: 0px;
        padding-left: 3px;
        padding-right: 3px;
        width: 54px;
    }

    .pagination {
        border-radius: 4px;
        display: inline-block;
        margin: 0px;
        padding-left: 0;
    }

    .pagination > li { display: inline; }

    .pagination > li > a, .pagination > li > span {
        background-color: #fff;
        border: 1px solid #ddd;
        color: blue;
        cursor: pointer;
        float: left;
        line-height: 1.42857143;
        margin-left: -1px;
        padding: 6px 12px;
        position: relative;
        /*  color: #337ab7;
        text-decoration: none;*/
        text-decoration: underline;
    }

    .pagination > .active > a, .pagination > .active > span,
    .pagination > .active > a:hover, .pagination > .active > span:hover,
    .pagination > .active > a:focus, .pagination > .active > span:focus {
        background-image: linear-gradient(rgb(245, 245, 245) 0px, rgb(232, 232, 232) 100%);
        cursor: default;
        z-index: 2;
    }

    .link {
        color: blue;
        cursor: pointer;
        text-decoration: underline;
    }
</style>