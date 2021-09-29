package com.sample.tdf.sample.domain;

import cn.com.taiji.common.base.BaseDomain;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@EqualsAndHashCode(callSuper = true)
@AllArgsConstructor
@NoArgsConstructor
@TableName("course")
@ApiModel(value="Course对象", description="")
public class Course extends BaseDomain {

    private static final long serialVersionUID=1L;

    private String courseName;
}
