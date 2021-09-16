<%-- 
    Document   : Teste
    Created on : 5 de set. de 2021, 22:31:37
    Author     : Vick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo IMC</title>
    </head>
    <body>
        <div id="pag">
        <h1>Calculadora IMC</h1>
        <div id="div_form">
            <p>IMC - Cálculo do índice de massa corporal:</p>
            <p>Fórmula: IMC = (peso * altura²)</p>
            
            <form action="imcresposta.jsp" method="get" target="result">
                Digite o peso: <input type="number" name="peso"><br>
                Digite a altura: <input type="number" name="altura"><br><br>
                <input type="submit" name="enviar" value="Calcule o seu IMC">
            </form>
                </div>
        <div id="div_result">
            <iframe name="result" width="400" height="200" frameborder="1">
            </iframe>
        </div>
        </div>
        
    </body>
</html>
