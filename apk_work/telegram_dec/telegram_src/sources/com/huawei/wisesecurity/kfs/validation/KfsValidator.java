package com.huawei.wisesecurity.kfs.validation;

import com.huawei.wisesecurity.kfs.exception.KfsValidationException;
import com.huawei.wisesecurity.kfs.validation.metadata.BeanMetaData;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class KfsValidator {
    public static final Map CACHE_BEAN_META_DATA_MAP = new ConcurrentHashMap();

    public static BeanMetaData getBeanMetaData(Class cls) {
        Map map = CACHE_BEAN_META_DATA_MAP;
        if (map.containsKey(cls)) {
            return (BeanMetaData) map.get(cls);
        }
        BeanMetaData beanMetaData = new BeanMetaData(cls);
        map.put(cls, beanMetaData);
        return beanMetaData;
    }

    public static void validate(Object obj) throws KfsValidationException {
        if (obj == null) {
            throw new KfsValidationException("validate bean is null");
        }
        BeanMetaData beanMetaData = getBeanMetaData(obj.getClass());
        if (beanMetaData.hasConstraints()) {
            beanMetaData.validate(obj);
        }
    }
}
