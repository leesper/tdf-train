package com.sample.tdf.sample.service;

import cn.com.taiji.common.domain.CommonDomain;
import cn.com.taiji.common.service.IBaseTreeService;
import com.sample.tdf.sample.dto.SchoolGradeDTO;

import java.util.List;

public interface ISchoolGradeService<D extends CommonDomain> extends IBaseTreeService<SchoolGradeDTO, D> {
    List<SchoolGradeDTO> findTree();
}
