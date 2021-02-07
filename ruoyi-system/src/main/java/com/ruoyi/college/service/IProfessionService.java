package com.ruoyi.college.service;

import java.util.List;
import com.ruoyi.college.domain.Profession;

/**
 * 专业Service接口
 * 
 * @author ouyangjie
 * @date 2021-01-18
 */
public interface IProfessionService 
{
    /**
     * 查询专业
     * 
     * @param id 专业ID
     * @return 专业
     */
    public Profession selectProfessionById(Long id);

    /**
     * 查询专业列表
     * 
     * @param profession 专业
     * @return 专业集合
     */
    public List<Profession> selectProfessionList(Profession profession);

    /**
     * 新增专业
     * 
     * @param profession 专业
     * @return 结果
     */
    public int insertProfession(Profession profession);

    /**
     * 修改专业
     * 
     * @param profession 专业
     * @return 结果
     */
    public int updateProfession(Profession profession);

    /**
     * 批量删除专业
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteProfessionByIds(String ids);

    /**
     * 删除专业信息
     * 
     * @param id 专业ID
     * @return 结果
     */
    public int deleteProfessionById(Long id);
}
