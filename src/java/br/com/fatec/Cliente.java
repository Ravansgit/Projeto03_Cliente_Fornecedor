package br.com.fatec;
import java.util.ArrayList;
public class Cliente {

    private static void listadd(Cliente c1) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    //DECLARAÇÃO DAS VARIÁVEIS
    private String nome;
    private String cpf;
    private String rg;
    private String email;
    private String telefone;
    private String endereco;

    //Adicionando Get e Set
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
    
    public static ArrayList<Cliente> list;
    public static ArrayList<Cliente> getList(){
    
       if(list==null){
            list = new ArrayList<>();
            Cliente c1 = new Cliente();
            c1.setNome("Fulano");
            c1.setCpf("000.000.000-00");
            c1.setRg("00.000.000-0");
            c1.setEmail("fulano.dji@gmail.com");
            c1.setTelefone("13 9 0000-0000");
            c1.setEndereco("Avenida Praia Grande, nº33, Bairro Boqueirão,Praia Grande");
            listadd(c1);
           
         
        }
        return list;
    }
}
    
    
    
    
    
    
    

  