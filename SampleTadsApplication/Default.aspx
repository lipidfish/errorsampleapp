<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SampleTadsApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-4">
            <h2>Caught Error</h2>
            <p>
                This page will generate and catch a divide-by-zero exception. This exception will be re-thrown as an inner exception of a new exception. 
                The error message will contain a recursive description of the messages and stack traces
            </p>
            <p>
                <a class="btn btn-default" href="CreateErrorCaught.aspx">Generate Caught Exception &raquo;</a>
            </p>
        </div>
        
        <div class="col-md-4">
            <h2>Un-caught Error</h2>
            <p>
                This page will throw an error with message "Test exception". 
                The error will not be caught, and so the code in Global.asax.cs will handle the exception.
                The ASP debug error page will display.
            </p>
            <p>
                <a class="btn btn-default" href="CreateError.aspx">Generate Un-caught Exception &raquo;</a>
            </p>
        </div>

    </div>

</asp:Content>
