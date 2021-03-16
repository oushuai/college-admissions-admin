package com.ruoyi.college.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import com.ruoyi.college.domain.QuestionAnswerAssociation;
import com.ruoyi.college.mapper.QuestionAnswerAssociationMapper;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.college.mapper.QuestionAnswerMapper;
import com.ruoyi.college.domain.QuestionAnswer;
import com.ruoyi.college.service.IQuestionAnswerService;
import com.ruoyi.common.core.text.Convert;
import org.springframework.transaction.annotation.Transactional;

/**
 * 问答Service业务层处理
 * 
 * @author ouyangjie
 * @date 2021-01-16
 */
@Service
public class QuestionAnswerServiceImpl implements IQuestionAnswerService 
{
    @Autowired
    private QuestionAnswerMapper questionAnswerMapper;

    @Autowired
    private QuestionAnswerAssociationMapper questionAnswerAssociationMapper;

    /**
     * 查询问答
     * 
     * @param id 问答ID
     * @return 问答
     */
    @Override
    public QuestionAnswer selectQuestionAnswerById(Long id)
    {
        return questionAnswerMapper.selectQuestionAnswerById(id);
    }

    /**
     * 查询问答列表
     * 
     * @param questionAnswer 问答
     * @return 问答
     */
    @Override
    public List<QuestionAnswer> selectQuestionAnswerList(QuestionAnswer questionAnswer)
    {
        return questionAnswerMapper.selectQuestionAnswerList(questionAnswer);
    }

    /**
     * 新增问答
     * 
     * @param questionAnswer 问答
     * @return 结果
     */
    @Override
    public int insertQuestionAnswer(QuestionAnswer questionAnswer)
    {
        return questionAnswerMapper.insertQuestionAnswer(questionAnswer);
    }

    @Override
    @Transactional
    public int insertSameQuestionAnswer(QuestionAnswer questionAnswer) {

        if(StringUtils.isNotBlank(questionAnswer.getAa())){
            QuestionAnswer answer = new QuestionAnswer();
            answer.setQa(questionAnswer.getAa());
            answer.setStatus(1);
            questionAnswerMapper.insertQuestionAnswer(answer);
            questionAnswerMapper.insertQuestionAnswer(questionAnswer);
            QuestionAnswerAssociation association = new QuestionAnswerAssociation();
            association.setQuestionId(questionAnswer.getId());
            association.setAnswerId(answer.getId());
           return questionAnswerAssociationMapper.insertQuestionAnswerAssociation(association);
        }
            return questionAnswerMapper.insertQuestionAnswer(questionAnswer);

    }

    @Override
    @Transactional
    public int updateSameQuestionAnswer(QuestionAnswer questionAnswer) {

        if(null!=questionAnswer.getQuestionAnswers()&&questionAnswer.getQuestionAnswers().size()>0){
            questionAnswerMapper.updateQuestionAnswer(questionAnswer.getQuestionAnswers().get(0));
        }
        if(StringUtils.isNotBlank(questionAnswer.getAa())){
            QuestionAnswer answer = new QuestionAnswer();
            answer.setQa(questionAnswer.getAa());
            answer.setStatus(1);
            questionAnswerMapper.insertQuestionAnswer(answer);
            QuestionAnswerAssociation association = new QuestionAnswerAssociation();
            association.setQuestionId(questionAnswer.getId());
            association.setAnswerId(answer.getId());
            questionAnswerAssociationMapper.insertQuestionAnswerAssociation(association);
        }
        return questionAnswerMapper.updateQuestionAnswer(questionAnswer);
    }

    /**
     * 修改问答
     * 
     * @param questionAnswer 问答
     * @return 结果
     */
    @Override
    public int updateQuestionAnswer(QuestionAnswer questionAnswer)
    {
        return questionAnswerMapper.updateQuestionAnswer(questionAnswer);
    }

    /**
     * 删除问答对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteQuestionAnswerByIds(String ids)
    {
        return questionAnswerMapper.deleteQuestionAnswerByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除问答信息
     * 
     * @param id 问答ID
     * @return 结果
     */
    @Override
    public int deleteQuestionAnswerById(Long id)
    {
        return questionAnswerMapper.deleteQuestionAnswerById(id);
    }

    /**
     * 查询问答列表
     *
     * @param questionAnswer 问答
     * @return 问答集合
     */
    @Override
    public QuestionAnswer selectQuestionAnswerListByQuestionId(Long id){
        QuestionAnswer questionAnswer = questionAnswerMapper.selectQuestionAnswerById(id);
        //如果问题有回复就返回,否则返回空串
        if(null !=questionAnswer && null !=questionAnswer.getId()) {
            questionAnswer = questionAnswerMapper.selectQuestionAnswerById(id);
            List<QuestionAnswerAssociation> questionAnswerAssociationList =questionAnswerAssociationMapper.selectQuestionAnswerAssociationByQuestionId(questionAnswer.getId());
            List<QuestionAnswer> questionAnswers = questionAnswerAssociationList.stream().map((qa) -> questionAnswerMapper.selectQuestionAnswerById(qa.getAnswerId())).collect(Collectors.toList());
            questionAnswer.setQuestionAnswers(questionAnswers);
        } else {
            questionAnswer.setQa("");
        }
            return questionAnswer;
    }
}
