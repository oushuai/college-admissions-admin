package com.ruoyi.college.service;

import java.util.List;
import com.ruoyi.college.domain.ApplyInfo;

/**
 * 申请表Service接口
 * 
 * @author ouyangjie
 * @date 2021-01-16
 */
public interface IApplyInfoService 
{
    /**
     * 查询申请表
     * 
     * @param id 申请表ID
     * @return 申请表
     */
    public ApplyInfo selectApplyInfoById(Long id);

    /**
     * 查询申请表列表
     * 
     * @param applyInfo 申请表
     * @return 申请表集合
     */
    public List<ApplyInfo> selectApplyInfoList(ApplyInfo applyInfo);

    /**
     * 新增申请表
     * 
     * @param applyInfo 申请表
     * @return 结果
     */
    public int insertApplyInfo(ApplyInfo applyInfo);

    /**
     * 修改申请表
     * 
     * @param applyInfo 申请表
     * @return 结果
     */
    public int updateApplyInfo(ApplyInfo applyInfo);

    /**
     * 批量删除申请表
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteApplyInfoByIds(String ids);

    /**
     * 删除申请表信息
     * 
     * @param id 申请表ID
     * @return 结果
     */
    public int deleteApplyInfoById(Long id);
}
