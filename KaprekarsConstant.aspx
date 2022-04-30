<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KaprekarsConstant.aspx.cs" Inherits="KaprekarsConstant.KaprekarsConstant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kaprekar's Constant</title>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/KCCSS.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row center">
                <h1>Kaprekar's Constant</h1>
                <br />
                <h4>How it works:</h4>
                <br />
                <p>Take any 4 digit number that has at least 2 unique numbers in it (1112 = yes, 1111 = no). Then you will perform the following steps:</p>
                <ul class="list">
                    <li>Rearrange the digits of the number from largest to smallest for one of the variables we'll use, then rearrange the digits from smallest to largest for the other variable</li>
                    <li>Subtract the smaller variable from the larger variable</li>
                    <li>Take the answer from step 2 and repeat the process</li>
                </ul>
                <br />
                <p>If you repeat the process enough times (7 at most) you will end up with 6174. At that point if you continue the process you will always get 6174 as your answer.</p>
                <br />
                <p>Try it out below:</p>
            </div>
            <br />
            <div class="row center">
                <div class="col-sm-4">
                    
                </div>
                <div class="col-sm-4 input">
                    <asp:TextBox ID="tboxUserNum" runat="server" placeholder="Enter 4 digit #"></asp:TextBox>
                </div>
                <div class="col-sm-4 validators">
                    <asp:RequiredFieldValidator ID="rfvUserNum" runat="server" ErrorMessage="* required" ControlToValidate="tboxUserNum" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regxUserNum" runat="server" ErrorMessage="* Please enter a 4 digit number" ControlToValidate="tboxUserNum" ValidationExpression="^[0-9]{4}$" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
                <br />
                <div class="row center">
                    <div class="col-sm-12 mt-3">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                    </div>
                </div>
            </div>
            <br />
            <div class="row">

            </div>
            <br />
            <div class="row center">
                <div class="col-sm-12">
                    <footer id="footer">
                        <p>
                            <script>document.write(new Date().getFullYear())</script>
                            || <a href="https://aaronmoss.io/" target="_blank">Aaron Moss</a>
                        </p>
                    </footer>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
