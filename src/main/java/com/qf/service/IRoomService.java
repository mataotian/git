package com.qf.service;

import com.github.pagehelper.PageInfo;
import com.qf.entity.Room;

import java.util.List;

public interface IRoomService {
    int deleteByPrimaryKey(Long cid);

    int insert(Room record);

    int insertSelective(Room record);

    Room selectByPrimaryKey(Long cid);

    int updateByPrimaryKeySelective(Room record);

    int updateByPrimaryKey(Room record);

    PageInfo<Room> getPageList(String currentPage);

    int selectByParentId(Long id);

    List<Room> getRoomList();
}
