package com.ah.health.base;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import java.beans.PropertyEditorSupport;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 * Created by Administrator on 2016/5/6.
 */
public abstract class BaseController {

    @InitBinder
    protected void initBinder(WebDataBinder binder) throws Exception {
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        CustomDateEditor dateEditor = new CustomDateEditor(df, true);
        binder.registerCustomEditor(java.util.Date.class, dateEditor);
        binder.registerCustomEditor(Date.class,new CustomSqlDateEditor());
        binder.registerCustomEditor(Timestamp.class,new CustomTimeStampEditor());
    }


    /**
     * 自定义java.sql.TimeStamp编辑器
     */
    private class CustomTimeStampEditor extends PropertyEditorSupport {
        @Override
        public void setAsText(String text) throws IllegalArgumentException {
            if (!StringUtils.hasText(text)) {
                setValue(null);
            } else {
                setValue(Timestamp.valueOf(text));
            }
        }

        @Override
        public String getAsText() {
            Timestamp value = (Timestamp) getValue();
            return (value != null ? value.toString() : "");
        }

    }

    /**
     * 自定义java.sql.Date编辑器
     */
    private class CustomSqlDateEditor extends PropertyEditorSupport {
        @Override
        public void setAsText(String text) throws IllegalArgumentException {
            if (!StringUtils.hasText(text)) {
                setValue(null);
            } else {
                setValue(Date.valueOf(text));
            }
        }

        @Override
        public String getAsText() {
            Date value = (Date) getValue();
            return (value != null ? value.toString() : "");
        }

    }
}
