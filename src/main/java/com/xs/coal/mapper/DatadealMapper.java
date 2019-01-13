package com.xs.coal.mapper;

import com.xs.coal.pojo.Datadeal;
import com.xs.coal.pojo.DatadealExample;
import com.xs.coal.pojo.ManageDateDto;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface DatadealMapper {
    int countByExample(DatadealExample example);

    int deleteByExample(DatadealExample example);

    int deleteByPrimaryKey(Integer puid);

    int insert(Datadeal record);

    int insertSelective(Datadeal record);

    List<Datadeal> selectByExampleWithBLOBs(DatadealExample example);

    List<Datadeal> selectByExample(DatadealExample example);
    //添加的方法
    List<Datadeal> selectByPlantID(@Param("plantID") String plantID, @Param("startTime") String startTime, @Param("endTime") String endTime);

    List<Datadeal>  selectByIndexIDGroupByTime(@Param("indexID") Integer indexID, @Param("startTime") String startTime, @Param("endTime") String endTime);
    
    List<Datadeal> selectResportByPlantID(@Param("username") String username, @Param("plantID") String plantID, @Param("startTime") String startTime, @Param("endTime") String endTime);
    
    List<Datadeal> selectPageByPlantID(@Param("index") int indexStr, @Param("currentCount") int currentCountStr, @Param("plantID") String plantID, @Param("startTime") String startTime, @Param("endTime") String endTime);
   /* 管理数据根据id查询*/
    List<ManageDateDto> selectManageByPlantID(@Param("pageNumber") int pageNumber, @Param("pageSize") int pageSize, @Param("plantID") String plantID);
    /*管理数据根据条件查询*/
    List<Datadeal> selectBySelect(@Param("indexId") int indexId, @Param("min") double min, @Param("max") double max, @Param("startTime") Date startTime, @Param("endTime") Date endTime, @Param("pageNumber") int pageNumber, @Param("pageSize") int pageSize);
   
    /*管理数据循环根据条件查询*/
    List<String> selectBySelectByFor(@Param("datadealList") List<Datadeal> datadealList);
   
    /*管理数据根据条件查询数据条数*/
    int selectBySelectNum(@Param("indexId") int indexId, @Param("min") double min, @Param("max") double max, @Param("startTime") Date startTime, @Param("endTime") Date endTime);
   
    /*根据数据id查询数据*/
    List<Datadeal> selectByDataID(@Param("dataID") String dataID);
    /*根据数据id循环查询数据*/
    List<Datadeal> selectByDataIDByFor(@Param("dataIdList") List<String> dataIdList);
    
    
    Datadeal selectByPrimaryKey(Integer puid);

    int updateByExampleSelective(@Param("record") Datadeal record, @Param("example") DatadealExample example);

    int updateByExampleWithBLOBs(@Param("record") Datadeal record, @Param("example") DatadealExample example);

    int updateByExample(@Param("record") Datadeal record, @Param("example") DatadealExample example);

    int updateByPrimaryKeySelective(Datadeal record);

    int updateByPrimaryKeyWithBLOBs(Datadeal record);

    int updateByPrimaryKey(Datadeal record);

	Double selectIndexNumberSum(@Param("indexid") int indexid, @Param("startTime") String startTime, @Param("endTime") String endTime);
}