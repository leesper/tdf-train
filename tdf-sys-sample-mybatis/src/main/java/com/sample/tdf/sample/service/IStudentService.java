package com.sample.tdf.sample.service;

import cn.com.taiji.common.domain.CommonDomain;
import cn.com.taiji.common.dto.PageDTO;
import cn.com.taiji.common.service.IBaseService;
import com.sample.tdf.sample.dto.ScoreWithNamesDTO;
import com.sample.tdf.sample.dto.StudentDTO;

import java.util.List;

public interface IStudentService<D extends CommonDomain> extends IBaseService<StudentDTO, D> {

    List<StudentDTO> findByStudentClass(String studentClass);

    String dynamicSql();
}
