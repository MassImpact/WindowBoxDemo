using System;
using System.Web;
using System.Web.UI;

public partial class WindowBox_WindowBoxDisplay : Page
{
    protected string PageURL
    {
        get { return HttpContext.Current.Request.Url.AbsoluteUri; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
    }
}