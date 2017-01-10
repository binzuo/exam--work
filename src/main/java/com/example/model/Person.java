package com.example.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class Person extends BaseModel {

    private Integer id;
    private String username;
    private String sex;
    private String xueli;
    private String major;
    private String skill;
    private int workId;
}