package com.ruoyi.college.service;

import java.util.List;
import com.ruoyi.college.domain.School;

/**
 * 学校表Service接口
 * 
 * @author ouyangjie
 * @date 2021-01-16
 */
public interface ISchoolService 
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


    public List<School> selectSchoolListWithProfession(School school);
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
     * 批量删除学校表
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSchoolByIds(String ids);

    /**
     * 删除学校表信息
     * 
     * @param id 学校表ID
     * @return 结果
     */
    public int deleteSchoolById(String id);
}
