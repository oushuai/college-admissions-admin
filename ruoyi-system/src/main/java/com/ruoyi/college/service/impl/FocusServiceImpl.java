package com.ruoyi.college.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.college.mapper.FocusMapper;
import com.ruoyi.college.domain.Focus;
import com.ruoyi.college.service.IFocusService;
import com.ruoyi.common.core.text.Convert;

/**
 * 轮播图片Service业务层处理
 * 
 * @author ouyangjie
 * @date 2021-01-16
 */
@Service
public class FocusServiceImpl implements IFocusService 
{
    @Autowired
    private FocusMapper focusMapper;

    /**
     * 查询轮播图片
     * 
     * @param id 轮播图片ID
     * @return 轮播图片
     */
    @Override
    public Focus selectFocusById(Long id)
    {
        return focusMapper.selectFocusById(id);
    }

    /**
     * 查询轮播图片列表
     * 
     * @param focus 轮播图片
     * @return 轮播图片
     */
    @Override
    public List<Focus> selectFocusList(Focus focus)
    {
        return focusMapper.selectFocusList(focus);
    }

    /**
     * 新增轮播图片
     * 
     * @param focus 轮播图片
     * @return 结果
     */
    @Override
    public int insertFocus(Focus focus)
    {
        return focusMapper.insertFocus(focus);
    }

    /**
     * 修改轮播图片
     * 
     * @param focus 轮播图片
     * @return 结果
     */
    @Override
    public int updateFocus(Focus focus)
    {
        return focusMapper.updateFocus(focus);
    }

    /**
     * 删除轮播图片对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteFocusByIds(String ids)
    {
        return focusMapper.deleteFocusByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除轮播图片信息
     * 
     * @param id 轮播图片ID
     * @return 结果
     */
    @Override
    public int deleteFocusById(Long id)
    {
        return focusMapper.deleteFocusById(id);
    }
}
