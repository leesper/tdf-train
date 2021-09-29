package com.sample.tdf.dto;

import cn.com.taiji.common.annotation.BaseJoinId;
import cn.com.taiji.common.dto.BaseJoinDTO;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.NoArgsConstructor;

@ApiModel(value = "员工机构DTO")
@Data
@NoArgsConstructor
public class EmployeeOrganizationJoinDTO extends BaseJoinDTO {
    private String employeeId;
    private String organizationId;
}
