package com.goodStomach.service;

import com.goodStomach.entity.Kind;

import java.util.List;

public interface KindService {

	void addOne(Kind kind);

	void deleteOne(Long id);

	List<Kind> selectAll();

	Kind selectById(Long id);

	void updateOne(Kind kind);

}
