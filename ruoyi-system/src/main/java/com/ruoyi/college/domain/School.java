package com.ruoyi.college.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

import java.util.List;

/**
 * 学校表对象 school
 * 
 * @author ouyangjie
 * @date 2021-01-19
 */
public class School extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  */
    private String id;

    /** 学校名称 */
    @Excel(name = "学校名称")
    private String name;

    /** 学校lego */
    @Excel(name = "学校lego")
    private String lego;

    /** 学校封面图 */
    @Excel(name = "学校封面图")
    private String coverImg;

    /** 学校简介 */
    @Excel(name = "学校简介")
    private String shortIntroduction;

    /** 学校详细介绍 */
    @Excel(name = "学校详细介绍")
    private String introduction;

    /** 排名 */
    @Excel(name = "排名")
    private Integer ranking;

    /** 是否删除 */
    private Integer delFlag;

    public List<Profession> getProfessionList() {
        return professionList;
    }

    public void setProfessionList(List<Profession> professionList) {
        this.professionList = professionList;
    }

    private List<Profession> professionList;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
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
    public void setLego(String lego) 
    {
        this.lego = lego;
    }

    public String getLego() 
    {
        return lego;
    }
    public void setCoverImg(String coverImg) 
    {
        this.coverImg = coverImg;
    }

    public String getCoverImg() 
    {
        return coverImg;
    }
    public void setShortIntroduction(String shortIntroduction) 
    {
        this.shortIntroduction = shortIntroduction;
    }

    public String getShortIntroduction() 
    {
        return shortIntroduction;
    }
    public void setIntroduction(String introduction) 
    {
        this.introduction = introduction;
    }

    public String getIntroduction() 
    {
        return introduction;
    }
    public void setRanking(Integer ranking)
    {
        this.ranking = ranking;
    }

    public Integer getRanking()
    {
        return ranking;
    }
    public void setDelFlag(Integer delFlag) 
    {
        this.delFlag = delFlag;
    }

    public Integer getDelFlag() 
    {
        return delFlag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("lego", getLego())
            .append("coverImg", getCoverImg())
            .append("shortIntroduction", getShortIntroduction())
            .append("introduction", getIntroduction())
            .append("ranking", getRanking())
            .append("delFlag", getDelFlag())
                .append("professionList", getProfessionList())
                .toString();
    }
}
