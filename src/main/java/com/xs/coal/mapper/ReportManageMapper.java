package com.xs.coal.mapper;

import com.xs.coal.pojo.Report;
import com.xs.coal.pojo.ReportManage;
import com.xs.coal.pojo.ReportManageExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReportManageMapper {
    int countByExample(ReportManageExample example);

    int deleteByExample(ReportManageExample example);

    int deleteByPrimaryKey(String rid);

    int insert(ReportManage record);

    int insertSelective(ReportManage record);

    List<ReportManage> selectByExample(ReportManageExample example);

    ReportManage selectByPrimaryKey(String rid);

    int updateByExampleSelective(@Param("record") ReportManage record, @Param("example") ReportManageExample example);

    int updateByExample(@Param("record") ReportManage record, @Param("example") ReportManageExample example);

    int updateByPrimaryKeySelective(ReportManage record);

    int updateByPrimaryKey(ReportManage record);
    
    List<Report> selectAllReportByplantAndTime(@Param("plantID") String plantID, @Param("startTime") String startTime);
    List<Report> selectAllReportDealByplantAndTime(@Param("plantID") String plantID, @Param("startTime") String startTime);

	List<ReportManage> selectMessageByPuid(@Param("puid") int puid);
}