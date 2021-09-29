package com.sample.tdf.sample.mapper;

import cn.com.taiji.common.base.IBaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sample.tdf.sample.domain.Course;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CourseMapper extends IBaseMapper<Course> {

    /**
     *  分页
     */
    IPage<Course> selectPage(@Param("page")Page page,@Param("course") Course course);

}
