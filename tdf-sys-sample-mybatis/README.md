* [tdf sample快速运行](https://gitlab.taiji.com.cn/IRI/TDF-Base/tdf-base-doc/-/blob/master/1.%E5%BF%AB%E9%80%9F%E5%BC%80%E5%A7%8B/%E5%BF%AB%E9%80%9F%E5%BC%80%E5%A7%8B.md)
* [tdf sample(jpa\mybatis)后端开发指南](https://gitlab.taiji.com.cn/IRI/TDF-Base/tdf-base-doc/-/blob/master/4.%E5%BC%80%E5%8F%91%E6%8C%87%E5%8D%97/%E5%90%8E%E7%AB%AF%E5%BC%80%E5%8F%91%E6%8C%87%E5%8D%97.md
)

### 关于graghql示例
tdf-sys-sample-mybatis的student提供了graghql接口示例。

#### pom包
```xml
<!-- GraphQL -->
<dependency>
    <groupId>com.graphql-java-kickstart</groupId>
    <artifactId>graphql-spring-boot-starter</artifactId>
    <version>7.0.1</version>
</dependency>
<dependency>
    <groupId>com.graphql-java-kickstart</groupId>
    <artifactId>graphql-java-tools</artifactId>
    <version>6.0.2</version>
</dependency>
<!-- GraphiQL tool -->
<dependency>
    <groupId>com.graphql-java-kickstart</groupId>
    <artifactId>graphiql-spring-boot-starter</artifactId>
    <version>7.0.1</version>
    <scope>runtime</scope>
</dependency>
```

#### 配置
参考在 yml 文件和 resources/graghql 目录下的配置

#### StudentQueryResolver
与resources/graghql的配置对应起来

#### 运行演示
* 启动tdf-sys-sample-mybatis
* 访问： http://localhost:7779/graphiql
* 输入参数查询:
    ```graphql
    query ListStudentDTOs{
        studentDTOs {
          id
          studentName
        }
    }
    ```
