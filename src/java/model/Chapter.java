/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author THANH SON
 */
public class Chapter {

    private int idchapter;
    private String namechapter;
    private String descriptionchapter;
    private int ProductID;

    public Chapter() {
    }

    public Chapter(int idchapter, String namechapter, String descriptionchapter, int ProductID) {
        this.idchapter = idchapter;
        this.namechapter = namechapter;
        this.descriptionchapter = descriptionchapter;
        this.ProductID = ProductID;
    }

    public int getIdchapter() {
        return idchapter;
    }

    public void setIdchapter(int idchapter) {
        this.idchapter = idchapter;
    }

    public String getNamechapter() {
        return namechapter;
    }

    public void setNamechapter(String namechapter) {
        this.namechapter = namechapter;
    }

    public String getDescriptionchapter() {
        return descriptionchapter;
    }

    public void setDescriptionchapter(String descriptionchapter) {
        this.descriptionchapter = descriptionchapter;
    }

    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }

    @Override
    public String toString() {
        return "Chapter{" + "idchapter=" + idchapter + ", namechapter=" + namechapter + ", descriptionchapter=" + descriptionchapter + ", ProductID=" + ProductID + '}';
    }
}

