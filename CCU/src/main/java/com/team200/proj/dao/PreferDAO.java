package com.team200.proj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.team200.proj.vo.showVO;

@Mapper
@Repository
public interface PreferDAO {
	public List<showVO> getInfo();
}
