package com.sample.tdf.generator;

import com.baomidou.mybatisplus.annotation.IdType;
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

public class VueGenerator {
    /**
     * RUN THIS
     */
    public static void main(String[] args) {
        // 代码生成器
        AutoGenerator mpg = new AutoGenerator();

        // 全局配置
        GlobalConfig gc = new GlobalConfig();
        String projectPath = System.getProperty("user.dir");
        gc.setOutputDir(projectPath + "\\src\\main\\java");
        gc.setAuthor("陈哲");
        gc.setOpen(false);
        gc.setIdType(IdType.ASSIGN_UUID); //自动生成uuid
        gc.setBaseColumnList(true);       //添加BaseColumnList在xml
        gc.setBaseResultMap(true);        //添加BaseResultMap在xml
        gc.setSwagger2(true);             //使用实体属性 Swagger2 注解
        mpg.setGlobalConfig(gc);

        // 数据源配置
        DataSourceConfig dsc = new DataSourceConfig();
        dsc.setUrl("jdbc:mysql://localhost:3306/tdf?serverTimezone=GMT%2B8&amp&useSSL=false&characterEncoding=utf-8");
//         dsc.setSchemaName("public");
        dsc.setDriverName("com.mysql.cj.jdbc.Driver");
        dsc.setUsername("root");
        dsc.setPassword("root");
        mpg.setDataSource(dsc);

        // 包配置
        PackageConfig pc = new PackageConfig();
        pc.setModuleName("student");
        pc.setParent("cn.com.taiji");
        pc.setController("web");
        pc.setEntity("domain");
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
        map.put("REF", "$refs");
        cfg.setMap(map);
        List<FileOutConfig> focList = new ArrayList<>();

        String templatePath = "/templates/mapper.xml.vm";
        focList.add(new FileOutConfig(templatePath) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                // 自定义输入文件名称
                return projectPath + "/src/main/resources/mapper/" + pc.getModuleName()
                        + "/" + tableInfo.getEntityName() + "Mapper" + StringPool.DOT_XML;
            }
        });

        String dtoPath = "/templates/dto.java.vm";
//        URL resource = TestDoMainGenerator.class.getClassLoader().getResource("/template");
        focList.add(new FileOutConfig(dtoPath) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                return projectPath + "/src/main/java/cn/com/taiji/" + pc.getModuleName() + "/dto"
                        + "/" + tableInfo.getEntityName() + "DTO" + StringPool.DOT_JAVA;
            }
        });

        String apiPath = "/templates/api.js.vm";
        focList.add(new FileOutConfig(apiPath) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                return projectPath + "/src/main/java/cn/com/taiji/" + pc.getModuleName() + "/vue/api"
                        + "/" + tableInfo.getEntityName()  + ".js";
            }
        });

        String mainPath = "/templates/main.vue.vm";
        focList.add(new FileOutConfig(mainPath) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                return projectPath + "/src/main/java/cn/com/taiji/" + pc.getModuleName() + "/vue/view"
                        + "/" + tableInfo.getEntityName()  + "/main.vue";
            }
        });

        String addPath = "/templates/add.vue.vm";
        focList.add(new FileOutConfig(addPath) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                return projectPath + "/src/main/java/cn/com/taiji/" + pc.getModuleName() + "/vue/view"
                        + "/" + tableInfo.getEntityName()  + "/add.vue";
            }
        });

        String queryPath = "/templates/query.vue.vm";
        focList.add(new FileOutConfig(queryPath) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                return projectPath + "/src/main/java/cn/com/taiji/" + pc.getModuleName() + "/vue/view"
                        + "/" + tableInfo.getEntityName()  + "/query.vue";
            }
        });

        cfg.setFileOutConfigList(focList);
        mpg.setCfg(cfg);
        mpg.setTemplate(new TemplateConfig().setXml(null)); //疑问

        // 策略配置
        StrategyConfig strategy = new StrategyConfig();
        strategy.setNaming(NamingStrategy.underline_to_camel);
        strategy.setColumnNaming(NamingStrategy.underline_to_camel);
        strategy.setEntityTableFieldAnnotationEnable(true);
        strategy.setEntityLombokModel(true);
        strategy.setSuperControllerClass("cn.com.taiji.common.api.BaseController");
        strategy.setSuperServiceClass("cn.com.taiji.common.service.IBaseService");
        strategy.setSuperServiceImplClass("cn.com.taiji.common.base.BaseServiceImpl");
        strategy.setSuperEntityClass("cn.com.taiji.common.base.BaseDomain");
        strategy.setSuperMapperClass("cn.com.taiji.common.base.IBaseMapper");
//        strategy.setInclude("data_item","dept_info","dept_info_users","dept_user","menu","parameter_info","role","role_group","role_menu" ,
//                "role_user","role_users","user_group","user_group_user","user_group_users","user_info","web_logs");
//        strategy.setSuperEntityColumns("id", "created_by", "modified_by", "modified_date", "created_date", "update_by","flag");
        strategy.setInclude("student","course","course_student_score");
        // 写于父类中的公共字段
        strategy.setSuperEntityColumns("id","created_by","created_date","modified_by","modified_date","flag","parent_id","remark");
        //自动填充
//        List<TableFill> tableFields = new ArrayList<>();
//        TableFill updateTime = new TableFill("updateTime", FieldFill.INSERT_UPDATE);
//        TableFill createTime = new TableFill("createTime", FieldFill.INSERT);
//        TableFill flag = new TableFill("flag", FieldFill.INSERT);
//        tableFields.add(createTime);
//        tableFields.add(updateTime);
//        tableFields.add(flag);
//        strategy.setTableFillList(tableFields);
        strategy.setControllerMappingHyphenStyle(false);
        strategy.setRestControllerStyle(true); //restController添加
//        strategy.setTablePrefix(pc.getModuleName() + "_");
        mpg.setStrategy(strategy);
        // 选择 freemarker 引擎需要指定如下加，注意 pom 依赖必须有！
        mpg.setTemplateEngine(new VelocityTemplateEngine());
        mpg.execute();
    }
}
