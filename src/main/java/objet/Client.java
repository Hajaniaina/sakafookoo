/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objet;

/**
 *
 * @author user
 */
public class Client {
    int idClient;
    Contact contact;
    String nom;
    String prenom;
    String utilisateur;
    String mdp;

    public String getUtilisateur() {
        return utilisateur;
    }

    public void setUtilisateur(String utiisateur) {
        this.utilisateur = utiisateur;
    }

    public String getMdp() {
        return mdp;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }
    
    public Client() {
    }

    public int getIdClient() {
        return idClient;
    }

    public void setIdClient(int idClient) {
        this.idClient = idClient;
    }

    public Contact getContact() {
        return contact;
    }

    public void setContact(Contact contact) {
        this.contact = contact;
    }


    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenomClient) {
        this.prenom = prenomClient;
    }
    
    
}
