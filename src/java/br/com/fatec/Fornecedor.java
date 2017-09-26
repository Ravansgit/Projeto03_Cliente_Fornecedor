package br.com.fatec;

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
            //primeiro fornecedor
            Fornecedor f1 =new Fornecedor();
                f1.setNome("fulano");
                f1.setCnpj("12345678910");
                f1.setR_social("Sami Murande");
                f1.setEmail("fulano@gmail.com");
                f1.setTelefone("13 9 88899988");
                f1.setEndereço("Rua dos marinheiros");
            list.add(f1);

            //segundo fornecedor
            Fornecedor f2 =new Fornecedor();
                f2.setNome("beltrano");
                f2.setR_social("João da esquina");
                f2.setCnpj("11109876543");
                f2.setEmail("beltrano@gmail.com");
                f2.setTelefone("13 9 88899988");
                f2.setEndereço("Rua 9 de junho");
            list.add(f2);   
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