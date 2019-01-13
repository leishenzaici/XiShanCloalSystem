package com.xs.coal.mapper;

import com.xs.coal.pojo.Indexsystem;
import com.xs.coal.pojo.IndexsystemExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IndexsystemMapper {
    int countByExample(IndexsystemExample example);

    int deleteByExample(IndexsystemExample example);

    int deleteByPrimaryKey(Integer indexid);

    int insert(Indexsystem record);

    int insertSelective(Indexsystem record);

    List<Indexsystem> selectByExample(IndexsystemExample example);

    Indexsystem selectByPrimaryKey(Integer indexid);

    int updateByExampleSelective(@Param("record") Indexsystem record, @Param("example") IndexsystemExample example);

    int updateByExample(@Param("record") Indexsystem record, @Param("example") IndexsystemExample example);

    int updateByPrimaryKeySelective(Indexsystem record);

    int updateByPrimaryKey(Indexsystem record);
}