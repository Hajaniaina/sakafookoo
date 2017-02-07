/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objet;

import java.sql.Date;

/**
 *
 * @author user
 */
public class CommentaireProduit {
    int id;
    int idClient;
    int idProduit;
    String contenuComm;
    Date dateCommProd;
    
    public CommentaireProduit() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdClient() {
        return idClient;
    }

    public void setIdClient(int idClient) {
        this.idClient = idClient;
    }

    public int getIdProduit() {
        return idProduit;
    }

    public void setIdProduit(int idProduit) {
        this.idProduit = idProduit;
    }

    public String getContenuComm() {
        return contenuComm;
    }

    public void setContenuComm(String contenuComm) {
        this.contenuComm = contenuComm;
    }

    public Date getDateCommProd() {
        return dateCommProd;
    }

    public void setDateCommProd(Date dateCommProd) {
        this.dateCommProd = dateCommProd;
    }
    
    
}
