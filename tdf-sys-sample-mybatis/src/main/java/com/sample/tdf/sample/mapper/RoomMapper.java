package com.sample.tdf.sample.mapper;

import cn.com.taiji.common.base.ICommonDaoRepository;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sample.tdf.sample.domain.Room;
import org.apache.ibatis.annotations.Param;

public interface RoomMapper extends ICommonDaoRepository<Room> {

    /**
     * 分页
     */
    IPage<Room> selectPage(@Param("page") Page page, @Param("room") Room room);
}
