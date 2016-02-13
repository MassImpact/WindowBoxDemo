﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TopSideBar.ascx.cs" Inherits="WindowBox_Admin_Controls_TopSideBar" %>
<div style="text-align: center">
    <div class="title">
        <h3>Window Box Dashboard</h3>
    </div>
    <div>
        <%= Name %>
    </div>

</div>

<% if (Name != "Statistics")
   {%>
    <div style="padding-right: 10px; padding-top: 40px;">
        <div style="float: left">
            <div class="search">
                <span class="fa fa-search"></span>
                <input name="txtSearch" type="search" maxlength="60" id="txtSearch" placeholder="Search">
            </div>

        </div>

        <div style="float: right">
            <input type="button" value="Bulk Edit" id="TopSidebar_Button1">&nbsp;&nbsp;&nbsp;
            <input type="button" value="Add User" id="TopSidebar_Button2">&nbsp;&nbsp;&nbsp;
            <input type="button" value="Export Entries" id="TopSidebar_Button3">
        </div>
        <div style="clear: both">
        </div>
    </div>
<%
   }

%>
<style>
    .title h3 { margin-bottom: 10px; }

    input[type="button"] { cursor: pointer; }

    .search {
        color: #aaa;
        font-size: 16px;
        position: relative;
    }

    .search .fa-search {
        font-size: 12px;
        left: 6px;
        position: absolute;
        top: 8px;
    }

    .search input {
        background: #fcfcfc;
        border: 1px solid #aaa;
        border-radius: 50px;
        height: 32px;
        text-indent: 18px;
        width: 100%;
        /* box-shadow: 0 0 3px #ccc, 0 10px 15px #ebebeb inset;*/
    }
</style>