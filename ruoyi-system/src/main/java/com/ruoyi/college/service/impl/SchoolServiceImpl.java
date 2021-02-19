package com.ruoyi.college.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.college.mapper.SchoolMapper;
import com.ruoyi.college.domain.School;
import com.ruoyi.college.service.ISchoolService;
import com.ruoyi.common.core.text.Convert;

/**
 * 学校表Service业务层处理
 * 
 * @author ouyangjie
 * @date 2021-01-16
 */
@Service
public class SchoolServiceImpl implements ISchoolService 
{
    @Autowired
    private SchoolMapper schoolMapper;

    /**
     * 查询学校表
     * 
     * @param id 学校表ID
     * @return 学校表
     */
    @Override
    public School selectSchoolById(String id)
    {
        return schoolMapper.selectSchoolById(id);
    }

    /**
     * 查询学校表列表
     * 
     * @param school 学校表
     * @return 学校表
     */
    @Override
    public List<School> selectSchoolList(School school)
    {
        return schoolMapper.selectSchoolList(school);
    }


    @Override
    public List<School> selectSchoolListWithProfession(School school){
        return schoolMapper.selectSchoolListWithProfession(school);
    }
    /**
     * 新增学校表
     * 
     * @param school 学校表
     * @return 结果
     */
    @Override
    public int insertSchool(School school)
    {
        if(null==school.getId()){
            school.setId(UUID.randomUUID().toString().replace("-","").substring(0,16));
        }
        return schoolMapper.insertSchool(school);
    }

    /**
     * 修改学校表
     * 
     * @param school 学校表
     * @return 结果
     */
    @Override
    public int updateSchool(School school)
    {
        return schoolMapper.updateSchool(school);
    }

    /**
     * 删除学校表对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSchoolByIds(String ids)
    {
        return schoolMapper.deleteSchoolByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除学校表信息
     * 
     * @param id 学校表ID
     * @return 结果
     */
    @Override
    public int deleteSchoolById(String id)
    {
        return schoolMapper.deleteSchoolById(id);
    }
}
