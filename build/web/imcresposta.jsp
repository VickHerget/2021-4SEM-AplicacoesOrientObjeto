<%-- 
    Document   : imcresposta
    Created on : 9 de set. de 2021, 10:14:16
    Author     : Vick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resposta IMC</title>
    </head>
    <body>
        <h2>RESULTADO:</h2>
        <% 
        String peso_txt, altura_txt, resultado;
        float peso=0, altura=0,imc;
        peso_txt = request.getParameter("peso");
        altura_txt = request.getParameter("altura");
        if(!peso_txt.equals("")){peso = Float.parseFloat(peso_txt);}
        if(!altura_txt.equals("")){altura = Float.parseFloat(altura_txt);}
        if(peso==0||altura==0){
            out.print("Dados incorretos!");
            }else{
                altura/=100;
                imc=peso/(altura*altura);
                out.print("Peso: "+peso+" KG");
                out.print("<br>");
                out.print("Altura: "+altura+"m");
                out.print("<br>");%>
        <h3><%out.print("IMC: "+Math.round(imc*100.0)/100.0);%></h3>
        <%if(imc<18.5){resultado="Abaixo do Peso";}
        else if(imc>=18.5 && imc<25){resultado="Peso ideal";}
        else if(imc>=25 && imc<30){resultado="Sobrepeso";}
        else if(imc>=30 && imc<35){resultado="Obesidade Grau I";}
        else if(imc>=35 && imc<40){resultado="Obesidade Grau II";}
        else{resultado="Obesidade Mórbida";}
            %>
            <h4><%
                    out.print("Seu IMC se classifica como: "+resultado);}%></h4>
    </body>
</html>
