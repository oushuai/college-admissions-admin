package com.ruoyi.college.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.college.mapper.ProfessionMapper;
import com.ruoyi.college.domain.Profession;
import com.ruoyi.college.service.IProfessionService;
import com.ruoyi.common.core.text.Convert;

/**
 * 专业Service业务层处理
 * 
 * @author ouyangjie
 * @date 2021-01-18
 */
@Service
public class ProfessionServiceImpl implements IProfessionService 
{
    @Autowired
    private ProfessionMapper professionMapper;

    /**
     * 查询专业
     * 
     * @param id 专业ID
     * @return 专业
     */
    @Override
    public Profession selectProfessionById(Long id)
    {
        return professionMapper.selectProfessionById(id);
    }

    /**
     * 查询专业列表
     * 
     * @param profession 专业
     * @return 专业
     */
    @Override
    public List<Profession> selectProfessionList(Profession profession)
    {
        return professionMapper.selectProfessionList(profession);
    }

    /**
     * 新增专业
     * 
     * @param profession 专业
     * @return 结果
     */
    @Override
    public int insertProfession(Profession profession)
    {
        return professionMapper.insertProfession(profession);
    }

    /**
     * 修改专业
     * 
     * @param profession 专业
     * @return 结果
     */
    @Override
    public int updateProfession(Profession profession)
    {
        return professionMapper.updateProfession(profession);
    }

    /**
     * 删除专业对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteProfessionByIds(String ids)
    {
        return professionMapper.deleteProfessionByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除专业信息
     * 
     * @param id 专业ID
     * @return 结果
     */
    @Override
    public int deleteProfessionById(Long id)
    {
        return professionMapper.deleteProfessionById(id);
    }
}
