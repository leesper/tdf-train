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
 * 用于生成Domain代码
 */
public class DomainGenerator {

    public static  void generator(GlobalConfig gc,DataSourceConfig dsc,PackageConfig pc,String[] tables, String outPutDir){
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
        List<FileOutConfig> focList = new ArrayList<>();

        String templatePath = "/templates/mapper.xml.vm";
        focList.add(new FileOutConfig(templatePath) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                // 自定义输入文件名称
                return outPutDir + "/resources/mapper/" + pc.getModuleName()
                        + "/" + tableInfo.getEntityName() + "Mapper" + StringPool.DOT_XML;
            }
        });

        String dtoPath = "/templates/dto.java.vm";
//        URL resource = TestDoMainGenerator.class.getClassLoader().getResource("/template");
        focList.add(new FileOutConfig(dtoPath) {
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
        mpg.setTemplate(new TemplateConfig().setXml(null)); //疑问

        // 策略配置
        StrategyConfig strategy = new StrategyConfig();
        strategy.setNaming(NamingStrategy.underline_to_camel);
        strategy.setColumnNaming(NamingStrategy.underline_to_camel);
        strategy.setEntityTableFieldAnnotationEnable(false);
        strategy.setEntityLombokModel(true);
        strategy.setSuperControllerClass("cn.com.taiji.common.api.BaseController");
        strategy.setSuperServiceClass("cn.com.taiji.common.service.IBaseService");
        strategy.setSuperServiceImplClass("cn.com.taiji.common.base.BaseServiceImpl");
        strategy.setSuperEntityClass("cn.com.taiji.common.base.BaseDomain");
        strategy.setSuperMapperClass("cn.com.taiji.common.base.IBaseMapper");
        strategy.setInclude(tables);
        // 写于父类中的公共字段
        strategy.setSuperEntityColumns("id","created_by","created_date","modified_by","modified_date","flag","parent_id","remark");
        strategy.setControllerMappingHyphenStyle(true);
        strategy.setRestControllerStyle(true); //restController添加
//        strategy.setTablePrefix(pc.getModuleName() + "_");
        mpg.setStrategy(strategy);
        // 选择 freemarker 引擎需要指定如下加，注意 pom 依赖必须有！
        mpg.setTemplateEngine(new VelocityTemplateEngine());
        mpg.execute();
    }
}
