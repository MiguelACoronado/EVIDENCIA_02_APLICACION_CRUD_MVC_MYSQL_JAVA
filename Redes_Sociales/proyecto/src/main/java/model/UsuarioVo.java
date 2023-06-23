package model;

public class UsuarioVo {
    private int Iduser;
    private String Nameuser;
    private String Lastnameuser;
    private String Mailuser;
    private String Numuser;
    private String Useru;
    private String Passworduser;
  
    
    // constructor vacio
    public UsuarioVo() {
        
    }


    public int getIduser() {
        return Iduser;
    }


    public void setIduser(int iduser) {
        Iduser = iduser;
    }


    public String getNameuser() {
        return Nameuser;
    }


    public void setNameuser(String nameuser) {
        Nameuser = nameuser;
    }


    public String getLastnameuser() {
        return Lastnameuser;
    }


    public void setLastnameuser(String lastnameuser) {
        Lastnameuser = lastnameuser;
    }


    public String getMailuser() {
        return Mailuser;
    }


    public void setMailuser(String mailuser) {
        Mailuser = mailuser;
    }


    public String getNumuser() {
        return Numuser;
    }


    public void setNumuser(String numuser) {
        Numuser = numuser;
    }


    public String getUseru() {
        return Useru;
    }


    public void setUseru(String useru) {
        Useru = useru;
    }


    public String getPassworduser() {
        return Passworduser;
    }


    public void setPassworduser(String passworduser) {
        Passworduser = passworduser;
    }


    public UsuarioVo(int iduser, String nameuser, String lastnameuser, String mailuser, String numuser, String useru,
            String passworduser) {
        this.Iduser = iduser;
        this.Nameuser = nameuser;
        this.Lastnameuser = lastnameuser;
        this.Mailuser = mailuser;
        this.Numuser = numuser;
        this.Useru = useru;
        this.Passworduser = passworduser;
    }


    


    
    
   
    
  
   
   
}
