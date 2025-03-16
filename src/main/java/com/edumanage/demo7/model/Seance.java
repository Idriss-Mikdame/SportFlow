package com.edumanage.demo7.model;

import java.util.Date;

public class Seance {
    private int id;
    private int id_Membre;
    private int id_Entraineur;
    private Date datehour;

    public Seance(int id, int id_Membre, int id_Entraineur, Date datehour) {
        this.id = id;
        this.id_Membre = id_Membre;
        this.id_Entraineur = id_Entraineur;
        this.datehour = datehour;
    }

    public Seance(int id_Membre, int id_Entraineur, Date datehour) {
        this.id_Membre = id_Membre;
        this.id_Entraineur = id_Entraineur;
        this.datehour = datehour;
    }

    public Seance(int id_Membre, int id_Entraineur) {
        this.id_Membre = id_Membre;
        this.id_Entraineur = id_Entraineur;
    }

    public int getId_Membre() {
        return id_Membre;
    }

    public void setId_Membre(int id_Membre) {
        this.id_Membre = id_Membre;
    }

    public int getId_Entraineur() {
        return id_Entraineur;
    }

    public void setId_Entraineur(int id_Entraineur) {
        this.id_Entraineur = id_Entraineur;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public java.sql.Date getDatehour() {
        if (datehour instanceof java.sql.Date) {
            return (java.sql.Date) datehour;
        } else if (datehour != null) {
            return new java.sql.Date(datehour.getTime());
        }
        return null;
    }

    public void setDatehour(Date datehour) {
        this.datehour = datehour;
    }
}