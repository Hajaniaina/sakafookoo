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
public class Chat {
    int idChat;
    int idExpediteur;
    int idDestinataire;
    String contenuMsg;
    Date dateMessage;
    String isImageShare;

    public String getIsImageShare() {
        return isImageShare;
    }

    public void setIsImageShare(String isImageShare) {
        this.isImageShare = isImageShare;
    }
    public Chat() {
    }

    public int getIdChat() {
        return idChat;
    }

    public void setIdChat(int idChat) {
        this.idChat = idChat;
    }

    public int getIdExpediteur() {
        return idExpediteur;
    }

    public void setIdExpediteur(int idExpediteur) {
        this.idExpediteur = idExpediteur;
    }

    public int getIdDestinataire() {
        return idDestinataire;
    }

    public void setIdDestinataire(int idDestinataire) {
        this.idDestinataire = idDestinataire;
    }

    public String getContenuMsg() {
        return contenuMsg;
    }

    public void setContenuMsg(String contenuMsg) {
        this.contenuMsg = contenuMsg;
    }

    public Date getDateMessage() {
        return dateMessage;
    }

    public void setDateMessage(Date dateMessage) {
        this.dateMessage = dateMessage;
    }
    
    
}
