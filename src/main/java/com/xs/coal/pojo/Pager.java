package com.xs.coal.pojo;

import java.util.List;

/**
 * @param ��������
 * @author zzj
 * ��ҳģ��
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
     * ������
     */
    private Long totalCount;
    
    /**
     * ��ҳ��
     */
    private Long pagerToatal;

    /**
     * ���ݼ���
     */
    List list;


	
}
