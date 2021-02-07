package com.ruoyi.college.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.college.mapper.ApplyInfoMapper;
import com.ruoyi.college.domain.ApplyInfo;
import com.ruoyi.college.service.IApplyInfoService;
import com.ruoyi.common.core.text.Convert;

/**
 * 申请表Service业务层处理
 * 
 * @author ouyangjie
 * @date 2021-01-16
 */
@Service
public class ApplyInfoServiceImpl implements IApplyInfoService 
{
    @Autowired
    private ApplyInfoMapper applyInfoMapper;

    /**
     * 查询申请表
     * 
     * @param id 申请表ID
     * @return 申请表
     */
    @Override
    public ApplyInfo selectApplyInfoById(Long id)
    {
        return applyInfoMapper.selectApplyInfoById(id);
    }

    /**
     * 查询申请表列表
     * 
     * @param applyInfo 申请表
     * @return 申请表
     */
    @Override
    public List<ApplyInfo> selectApplyInfoList(ApplyInfo applyInfo)
    {
        return applyInfoMapper.selectApplyInfoList(applyInfo);
    }

    /**
     * 新增申请表
     * 
     * @param applyInfo 申请表
     * @return 结果
     */
    @Override
    public int insertApplyInfo(ApplyInfo applyInfo)
    {
        return applyInfoMapper.insertApplyInfo(applyInfo);
    }

    /**
     * 修改申请表
     * 
     * @param applyInfo 申请表
     * @return 结果
     */
    @Override
    public int updateApplyInfo(ApplyInfo applyInfo)
    {
        return applyInfoMapper.updateApplyInfo(applyInfo);
    }

    /**
     * 删除申请表对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteApplyInfoByIds(String ids)
    {
        return applyInfoMapper.deleteApplyInfoByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除申请表信息
     * 
     * @param id 申请表ID
     * @return 结果
     */
    @Override
    public int deleteApplyInfoById(Long id)
    {
        return applyInfoMapper.deleteApplyInfoById(id);
    }
}
