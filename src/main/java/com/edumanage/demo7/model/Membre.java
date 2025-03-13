package com.edumanage.demo7.model;


import javax.xml.crypto.Data;
import java.sql.Date;
import java.sql.Timestamp;

public class Membre {
    private int id;
    private String nom;
    private String SportPratique;
    private Timestamp naissance;

    public Membre(int id, String nom, String sportPratique, Timestamp naissance) {
        this.id = id;
        this.nom = nom;
        SportPratique = sportPratique;
        this.naissance = naissance;
    }

    public Membre(String nom, String sportPratique, Timestamp naissance) {
        this.nom = nom;
        this.SportPratique = sportPratique;
        this.naissance = naissance;
    }

    public Membre(String nom, Date naissance, String sportpratique) {
        this.nom = nom;
        this.SportPratique = sportpratique;
        this.naissance = new Timestamp(naissance.getTime());

    }

    public Membre(int id, String nom, Date naissance, String sportpratique) {
    this.id = id;
    this.nom = nom;
    this.naissance = new Timestamp(naissance.getTime());
    this.SportPratique = sportpratique;


    }


    public Membre(int id, String nom, Timestamp naissance, String sportpratique) {
    }

    public Membre(String nom, Timestamp naissance, String sportpratique) {
    this.nom = nom;
    this.naissance = new Timestamp(naissance.getTime());
    this.SportPratique = sportpratique;
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

    public Timestamp getNaissance() {
        return naissance;
    }

    public void setNaissance(Timestamp naissance) {
        this.naissance = naissance;
    }
}