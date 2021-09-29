package com.sample.tdf.sample.service.impl;

import cn.com.taiji.common.base.BaseServiceImpl;
import cn.com.taiji.common.dto.PageDTO;
import cn.com.taiji.common.exception.BaseException;
import cn.com.taiji.common.util.CommonMybatisPageUtil;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sample.tdf.sample.domain.Student;
import com.sample.tdf.sample.dto.CourseDTO;
import com.sample.tdf.sample.dto.ScoreWithNamesDTO;
import com.sample.tdf.sample.dto.StudentDTO;
import com.sample.tdf.sample.exception.TDFSampleException;
import com.sample.tdf.sample.mapper.StudentMapper;
import com.sample.tdf.sample.service.IStudentService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class StudentServiceImpl extends BaseServiceImpl<StudentMapper, Student, StudentDTO> implements IStudentService<Student> {

    @Override
    public PageDTO getPage(PageDTO pageDTO) throws BaseException {
        Page page = CommonMybatisPageUtil.getInstance().pageDTOtoPage(pageDTO);
        Student student = getDomainFilterFromPageDTO(pageDTO);
        IPage<Student> studentIPage = iBaseRepository.selectPage(page, student);
        PageDTO resultPage = CommonMybatisPageUtil.getInstance().iPageToPageDTO(studentIPage, StudentDTO.class);
        return resultPage;
    }

    @Override
    public StudentDTO beforeCreate(StudentDTO dto) {
        if (StringUtils.isEmpty(dto.getStudentClass())) {
            throw new TDFSampleException("学生班级不能为空");
        }
        if (StringUtils.isEmpty(dto.getStudentName())) {
            throw new TDFSampleException("学生姓名不能为空");
        }
        if (StringUtils.isEmpty(dto.getStudentSex())) {
            throw new TDFSampleException("学生性别不能为空");
        }
        return super.beforeCreate(dto);
    }


    @Override
    public List<StudentDTO> findByStudentClass(String studentClass) {
        List<Student> students = iBaseRepository.findByStudentClass(studentClass);
        return domainListToDTOList(students);
    }

    @Override
    public String dynamicSql() {
        String s = iBaseRepository.selectTime();
        return s;
    }
}
