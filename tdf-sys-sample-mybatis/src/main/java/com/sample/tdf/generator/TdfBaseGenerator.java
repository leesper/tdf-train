package com.sample.tdf.generator;

import cn.hutool.core.util.ArrayUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.sample.tdf.generator.domain.BaseGenerator;

/**
 * 通过调用 Domain JoinDomain TreeDomain 生成TDFbase所有结构代码
 */
public class TdfBaseGenerator {
    public static void main(String[] args) {
        //数据源配置
        DataSourceConfig dsc = new DataSourceConfig();
        dsc.setUrl("jdbc:mysql://localhost:3306/tdfsample?serverTimezone=GMT%2B8&amp&useSSL=false&characterEncoding=utf-8");
        dsc.setDriverName("com.mysql.cj.jdbc.Driver");
        dsc.setUsername("root");
        dsc.setPassword("root");
        //包配置
        PackageConfig pc = new PackageConfig();
        pc.setModuleName("student");
        pc.setParent("com.sample.tdf");
        pc.setController("api");
        pc.setEntity("domain");


        BaseGenerator baseGenerator = new BaseGenerator();
        baseGenerator.setPackageConfig(pc);
        baseGenerator.setDataSourceConfig(dsc);
        //模块路径
        baseGenerator.setMoudlePath("tdf-sys-sample-mybatis");
        //普通表
        baseGenerator.setDomainTables(new String[]{"chen_zhe"});
        //中间表
        baseGenerator.setJoinTables(new String[]{"course_student_score"});
        //tree结构表
//        String[] treeTables = {"school_grade"};
        baseGenerator.setTreeTables(new String[]{"school_grade"});

        generator(baseGenerator);
    }

    public static void generator(BaseGenerator baseGenerator) {

        // 全局配置
        GlobalConfig gc = new GlobalConfig();
        String projectPath = System.getProperty("user.dir");
        String path = projectPath + "\\" + getMoudlePath(baseGenerator.getMoudlePath()) + "\\src\\main";
        String outPutDir = path + "\\java";
        gc.setOutputDir(outPutDir);
        gc.setAuthor("陈哲");
        gc.setOpen(false);
        //自动生成uuid
//        gc.setIdType(IdType.ASSIGN_UUID);
        //添加BaseColumnList在xml
        gc.setBaseColumnList(true);
        //添加BaseResultMap在xml
        gc.setBaseResultMap(true);
        //使用实体属性 Swagger2 注解
        gc.setSwagger2(true);


        // 生成不同结构的代码
        if (ArrayUtil.isNotEmpty(baseGenerator.getDomainTables())) {
            DomainGenerator.generator(gc, baseGenerator.getDataSourceConfig(), baseGenerator.getPackageConfig(), baseGenerator.getDomainTables(), path);
        }
        if (ArrayUtil.isNotEmpty(baseGenerator.getJoinTables())) {
            JoinDomainGenerator.generator(gc, baseGenerator.getDataSourceConfig(), baseGenerator.getPackageConfig(), baseGenerator.getJoinTables(), path);
        }
        if (ArrayUtil.isNotEmpty(baseGenerator.getTreeTables())) {
            TreeDomainGenerator.generator(gc, baseGenerator.getDataSourceConfig(), baseGenerator.getPackageConfig(), baseGenerator.getTreeTables(), path);
        }


    }

    public static String getMoudlePath(String moudelPath) {
        if (StrUtil.isNotBlank(moudelPath)) {
            return moudelPath;
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
