package com.qf.mapper;

import com.qf.entity.Room;


import java.util.List;

public interface RoomMapper {
    int deleteByPrimaryKey(Long cid);

    int insert(Room record);

    int insertSelective(Room record);

    Room selectByPrimaryKey(Long cid);

    int updateByPrimaryKeySelective(Room record);

    int updateByPrimaryKey(Room record);

    List<Room> getRoomList();
}