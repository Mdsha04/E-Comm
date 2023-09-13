<%-- 
    Document   : product_delete
    Created on : 14-Nov-2022, 10:18:52 AM
    Author     : user1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form method="post" action="del_product" modelAttribute="delete_prod">    
        <table >    
         <tr>    
          <td>ID : </td>  
          <td><input type = number placeholder="Enter id" name="p_id" /></td>  
         </tr>
         <tr>   
          <td><input type="submit" value="Delete" /></td>    
         </tr>    
        </table>    
       </form> 
        
        
    </body>
</html>