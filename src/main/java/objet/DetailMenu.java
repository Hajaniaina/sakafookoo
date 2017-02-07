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
public class DetailMenu extends Menu{
    int idDetailMenu;
    Resto resto;
    Produit produit;
    int nbJaime;

    public int getNbJaime() {
        return nbJaime;
    }

    public void setNbJaime(int nbJaime) {
        this.nbJaime = nbJaime;
    }

    public DetailMenu() {
    }

    public int getIdDetailMenu() {
        return idDetailMenu;
    }

    public void setIdDetailMenu(int idDetailMenu) {
        this.idDetailMenu = idDetailMenu;
    }

    public Resto getResto() {
        return resto;
    }

    public void setResto(Resto resto) {
        this.resto = resto;
    }

    public Produit getProduit() {
        return produit;
    }

    public void setProduit(Produit idProduit) {
        this.produit = idProduit;
    }
}
