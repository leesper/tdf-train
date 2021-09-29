package com.sample.tdf.sample.service.impl;

import cn.com.taiji.common.base.BaseServiceImpl;
import cn.com.taiji.common.dto.PageDTO;
import cn.com.taiji.common.exception.BaseException;
import cn.com.taiji.common.util.CommonMybatisPageUtil;
import cn.com.taiji.sys.dto.DataItemDTO;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sample.tdf.sample.domain.Course;
import com.sample.tdf.sample.dto.CourseDTO;
import com.sample.tdf.sample.mapper.CourseMapper;
import com.sample.tdf.sample.service.ICourseService;
import org.springframework.stereotype.Service;

@Service
public class CourseServiceImpl extends BaseServiceImpl<CourseMapper, Course, CourseDTO> implements ICourseService<Course> {

    @Override
    public PageDTO getPage(PageDTO pageDTO) throws BaseException {
        Page page = CommonMybatisPageUtil.getInstance().pageDTOtoPage(pageDTO);
        Course course =getDomainFilterFromPageDTO(pageDTO);
        IPage<Course> courseIPage = iBaseRepository.selectPage(page, course);
        PageDTO resultPage = CommonMybatisPageUtil.getInstance().iPageToPageDTO(courseIPage, CourseDTO.class);
        return resultPage;
    }

}
