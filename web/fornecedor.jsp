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
        <div class="formatação">
            <h1>Fornecedor</h1>
            <%
                try {
                    if (request.getParameter("remove") != null) {
                        int i = Integer.parseInt(request.getParameter("index"));
                        //remove contatos        
                        Fornecedor.getList().remove(i);
                        response.sendRedirect(request.getRequestURI());
                        
                    }else if ((request.getParameter("alterar") != null)) {
                        int i = Integer.parseInt(request.getParameter("index"));
                        //remove contatos        
                        Fornecedor.getList().get(i);
                        response.sendRedirect(request.getRequestURI());
                        
                    } else if ((request.getParameter("add") != null)) {
                        String nome = request.getParameter("nome");
                        String r_social = request.getParameter("r_social");
                        String cnpj = request.getParameter("cnpj");
                        String email = request.getParameter("email");
                        String telefone = request.getParameter("telefone");
                        String endereco = request.getParameter("endereco");

                        Fornecedor f = new Fornecedor();
                        f.setNome(nome);
                        f.setR_social(r_social);
                        f.setCnpj(cnpj);
                        f.setEmail(email);
                        f.setTelefone(telefone);
                        f.setEndereço(endereco);
                        Fornecedor.getList().add(f);
                        response.sendRedirect(request.getRequestURI());
                    }
                } catch (Exception ex) {
            %>
            <div>Erro ao processar form! </div>
            <%}%>
            <fieldset>
                <form name="frmFornecedor">
                    <div>Nome:</div>
                    <input type="text" name="nome"/><br/>
                    <div>Razão Social:</div>
                    <input type="text" name="r_social"/><br/>
                    <div>Cnpj:</div>
                    <input type="number" name="cnpj"/><br/>
                    <div>Email:</div>
                    <input type="text" name="email"/><br/>
                    <div>Telefone:</div>
                    <input type="number" name="telefone"/><br/>
                    <div>Endereço:</div>
                    <input type="text" name="endereco"/><br/>
                    <br>
                    <input type="submit" name="add" value="adicionar"/> &emsp;&emsp;
                    <input type="reset" name="btn-calcelar" value="Limpar"/>
                </form>
            </fieldset>
            <div></div>
            <br>
            <hr>
            <table  cellspacing="5" cellpadding="20" border="5" align="center">
                <tr>
                    <th>Indice</th>
                    <th>Nome</th>
                    <th>Razão Social</th>
                    <th>Cnpj</th>
                    <th>Email</th>
                    <th>Telefone</th>
                    <th>Endereço</th>
                    <th>Exclusão</th>
                    <th>Alterar</th>
                </tr>    
                <!--Formulario para novo contato de fornecedor.-->
                <!--lugar onde fica o formulario normalmente-->  

                <%try {%>
                <%int i = 0;%>
                <%for (Fornecedor c : Fornecedor.getList()) {%>
                <tr>
                    <td><%=i%></td>
                    <td><%=c.getNome()%></td>
                    <td><%=c.getR_social()%></td>
                    <td><%=c.getCnpj()%></td>
                    <td><%=c.getEmail()%></td>
                    <td><%=c.getTelefone()%></td>
                    <td><%=c.getEndereço()%></td>
                    
                     <!--tags que mostra a opçao de excluir-->
                    <td>
                        <form>
                            <input type="hidden" name="index" value="<%=(i)%>"/>
                            <input type="submit" name="remove" value="Excluir"/>
                        </form>
                    </td>
                    <!--tags que mostra a opçao de alterar-->
                    <td>
                        <form action="alterar fornecedor.jsp">
                            <input type="hidden" name="index" value="<%=(i++)%>"/>
                            <input type="submit" name="alterar" value="Alterar"/>
                        </form>
                    </td>
                </tr>
                <%}%>
                <%} catch (Exception ex) {%>
                <tr>
                    <td colspan="5">
                        Erro ao carregar a lista<%=ex.getMessage()%>
                    </td>
                    <%}%>
            </table> 
        </div>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
