using System;

namespace SampleTadsApplication
{
    public partial class CreateError : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            throw new Exception("Test Error");
        }
    }
}