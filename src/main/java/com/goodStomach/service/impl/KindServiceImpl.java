package com.goodStomach.service.impl;

import com.goodStomach.dao.KindMapper;
import com.goodStomach.entity.Kind;
import com.goodStomach.service.KindService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KindServiceImpl implements KindService {

    @Autowired
    private KindMapper kindMapper;

    public void addOne(Kind kind) {
        kindMapper.addOne(kind);
    }

    public void deleteOne(Long id) {
        kindMapper.deleteOne(id);
    }

    public List<Kind> selectAll() {
        List<Kind> kindList = kindMapper.selectAll();
        return kindList;
    }

    public Kind selectById(Long id) {
        Kind kind = kindMapper.selectById(id);
        return kind;
    }

    public void updateOne(Kind kind) {
        kindMapper.updateOne(kind);
    }
}
