package com.ruoyi.college.mapper;

import com.ruoyi.college.domain.Focus;

import java.util.List;

/**
 * 轮播图片Mapper接口
 * 
 * @author ouyangjie
 * @date 2021-01-16
 */
public interface FocusMapper 
{
    /**
     * 查询轮播图片
     * 
     * @param id 轮播图片ID
     * @return 轮播图片
     */
    public Focus selectFocusById(Long id);

    /**
     * 查询轮播图片列表
     * 
     * @param focus 轮播图片
     * @return 轮播图片集合
     */
    public List<Focus> selectFocusList(Focus focus);

    /**
     * 新增轮播图片
     * 
     * @param focus 轮播图片
     * @return 结果
     */
    public int insertFocus(Focus focus);

    /**
     * 修改轮播图片
     * 
     * @param focus 轮播图片
     * @return 结果
     */
    public int updateFocus(Focus focus);

    /**
     * 删除轮播图片
     * 
     * @param id 轮播图片ID
     * @return 结果
     */
    public int deleteFocusById(Long id);

    /**
     * 批量删除轮播图片
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteFocusByIds(String[] ids);
}
