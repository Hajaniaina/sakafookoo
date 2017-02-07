/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fonction;

import java.util.ArrayList;
import objet.DetailCommande;
import objet.Panier;

/**
 *
 * @author user
 */
public class GestionPanier {
    public GestionPanier() {
    }
    
    public void addPanier(Panier panier,DetailCommande cmd){
        ArrayList<DetailCommande> listeCmd = panier.getListeCommande();
   
        if(listeCmd!=null){
            int ind=-88;
            for(int i=0;i<listeCmd.size();i++){
                if(listeCmd.get(i).getIdProduit()==cmd.getIdProduit()){
                    ind = i;
                }
            }
            if(ind==-88){
                listeCmd.add(cmd);
            }
            else{
                 DetailCommande modif = new DetailCommande();
                 modif.setIdProduit(listeCmd.get(ind).getIdProduit());
                 modif.setDesignation(listeCmd.get(ind).getDesignation());
                 modif.setIdCategorie(listeCmd.get(ind).getIdCategorie());
                 modif.setDescription(listeCmd.get(ind).getDescription());
                 modif.setImage(listeCmd.get(ind).getImage());
                 int qte = listeCmd.get(ind).getQuantite()+cmd.getQuantite();
                 modif.setQuantite(qte);
                 listeCmd.set(ind, modif);
                }
            
        }

        panier.setListeCommande(listeCmd);
    }
}
