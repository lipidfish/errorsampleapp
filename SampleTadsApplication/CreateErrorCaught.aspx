<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateErrorCaught.aspx.cs" MasterPageFile="~/Site.Master" Inherits="SampleTadsApplication.CreateErrorCaught" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2>Caught and handled the following exception</h2>
    <p runat="server" id="message" style="margin: 10px; white-space: pre-wrap;">
    </p>
    
    <h2>Stackify Note</h2>
    <p style="margin: 10px;">When Retrace logs caught errors like these, the log message does not contain the rich stack trace information above.
        Retrace logs contain the method names, but not the method signatures or the line numbers.
    </p>

</asp:Content>

