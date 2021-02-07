package com.ruoyi.college.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.college.mapper.SchoolNewsMapper;
import com.ruoyi.college.domain.SchoolNews;
import com.ruoyi.college.service.ISchoolNewsService;
import com.ruoyi.common.core.text.Convert;

/**
 * 学校新闻表Service业务层处理
 * 
 * @author ouyangjie
 * @date 2021-01-16
 */
@Service
public class SchoolNewsServiceImpl implements ISchoolNewsService 
{
    @Autowired
    private SchoolNewsMapper schoolNewsMapper;

    /**
     * 查询学校新闻表
     * 
     * @param id 学校新闻表ID
     * @return 学校新闻表
     */
    @Override
    public SchoolNews selectSchoolNewsById(Integer id)
    {
        return schoolNewsMapper.selectSchoolNewsById(id);
    }

    /**
     * 查询学校新闻表列表
     * 
     * @param schoolNews 学校新闻表
     * @return 学校新闻表
     */
    @Override
    public List<SchoolNews> selectSchoolNewsList(SchoolNews schoolNews)
    {
        return schoolNewsMapper.selectSchoolNewsList(schoolNews);
    }

    /**
     * 新增学校新闻表
     * 
     * @param schoolNews 学校新闻表
     * @return 结果
     */
    @Override
    public int insertSchoolNews(SchoolNews schoolNews)
    {
        return schoolNewsMapper.insertSchoolNews(schoolNews);
    }

    /**
     * 修改学校新闻表
     * 
     * @param schoolNews 学校新闻表
     * @return 结果
     */
    @Override
    public int updateSchoolNews(SchoolNews schoolNews)
    {
        return schoolNewsMapper.updateSchoolNews(schoolNews);
    }

    /**
     * 删除学校新闻表对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSchoolNewsByIds(String ids)
    {
        return schoolNewsMapper.deleteSchoolNewsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除学校新闻表信息
     * 
     * @param id 学校新闻表ID
     * @return 结果
     */
    @Override
    public int deleteSchoolNewsById(Integer id)
    {
        return schoolNewsMapper.deleteSchoolNewsById(id);
    }
}
