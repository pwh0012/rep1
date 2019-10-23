package com.turing.entity;

import java.io.Serializable;
import java.math.BigDecimal;

public class Product implements Serializable {
    private Integer prodId;

    private String prodName;

    private String prodType;

    private String prodBatch;

    private String proUnit;

    private BigDecimal proPrice;

    private String proMemo;

    private static final long serialVersionUID = 1L;

    public Integer getProdId() {
        return prodId;
    }

    public void setProdId(Integer prodId) {
        this.prodId = prodId;
    }

    public String getProdName() {
        return prodName;
    }

    public void setProdName(String prodName) {
        this.prodName = prodName == null ? null : prodName.trim();
    }

    public String getProdType() {
        return prodType;
    }

    public void setProdType(String prodType) {
        this.prodType = prodType == null ? null : prodType.trim();
    }

    public String getProdBatch() {
        return prodBatch;
    }

    public void setProdBatch(String prodBatch) {
        this.prodBatch = prodBatch == null ? null : prodBatch.trim();
    }

    public String getProUnit() {
        return proUnit;
    }

    public void setProUnit(String proUnit) {
        this.proUnit = proUnit == null ? null : proUnit.trim();
    }

    public BigDecimal getProPrice() {
        return proPrice;
    }

    public void setProPrice(BigDecimal proPrice) {
        this.proPrice = proPrice;
    }

    public String getProMemo() {
        return proMemo;
    }

    public void setProMemo(String proMemo) {
        this.proMemo = proMemo == null ? null : proMemo.trim();
    }
}