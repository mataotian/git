package com.qf.controller;

import com.github.pagehelper.PageInfo;
import com.qf.entity.Room;
import com.qf.entity.Student;
import com.qf.service.IRoomService;
import com.qf.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Autowired
    private IStudentService studentService;
    @Autowired
    private IRoomService roomService;

    @RequestMapping("/page/{currentPage}")
    public String index(@PathVariable String currentPage, Model model){
        PageInfo pageInfo= studentService.selectAll(currentPage);
       model.addAttribute("pageInfo",pageInfo);
        return "showStudent";
    }

    @RequestMapping("/toAdd")
    public String toAdd(Model model){
        List<Room> roomList = roomService.getRoomList();
        model.addAttribute("roomlist",roomList);
        return "addStudent";
    }

    @RequestMapping("/addStudent")
    public String addStudent(Student student){
        int result = studentService.insertSelective(student);
        return "redirect:/student/page/1";
    }
    //跳转到编辑页面
    @RequestMapping("/editor/{id}")
    public String editor(@PathVariable Long id, Model model){
        Student student = studentService.selectByPrimaryKey(id);
        List<Room> roomList = roomService.getRoomList();
        model.addAttribute("student",student);
        model.addAttribute("roomList",roomList);
        return "editorStudent";
    }

    @RequestMapping("/editorStudent")
    public String editorStudent(Student student){
        int result = studentService.updateByPrimaryKeySelective(student);
        return "redirect:/student/page/1";
    }

    //删除
    @RequestMapping("/deleteStudent/{id}")
    public String deleteStudent(@PathVariable Long id){
        int result = studentService.deleteByPrimaryKey(id);
        return "redirect:/student/page/1";
    }
}
