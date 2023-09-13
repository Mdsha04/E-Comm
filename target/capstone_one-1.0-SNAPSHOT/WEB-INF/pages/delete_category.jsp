<%-- 
    Document   : delete_category
    Created on : 11-Nov-2022, 3:08:39 PM
    Author     : user1
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

        
        <form method="post" action="del_category" modelAttribute="delete_cat">    
        <table >    
         <tr>  
            <td>ID : </td> 
            <td>
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
            </td>
          
         </tr>
         <tr>   
          <td><input type="submit" value="Delete" /></td>    
         </tr>    
        </table>    
       </form> 
        
        
    </body>
</html>
