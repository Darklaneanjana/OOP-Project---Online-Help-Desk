package model;

public abstract class Staff {
    private String id;
    private String name;
    private String password;
    private String phone;
    private String email;
    private String staffAddress;
    private String role;
    private String status;

    protected Staff() {
    }

    protected Staff(String id, String name, String password, String phone, String email, String staffAddress, String role, String status) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.phone = phone;
        this.email = email;
        this.staffAddress = staffAddress;
        this.role = role;
        this.status = status;
    }

    public String getid() {
        return id;
    }

    public void setid(String id) {
        this.id = id;
    }

    public String getname() {
        return name;
    }

    public void setname(String name) {
        this.name = name;
    }

    public String getpassword() {
        return password;
    }

    public void setpassword(String password) {
        this.password = password;
    }

    public String getphone() {
        return phone;
    }
    
    public void setphone(String phone) {
        this.phone = phone;
    }
    
    public String getemail() {
        return email;
    }
    
    public void setemail(String email) {
        this.email = email;
    }
    
    public String getstaffAddress() {
        return staffAddress;
    }
    
    public void setstaffAddress(String staffAddress) {
        this.staffAddress = staffAddress;
    }
    
    public String getrole() {
        return role;
    }
    
    public void setrole(String role) {
        this.role = role;
    }
    
    public String getstatus() {
        return status;
    }
    
    public void setstatus(String status) {
        this.status = status;
    }
        
    public String toString() {
        return "Staff{" + "id=" + id + ", name=" + name + ", password=" + password + ", phone=" + phone + ", email=" + email + ", staffAddress=" + staffAddress + ", role=" + role + ", status=" + status + '}';
    }
}
