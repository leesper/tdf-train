package com.sample.tdf;

import com.sample.tdf.sample.mapper.StudentMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class TdfSysSampleMybatisApplicationTests {
	@Autowired
	StudentMapper studentMapper;
	@Test
	public void contextLoads() {
	}
	@Test
	public void test() {
		String s = studentMapper.selectTime();
		System.out.println(s);
	}
}
