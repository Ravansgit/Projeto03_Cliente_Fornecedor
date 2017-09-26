<%@page import="br.com.fatec.Fornecedor" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FORNECEDOR</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
            <h1>Fornecedor</h1>
            <% int i = Integer.parseInt(request.getParameter("index"));

            try{
                if(request.getParameter("mudar") != null){
                    String nome = request.getParameter("nome");
                    String r_social = request.getParameter("razao");
                    String cnpj = request.getParameter("cnpj");
                    String email = request.getParameter("email");
                    String telefone = request.getParameter("telefone");
                    String endereco = request.getParameter("endereco");

                    Fornecedor.getList().get(i).setNome(nome);
                    Fornecedor.getList().get(i).getR_social();
                    Fornecedor.getList().get(i).setCnpj(cnpj);
                    Fornecedor.getList().get(i).setEmail(email);
                    Fornecedor.getList().get(i).setTelefone(telefone);
                    Fornecedor.getList().get(i).setEndereço(endereco);
                    String url = "fornecedor.jsp";
                    response.sendRedirect(url);                
                }

            }catch(Exception ex){

                %>Não foi possivel alterar<%

            }

            %>

        <h1>Alterar Fornecedor</h1>
        <form>
            <input type="hidden" name="index" value="<%=i%>">
            <div>Nome:</div>
            <input type="text" name="nome" value="<%=Fornecedor.getList().get(i).getNome()%>"/><br/>
            <div>Razão Social:</div>
            <input type="text" name="razao" value="<%=Fornecedor.getList().get(i).getR_social()%>" /><br/>
            <div>CNPJ:</div>
            <input type="text" name="cnpj" value="<%=Fornecedor.getList().get(i).getCnpj()%>" /><br/>
            <div>Email:</div>
            <input type="text" name="email" value="<%=Fornecedor.getList().get(i).getEmail()%>" /><br/>
            <div>Telefone:</div>
            <input type="text" name="telefone" value="<%=Fornecedor.getList().get(i).getTelefone()%>" /><br/>
            <div>Endereço:</div>
            <input type="text" name="endereco" value="<%=Fornecedor.getList().get(i).getEndereço()%>" /><br/>
            <input type="submit" name="mudar" value="Confirmar"/>
        </form>   
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
