<%@page import="br.com.fatec.Fornecedor" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FORNECEDOR</title>
    </head>
    <body>
        <h1>Fornecedor</h1>
        <%
            try{
                if(request.getParameter("remove")!=null){
                int i = Integer.parseInt(request.getParameter("index"));
                //remove contatos        
                Fornecedor.getList().remove(i);
            }
            }catch(Exception ex) {
                
       
            
         %>
        <!--Formulario para novo contato de fornecedor.-->
        <fieldset>
            <legend>Formulario para novo fornecedor.</legend>
                <form name="frmFornecedor">
                    Nome: 
                    <input type="text" name="nome"/><br/>
                    Razão Social:
                    <input type="text" name="cpf"/><br/>
                    cnpj:
                    <input type="text" name="rg"/><br/>
                    Email:
                    <input type="text" name="email"/><br/>
                    Telefone:
                    <input type="text" name="telefone"/><br/>
                    Endereço:
                    <input type="text" name="endereco"/><br/>
                    <input type="submit" name="add" value="adicionar"/> &emsp;&emsp;
                    <input type="reset" name="btn-calcelar" value="Limpar"/>
            </form>
        </fieldset>
    </body>
</html>
