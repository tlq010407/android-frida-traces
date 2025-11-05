package com.huawei.wisesecurity.kfs.validation.core;

import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class ValidatorDescriptorImpl implements ValidatorDescriptor {
    public final Map validatorDefaultMap = new ConcurrentHashMap();
    public final Map validatorArrayMap = new ConcurrentHashMap();
    public final Map primitiveTypeMap = new ConcurrentHashMap() { // from class: com.huawei.wisesecurity.kfs.validation.core.ValidatorDescriptorImpl.1
        {
            put(Byte.TYPE, Byte.class);
            put(Short.TYPE, Short.class);
            put(Integer.TYPE, Integer.class);
            put(Long.TYPE, Long.class);
            put(Float.TYPE, Float.class);
            put(Double.TYPE, Double.class);
            put(Character.TYPE, Character.class);
            put(Boolean.TYPE, Boolean.class);
        }
    };

    public ValidatorDescriptorImpl(Class... clsArr) {
        for (Class cls : clsArr) {
            putConstraint(cls);
        }
    }

    private Class getValidatorForClassAndHierarchy(Map map, Class cls) {
        if (map.containsKey(cls)) {
            return (Class) map.get(cls);
        }
        Class validatorType = getValidatorType(map, cls.getGenericSuperclass());
        if (validatorType != null) {
            return validatorType;
        }
        for (Type type : cls.getGenericInterfaces()) {
            Class validatorType2 = getValidatorType(map, type);
            if (validatorType2 != null) {
                return validatorType2;
            }
        }
        return null;
    }

    private Class getValidatorType(Map map, Type type) {
        Class validatorForClassAndHierarchy;
        if (type == null) {
            return null;
        }
        if ((type instanceof Class) && (validatorForClassAndHierarchy = getValidatorForClassAndHierarchy(map, (Class) type)) != null) {
            return validatorForClassAndHierarchy;
        }
        if (!(type instanceof ParameterizedType)) {
            return null;
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        if (parameterizedType.getRawType() instanceof Class) {
            return getValidatorForClassAndHierarchy(map, (Class) parameterizedType.getRawType());
        }
        return null;
    }

    private Class normalizeClass(Class cls) {
        return this.primitiveTypeMap.containsKey(cls) ? (Class) this.primitiveTypeMap.get(cls) : cls;
    }

    private void putConstraint(Class cls) {
        Type typeExtractValidatorType = TypeHelper.extractValidatorType(cls);
        if (typeExtractValidatorType instanceof Class) {
            Class cls2 = (Class) typeExtractValidatorType;
            if (cls2.isArray()) {
                this.validatorArrayMap.put(cls2.getComponentType(), cls);
            }
            this.validatorDefaultMap.put(typeExtractValidatorType, cls);
        }
    }

    @Override // com.huawei.wisesecurity.kfs.validation.core.ValidatorDescriptor
    public Class getValidator(Class cls) {
        Object obj;
        if (cls == null) {
            return null;
        }
        Class clsNormalizeClass = normalizeClass(cls);
        if (this.validatorDefaultMap.containsKey(Object.class)) {
            obj = this.validatorDefaultMap.get(Object.class);
        } else {
            if (!this.validatorDefaultMap.containsKey(clsNormalizeClass)) {
                Class validatorType = clsNormalizeClass.isArray() ? getValidatorType(this.validatorArrayMap, clsNormalizeClass.getComponentType()) : getValidatorType(this.validatorDefaultMap, clsNormalizeClass);
                if (validatorType != null) {
                    this.validatorDefaultMap.put(clsNormalizeClass, validatorType);
                }
                return validatorType;
            }
            obj = this.validatorDefaultMap.get(clsNormalizeClass);
        }
        return (Class) obj;
    }
}
