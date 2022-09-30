package com.team200.proj.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


import com.team200.proj.vo.showVO;

@Mapper
@Repository
public interface ShowDAO {

	public showVO showDetail(String show_id);
}
