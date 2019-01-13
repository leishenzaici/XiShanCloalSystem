package com.xs.coal.pojo;

import java.util.List;

/**
 * @param 数据类型
 * @author zzj
 * 分页模型
 */
public class Pager {

	public Pager(long total,long pagerNumber, List dataList) {
        totalCount = total;
        list = dataList;
        pagerToatal = pagerNumber;
    }

    public Long getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(Long totalCount) {
		this.totalCount = totalCount;
	}

	public Long getPagerToatal() {
		return pagerToatal;
	}

	public void setPagerToatal(Long pagerToatal) {
		this.pagerToatal = pagerToatal;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	/**
     * 总条数
     */
    private Long totalCount;
    
    /**
     * 总页数
     */
    private Long pagerToatal;

    /**
     * 数据集合
     */
    List list;


	
}
