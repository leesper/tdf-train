package com.sample.tdf.generator.domain;

import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import lombok.Data;

/**
 * @author chenzhe
 * @version 1.0
 * @date 2021/6/2
 * @describe
 */
@Data
public class BaseGenerator {
    private DataSourceConfig dataSourceConfig;
    private PackageConfig packageConfig;
    private String moudlePath;
    private String[] domainTables;
    private String[] joinTables;
    private String[] treeTables;

}
