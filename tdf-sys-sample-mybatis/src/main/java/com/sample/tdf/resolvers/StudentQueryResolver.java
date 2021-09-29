package com.sample.tdf.resolvers;

import cn.com.taiji.common.dto.PageDTO;
import com.sample.tdf.sample.dto.StudentDTO;
import com.sample.tdf.sample.service.IStudentService;
import graphql.kickstart.tools.GraphQLQueryResolver;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class StudentQueryResolver implements GraphQLQueryResolver {

    private static final Logger logger = LogManager.getLogger(StudentQueryResolver.class);

    @Autowired
    private IStudentService iStudentService;

    public StudentDTO studentDTO(String id) {
        return (StudentDTO) iStudentService.findById(id);
    }

    public List<StudentDTO> studentDTOs() {
        PageDTO<StudentDTO> pageDTO = new PageDTO<>();
        pageDTO.setPageSize(1000);
        return iStudentService.getPage(pageDTO).getList();
    }
}
