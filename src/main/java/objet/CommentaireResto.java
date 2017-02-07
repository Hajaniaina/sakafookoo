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
public class CommentaireResto {
    int id;
    int idClient;
    int idResto;
    String contenuComm;
    Date dateComm;

    public CommentaireResto() {
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

    public int getIdResto() {
        return idResto;
    }

    public void setIdResto(int idResto) {
        this.idResto = idResto;
    }

    public String getContenuComm() {
        return contenuComm;
    }

    public void setContenuComm(String contenuComm) {
        this.contenuComm = contenuComm;
    }

    public Date getDateComm() {
        return dateComm;
    }

    public void setDateComm(Date dateComm) {
        this.dateComm = dateComm;
    }
    
    
}
