package com.sample.tdf.domain;

import cn.com.taiji.common.annotation.BaseJoinId;
import cn.com.taiji.common.base.BaseJoinDomain;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 员工和机构关联表
 **/
@Data
@NoArgsConstructor
@Entity
@Table(name = "EmployeeOrganization")
public class EmployeeOrganization extends BaseJoinDomain {

    @BaseJoinId(index=BaseJoinId.Index.first)
    private String employeeID;

    @BaseJoinId(index=BaseJoinId.Index.second)
    private String organizationID;
}
