package com.ruoyi.college.domain;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 问答对象 question_answer
 * 
 * @author ouyangjie
 * @date 2021-01-16
 */
public class QuestionAnswer extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  */
    private Long id;

    /** 问题&答案 */
    @Excel(name = "问题&答案")
    private String qa;

    /** 用户名 */
    @Excel(name = "用户名")
    private String userId;

    /** 创建事件 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建事件", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createDate;

    /** 删除标志 */
    private Integer delFlag;

    /** 0-问题，1-答案 */
    @Excel(name = "0-问题，1-答案")
    private Integer status;

    public List<QuestionAnswer> getQuestionAnswers() {
        return questionAnswers;
    }

    public void setQuestionAnswers(List<QuestionAnswer> questionAnswers) {
        this.questionAnswers = questionAnswers;
    }

    private List<QuestionAnswer> questionAnswers;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setQa(String qa) 
    {
        this.qa = qa;
    }

    public String getQa() 
    {
        return qa;
    }
    public void setUserId(String userId) 
    {
        this.userId = userId;
    }

    public String getUserId() 
    {
        return userId;
    }
    public void setCreateDate(Date createDate) 
    {
        this.createDate = createDate;
    }

    public Date getCreateDate() 
    {
        return createDate;
    }
    public void setDelFlag(Integer delFlag) 
    {
        this.delFlag = delFlag;
    }

    public Integer getDelFlag() 
    {
        return delFlag;
    }
    public void setStatus(Integer status) 
    {
        this.status = status;
    }

    public Integer getStatus() 
    {
        return status;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("qa", getQa())
            .append("userId", getUserId())
            .append("createDate", getCreateDate())
            .append("delFlag", getDelFlag())
            .append("status", getStatus())
            .append("questionAnswers",getQuestionAnswers())
            .toString();
    }
}
