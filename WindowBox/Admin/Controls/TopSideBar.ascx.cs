using System;
using System.Web.UI;

public partial class WindowBox_Admin_Controls_TopSideBar : UserControl
{
    public string Name
    {
        get { return (string) ViewState["MenuName"]; }
        set { ViewState["MenuName"] = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
    }
}