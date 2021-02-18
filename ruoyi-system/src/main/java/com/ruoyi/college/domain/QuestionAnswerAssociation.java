package com.ruoyi.college.domain;

import com.ruoyi.common.core.domain.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author ouyangjie
 * @createTime 2021-02-17 11:48
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class QuestionAnswerAssociation extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    private Long questionId;

    private Long answerId;


}
