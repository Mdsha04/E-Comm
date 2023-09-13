<%-- 
    Document   : add_product
    Created on : 13-Nov-2022, 2:45:56 PM
    Author     : User
--%>

<%@page import="com.admin.products"%>
<%@page import="java.util.List"%>
<%@page import="com.admin.category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            products p = (products) request.getAttribute("product");
        
        
        
        %>
        <h1>Hello World! you are updating product </h1>
        <form action="../updateProduct" method=post enctype="multipart/form-data">
            <label>Product ID:</label>
            <input type="number" name="P_ID" value="<%=p.getP_id()%>">
            <br><!-- comment -->            <br><!-- comment -->
            <label>Product Name:</label>
            <input type="text" name="P_name" value="<%=p.getP_name()%>">
            <br><!-- comment -->            <br><!-- comment -->
            <label>Price</label>
            <input type="number" name="Price" value="<%=p.getCost()%>">
            <br>            <br><!-- comment -->
            <label>Cat_id</label>
            <select name="cat_id" id="cars" >
            <% 
                List<category> ob = (List<category>) request.getAttribute("list");
                for (category s : ob) {

            %>
<!--                                                                                                                  <input type="number" name="cat_id">-->
            <option    value ="<%=s.getCat_id()%>" ><%=s.getCat_name()%></option>
                       
            <%
                }
              %>
            </select>
            <br >                                       
            <label>image</label>
            <input type="file" name="imagePath" value="<%=p.getImgpath()%>">
            <br><br>
            <button type="submit" value="add" >ADD</button>
        </form>
    </body>
</html>
