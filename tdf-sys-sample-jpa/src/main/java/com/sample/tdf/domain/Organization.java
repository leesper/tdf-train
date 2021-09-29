package com.sample.tdf.domain;

import cn.com.taiji.common.base.BaseTreeDomain;
import cn.com.taiji.common.util.CommonJpaQueryWord;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Where;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 机构实体类
 **/
@Data
@NoArgsConstructor
@Entity
@Table(name = "organization")
@Where(clause = "flag=1")
public class Organization extends BaseTreeDomain {

    @CommonJpaQueryWord(func = CommonJpaQueryWord.MatchType.like)
    private String name; //机构名

    @CommonJpaQueryWord(func = CommonJpaQueryWord.MatchType.like)
    private String officialAddress; //地址

}
