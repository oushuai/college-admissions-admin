package com.ruoyi.web.controller.college;

import java.util.List;
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
import com.ruoyi.college.domain.Focus;
import com.ruoyi.college.service.IFocusService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 轮播图片Controller
 * 
 * @author ouyangjie
 * @date 2021-01-16
 */
@Controller
@RequestMapping("/college/focus")
public class FocusController extends BaseController
{
    private String prefix = "college/focus";

    @Autowired
    private IFocusService focusService;

    //@RequiresPermissions("college:focus:view")
    @GetMapping()
    public String focus()
    {
        return prefix + "/focus";
    }

    /**
     * 查询轮播图片列表
     */
    //@RequiresPermissions("college:focus:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Focus focus)
    {
        startPage();
        List<Focus> list = focusService.selectFocusList(focus);
        return getDataTable(list);
    }

    /**
     * 导出轮播图片列表
     */
    //@RequiresPermissions("college:focus:export")
    @Log(title = "轮播图片", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Focus focus)
    {
        List<Focus> list = focusService.selectFocusList(focus);
        ExcelUtil<Focus> util = new ExcelUtil<Focus>(Focus.class);
        return util.exportExcel(list, "focus");
    }

    /**
     * 新增轮播图片
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存轮播图片
     */
    //@RequiresPermissions("college:focus:add")
    @Log(title = "轮播图片", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Focus focus)
    {
        return toAjax(focusService.insertFocus(focus));
    }

    /**
     * 修改轮播图片
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Focus focus = focusService.selectFocusById(id);
        mmap.put("focus", focus);
        return prefix + "/edit";
    }

    /**
     * 修改保存轮播图片
     */
    //@RequiresPermissions("college:focus:edit")
    @Log(title = "轮播图片", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Focus focus)
    {
        return toAjax(focusService.updateFocus(focus));
    }

    /**
     * 删除轮播图片
     */
    //@RequiresPermissions("college:focus:remove")
    @Log(title = "轮播图片", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(focusService.deleteFocusByIds(ids));
    }
}
