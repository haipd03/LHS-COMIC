/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
public class Library {

    public static void add(Truyen truyen) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    private int AccountID;
    private int ProductID;

    public Library() {
    }

    public Library(int AccountID, int ProductID) {
        this.AccountID = AccountID;
        this.ProductID = ProductID;
    }

    public int getAccountID() {
        return AccountID;
    }

    public void setAccountID(int AccountID) {
        this.AccountID = AccountID;
    }

    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }

    @Override
    public String toString() {
        return "Library{" + "AccountID=" + AccountID + ", ProductID=" + ProductID + '}';
    }
    
    
}
