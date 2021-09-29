package com.sample.tdf.service.impl;

import cn.com.taiji.common.base.BaseJoinServiceImpl;
import com.sample.tdf.domain.EmployeeOrganization;
import com.sample.tdf.domain.EmployeeOrganizationRepository;
import com.sample.tdf.dto.EmployeeOrganizationJoinDTO;
import com.sample.tdf.service.IEmployeeOrganizationService;
import org.springframework.stereotype.Service;

@Service
public class EmployeeOrganizationServiceImpl extends BaseJoinServiceImpl<EmployeeOrganizationRepository,
        EmployeeOrganization, EmployeeOrganizationJoinDTO> implements IEmployeeOrganizationService {
}
