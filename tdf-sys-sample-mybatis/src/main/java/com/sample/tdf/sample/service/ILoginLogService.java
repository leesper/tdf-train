package com.sample.tdf.sample.service;

import cn.com.taiji.common.domain.CommonDomain;
import cn.com.taiji.common.service.IBaseService;
import com.sample.tdf.sample.domain.LoginLog;
import com.sample.tdf.sample.dto.LoginLogDTO;
import com.sample.tdf.sample.dto.StudentDTO;

/**
 * @author chenzhe
 * @version 1.0
 * @date 2021/5/11
 * @describe
 */
public interface ILoginLogService<D extends CommonDomain> extends IBaseService<LoginLogDTO, D> {

}
