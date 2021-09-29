package com.sample.tdf.domain;

import cn.com.taiji.common.base.IBaseRepository;
import cn.com.taiji.common.base.IBaseTreeRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrganizationRepository extends IBaseTreeRepository<Organization> {
}
