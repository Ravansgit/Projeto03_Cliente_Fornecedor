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
                response.sendRedirect(request.getRequestURI());
            }else if ((request.getParameter("add")!=null)){
                String nome = request.getParameter("nome");
                String r_social = request.getParameter("r_social");
                String cnpj = request.getParameter("cnpj");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                String endereco = request.getParameter("endereco");
                
                Fornecedor c = new Fornecedor();
                c.setNome(nome);
                c.setR_social(r_social);
                c.setCnpj(cnpj);
                c.setEmail(email);
                c.setTelefone(telefone);
                c.setEndereço(endereco);
                Fornecedor.getList().add(c);
                response.sendRedirect(request.getRequestURI());
            }
            }catch(Exception ex) {
         %>
            <div>Erro ao processar form! </div>
         <%}%>
        <fieldset>
           <legend>Formulario para novo fornecedor.</legend>
                <form name="frmFornecedor">
                    Nome: 
                    <input type="text" name="nome"/><br/>
                    Razão Social:
                    <input type="text" name="r_social"/><br/>
                    Cnpj:
                    <input type="text" name="cnpj"/><br/>
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
        <br>
        <hr>
        <table border="1"> 
            <tr>
                <th>Indice</th>
                <th>Nome</th>
                <th>Razão Social</th>
                <th>Cnpj</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>exclusão</th>
            </tr>    
        <!--Formulario para novo contato de fornecedor.-->
        <!--lugar onde fica o formulario normalmente-->  
            <h2>lista</h2>
            <%try{%>
                <%int i=0;%>
                <%for(Fornecedor c: Fornecedor.getList()){%>
                <tr>
                    <td><%=i%></td>
                    <td><%=c.getNome()%></td>
                    <td><%=c.getR_social()%></td>
                    <td><%=c.getCnpj()%></td>
                    <td><%=c.getEmail()%></td>
                    <td><%=c.getTelefone()%></td>
                    <td><%=c.getEndereço()%></td>

            <td>
            <form>
                <input type="hidden" name="index" value="<%=(i++)%>"/>
                <input type="submit" name="remove" value="Excluir"/>
            </form>
            </td>
            </tr>
            <%}%>
            <%}catch(Exception ex){%>
            <tr>
                <td colspan="5">
                    Erro ao carregar a lista<%=ex.getMessage()%>
                </td>
                <%}%>
        </table> 
    </body>
</html>