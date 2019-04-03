package com.qf.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.entity.Room;
import com.qf.mapper.RoomMapper;
import com.qf.mapper.StudentMapper;
import com.qf.service.IRoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class RoomServiceImpl implements IRoomService {

    @Autowired
    private RoomMapper roomMapper;
    @Autowired
    private StudentMapper studentMapper;
    @Override
    public int deleteByPrimaryKey(Long cid) {
        return roomMapper.deleteByPrimaryKey(cid);
    }

    @Override
    public int insert(Room record) {
        return roomMapper.insert(record);
    }

    @Override
    public int insertSelective(Room record) {
        return roomMapper.insertSelective(record);
    }

    @Override
    public Room selectByPrimaryKey(Long cid) {
        return roomMapper.selectByPrimaryKey(cid);
    }

    @Override
    public int updateByPrimaryKeySelective(Room record) {
        return roomMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Room record) {
        return roomMapper.updateByPrimaryKey(record);
    }

    @Override
    public PageInfo<Room> getPageList(String currentPage) {
        PageHelper.startPage(Integer.parseInt(currentPage),3);
        List<Room> roomList=roomMapper.getRoomList();
        PageInfo<Room> pageInfo=new PageInfo<>(roomList);
        return pageInfo;
    }

    @Override
    public int selectByParentId(Long id) {
        int count=studentMapper.selectByCid(id);
        return count;
    }

    @Override
    public List<Room> getRoomList() {
        return roomMapper.getRoomList();
    }
}
