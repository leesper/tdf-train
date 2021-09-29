package com.sample.tdf.dto;

import cn.com.taiji.common.dto.BaseDTO;
import cn.com.taiji.common.dto.BaseTreeDTO;
import cn.com.taiji.common.util.CommonJpaQueryWord;
import com.sample.tdf.domain.Employee;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * 机构DTO对象
 **/
@ApiModel(value = "机构 DTO对象")
@Data
@NoArgsConstructor
public class OrganizationDTO extends BaseTreeDTO {
    private static final long serialVersionUID = 2555421232399L;

    private String name;//机构名称

    private String address;//机构地址

    private List<EmployeeDTO> employeeDTOList;
}
