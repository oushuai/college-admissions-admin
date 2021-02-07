package com.ruoyi.web.controller.college;

import java.util.List;

import com.ruoyi.college.domain.SchoolNews;
import com.ruoyi.college.service.ISchoolNewsService;
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
 * 学校新闻表Controller
 * 
 * @author ouyangjie
 * @date 2021-01-19
 */
@Controller
@RequestMapping("/college/news")
public class SchoolNewsController extends BaseController
{
    private String prefix = "college/news";

    @Autowired
    private ISchoolNewsService schoolNewsService;

    //@RequiresPermissions("college:news:view")
    @GetMapping()
    public String news()
    {
        return prefix + "/news";
    }

    /**
     * 查询学校新闻表列表
     */
    //@RequiresPermissions("college:news:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SchoolNews schoolNews)
    {
        startPage();
        List<SchoolNews> list = schoolNewsService.selectSchoolNewsList(schoolNews);
        return getDataTable(list);
    }

    /**
     * 导出学校新闻表列表
     */
    //@RequiresPermissions("college:news:export")
    @Log(title = "学校新闻表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SchoolNews schoolNews)
    {
        List<SchoolNews> list = schoolNewsService.selectSchoolNewsList(schoolNews);
        ExcelUtil<SchoolNews> util = new ExcelUtil<SchoolNews>(SchoolNews.class);
        return util.exportExcel(list, "news");
    }

    /**
     * 新增学校新闻表
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存学校新闻表
     */
    //@RequiresPermissions("college:news:add")
    @Log(title = "学校新闻表", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SchoolNews schoolNews)
    {
        return toAjax(schoolNewsService.insertSchoolNews(schoolNews));
    }

    /**
     * 修改学校新闻表
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Integer id, ModelMap mmap)
    {
        SchoolNews schoolNews = schoolNewsService.selectSchoolNewsById(id);
        mmap.put("schoolNews", schoolNews);
        return prefix + "/edit";
    }

    /**
     * 修改保存学校新闻表
     */
    //@RequiresPermissions("college:news:edit")
    @Log(title = "学校新闻表", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SchoolNews schoolNews)
    {
        return toAjax(schoolNewsService.updateSchoolNews(schoolNews));
    }

    /**
     * 删除学校新闻表
     */
    //@RequiresPermissions("college:news:remove")
    @Log(title = "学校新闻表", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(schoolNewsService.deleteSchoolNewsByIds(ids));
    }
}
