package com.ruoyi.college.domain;

import com.ruoyi.common.core.domain.entity.SysDept;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 专业对象 profession
 * 
 * @author ouyangjie
 * @date 2021-01-18
 */
public class Profession extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  */
    private Long id;

    /** 专业名称 */
    @Excel(name = "专业名称")
    private String name;

    /** 专业类型 */
    private String type;

    /** 删除标志 */
    private Integer delFlag;

    /** 专业描述 */
    @Excel(name = "专业描述")
    private String processDescribe;

    /** 专业封面图 */
    @Excel(name = "专业封面图")
    private String processImg;

    /** 学校id */
    @Excel(name = "学校id")
    private String schoolId;

    private School school;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
    }
    public void setDelFlag(Integer delFlag) 
    {
        this.delFlag = delFlag;
    }

    public Integer getDelFlag() 
    {
        return delFlag;
    }
    public void setProcessDescribe(String processDescribe) 
    {
        this.processDescribe = processDescribe;
    }

    public String getProcessDescribe() 
    {
        return processDescribe;
    }
    public void setProcessImg(String processImg) 
    {
        this.processImg = processImg;
    }

    public String getProcessImg() 
    {
        return processImg;
    }
    public void setSchoolId(String schoolId) 
    {
        this.schoolId = schoolId;
    }

    public String getSchoolId() 
    {
        return schoolId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("type", getType())
            .append("delFlag", getDelFlag())
            .append("processDescribe", getProcessDescribe())
            .append("processImg", getProcessImg())
            .append("school", getSchool())
            .toString();
    }

    public School getSchool() {
        return school;
    }

    public void setSchool(School school) {
        this.school = school;
    }
}
