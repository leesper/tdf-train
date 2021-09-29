package com.sample.tdf.sample.service;

import cn.com.taiji.common.domain.CommonDomain;
import cn.com.taiji.common.dto.PageDTO;
import cn.com.taiji.common.service.IBaseJoinService;
import com.sample.tdf.sample.dto.CourseDTO;
import com.sample.tdf.sample.dto.CourseStudentScoreDTO;
import com.sample.tdf.sample.dto.ScoreWithNamesDTO;
import com.sample.tdf.sample.dto.StudentDTO;

import java.util.List;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author 太极计算机股份有限公司
 * @since 2020-04-07
 */
public interface ICourseStudentScoreService<D extends CommonDomain> extends IBaseJoinService<CourseStudentScoreDTO, D> {
    List<CourseDTO> getCourseDTOsByStudentId(String studentId);

    List<StudentDTO> getStudengDTOsByStudentId(String courseId);

    List<String> getCourseIdsByStudentId(String studentId);

    List<String> getCourseIdsByStudentIds(List<String> studentIds);

    List<String> getStudentIdsByCourseId(String courseId);

    List<String> getStudentIdsByCourseIds(List<String> courseIds);

    PageDTO<ScoreWithNamesDTO> findScoreWithNamesPageable(PageDTO<ScoreWithNamesDTO> pageDTO);
}
