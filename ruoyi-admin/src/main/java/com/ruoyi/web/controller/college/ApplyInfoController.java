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
import com.ruoyi.college.domain.ApplyInfo;
import com.ruoyi.college.service.IApplyInfoService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 申请表Controller
 * 
 * @author ouyangjie
 * @date 2021-01-16
 */
@Controller
@RequestMapping("/college/applyInfo")
public class ApplyInfoController extends BaseController
{
    private String prefix = "college/applyInfo";

    @Autowired
    private IApplyInfoService applyInfoService;

    //@RequiresPermissions("college:applyInfo:view")
    @GetMapping()
    public String applyInfo()
    {
        return prefix + "/applyInfo";
    }

    /**
     * 查询申请表列表
     */
    //@RequiresPermissions("college:applyInfo:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ApplyInfo applyInfo)
    {
        startPage();
        List<ApplyInfo> list = applyInfoService.selectApplyInfoList(applyInfo);
        return getDataTable(list);
    }

    /**
     * 导出申请表列表
     */
    //@RequiresPermissions("college:applyInfo:export")
    @Log(title = "申请表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ApplyInfo applyInfo)
    {
        List<ApplyInfo> list = applyInfoService.selectApplyInfoList(applyInfo);
        ExcelUtil<ApplyInfo> util = new ExcelUtil<ApplyInfo>(ApplyInfo.class);
        return util.exportExcel(list, "applyInfo");
    }

    /**
     * 新增申请表
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存申请表
     */
    //@RequiresPermissions("college:applyInfo:add")
    @Log(title = "申请表", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ApplyInfo applyInfo)
    {
        return toAjax(applyInfoService.insertApplyInfo(applyInfo));
    }

    /**
     * 修改申请表
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        ApplyInfo applyInfo = applyInfoService.selectApplyInfoById(id);
        mmap.put("applyInfo", applyInfo);
        return prefix + "/edit";
    }

    /**
     * 修改保存申请表
     */
    //@RequiresPermissions("college:applyInfo:edit")
    @Log(title = "申请表", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ApplyInfo applyInfo)
    {
        return toAjax(applyInfoService.updateApplyInfo(applyInfo));
    }

    /**
     * 删除申请表
     */
    //@RequiresPermissions("college:applyInfo:remove")
    @Log(title = "申请表", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(applyInfoService.deleteApplyInfoByIds(ids));
    }
}
