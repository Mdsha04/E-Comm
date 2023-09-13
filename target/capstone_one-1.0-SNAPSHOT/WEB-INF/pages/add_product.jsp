<%-- 
    Document   : add_product
    Created on : 13-Nov-2022, 2:45:56 PM
    Author     : User
--%>

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
        <h1>Hello World! you are adding product </h1>
        <form action="insetProduct" method=post enctype="multipart/form-data">
            <label>Product ID:</label>
            <input type="number" name="P_ID">
            <br><!-- comment -->            <br><!-- comment -->
            <label>Product Name:</label>
            <input type="text" name="P_name">
            <br><!-- comment -->            <br><!-- comment -->
            <label>Price</label>
            <input type="number" name="Price">
            <br>            <br><!-- comment -->
            <label>Cat_id</label>
            <select name="cat_id" id="cars">
            <% 
                List<category> ob = (List<category>) request.getAttribute("list");
                for (category s : ob) {
            %>
<!--                                                                                                                  <input type="number" name="cat_id">-->
            <option value ="<%=s.getCat_id()%>" ><%=s.getCat_name()%></option>
                                                                                                                        <!--                                        <tr>  
                                                                                                                                                                    <td class="tm-product-name"><%=s.getCat_id()%></td>  
                                                                                                                                                                    <td class="tm-product-name"><%=s.getCat_name()%></td>     
                                                                                                                                                                </tr> -->
                        
                        
            <%
               }

            %>
            </select>
            <br >                                       
            <label>image</label>
            <input type="file" name="imagePath">
            <br><br>
            <button type="submit" value="add" >ADD</button>
        </form>
    </body>
</html>
