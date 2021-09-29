package com.sample.tdf.sample.service;

import cn.com.taiji.common.domain.CommonDomain;
import cn.com.taiji.common.service.IBaseService;
import com.sample.tdf.sample.dto.CourseDTO;

public interface ICourseService<D extends CommonDomain> extends IBaseService<CourseDTO, D> {

}
