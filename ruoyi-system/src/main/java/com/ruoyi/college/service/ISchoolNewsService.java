package com.ruoyi.college.service;

import java.util.List;
import com.ruoyi.college.domain.SchoolNews;

/**
 * 学校新闻表Service接口
 * 
 * @author ouyangjie
 * @date 2021-01-16
 */
public interface ISchoolNewsService 
{
    /**
     * 查询学校新闻表
     * 
     * @param id 学校新闻表ID
     * @return 学校新闻表
     */
    public SchoolNews selectSchoolNewsById(Integer id);

    /**
     * 查询学校新闻表列表
     * 
     * @param schoolNews 学校新闻表
     * @return 学校新闻表集合
     */
    public List<SchoolNews> selectSchoolNewsList(SchoolNews schoolNews);

    /**
     * 新增学校新闻表
     * 
     * @param schoolNews 学校新闻表
     * @return 结果
     */
    public int insertSchoolNews(SchoolNews schoolNews);

    /**
     * 修改学校新闻表
     * 
     * @param schoolNews 学校新闻表
     * @return 结果
     */
    public int updateSchoolNews(SchoolNews schoolNews);

    /**
     * 批量删除学校新闻表
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSchoolNewsByIds(String ids);

    /**
     * 删除学校新闻表信息
     * 
     * @param id 学校新闻表ID
     * @return 结果
     */
    public int deleteSchoolNewsById(Integer id);
}
