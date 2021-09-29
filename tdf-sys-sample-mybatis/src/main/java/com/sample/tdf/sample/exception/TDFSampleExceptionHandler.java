package com.sample.tdf.sample.exception;

import cn.com.taiji.common.dto.ResultDTO;
import cn.com.taiji.common.exception.BaseExceptionHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.servlet.http.HttpServletRequest;

/**
 * 客户可以自定义全局异常处理逻辑,需要继承来BaseExceptionHandler
 * BaseExceptionHandler的优先级最低
 */
@RestControllerAdvice(basePackages = {"com.sample.tdf"})
@ConditionalOnClass(javax.servlet.Servlet.class)
public class TDFSampleExceptionHandler extends BaseExceptionHandler {
    private static Logger logger = LoggerFactory.getLogger(TDFSampleExceptionHandler.class);

    @ExceptionHandler(RuntimeException.class)
    public ResponseEntity<ResultDTO> handleIllegalParamException(HttpServletRequest request, RuntimeException ex) {
        HttpStatus status = getStatus(request);
        //TODO 用户自定义逻辑，根据异常类型动态拼接返回值
        if (ex instanceof TDFSampleException) {
            return new ResponseEntity(new ResultDTO(status.value(), ex.getMessage(), ""), status);
        } else {
            return new ResponseEntity(new ResultDTO(2, ex.getMessage(), ""), status);
        }
    }
}
