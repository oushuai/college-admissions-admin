package com.ruoyi.college.mapper;

import com.ruoyi.college.domain.ApplyInfo;

import java.util.List;


/**
 * 申请表Mapper接口
 * 
 * @author ouyangjie
 * @date 2021-01-16
 */
public interface ApplyInfoMapper 
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
     * 删除申请表
     * 
     * @param id 申请表ID
     * @return 结果
     */
    public int deleteApplyInfoById(Long id);

    /**
     * 批量删除申请表
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteApplyInfoByIds(String[] ids);
}
