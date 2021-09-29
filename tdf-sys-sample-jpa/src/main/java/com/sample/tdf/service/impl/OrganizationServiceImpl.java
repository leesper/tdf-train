package com.sample.tdf.service.impl;

import cn.com.taiji.common.base.BaseTreeServiceImpl;
import com.sample.tdf.domain.Organization;
import com.sample.tdf.domain.OrganizationRepository;
import com.sample.tdf.dto.OrganizationDTO;
import com.sample.tdf.service.IOrganizationService;
import org.springframework.stereotype.Service;

@Service
public class OrganizationServiceImpl extends BaseTreeServiceImpl<OrganizationRepository, Organization,
        OrganizationDTO> implements IOrganizationService {
}
