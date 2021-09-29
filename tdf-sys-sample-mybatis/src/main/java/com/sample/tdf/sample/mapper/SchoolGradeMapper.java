package com.sample.tdf.sample.mapper;

import cn.com.taiji.common.base.IBaseTreeMapper;
import com.sample.tdf.sample.domain.SchoolGrade;

import java.util.List;

public interface SchoolGradeMapper extends IBaseTreeMapper<SchoolGrade> {

    List<SchoolGrade> selectAll();
}
