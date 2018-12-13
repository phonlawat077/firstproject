<%-- 
    Document   : counter
    Created on : Dec 4, 2018, 12:12:53 PM
    Author     : computer 5-1
--%>
<%@page import ="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
    
   int count=0;
   String path="C:\\apache-tomcat-9.0.12\\webapps\\ROOT\\cont.txt";
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>counter Page</title>
    </head>
    <body>
        <h1>
         This is file counter example <br>
         Visitor No:
        </h1>
         <%
          try
         {
          FileInputStream countFile = new FileInputStream(path);
          DataInputStream countData = new DataInputStream(countFile);
          count =countData.readInt();
         }
          catch (Exception e)
          {
              out.print("File not found");
          }
          count++;
          out.print(count);
          try
          {
          FileOutputStream countFile = new FileOutputStream(path);
          DataOutputStream countData = new DataOutputStream(countFile);
          countData.writeInt(count); 
          } 
          catch (Exception e)
          {
              out.print("File not found");
          }
          %>
              
    </body>
</html>
