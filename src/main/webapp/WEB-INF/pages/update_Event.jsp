<%@page import="com.admin.event"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
            

            event e1 = (event) request.getAttribute("Event");

            %>
        
        
        
        <form method=post action=../event_update modelAttribute=evt >    
        <table >    
         <tr>    
          <td>ID : </td>  
          <td><input type=number placeholder="Enter id" name="e_id" value="<%=e1.getE_id()%>"/></td>  
         </tr>
         <tr>    
          <td>Name : </td>  
          <td><input type="text" placeholder="event name"  name="e_name" value="<%=e1.getE_name()%>"/></td>  
         </tr>
         <tr>    
          <td>Start Date : </td>  
          
          <!--<td><input type="text" path="dueDate" class= "date" name = "e_start" value = "<fmt:formatDate value="" pattern="MM-dd-yyyy" />"/></td>-->
          
          <td><input type="date" placeholder="date"  name="e_start" value="<%=e1.getStartDate()%>"/></td>  
         </tr>
         <tr>    
          <td>End Date : </td>  


          <!--<td><input type="text" path="dueDate" class= "date" name = "e_end" value = "<fmt:formatDate value="" pattern="MM-dd-yyyy" />"/></td>-->

          
          
          <td><input type="date"  placeholder="end date"  name="e_end" value="<%=e1.getEnd_date()%>"/></td>  
         </tr>
         <tr>    
             <td><button type="submit" value="add" />save</button></td>    
         </tr>    
        </table>    
       </form> 
        <h1>Hello World!</h1>
    </body>
</html>