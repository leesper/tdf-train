package com.sample.tdf.sample.service;

import cn.com.taiji.common.dto.CommonPageDTO;
import cn.com.taiji.common.exception.CommonException;
import cn.com.taiji.sys.exception.SysException;
import cn.hutool.core.util.IdUtil;
import com.sample.tdf.sample.dto.TeacherDTO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

public interface ITeacherService {

    CommonPageDTO<TeacherDTO> getPage(CommonPageDTO<TeacherDTO> commonPageDTO);

    TeacherDTO create(TeacherDTO teacherDTO);

    boolean removeById(String id);

    boolean removeByIds(List<String> ids);

    TeacherDTO findById(String id);

    List<TeacherDTO> findByIds(List<String> ids);

    boolean batchCreate(List<TeacherDTO> teacherDTOList);

    TeacherDTO update(TeacherDTO teacherDTO);

    default boolean remove(TeacherDTO teacherDTO) {
        return removeById(teacherDTO.getPk());
    }

    @Transactional(rollbackFor = Exception.class)
    default boolean batchRemove(List<TeacherDTO> teacherDTOList) {
        List<String> idList = new ArrayList<>();

        teacherDTOList.forEach(t -> {
            idList.add(t.getPk());
        });
        return removeByIds(idList);
    }

    default void beforeRemove(List<String> ids) {
        if (CollectionUtils.isEmpty(ids)) {
            throw new SysException("ID集合不能为空");
        }
        for (String id : ids) {
            if (StringUtils.isBlank(id)) {
                throw new SysException("ID不能为空");
            }
        }
    }

    default TeacherDTO beforeCreate(TeacherDTO teacherDTO) {
        if (!StringUtils.isBlank(teacherDTO.getPk())) {
            throw new CommonException("新增时候Id属性不能有值,此方法只能用于新增操作，更新请调用update方法");
        }
        teacherDTO.setPk(IdUtil.simpleUUID());
        // 初始化
        teacherDTO.setFlag(1);
        return teacherDTO;
    }
}