package com.ruoyi.web.controller.college;

import java.util.List;

import com.alibaba.fastjson.JSON;
import com.ruoyi.college.domain.School;
import com.ruoyi.college.service.ISchoolService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 学校表Controller
 * 
 * @author ouyangjie
 * @date 2021-01-19
 */
@Controller
@RequestMapping("/college/school")
public class SchoolController extends BaseController
{
    private String prefix = "college/school";

    @Autowired
    private ISchoolService schoolService;

    //@RequiresPermissions("college:school:view")
    @GetMapping()
    public String school()
    {
        return prefix + "/school";
    }

    /**
     * 查询学校表列表
     */
    //@RequiresPermissions("college:school:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(School school)
    {
        startPage();
        List<School> list = schoolService.selectSchoolList(school);
        return getDataTable(list);
    }

    /**
     * 导出学校表列表
     */
    //@RequiresPermissions("college:school:export")
    @Log(title = "学校表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(School school)
    {
        List<School> list = schoolService.selectSchoolList(school);
        ExcelUtil<School> util = new ExcelUtil<School>(School.class);
        return util.exportExcel(list, "school");
    }

    /**
     * 新增学校表
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存学校表
     */
    //@RequiresPermissions("college:school:add")
    @Log(title = "学校表", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(School school)
    {
        return toAjax(schoolService.insertSchool(school));
    }

    /**
     * 修改学校表
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") String id, ModelMap mmap)
    {
        School school = schoolService.selectSchoolById(id);
        mmap.put("school", school);
        return prefix + "/edit";
    }

    /**
     * 学校详情
     */
    @GetMapping("/{id}")
    @ResponseBody
    public Object info(@PathVariable("id") String id, ModelMap mmap)
    {
        School school = schoolService.selectSchoolById(id);
        mmap.put("school", school);
        mmap.addAttribute("school",school);
        return JSON.toJSON(school);
    }

    /**
     * 修改保存学校表
     */
    //@RequiresPermissions("college:school:edit")
    @Log(title = "学校表", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(School school)
    {
        return toAjax(schoolService.updateSchool(school));
    }

    /**
     * 删除学校表
     */
    //@RequiresPermissions("college:school:remove")
    @Log(title = "学校表", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(schoolService.deleteSchoolByIds(ids));
    }
}
