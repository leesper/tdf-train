package com.sample.tdf.api;

import cn.com.taiji.common.api.BaseTreeController;
import com.sample.tdf.dto.OrganizationDTO;
import com.sample.tdf.service.IOrganizationService;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Api(tags = {"42.组织"})
@RequestMapping("/test/organization")
public class OrganizationController extends BaseTreeController<IOrganizationService, OrganizationDTO> {

}
