package com.sample.tdf.sample.mapper;

import cn.com.taiji.common.base.IBaseJoinMapper;
import com.sample.tdf.sample.domain.CourseStudentScore;
import cn.com.taiji.common.base.IBaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.sample.tdf.sample.dto.ScoreWithNamesDTO;
import org.apache.ibatis.annotations.Param;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import java.util.List;
import java.util.Map;

public interface CourseStudentScoreMapper extends IBaseJoinMapper<CourseStudentScore> {

    /**
     *  分页
     */
    IPage<CourseStudentScore> selectPage(@Param("page")Page page,@Param("courseStudentScore") CourseStudentScore courseStudentScore);
    IPage<Map> findScoreWithNamesPageable(@Param("page")Page page, @Param("scoreWithNamesDTO") ScoreWithNamesDTO scoreWithNamesDTO);
}
