package com.huawei.wisesecurity.kfs.validation.metadata;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class BeanMetaData {
    public final List allConstraintFieldMetaData;
    public final String beanName;

    public BeanMetaData(Class cls) {
        this(null, cls);
    }

    public BeanMetaData(String str, Class cls) {
        String simpleName;
        this.allConstraintFieldMetaData = new ArrayList();
        if (str != null) {
            simpleName = str + "." + cls.getSimpleName();
        } else {
            simpleName = cls.getSimpleName();
        }
        this.beanName = simpleName;
        getFieldMetaDataFromClassAndHierarchy(cls);
    }

    private void getFieldMetaDataFromClassAndHierarchy(Class cls) {
        if (cls == null) {
            return;
        }
        getFieldMetaDataFromClassAndHierarchy(cls.getSuperclass());
        for (Field field : cls.getDeclaredFields()) {
            FieldMetaData fieldMetaData = new FieldMetaData(this.beanName, field);
            if (fieldMetaData.hasConstraints()) {
                this.allConstraintFieldMetaData.add(fieldMetaData);
            }
        }
    }

    public boolean hasConstraints() {
        return this.allConstraintFieldMetaData.size() > 0;
    }

    public void validate(Object obj) {
        if (obj == null) {
            return;
        }
        for (FieldMetaData fieldMetaData : this.allConstraintFieldMetaData) {
            if (fieldMetaData.hasConstraints()) {
                fieldMetaData.validate(obj);
            }
        }
    }
}
