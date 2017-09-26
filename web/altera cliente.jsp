<%@page import="br.com.fatec.Cliente" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Cliente</title>
        
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <% int i = Integer.parseInt(request.getParameter("index"));
        try{
            if(request.getParameter("mudar") != null){
                String nome = request.getParameter("nome");
                String cpf = request.getParameter("cpf");
                String rg = request.getParameter("rg");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                String endereco = request.getParameter("endereco");
                
                Cliente.getList().get(i).setNome(nome);
                Cliente.getList().get(i).setCpf(cpf);
                Cliente.getList().get(i).setRg(rg);
                Cliente.getList().get(i).setEmail(email);
                Cliente.getList().get(i).setTelefone(telefone);
                Cliente.getList().get(i).setEndereco(endereco);
                String url = "cliente.jsp";
                response.sendRedirect(url);
            }
        }catch(Exception ex){
            %>Não foi possivel alterar<%
        }
        %>

        <h1>Alterar Cliente</h1>
            <form>
                <input type="hidden" name="index" value="<%=i%>">
                    <div>Nome:</div>
                    <input type="text" name="nome" value="<%=Cliente.getList().get(i).getNome()%>"/><br/>
                    <div>CPF:</div>
                    <input type="text" name="cpf" value="<%=Cliente.getList().get(i).getCpf()%>" /><br/>
                    <div>RG:</div>
                    <input type="text" name="rg" value="<%=Cliente.getList().get(i).getRg()%>" /><br/>
                    <div>Email:</div>
                    <input type="text" name="email" value="<%=Cliente.getList().get(i).getEmail()%>" /><br/>
                    <div>Telefone:</div>
                    <input type="text" name="telefone" value="<%=Cliente.getList().get(i).getTelefone()%>" /><br/>
                    <div>Endereço:</div>
                    <input type="text" name="endereco" value="<%=Cliente.getList().get(i).getEndereco()%>" /><br/>
                    <input type="submit" name="mudar" value="Confirmar"/>
            </form>   
        <%@include file="WEB-INF/jspf/footer.jspf"%>        
    </body>
</html>