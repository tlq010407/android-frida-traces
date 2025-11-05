package com.huawei.wisesecurity.kfs.validation.metadata;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.huawei.wisesecurity.kfs.exception.KfsValidationException;
import com.huawei.wisesecurity.kfs.validation.core.ConstraintHelper;
import java.lang.annotation.Annotation;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class ConstraintMetaData {
    public final Annotation constraint;
    public final String fieldName;

    public ConstraintMetaData(String str, Annotation annotation, Class cls) throws KfsValidationException {
        try {
            this.fieldName = str;
            this.constraint = annotation;
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(ConstraintHelper.getValidator(annotation.annotationType(), cls).newInstance());
        } catch (IllegalAccessException | InstantiationException e) {
            throw new KfsValidationException("create constraint meta data for field:" + str + " failed, " + e.getMessage());
        }
    }

    public void validate(Object obj) {
    }
}
