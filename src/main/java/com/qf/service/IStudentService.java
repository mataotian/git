package com.qf.service;

import com.github.pagehelper.PageInfo;
import com.qf.entity.Student;

public interface IStudentService {
    int deleteByPrimaryKey(Long id);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);

    PageInfo<Student> selectAll(String currentPage);
}
