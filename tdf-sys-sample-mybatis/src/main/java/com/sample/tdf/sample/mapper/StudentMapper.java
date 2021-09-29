package com.sample.tdf.sample.mapper;

import cn.com.taiji.common.base.IBaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sample.tdf.sample.domain.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper extends IBaseMapper<Student> {

    /**
     *  分页
     */
    IPage<Student> selectPage(@Param("page")Page page,@Param("student") Student student);

    /**
     * 动态sql示例
     * @return
     */
    String selectTime();

    List<Student> findByStudentClass(String studentClass);
}
