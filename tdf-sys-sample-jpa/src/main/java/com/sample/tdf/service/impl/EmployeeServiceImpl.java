package com.sample.tdf.service.impl;

import cn.com.taiji.common.base.BaseServiceImpl;
import com.sample.tdf.domain.Employee;
import com.sample.tdf.domain.EmployeeRepository;
import com.sample.tdf.dto.EmployeeDTO;
import com.sample.tdf.service.IEmployeeService;
import org.springframework.stereotype.Service;

@Service
public class EmployeeServiceImpl extends BaseServiceImpl<EmployeeRepository, Employee, EmployeeDTO> implements IEmployeeService {
}
