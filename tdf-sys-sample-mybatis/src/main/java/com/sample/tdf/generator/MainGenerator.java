package com.sample.tdf.generator;

import cn.hutool.core.util.StrUtil;
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

/**
 * 用于生成前端和Domain配套代码
 */
public class MainGenerator {


    /**
     * RUN THIS
     */
    public static void main(String[] args) {
        //是否是maven多模块工程
        boolean isMoudle = true;
        //模块路径 如果不是多模块可以不填
        String moudlePath = "tdf-sys-sample-mybatis";

        //数据库相关
        String jdbcUrl = "jdbc:mysql://localhost:3306/tdf?serverTimezone=GMT%2B8&amp&useSSL=false&characterEncoding=utf-8";
        String jdbcDriver = "com.mysql.cj.jdbc.Driver";
        String userName = "root";
        String password = "root";

        //包配置
        //父包名
        String parentPackageName = "com.sample.tdf";
        //代码模块名  会在父包名的目录下创建名字为moudelName的文件夹
        String moudelName = "student";
        //controller代码的目录名称
        String controller = "api";
        //实体目录名称
        String entity = "domain";

        //要生成的表
        String[] tables = {"file_storage"};
        // 代码生成器
        AutoGenerator mpg = new AutoGenerator();

        // 全局配置
        GlobalConfig gc = new GlobalConfig();
        String projectPath = System.getProperty("user.dir");
        String outPutDir = projectPath + "\\" + getMoudlePath(isMoudle, moudlePath) + "\\src\\main\\java";
        gc.setOutputDir(outPutDir);
        gc.setAuthor("陈哲");
        gc.setOpen(false);
        gc.setIdType(IdType.ASSIGN_UUID); //自动生成uuid
        gc.setBaseColumnList(true);       //添加BaseColumnList在xml
        gc.setBaseResultMap(true);        //添加BaseResultMap在xml
        gc.setSwagger2(true);             //使用实体属性 Swagger2 注解
        mpg.setGlobalConfig(gc);

        // 数据源配置
        DataSourceConfig dsc = new DataSourceConfig();
        dsc.setUrl(jdbcUrl);
//         dsc.setSchemaName("public");
        dsc.setDriverName(jdbcDriver);
        dsc.setUsername(userName);
        dsc.setPassword(password);
        mpg.setDataSource(dsc);

        // 包配置
        PackageConfig pc = new PackageConfig();
        pc.setModuleName(moudelName);
        pc.setParent(parentPackageName);
        pc.setController(controller);
        pc.setEntity(entity);
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
        String mapperPath = projectPath;


        focList.add(new FileOutConfig(templatePath) {
            @Override
            public String outputFile(TableInfo tableInfo) {

                // 自定义输入文件名称
                return projectPath + getMoudlePath(isMoudle, moudlePath) + "/src/main/resources/mapper/" + pc.getModuleName()
                        + "/" + tableInfo.getEntityName() + "Mapper" + StringPool.DOT_XML;
            }
        });

        String dtoPath = "/templates/dto.java.vm";
//        URL resource = NewGenerator.class.getClassLoader().getResource("/template");
        focList.add(new FileOutConfig(dtoPath) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                return projectPath + getMoudlePath(isMoudle, moudlePath) + "/src/main/java/" + getParent(pc.getParent())   + "/dto"
                        + "/" + tableInfo.getEntityName() + "DTO" + StringPool.DOT_JAVA;
            }
        });

        String apiPath = "/templates/api.js.vm";
        focList.add(new FileOutConfig(apiPath) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                return projectPath + getMoudlePath(isMoudle, moudlePath) + "/src/main/java/" + getParent(pc.getParent())   + "/vue/api"
                        + "/" + tableInfo.getEntityName() + ".js";
            }
        });

        String mainPath = "/templates/main.vue.vm";
        focList.add(new FileOutConfig(mainPath) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                return projectPath + getMoudlePath(isMoudle, moudlePath) + "/src/main/java/" + getParent(pc.getParent())  + "/vue/view"
                        + "/" + tableInfo.getEntityName() + "/main.vue";
            }
        });

        String addPath = "/templates/add.vue.vm";
        focList.add(new FileOutConfig(addPath) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                return projectPath + getMoudlePath(isMoudle, moudlePath) + "/src/main/java/" + getParent(pc.getParent())  + "/vue/view"
                        + "/" + tableInfo.getEntityName() + "/add.vue";
            }
        });

        String queryPath = "/templates/query.vue.vm";
        focList.add(new FileOutConfig(queryPath) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                return projectPath + getMoudlePath(isMoudle, moudlePath) + "/src/main/java/" + getParent(pc.getParent())  + "/vue/view"
                        + "/" + tableInfo.getEntityName() + "/query.vue";
            }
        });

        cfg.setFileOutConfigList(focList);
        mpg.setCfg(cfg);
        //如果不加该配置会在mapper目录下生成xml文件
        mpg.setTemplate(new TemplateConfig().setXml(null));

        // 策略配置
        StrategyConfig strategy = new StrategyConfig();
        strategy.setNaming(NamingStrategy.underline_to_camel);
        strategy.setColumnNaming(NamingStrategy.underline_to_camel);
        //添加TableField注解
        strategy.setEntityTableFieldAnnotationEnable(false);
        strategy.setEntityLombokModel(true);
        strategy.setSuperControllerClass("cn.com.taiji.common.api.BaseController");
        strategy.setSuperServiceClass("cn.com.taiji.common.service.IBaseService");
        strategy.setSuperServiceImplClass("cn.com.taiji.common.base.BaseServiceImpl");
        strategy.setSuperEntityClass("cn.com.taiji.common.base.BaseDomain");
        strategy.setSuperMapperClass("cn.com.taiji.common.base.IBaseMapper");
        strategy.setInclude(tables);
        // 写于父类中的公共字段
        strategy.setSuperEntityColumns("id", "created_by", "created_date", "modified_by", "modified_date", "flag", "parent_id", "remark");
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

    public static String getMoudlePath(boolean isMoudle, String moudelPath) {
        if (isMoudle) {
            return "/" + moudelPath;
        } else {
            return "";
        }
    }

    ;

    public static String getParent(String parent) {
        String[] split = StrUtil.split(parent, ".");
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < split.length; i++) {
            String s = split[i];
            stringBuilder.append(s).append("/");
        }
        return stringBuilder.toString();
    }
}
