package com.xs.coal.mapper;

import com.xs.coal.pojo.DataCodcrSs;
import com.xs.coal.pojo.DataCodcrSsExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DataCodcrSsMapper {
    int countByExample(DataCodcrSsExample example);

    int deleteByExample(DataCodcrSsExample example);

    int deleteByPrimaryKey(String uuid);

    int insert(DataCodcrSs record);

    int insertSelective(DataCodcrSs record);

    List<DataCodcrSs> selectByExample(DataCodcrSsExample example);

    DataCodcrSs selectByPrimaryKey(String uuid);

    int updateByExampleSelective(@Param("record") DataCodcrSs record, @Param("example") DataCodcrSsExample example);

    int updateByExample(@Param("record") DataCodcrSs record, @Param("example") DataCodcrSsExample example);

    int updateByPrimaryKeySelective(DataCodcrSs record);

    int updateByPrimaryKey(DataCodcrSs record);
}