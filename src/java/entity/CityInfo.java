/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author jonassimonsen
 */
@Entity
@XmlRootElement
public class CityInfo implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    private int zip;
    private String city;
    @OneToMany(mappedBy = "cityInfo")
    private List<Address> addresses = new ArrayList();

    public CityInfo(){}

    public CityInfo(int zip, String city) {
        this.zip = zip;
        this.city = city;
    }

    @XmlTransient
    public List<Address> getAddresses() {
        return addresses;
    }  
    
    public void addAddress(Address address){
        addresses.add(address);
    }
    
    public void removeAddress(Address address){
        addresses.remove(address);
    }

    public int getZip() {
        return zip;
    }

    public void setZip(int zip) {
        this.zip = zip;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
