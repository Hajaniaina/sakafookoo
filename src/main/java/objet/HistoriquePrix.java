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
public class HistoriquePrix {
    int idHistorique;
    int idProduit;
    double valeur;
    Date datePrix;

    public HistoriquePrix() {
    }

    public int getIdHistorique() {
        return idHistorique;
    }

    public void setIdHistorique(int idHistorique) {
        this.idHistorique = idHistorique;
    }

    public int getIdProduit() {
        return idProduit;
    }

    public void setIdProduit(int idProduit) {
        this.idProduit = idProduit;
    }

    public double getValeur() {
        return valeur;
    }

    public void setValeur(double valeur) {
        this.valeur = valeur;
    }

    public Date getDatePrix() {
        return datePrix;
    }

    public void setDatePrix(Date datePrix) {
        this.datePrix = datePrix;
    }
    
    
}
