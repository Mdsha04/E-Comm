<%@page import="java.util.List"%>
<%@page import="com.admin.event"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form method="post" action="del_event" modelAttribute="delete_event">    
        <table >    
         <tr>    
          <td> </td>  
         Event :  <select name  ="e_id"><!-- comment -->
             
            <%

                List<event> ob = (List<event>) request.getAttribute("list");
                for (event s : ob){
            %>   
             <option value ="<%=s.getE_id()%>"><%=s.getE_name()%></option><!-- comment -->
            <%
                }
            %>
         </select>
          
          <!--<td><input type = text placeholder="Enter id" name="e_id" /></td>-->  
         </tr>
         <tr>   
          <td><input type="submit" value="Delete" /></td>    
         </tr>    
        </table>    
       </form> 
        
        
    </body>
</html>
