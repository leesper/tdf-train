package com.sample.tdf.sample.api;

import cn.com.taiji.common.api.BaseController;
import cn.com.taiji.common.dto.PageDTO;
import cn.com.taiji.common.dto.ResultDTO;
import cn.com.taiji.common.exception.BaseException;
import com.sample.tdf.sample.dto.CourseDTO;
import com.sample.tdf.sample.service.ICourseService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Api(tags = "202.课程操作接口")
@RestController
@RequestMapping("/sample/course")
public class CourseController extends BaseController<ICourseService, CourseDTO> {

}

