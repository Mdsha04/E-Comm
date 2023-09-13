<%@page import="com.admin.event"%>
<%@page import="com.admin.coupon"%>
<%@page import="java.util.List"%>
<%@page import="com.admin.category"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method=post action=insert_coupon modelAttribute=AC >    
        <table >    
         <tr>    
          <td>ID : </td>  
          <td><input type = number placeholder="Enter id" name="coupon_id" /></td>  
         </tr>
         <tr>    
          <td>Name : </td>  
          <td><input type="text" placeholder="event name"  name="coupon_name"/></td>  
         </tr>

          <!--<td><input type="text" path="dueDate" class= "date" name = "e_end" value = "<fmt:formatDate value="" pattern="MM-dd-yyyy" />"/></td>-->

         <tr>
             <td>Category:</td>
             <td>
                      <select name="cat_id" id="cars">
        <% 
                List<category> ob = (List<category>) request.getAttribute("CATEGORY");
                for (category s : ob) {
        %>
            <option value ="<%=s.getCat_id()%>" ><%=s.getCat_name()%></option>
            <%
               }

            %>
         </select>
         </tr>
         <tr>
             <td>Event:</td>
             <td>
                   <select name="E_id" id="cars">
                 <%
                    List<event> ob1 = (List<event>) request.getAttribute("EVENTS");
                    for (event s : ob1) {
                 %>      
                   <option value ="<%=s.getE_id()%>" ><%=s.getE_name()%></option>
 
                                        <%
                                            }
                                        %>
                </select> 
                
                 
                 
             </td>
         </tr>
         <tr>    
          <td>Discount percentage : </td>  
          <td><input type="number" placeholder="event name"  name="discount"/></td>  
         </tr>
         
         <!-- comment -->
         <tr>
             </td>
             <td><button type="submit" value="add" />save</button></td>    
         </tr>    
        </table>    
       </form> 
        <h1>Hello World!</h1>
    </body>
</html>