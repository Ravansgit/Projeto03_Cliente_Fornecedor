<%@page import="br.com.fatec.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
    </head>
    <body>
        <%@include file="WEB-INF/header.jspf"%>
        <div class="formatação">


            <h1>Clientes</h1>
            <%
                try {
                    if (request.getParameter("remove") != null) {
                        int i = Integer.parseInt(request.getParameter("index"));

    //remove contatos        
                        Cliente.getList().remove(i);
                    } else if ((request.getParameter("add") != null)) {
                        String nome = request.getParameter("nome");
                        String cpf = request.getParameter("cpf");
                        String rg = request.getParameter("rg");
                        String email = request.getParameter("email");
                        String telefone = request.getParameter("telefone");
                        String endereco = request.getParameter("endereco");
                        Cliente c = new Cliente();
                        c.setNome(nome);
                        c.setCpf(cpf);
                        c.setRg(rg);
                        c.setEmail(email);
                        c.setTelefone(telefone);
                        c.setEndereco(endereco);
                        Cliente.getList().add(c);
                        response.sendRedirect(request.getRequestURI());
                    }

                } catch (Exception ex) {
            %>
            <div>Erro ao processar form! </div>
            <%}%>

            <table  cellspacing="5" cellpadding="20" border="5" align="center">
                <tr>
                    <th>Índice</th>
                    <th>Nome</th>
                    <th>Cpf</th>
                    <th>Rg</th>
                    <th>Email</th>
                    <th>Telefone</th>
                    <th>Endereço</th>
                    <th>Exclusão</th>
                </tr>

                
                <fieldset>
                    <legend>>INFORMAÇÕES DOS CLIENTES.</legend>
                    <form name="frmCliente"><form>
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
                            <br>
                            <input type="submit" name="add" value="Adcionar"/><br/>
                        </form>

                        <%try {%>
                        <%int i = 0;%>
                        <%for (Cliente c : Cliente.getList()) {%>
                        <tr>
                            <td><%=i%></td>
                            <td><%=c.getNome()%></td>
                            <td><%=c.getRg()%></td>
                            <td><%=c.getCpf()%></td>
                            <td><%=c.getEmail()%></td>
                            <td><%=c.getTelefone()%></td>
                            <td><%=c.getEndereco()%></td>
                            <td>
                                <form>
                                    <input type="hidden" name="index" value="<%=(i++)%>"/>
                                    <input type="submit" name="remove" value="Excluir"/>
                                </form>
                                </fieldset>
                                <br>
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
                        </tr>
                        </div>
                        <%@include file="WEB-INF/footer.jspf"%>
                        </body>
                        </html>