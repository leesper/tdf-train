package com.sample.tdf.domain;

import cn.com.taiji.common.base.BaseDomain;
import cn.com.taiji.common.util.CommonJpaQueryWord;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Where;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 员工
 **/
@Data
@NoArgsConstructor
@Entity
@Table(name = "employee")
@Where(clause = "flag=1")
public class Employee extends BaseDomain {
    private static final long serialVersionUID = 7578292815543249813L;

    @CommonJpaQueryWord(func = CommonJpaQueryWord.MatchType.like)
    private String name;//员工姓名

    @CommonJpaQueryWord(func = CommonJpaQueryWord.MatchType.equal)
    private Integer gender; //员工性别

    @CommonJpaQueryWord(func = CommonJpaQueryWord.MatchType.like)
    private String livingAddress; //员工居住地址

    @CommonJpaQueryWord(func = CommonJpaQueryWord.MatchType.equal)
    private Integer age; //员工年龄
}
