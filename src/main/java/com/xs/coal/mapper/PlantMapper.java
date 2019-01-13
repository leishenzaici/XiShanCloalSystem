package com.xs.coal.mapper;

import com.xs.coal.pojo.Plant;
import com.xs.coal.pojo.PlantExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PlantMapper {
    int countByExample(PlantExample example);

    int deleteByExample(PlantExample example);

    int deleteByPrimaryKey(String plantid);

    int insert(Plant record);

    int insertSelective(Plant record);

    List<Plant> selectByExample(PlantExample example);

    Plant selectByPrimaryKey(String plantid);

    int updateByExampleSelective(@Param("record") Plant record, @Param("example") PlantExample example);

    int updateByExample(@Param("record") Plant record, @Param("example") PlantExample example);

    int updateByPrimaryKeySelective(Plant record);

    int updateByPrimaryKey(Plant record);
    
    public String getMaxDictionaryId(String upDictionaryId);
    List<Plant> getDepartmentTreeCommon(@Param("plantid") String plantid);
    
    List<Plant> getDepartmentTreeFactory(@Param("plantid") String plantid);
}