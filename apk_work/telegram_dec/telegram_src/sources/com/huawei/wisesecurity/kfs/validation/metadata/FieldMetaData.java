package com.huawei.wisesecurity.kfs.validation.metadata;

import com.huawei.wisesecurity.kfs.exception.KfsValidationException;
import com.huawei.wisesecurity.kfs.validation.constrains.KfsConstraint;
import com.huawei.wisesecurity.kfs.validation.constrains.KfsValid;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class FieldMetaData {
    public final String beanName;
    public final List constraintMetaDataList = new ArrayList();
    public final Field field;
    public BeanMetaData validKfsMetaData;

    public FieldMetaData(String str, Field field) throws SecurityException {
        this.beanName = str;
        this.field = field;
        field.setAccessible(true);
        for (Annotation annotation : field.getDeclaredAnnotations()) {
            if (((KfsConstraint) annotation.annotationType().getAnnotation(KfsConstraint.class)) != null) {
                if (annotation.annotationType() != KfsValid.class) {
                    this.constraintMetaDataList.add(new ConstraintMetaData(getFieldName(), annotation, field.getType()));
                } else {
                    this.validKfsMetaData = new BeanMetaData(str, field.getType());
                }
            }
        }
    }

    private String getFieldName() {
        return this.beanName + "." + this.field.getName();
    }

    public boolean hasConstraints() {
        return this.constraintMetaDataList.size() > 0 || this.validKfsMetaData != null;
    }

    public void validate(Object obj) {
        try {
            Object obj2 = this.field.get(obj);
            Iterator it = this.constraintMetaDataList.iterator();
            while (it.hasNext()) {
                ((ConstraintMetaData) it.next()).validate(obj2);
            }
            BeanMetaData beanMetaData = this.validKfsMetaData;
            if (beanMetaData != null) {
                beanMetaData.validate(obj2);
            }
        } catch (IllegalAccessException e) {
            throw new KfsValidationException("field validate failed:" + e.getMessage());
        }
    }
}
