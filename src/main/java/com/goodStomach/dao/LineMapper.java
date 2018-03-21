package com.goodStomach.dao;


import com.goodStomach.entity.Line;
import com.goodStomach.entity.SomeMessage;

import java.util.List;

public interface LineMapper {
    List<Line> selectByU_id(SomeMessage someMessage);

    void deleteById(Long id);

    void deleteByU_id(Long u_id);

    void addLine(Line line);

    List<Line> selectU_id(Long u_id);
}
