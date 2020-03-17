using System;

namespace SampleTadsApplication
{
    public partial class CreateErrorCaught : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                CatchAndRethrow();
            }
            catch (Exception ex)
            {
                // Notes for Stackify - 
                // Retrace will log this through the APM, and as I understand it this logging will not
                // include robust stack trace information such as method signatures and line numbers. For instance this
                // error report would include the message
                // at SampleTadsApplication.CreateErrorCaught.Page_Load(Object sender, EventArgs e) in C:\Users\tpeterson\source\repos\SampleTadsApplication\SampleTadsApplication\CreateErrorCaught.aspx.cs:line 11

                this.message.InnerText = DescribeException(ex);

                System.Diagnostics.Debug.WriteLine("Caught error: " + DescribeException(ex));
            }
        }


        private void CatchAndRethrow()
        {
            try
            {
                GenerateException();
            }
            catch (Exception ex)
            {
                throw new Exception("Rethrowing the error", ex);
            }
        }

        private void GenerateException()
        {
            var zero = 0;
            int a = 1 / zero;

            try
            {
            }
            catch (Exception ex)
            {
                throw new Exception("caught");
            }
            
        }
        
        private static string DescribeException(Exception exception)
        {
            string GetDescription(Exception ex)
            {
                return $"\r\n{ex.Message}\r\n {ex.StackTrace}\r\n-------- End of Exception --------";
            }
            
            if (exception.InnerException != null)
            {
                return GetDescription(exception) + DescribeException(exception.InnerException);
            }

            return GetDescription(exception);
        }
    }
}