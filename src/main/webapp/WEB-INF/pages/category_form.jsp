<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="insertCategory" modelAttribute="cat">    
        <table >    
         <tr>    
          <td>ID : </td>  
          <td><input type = number placeholder="Enter id" name="cat_id" /></td>  
         </tr>
         <tr>    
          <td>Name : </td>  
          <td><input type="text" placeholder="category name"  name="cat_name"/></td>  
         </tr>
         <tr>    
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form> 
        <h1>Hello World!</h1>
    </body>
</html>
