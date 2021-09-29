package com.sample.tdf.sample.service.impl;

import cn.com.taiji.common.base.BaseTreeServiceImpl;
import cn.com.taiji.common.dto.PageDTO;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.sample.tdf.sample.domain.SchoolGrade;
import com.sample.tdf.sample.dto.SchoolGradeDTO;
import com.sample.tdf.sample.mapper.SchoolGradeMapper;
import com.sample.tdf.sample.service.ISchoolGradeService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description: 学校年纪组织架构
 */
@Service
public class SchoolGradeServiceImpl extends BaseTreeServiceImpl<SchoolGradeMapper, SchoolGrade, SchoolGradeDTO> implements ISchoolGradeService<SchoolGrade> {

    @Override
    public PageDTO<SchoolGradeDTO> getPage(PageDTO<SchoolGradeDTO> pageDTO) {
        return null;
    }

    @Override
    public List<SchoolGradeDTO> findTree() {
        List<SchoolGrade> all = iBaseRepository.selectAll();
        List<SchoolGradeDTO> gradeDTOS = this.domainListToDTOList(all);
        List<SchoolGradeDTO> gradeDTOS1 = this.listToTree(gradeDTOS, null);
        return gradeDTOS1;
    }
}
