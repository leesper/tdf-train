package com.sample.tdf.sample.domain;

import cn.com.taiji.common.base.BaseDomain;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @author chenzhe
 * @version 1.0
 * @date 2021/5/11
 * @describe
 */
@Data
@EqualsAndHashCode(callSuper = true)
@AllArgsConstructor
@NoArgsConstructor
@TableName("login_log")
public class LoginLog extends BaseDomain {
    private String username;
    private Integer result;
    private String message;
    private String remoteAddress;
}
