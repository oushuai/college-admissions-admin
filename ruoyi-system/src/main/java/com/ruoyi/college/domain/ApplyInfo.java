package com.ruoyi.college.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 申请表对象 apply_info
 * 
 * @author ouyangjie
 * @date 2021-01-16
 */
public class ApplyInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  */
    private Long id;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 性别 */
    @Excel(name = "性别")
    private Integer sex;

    /** 身份证号 */
    @Excel(name = "身份证号")
    private Long identifyCard;

    /** 本人电话 */
    @Excel(name = "本人电话")
    private Long phone;

    /** 报读学校 */
    @Excel(name = "报读学校")
    private String schoolId;

    /** 选择专业 */
    @Excel(name = "选择专业")
    private Long professionId;

    /** 学生类别 */
    @Excel(name = "学生类别")
    private Integer studentType;

    /** 毕业学校 */
    @Excel(name = "毕业学校")
    private String graduationSchool;

    /** 中考成绩 */
    @Excel(name = "中考成绩")
    private Integer midtermScore;

    /** 分数 */
    @Excel(name = "备注")
    private String comment;

    /** 创建日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createDate;

    public School getSchool() {
        return school;
    }

    public void setSchool(School school) {
        this.school = school;
    }

    public Profession getProfession() {
        return profession;
    }

    public void setProfession(Profession profession) {
        this.profession = profession;
    }

    private School school;

    private Profession profession;

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
    public void setSex(Integer sex) 
    {
        this.sex = sex;
    }

    public Integer getSex() 
    {
        return sex;
    }
    public void setIdentifyCard(Long identifyCard) 
    {
        this.identifyCard = identifyCard;
    }

    public Long getIdentifyCard() 
    {
        return identifyCard;
    }
    public void setPhone(Long phone) 
    {
        this.phone = phone;
    }

    public Long getPhone() 
    {
        return phone;
    }
    public void setSchoolId(String schoolId) 
    {
        this.schoolId = schoolId;
    }

    public String getSchoolId() 
    {
        return schoolId;
    }
    public void setProfessionId(Long professionId) 
    {
        this.professionId = professionId;
    }

    public Long getProfessionId() 
    {
        return professionId;
    }
    public void setStudentType(Integer studentType) 
    {
        this.studentType = studentType;
    }

    public Integer getStudentType() 
    {
        return studentType;
    }
    public void setGraduationSchool(String graduationSchool) 
    {
        this.graduationSchool = graduationSchool;
    }

    public String getGraduationSchool() 
    {
        return graduationSchool;
    }
    public void setMidtermScore(Integer midtermScore) 
    {
        this.midtermScore = midtermScore;
    }

    public Integer getMidtermScore() 
    {
        return midtermScore;
    }
    public void setComment(String comment) 
    {
        this.comment = comment;
    }

    public String getComment() 
    {
        return comment;
    }
    public void setCreateDate(Date createDate) 
    {
        this.createDate = createDate;
    }

    public Date getCreateDate() 
    {
        return createDate;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("sex", getSex())
            .append("identifyCard", getIdentifyCard())
            .append("phone", getPhone())
            .append("schoolId", getSchoolId())
            .append("professionId", getProfessionId())
            .append("studentType", getStudentType())
            .append("graduationSchool", getGraduationSchool())
            .append("midtermScore", getMidtermScore())
            .append("comment", getComment())
            .append("createDate", getCreateDate())
            .append("school",getSchool())
            .append("profession",getProfession())
            .toString();
    }
}
