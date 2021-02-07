package com.ruoyi.college.mapper;

import com.ruoyi.college.domain.School;

import java.util.List;

/**
 * 学校表Mapper接口
 * 
 * @author ouyangjie
 * @date 2021-01-19
 */
public interface SchoolMapper 
{
    /**
     * 查询学校表
     * 
     * @param id 学校表ID
     * @return 学校表
     */
    public School selectSchoolById(String id);

    /**
     * 查询学校表列表
     * 
     * @param school 学校表
     * @return 学校表集合
     */
    public List<School> selectSchoolList(School school);

    /**
     * 新增学校表
     * 
     * @param school 学校表
     * @return 结果
     */
    public int insertSchool(School school);

    /**
     * 修改学校表
     * 
     * @param school 学校表
     * @return 结果
     */
    public int updateSchool(School school);

    /**
     * 删除学校表
     * 
     * @param id 学校表ID
     * @return 结果
     */
    public int deleteSchoolById(String id);

    /**
     * 批量删除学校表
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSchoolByIds(String[] ids);
}
