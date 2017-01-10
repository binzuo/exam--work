package com.example.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class Work extends BaseModel {

    private Integer id;
    private String worknumber;
    private String workname;
    private String workduty;
    private String workneed;
    private String worknote;
}