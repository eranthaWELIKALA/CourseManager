<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseForm.aspx.cs" Inherits="CourseManager.CourseForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            height: 27px;
        }
        .auto-style4 {
            height: 29px;
        }
        .auto-style5 {
            height: 33px;
        }
        .auto-style6 {
            text-align: left;
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" style="padding: 100px; margin: 0px;">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Course Manager</strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Course ID</td>
                    <td>
                        <asp:TextBox ID="courseId" runat="server" OnTextChanged="TextBox1_TextChanged" Width="90%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="courseId" ErrorMessage="Course ID is required" ForeColor="Red" ValidationGroup="course"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Course Name</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="courseName" runat="server" Width="90%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="courseName" EnableTheming="True" ErrorMessage="Course name is required" ForeColor="Red" ValidationGroup="course"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Text Book</td>
                    <td>
                        <asp:TextBox ID="textbookName" runat="server" Width="90%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="textbookName" ErrorMessage="Textbook name is required" ForeColor="Red" ValidationGroup="course"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Duration</td>
                    <td>
                        <asp:TextBox ID="duration" runat="server" Width="90%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="duration" ErrorMessage="Course duration is required" ForeColor="Red" ValidationGroup="course"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" InsertCommand="INSERT INTO courses(id, course_name, text_book, duration) VALUES (@id, @courseNamae, @textbook, @duration)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id], [course_name], [text_book], [duration] FROM [courses]">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="courseId" Name="id" PropertyName="Text" />
                                <asp:ControlParameter ControlID="courseName" Name="courseNamae" PropertyName="Text" />
                                <asp:ControlParameter ControlID="textbookName" Name="textbook" PropertyName="Text" />
                                <asp:ControlParameter ControlID="duration" Name="duration" PropertyName="Text" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create" ValidationGroup="course" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="Course ID" SortExpression="id" />
                                <asp:BoundField DataField="course_name" HeaderText="Course Name" SortExpression="course_name" />
                                <asp:BoundField DataField="text_book" HeaderText="Textbook Name" SortExpression="text_book" />
                                <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
