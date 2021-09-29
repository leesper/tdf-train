package com.sample.tdf.sample.service.impl;

import cn.com.taiji.common.dto.CommonPageDTO;
import cn.com.taiji.common.exception.CommonException;
import cn.com.taiji.common.util.CommonBeanUtil;
import cn.com.taiji.common.util.CommonMybatisPageUtil;
import cn.com.taiji.sys.exception.SysException;
import cn.hutool.core.collection.CollUtil;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.sample.tdf.sample.domain.Teacher;
import com.sample.tdf.sample.dto.StudentDTO;
import com.sample.tdf.sample.dto.TeacherDTO;
import com.sample.tdf.sample.mapper.TeacherMapper;
import com.sample.tdf.sample.service.ITeacherService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Service
public class TeacherServiceImpl extends ServiceImpl<TeacherMapper, Teacher> implements ITeacherService {

    @Autowired
    private TeacherMapper teacherMapper;

    public CommonPageDTO<TeacherDTO> getPage(CommonPageDTO<TeacherDTO> commonPageDTO) {
        Page page = CommonMybatisPageUtil.getInstance().pageDTOtoPage(commonPageDTO);
        TeacherDTO dto = commonPageDTO.getFilters();
        Teacher domain = dtoToDomain(dto, true);
        IPage<Teacher> studentIPage = teacherMapper.selectPage(page, domain);
        CommonPageDTO resultPage = CommonMybatisPageUtil.getInstance().iPageToCommonPageDTO(studentIPage, StudentDTO.class, commonPageDTO);
        return resultPage;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public TeacherDTO create(TeacherDTO teacherDTO) {
        teacherDTO = beforeCreate(teacherDTO);
        Teacher t = dtoToDomain(teacherDTO, true);

        if (teacherMapper.insert(t) > 0) {
            return domainToDTO(t, true);
        }
        throw new CommonException("保存失败");
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean removeById(String id) {
        beforeRemove(Arrays.asList(id));
        teacherMapper.deleteById(id);
        return true;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean removeByIds(List<String> ids) {
        beforeRemove(ids);
        Set<String> cacheKeys = new HashSet<>();
        teacherMapper.deleteBatchIds(ids);
        return true;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean batchCreate(List<TeacherDTO> teacherDTOList) {
        List<Teacher> ts = new ArrayList();
        teacherDTOList.forEach(dto -> {
            dto = beforeCreate(dto);
            Teacher t = dtoToDomain(dto, true);
            ts.add(t);
        });
        saveBatch(ts);

        return true;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public TeacherDTO update(TeacherDTO teacherDTO) {
        if (StringUtils.isBlank(teacherDTO.getPk())) {
            throw new SysException("ID不能为空");
        }
        Teacher t = dtoToDomain(teacherDTO, false);
        if (teacherMapper.updateById(t) > 0) {
            return domainToDTO(t, true);
        }

        throw new CommonException("更新失败");
    }

    @Override
    public TeacherDTO findById(String id) {
        Teacher domain = teacherMapper.selectById(id);
        if (domain == null) {
            return null;
        }
        return domainToDTO(domain, true);
    }

    @Override
    public List<TeacherDTO> findByIds(List<String> ids) {
        if (CollUtil.isNotEmpty(ids)) {
            List<Teacher> domains = teacherMapper.selectBatchIds(ids);
            return domainListToDTOList(domains, true);
        } else {
            return new ArrayList<>();
        }
    }

    private TeacherDTO domainToDTO(Teacher domain, Boolean isCopyEmptyField) {
        if (domain == null) {
            return null;
        }
        TeacherDTO dto = new TeacherDTO();
        if (isCopyEmptyField) {
            CommonBeanUtil.saveCopy(domain, dto);
        } else {
            CommonBeanUtil.updateCopy(domain, dto);
        }
        return dto;
    }

    private Teacher dtoToDomain(TeacherDTO dto, Boolean isCopyEmptyField) {
        if (dto == null) {
            return null;
        }
        Teacher t = new Teacher();
        if (isCopyEmptyField) {
            CommonBeanUtil.saveCopy(dto, t);
        } else {
            CommonBeanUtil.updateCopy(dto, t);
        }
        return t;
    }

    private List<TeacherDTO> domainListToDTOList(List<Teacher> dList, Boolean isCopyEmptyField) {
        List<TeacherDTO> dtoList = new ArrayList();
        dList.forEach(d ->
                dtoList.add(domainToDTO(d, isCopyEmptyField))
        );
        return dtoList;
    }

    private List<Teacher> dtoListToDomainList(List<TeacherDTO> dtoList, Boolean isCopyEmptyField) {
        List<Teacher> dList = new ArrayList();
        dtoList.forEach(dto -> {
            dList.add(dtoToDomain(dto, isCopyEmptyField));
        });
        return dList;
    }
}
