package com.sample.tdf.dto;


import cn.com.taiji.common.dto.BaseDTO;
import cn.com.taiji.common.util.CommonJpaQueryWord;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.Digits;

/**
 * 员工DTO对象
 **/
@ApiModel(value = "员工 DTO对象")
@Data
@NoArgsConstructor
public class EmployeeDTO extends BaseDTO {
    private static final long serialVersionUID = 2555428872399L;

    private String name;//员工姓名

    private Integer sex; //员工性别

    private String address; //员工居住地址

    private Integer age; //员工年龄
}
