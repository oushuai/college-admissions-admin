package com.ruoyi.college.service;

import java.util.List;
import com.ruoyi.college.domain.QuestionAnswer;

/**
 * 问答Service接口
 * 
 * @author ouyangjie
 * @date 2021-01-16
 */
public interface IQuestionAnswerService 
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


//同时插入

    public int insertSameQuestionAnswer(QuestionAnswer questionAnswer);

    //同时更新

    public int updateSameQuestionAnswer(QuestionAnswer questionAnswer);
    /**
     * 修改问答
     * 
     * @param questionAnswer 问答
     * @return 结果
     */
    public int updateQuestionAnswer(QuestionAnswer questionAnswer);

    /**
     * 批量删除问答
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteQuestionAnswerByIds(String ids);

    /**
     * 删除问答信息
     * 
     * @param id 问答ID
     * @return 结果
     */
    public int deleteQuestionAnswerById(Long id);

    /**
     * 查询问答列表
     *
     * @param questionAnswer 问答
     * @return 问答集合
     */
    public QuestionAnswer selectQuestionAnswerListByQuestionId(Long id);
}
