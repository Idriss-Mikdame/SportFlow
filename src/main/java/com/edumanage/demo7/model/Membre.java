package com.edumanage.demo7.model;

import javax.xml.crypto.Data;

public class Membre {
    private int id;
    private String nom;
    private String SportPratique;
    private Data naissance;

    public Membre( ) {

    }

    public Membre(String nom, String sportPratique, Data naissance) {
        this.nom = nom;
        this.SportPratique = sportPratique;
        this.naissance = naissance;
    }

    public Membre(int id, String nom, String sportPratique, Data naissance) {
        this.id = id;
        this.nom = nom;
        this.SportPratique = sportPratique;
        this.naissance = naissance;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getSportPratique() {
        return SportPratique;
    }

    public void setSportPratique(String sportPratique) {
        SportPratique = sportPratique;
    }

    public Data getNaissance() {
        return naissance;
    }

    public void setNaissance(Data naissance) {
        this.naissance = naissance;
    }
}
