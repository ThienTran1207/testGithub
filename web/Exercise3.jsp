<%-- 
    Document   : Exercise3
    Created on : Feb 13, 2023, 1:53:38 PM
    Author     : Peanut
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page Ex3_WS1</title>
        <link href="Exercise3.css" rel="stylesheet">
    </head>
    <body>
        <%
        //nhan ket qua tra ve tu Server
        String result="";
        String n="";
        String select="";
        if(request.getAttribute("result")!=null){
            result=(String)request.getAttribute("result");
        }
        
        if(request.getAttribute("n")!=null){
            n=(String)request.getAttribute("n");
        }
        
        if(request.getAttribute("select")!=null){
            select=(String)request.getAttribute("select");
        }
        
        %>
        <h1>THUC HIEN PHEP TOAN</h1>
        <br>
        <form id="frm" action='exercise3' method='post'>
            <label>Nhap n:</label><input type='text' name='n' id="n" value="<%=n%>"> 
            <br>
            <label>Chon phep toan</label>
            <select name="select" onchange="change()">
                <%
                    if(select.equals("sum")){
                        out.print("<option value='default'>Chon phep tinh</option>");
                        out.print("<option value='sum' selected>Tong so n lien tiep</option>");
                        out.print("<option value='n!'>Tinh n!</option>");
                        out.print("<option value='odd'>In day le</option>");
                        out.print("<option value='even'>In day so chan</option>");
                        out.print("<option value='prime'>Kiem tra so nguyen to</option>");
                    }
                    else if(select.equals("n!")){
                        out.print("<option value='default'>Chon phep tinh</option>");
                        out.print("<option value='sum'>Tong so n lien tiep</option>");
                        out.print("<option value='n!' selected>Tinh n!</option>");
                        out.print("<option value='odd'>In day le</option>");
                        out.print("<option value='even'>In day so chan</option>");
                        out.print("<option value='prime'>Kiem tra so nguyen to</option>");
                    }
                    else if(select.equals("odd")){
                        out.print("<option value='default'>Chon phep tinh</option>");
                        out.print("<option value='sum'>Tong so n lien tiep</option>");
                        out.print("<option value='n!'>Tinh n!</option>");
                        out.print("<option value='odd' selected>In day le</option>");
                        out.print("<option value='even'>In day so chan</option>");
                        out.print("<option value='prime'>Kiem tra so nguyen to</option>");
                    }
                    else if(select.equals("even")){
                        out.print("<option value='default'>Chon phep tinh</option>");
                        out.print("<option value='sum'>Tong so n lien tiep</option>");
                        out.print("<option value='n!'>Tinh n!</option>");
                        out.print("<option value='odd'>In day le</option>");
                        out.print("<option value='even' selected>In day so chan</option>");
                        out.print("<option value='prime'>Kiem tra so nguyen to</option>");
                    }
                    else if(select.equals("prime")){
                        out.print("<option value='default'>Chon phep tinh</option>");
                        out.print("<option value='sum'>Tong so n lien tiep</option>");
                        out.print("<option value='n!'>Tinh n!</option>");
                        out.print("<option value='odd'>In day le</option>");
                        out.print("<option value='even'>In day so chan</option>");
                        out.print("<option value='prime' selected>Kiem tra so nguyen to</option>");
                    }
                    else{
                        out.print("<option value='default' selected>Chon phep tinh</option>");
                        out.print("<option value='sum'>Tong so n lien tiep</option>");
                        out.print("<option value='n!'>Tinh n!</option>");
                        out.print("<option value='odd'>In day le</option>");
                        out.print("<option value='even'>In day so chan</option>");
                        out.print("<option value='prime'>Kiem tra so nguyen to</option>");
                    }
                %>
<!--                <option value="default">Chon phep toan</option>
                <option value="sum">Tong n so lien tiep</option>
                <option value="n!">Tinh n!</option>
                <option value="odd">In day le</option>
                <option value="even">In day so chan</option>
                <option value="prime">Kiem tra so nguyen to</option>-->
            </select>
            <br>
            <br>Result:<input type="text" readonly value="<%=result%>">
        </form>
        
        <script>
            function change() {
                document.getElementById("frm").submit();
            }
        </script>
    </body>
</html>
