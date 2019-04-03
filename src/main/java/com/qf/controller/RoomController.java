package com.qf.controller;

import com.github.pagehelper.PageInfo;
import com.qf.entity.Room;
import com.qf.service.IRoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/room")
public class RoomController {
    @Autowired
    private IRoomService roomService;
    @RequestMapping("page/{currentPage}")
    public String getList(@PathVariable String currentPage, Model model){
        PageInfo<Room> pageInfo=roomService.getPageList(currentPage);
        model.addAttribute("pageInfo",pageInfo);
        return "roomList";
    }
    @RequestMapping("/toAdd")
    public String toAdd(){
        return "roomAdd";
    }
    @RequestMapping("/add")
    public String add(Room room){
        roomService.insertSelective(room);
        return "redirect:/room/page/1";
    }
    @RequestMapping("/toUpdate/{id}")
    public String toUpdate(@PathVariable Long id, Model model){
        Room room = roomService.selectByPrimaryKey(id);
        model.addAttribute("room",room);
        return "roomUpdate";
    }
    @RequestMapping("/update")
    public String update(Room room){
        roomService.updateByPrimaryKey(room);
        return "redirect:/room/page/1";
    }

    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable Long id){
        int count=roomService.selectByParentId(id);
        if(count>0){
            return "redirect:/room/page/1";
        }else{
            roomService.deleteByPrimaryKey(id);
            return "redirect:/room/page/1";
        }
    }
}
