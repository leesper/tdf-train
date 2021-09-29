package com.sample.tdf.sample.listener;

import cn.com.taiji.common.util.CommonReflectionUtil;
import cn.hutool.json.JSONUtil;
import com.sample.tdf.sample.dto.LoginLogDTO;
import com.sample.tdf.sample.service.ILoginLogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.security.authentication.event.AuthenticationSuccessEvent;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Component;

import java.util.Map;

/**
 * 用户登录成功监听器
 *
 * @author arjun
 * @date 2020/12/08
 */
@Component
public class AuthenticationSuccessListener implements ApplicationListener<AuthenticationSuccessEvent> {
    private static final Logger logger = LoggerFactory.getLogger(AuthenticationSuccessListener.class);
    @Autowired
    private ILoginLogService iLoginLogService;

    @Override
    public void onApplicationEvent(AuthenticationSuccessEvent event) {
        Authentication authentication = event.getAuthentication();
        String name = authentication.getName();
        WebAuthenticationDetails details = (WebAuthenticationDetails) authentication.getDetails();
        String remoteAddress = details.getRemoteAddress();
        LoginLogDTO dto = new LoginLogDTO();
        dto.setMessage("登陆成功");
        dto.setResult(1);
        if (name.length() < 100) {
            dto.setUsername(name);
        }
        dto.setRemoteAddress(remoteAddress);
        logger.info("登陆成功      "+JSONUtil.toJsonStr(dto));
        iLoginLogService.create(dto);
    }

}
