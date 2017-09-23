package br.com.fatec;

import com.sun.org.apache.bcel.internal.generic.RETURN;
import java.util.ArrayList;

public class Fornecedor {
    private String nome;
    private String r_social;
    private String cnpj;
    private String email;
    private String telefone;
    private String endereço;
    
    //Aguns dados para a tabela
    public static ArrayList<Fornecedor> list; 
    public static ArrayList<Fornecedor> getList(){    
        if(list==null){
    list = new ArrayList<>();
    Fornecedor c1 =new Fornecedor();
    c1.setNome("fulano");
    c1.setEmail("fulano@gmail.com");
    c1.setTelefone("13 9 88899988");
    list.add(c1);
    Fornecedor c2 =new Fornecedor();
    c2.setNome("beltrano");
    c2.setEmail("beltrano@gmail.com");
    c2.setTelefone("13 9 88899988");
    list.add(c2);   
    }
    return list;
    }
    //encapsulamento dos dados
    //encapsulamento do nome
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    //encapsulamento da razão social
    public String getR_social() {
        return r_social;
    }

    public void setR_social(String r_social) {
        this.r_social = r_social;
    }
    
    //encapsulamento do cnpj
    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }
    
    //encapsulamento do email
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    //encapsulamento do telefone
    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    
    //encapsulamento do endereço
    public String getEndereço() {
        return endereço;
    }

    public void setEndereço(String endereço) {
        this.endereço = endereço;
    }
}