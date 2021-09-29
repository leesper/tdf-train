package com.sample.tdf.api;

import cn.com.taiji.common.api.BaseJoinController;
import cn.com.taiji.common.dto.ResultDTO;
import com.sample.tdf.dto.EmployeeOrganizationJoinDTO;
import com.sample.tdf.dto.OrganizationDTO;
import com.sample.tdf.service.IEmployeeOrganizationService;
import com.sample.tdf.service.IEmployeeService;
import com.sample.tdf.service.IOrganizationService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@Api(tags = {"43.员工-组织"})
@RequestMapping("/test/employeeOrganization")
public class EmployeeOrganizationController extends BaseJoinController<IEmployeeOrganizationService, EmployeeOrganizationJoinDTO> {

    @Autowired
    IEmployeeService employeeService;
    @Autowired
    IOrganizationService organizationService;

    @ApiOperation(value = "查询某个组织机构下所有员工的功能,并以树形结构返回")
    @GetMapping(value = "/findEmployeeByOrganizationID")
    public ResultDTO findEmployeeByOrganizationID (@RequestParam  String id){

        OrganizationDTO top = organizationService.findById(id);
        if(top == null) return  new ResultDTO(2,"请求的机构ID有误，未查询到数据！",null);

        List<OrganizationDTO> organList= organizationService.findChildrenByParentId(id);
        organList.forEach((organization) -> {
            List<String> employeeIdList = this.iBaseService.findFirstIdsBySecondId(organization.getId());
            organization.setEmployeeDTOList(employeeService.findByIds(employeeIdList));
        });
        List<OrganizationDTO> result = organizationService.listToTree(organList,top.getParentId());

        return new ResultDTO(result);

    }
}
