<%@page import="br.com.fatec.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
    </head>
    <body>
        <div
        <h1>Clientes</h1>
     
          
            <h2>Novo contato</h2>
            <form>
                <div>Nome:</div> 
                <input type="text" name="nome"/><br/>
                <div>Cpf:</div>
                <input type="text" name="cpf"/><br/>
                <div>Rg:</div>
                <input type="text" name="rg"/><br/>
                <div>Email:</div>
                <input type="text" name="email"/><br/>
                <div>Telefone:</div>
                <input type="text" name="telefone"/><br/>
                <div>Endereço:</div>
                <input type="text" name="endereco"/><br/>
                <input type="submit" name="add" value="adcionar"/><br/>
            </form>
         
    </body>
</html>
