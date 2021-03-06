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
import javax.persistence.ManyToMany;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author jonassimonsen
 */
@Entity
@XmlRootElement
public class Hobby implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    private String name;
    private String description;
    @ManyToMany(mappedBy = "hobbies")
    private List<Person> persons;
   

    public Hobby() {
    }

    public Hobby(String name, String description) {
        this.name = name;
        this.description = description;
        persons = new ArrayList();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    public void addPerson(Person person){
        persons.add(person);
    }
    
    public void removePerson(Person person){
        persons.remove(person);
    }

    @XmlTransient
    public List<Person> getPersons() {
        return persons;
    }  
}