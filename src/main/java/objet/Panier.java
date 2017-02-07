/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objet;

import java.util.ArrayList;

/**
 *
 * @author user
 */
public class Panier {
    ArrayList<DetailCommande> listeCommande;

    public ArrayList<DetailCommande> getListeCommande() {
        return listeCommande;
    }

    public void setListeCommande(ArrayList<DetailCommande> listeCommande) {
        this.listeCommande = listeCommande;
    }

    public Panier() {
    }
}
