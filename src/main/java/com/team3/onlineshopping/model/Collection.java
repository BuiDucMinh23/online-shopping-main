/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.team3.onlineshopping.model;

/**
 *
 * @author PC
 */
public class Collection {

    private int CollectionId;
    private String CollectionTitle;
    private String CollectionStatus;
    private int NewsId;
    private int ProductId;

    public Collection() {
    }

    public Collection(int CollectionId, String CollectionTitle, String CollectionStatus, int NewsId, int ProductId) {
        this.CollectionId = CollectionId;
        this.CollectionTitle = CollectionTitle;
        this.CollectionStatus = CollectionStatus;
        this.NewsId = NewsId;
        this.ProductId = ProductId;
    }

    public int getCollectionId() {
        return CollectionId;
    }

    public void setCollectionId(int CollectionId) {
        this.CollectionId = CollectionId;
    }

    public String getCollectionTitle() {
        return CollectionTitle;
    }

    public void setCollectionTitle(String CollectionTitle) {
        this.CollectionTitle = CollectionTitle;
    }

    public String getCollectionStatus() {
        return CollectionStatus;
    }

    public void setCollectionStatus(String CollectionStatus) {
        this.CollectionStatus = CollectionStatus;
    }

    public int getNewsId() {
        return NewsId;
    }

    public void setNewsId(int NewsId) {
        this.NewsId = NewsId;
    }

    public int getProductId() {
        return ProductId;
    }

    public void setProductId(int ProductId) {
        this.ProductId = ProductId;
    }

}
