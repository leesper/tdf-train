package com.sample.tdf.api;

import cn.com.taiji.common.api.BaseController;
import com.sample.tdf.dto.EmployeeDTO;
import com.sample.tdf.service.IEmployeeService;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Api(tags = {"41.员工接口"})
@RequestMapping("/test/employee")
public class EmployeeController extends BaseController<IEmployeeService, EmployeeDTO> {
}
