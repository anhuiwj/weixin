package com.ah.company.pojo;

import com.ah.manager.pojo.BaseEntity;

import java.util.ArrayList;
import java.util.List;

public class SysOffice extends BaseEntity{
    private String id;

    private String parentId;

    private String parentIds;

    private String name;

    private int sort;

    private String code;

    private String remarks;

    private List<SysOffice> children = new ArrayList<SysOffice>();

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId == null ? null : parentId.trim();
    }

    public String getParentIds() {
        return parentIds;
    }

    public void setParentIds(String parentIds) {
        this.parentIds = parentIds == null ? null : parentIds.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    public List<SysOffice> getChildren() {
        return children;
    }

    public void setChildren(List<SysOffice> children) {
        this.children = children;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public int getSort() {
        return sort;
    }

    public void setSort(int sort) {
        this.sort = sort;
    }
}