package com.goodStomach.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class Food implements Serializable {


    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    private String id;

    /**
     * 食物名称
     */
    private String foodName;

    /**
     * 食物价格
     */
    private Double foodPrice;

    /**
     * 食物图片
     */
    private String foodurl;

    /**
     * 配料信息
     */
    private String burdenMessage;

    /**
     * 食物介绍
     */
    private String foodMessage;

    /**
     * 种类id
     */
    private Long kingId;


}
