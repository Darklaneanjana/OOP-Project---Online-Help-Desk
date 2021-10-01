package model;

//Java Beans
import java.io.Serializable;

//Analyst model class
public final class Analyst extends Staff implements Serializable {

	private static final long serialVersionUID = -8724714296773581393L;

    private String name;
    private String email;
    private String password;
    private String phone;
    private String address;
    private String city;
    private String state;
    private String country;
    private String zip;
    
    // Create class to store Analyst information
    public Analyst(String name, String email, String password, String phone, String address, String city, String state, String country, String zip) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.address = address;
        this.city = city;
        this.state = state;
        this.country = country;
        this.zip = zip;
    }
    public Analyst() {
        
    }
        
        // Getters and Setters
        public String getName() {
            return name;
        }
        
        public void setName(String name) {
            this.name = name;
        }
        
        public String getEmail() {
            return email;
        }
        
        public void setEmail(String email) {
            this.email = email;
        }
        
        public String getPassword() {
            return password;
        }
        
        public void setPassword(String password) {
            this.password = password;
        }
        
        public String getPhone() {
            return phone;
        }
        
        public void setPhone(String phone) {
            this.phone = phone;
        }
        
        public String getAddress() {
            return address;
        }
        
        public void setAddress(String address) {
            this.address = address;
        }
        
        public String getCity() {
            return city;
        }
        
        public void setCity(String city) {
            this.city = city;
        }
        
        public String getState() {
            return state;
        }
        
        public void setState(String state) {
            this.state = state;
        }
        
        public String getCountry() {
            return country;
        }
        
        public void setCountry(String country) {
            this.country = country;
        }
        
        public String getZip() {
            return zip;
        }
        
        public void setZip(String zip) {
            this.zip = zip;
        }
        
        // toString method
        @Override
        public String toString() {
            return "Analyst{" + "name=" + name + ", email=" + email + ", password=" + password + ", phone=" + phone + ", address=" + address + ", city=" + city + ", state=" + state + ", country=" + country + ", zip=" + zip + '}';
        }
        
        
    }