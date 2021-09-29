package com.sample.tdf.sample.service.impl;

import cn.com.taiji.common.base.BaseServiceImpl;
import com.sample.tdf.sample.domain.LoginLog;
import com.sample.tdf.sample.domain.Student;
import com.sample.tdf.sample.dto.LoginLogDTO;
import com.sample.tdf.sample.dto.StudentDTO;
import com.sample.tdf.sample.mapper.LoginLogMapper;
import com.sample.tdf.sample.mapper.StudentMapper;
import com.sample.tdf.sample.service.ILoginLogService;
import org.springframework.stereotype.Service;

/**
 * @author chenzhe
 * @version 1.0
 * @date 2021/5/12
 * @describe
 */
@Service
public class LoginLoginServiceImpl extends BaseServiceImpl<LoginLogMapper, LoginLog, LoginLogDTO> implements ILoginLogService<LoginLog> {


}
