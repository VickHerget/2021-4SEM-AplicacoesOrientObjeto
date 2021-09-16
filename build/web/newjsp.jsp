<%-- 
    Document   : newjsp
    Created on : 2 de set. de 2021, 23:21:23
    Author     : Vick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%  int idade = 12;
            int idade_min = 18;
            if(idade>=idade_min){
                out.print("Bom filme.");
            }else{
                out.print("Por favor, escolha outro filme. Idade mínima para esse filme é: "+idade_min);
            }%>
    </body>
</html>
