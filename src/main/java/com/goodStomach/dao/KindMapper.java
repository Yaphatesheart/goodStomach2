package com.goodStomach.dao;


import com.goodStomach.entity.Kind;

import java.util.List;

public interface KindMapper {
    public List<Kind> selectAll();

    public Kind selectById(Long id);

    public void deleteOne(Long id);

    public void updateOne(Kind kind);

    public void addOne(Kind kind);
}
