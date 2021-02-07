package com.ruoyi.college.mapper;

import com.ruoyi.college.domain.QuestionAnswer;

import java.util.List;

/**
 * 问答Mapper接口
 * 
 * @author ouyangjie
 * @date 2021-01-16
 */
public interface QuestionAnswerMapper 
{
    /**
     * 查询问答
     * 
     * @param id 问答ID
     * @return 问答
     */
    public QuestionAnswer selectQuestionAnswerById(Long id);

    /**
     * 查询问答列表
     * 
     * @param questionAnswer 问答
     * @return 问答集合
     */
    public List<QuestionAnswer> selectQuestionAnswerList(QuestionAnswer questionAnswer);

    /**
     * 新增问答
     * 
     * @param questionAnswer 问答
     * @return 结果
     */
    public int insertQuestionAnswer(QuestionAnswer questionAnswer);

    /**
     * 修改问答
     * 
     * @param questionAnswer 问答
     * @return 结果
     */
    public int updateQuestionAnswer(QuestionAnswer questionAnswer);

    /**
     * 删除问答
     * 
     * @param id 问答ID
     * @return 结果
     */
    public int deleteQuestionAnswerById(Long id);

    /**
     * 批量删除问答
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteQuestionAnswerByIds(String[] ids);
}
