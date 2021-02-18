package com.ruoyi.college.mapper;

import com.ruoyi.college.domain.QuestionAnswerAssociation;

import java.util.List;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2021-02-17
 */
public interface QuestionAnswerAssociationMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param questionId 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public List<QuestionAnswerAssociation> selectQuestionAnswerAssociationByQuestionId(Long questionId);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param questionAnswerAssociation 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<QuestionAnswerAssociation> selectQuestionAnswerAssociationList(QuestionAnswerAssociation questionAnswerAssociation);

    /**
     * 新增【请填写功能名称】
     * 
     * @param questionAnswerAssociation 【请填写功能名称】
     * @return 结果
     */
    public int insertQuestionAnswerAssociation(QuestionAnswerAssociation questionAnswerAssociation);

    /**
     * 修改【请填写功能名称】
     * 
     * @param questionAnswerAssociation 【请填写功能名称】
     * @return 结果
     */
    public int updateQuestionAnswerAssociation(QuestionAnswerAssociation questionAnswerAssociation);

    /**
     * 删除【请填写功能名称】
     * 
     * @param questionId 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteQuestionAnswerAssociationById(Long questionId);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param questionIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteQuestionAnswerAssociationByIds(String[] questionIds);
}
