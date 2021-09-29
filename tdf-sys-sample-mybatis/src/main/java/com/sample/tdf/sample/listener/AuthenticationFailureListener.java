package com.sample.tdf.sample.listener;

import cn.com.taiji.common.util.CommonReflectionUtil;
import cn.hutool.json.JSON;
import cn.hutool.json.JSONUtil;
import com.sample.tdf.sample.dto.LoginLogDTO;
import com.sample.tdf.sample.service.ILoginLogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.security.authentication.event.AbstractAuthenticationFailureEvent;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Component;

/**
 * 用户登录失败监听器
 *
 * @author arjun
 * @date 2020/12/08
 */
@Component
class AuthenticationFailureListener implements ApplicationListener<AbstractAuthenticationFailureEvent> {
    private static final Logger logger = LoggerFactory.getLogger(AuthenticationFailureListener.class);
    @Autowired
    private ILoginLogService iLoginLogService;

    @Override
    public void onApplicationEvent(AbstractAuthenticationFailureEvent event) {
        AuthenticationException exception = event.getException();
        Authentication authentication = event.getAuthentication();
        WebAuthenticationDetails details = (WebAuthenticationDetails) authentication.getDetails();
        String remoteAddress = details.getRemoteAddress();
        String name = authentication.getName();
        LoginLogDTO dto = new LoginLogDTO();
//        dto.setMessage(exception.getMessage());
        dto.setResult(0);
        if (name.length() < 100) {
            dto.setUsername(name);
        }
        dto.setRemoteAddress(remoteAddress);
        logger.info("失败      "+JSONUtil.toJsonStr(dto));
        iLoginLogService.create(dto);
    }
}
