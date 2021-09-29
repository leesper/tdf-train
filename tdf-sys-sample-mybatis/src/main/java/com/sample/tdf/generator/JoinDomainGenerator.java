package com.sample.tdf.generator;

import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.InjectionConfig;
import com.baomidou.mybatisplus.generator.config.*;
import com.baomidou.mybatisplus.generator.config.po.TableInfo;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import com.baomidou.mybatisplus.generator.engine.VelocityTemplateEngine;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 用与生成中间表 Join 结构代码
 */
public class JoinDomainGenerator {

    public static void generator(GlobalConfig gc,DataSourceConfig dsc,PackageConfig pc,String[] tables,String outPutDir) {
        // 代码生成器
        AutoGenerator mpg = new AutoGenerator();
        String projectPath = System.getProperty("user.dir");
        mpg.setGlobalConfig(gc);
        mpg.setDataSource(dsc);
        mpg.setPackageInfo(pc);

        // 自定义配置
        InjectionConfig cfg = new InjectionConfig() {
            @Override
            public void initMap() {
                // to do nothing
            }
        };
        Map<String, Object> map = new HashMap<>();
        map.put("DTO", pc.getParent() + ".dto");
        cfg.setMap(map);
        // 如果模板引擎是 freemarker
        String templatePath = "/templates/mapperJoin.xml.vm";
        // 如果模板引擎是 velocity
        // String templatePath = "/templates/mapper.xml.vm";

        // 自定义输出配置
        List<FileOutConfig> focList = new ArrayList<>();
        // 自定义配置会被优先输出
        focList.add(new FileOutConfig(templatePath) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                // 自定义输出文件名 ， 如果你 Entity 设置了前后缀、此处注意 xml 的名称会跟着发生变化！！
                return outPutDir + "/resources/mapper/" + pc.getModuleName()
                        + "/" + tableInfo.getEntityName() + "Mapper" + StringPool.DOT_XML;
            }
        });

        String dtoJoinPath = "/templates/dtoJoin.java.vm";
        focList.add(new FileOutConfig(dtoJoinPath) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                String s = TdfBaseGenerator.getParent(pc.getParent()) ;
                String path=     outPutDir +"/java/"+s + "dto"
                        + "/" + tableInfo.getEntityName() + "DTO" + StringPool.DOT_JAVA;
                return path;
            }
        });
        cfg.setFileOutConfigList(focList);
        mpg.setCfg(cfg);

        // 配置模板
        TemplateConfig templateConfig = new TemplateConfig();
        templateConfig.setXml(null);
        templateConfig.setEntity("templates/dtoJoin.java");
        templateConfig.setController("templates/controllerJoin.java.vm");
        templateConfig.setService("templates/serviceJoin.java");
        templateConfig.setEntity("templates/entityJoin.java");
        templateConfig.setServiceImpl("templates/serviceJoinImpl.java");
        templateConfig.setMapper("templates/mapperJoin.java");
        mpg.setTemplate(templateConfig);

        // 策略配置
        StrategyConfig strategy = new StrategyConfig();
        strategy.setNaming(NamingStrategy.underline_to_camel);
        strategy.setColumnNaming(NamingStrategy.underline_to_camel);
        strategy.setEntityTableFieldAnnotationEnable(false);
        strategy.setEntityLombokModel(true);
        strategy.setSuperControllerClass("cn.com.taiji.common.api.BaseJoinController");
        strategy.setSuperServiceClass("cn.com.taiji.common.service.IBaseJoinService");
        strategy.setSuperServiceImplClass("cn.com.taiji.common.base.BaseJoinServiceImpl");
        strategy.setSuperEntityClass("cn.com.taiji.common.base.BaseJoinDomain");
        strategy.setSuperMapperClass("cn.com.taiji.common.base.IBaseJoinMapper");
        strategy.setInclude(tables);
        strategy.setControllerMappingHyphenStyle(true);
        strategy.setSuperEntityColumns("id","created_by","created_date","modified_by","modified_date","flag","parent_id","remark");
        strategy.setRestControllerStyle(true); //restController添加
//        strategy.setTablePrefix(pc.getModuleName() + "_");
        mpg.setStrategy(strategy);
        // 选择 freemarker 引擎需要指定如下加，注意 pom 依赖必须有！
        mpg.setTemplateEngine(new VelocityTemplateEngine());
        mpg.execute();
    }

}