package com.sample.tdf.sample.api;

import cn.com.taiji.common.api.BaseJoinController;
import cn.com.taiji.common.dto.PageDTO;
import cn.com.taiji.common.dto.ResultDTO;
import cn.com.taiji.common.exception.BaseException;
import com.sample.tdf.sample.dto.CourseDTO;
import com.sample.tdf.sample.dto.CourseStudentScoreDTO;
import com.sample.tdf.sample.dto.ScoreWithNamesDTO;
import com.sample.tdf.sample.dto.StudentDTO;
import com.sample.tdf.sample.service.ICourseStudentScoreService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Api(tags ="203.学生和课程关联、分数操作接口")
@RestController
@RequestMapping("/sample/course-student-score")
public class CourseStudentScoreController extends BaseJoinController<ICourseStudentScoreService, CourseStudentScoreDTO> {

    @ApiOperation(value = "根据学生Id查询课程列表", notes = "根据学生Id查询课程列表")
    @GetMapping("/getCourseByStudentId")
    public ResultDTO getCourseByStudentId(String studentId) throws BaseException {
        List<CourseDTO> courseDTOs = iBaseService.getCourseDTOsByStudentId(studentId);
        return new ResultDTO(courseDTOs);
    }

    @ApiOperation(value = "根据课程Id查询学生列表", notes = "根据课程Id查询学生列表")
    @GetMapping("/getStudentByCourseId")
    public ResultDTO getStudentByCourseId(String courseId) throws BaseException {
        List<StudentDTO> studentDTOS = iBaseService.getStudengDTOsByStudentId(courseId);
        return new ResultDTO(studentDTOS);
    }
    @ApiOperation(value = "Mybatis多表关联动态分页查询示例，分页查询分数，包含课程名称和学生名称等")
    @PostMapping(value = "/query")
    @Valid
    public ResultDTO findScoreWithNamesPageable(@RequestBody PageDTO<ScoreWithNamesDTO> pageDTO) throws BaseException {
        PageDTO scoreWithNamesPageable = iBaseService.findScoreWithNamesPageable(pageDTO);
        return new ResultDTO(scoreWithNamesPageable);
    }
}

