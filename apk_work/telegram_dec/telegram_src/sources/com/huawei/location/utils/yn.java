package com.huawei.location.utils;

import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.core.aidl.annotation.Packed;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.secure.android.common.util.SafeBase64;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class yn {
    public static String Vw(IMessageEntity iMessageEntity) throws IllegalAccessException, SecurityException, IllegalArgumentException {
        String str;
        JSONObject jSONObject = new JSONObject();
        for (Class<?> superclass = iMessageEntity.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                for (Field field : superclass.getDeclaredFields()) {
                    if (field.isAnnotationPresent(Packed.class)) {
                        boolean zIsAccessible = field.isAccessible();
                        field.setAccessible(true);
                        String name = field.getName();
                        Object obj = field.get(iMessageEntity);
                        field.setAccessible(zIsAccessible);
                        yn(name, obj, jSONObject);
                    }
                }
            } catch (IllegalAccessException unused) {
                str = "catch IllegalAccessException";
                LogConsole.e("JsonUtil", str);
                return jSONObject.toString();
            } catch (SecurityException unused2) {
                str = "catch SecurityException";
                LogConsole.e("JsonUtil", str);
                return jSONObject.toString();
            } catch (JSONException unused3) {
                str = "catch JSONException";
                LogConsole.e("JsonUtil", str);
                return jSONObject.toString();
            }
        }
        return jSONObject.toString();
    }

    private static Map Vw(Type type, JSONObject jSONObject) throws IllegalAccessException, InstantiationException {
        Class cls = (Class) ((ParameterizedType) type).getActualTypeArguments()[1];
        JSONArray jSONArray = new JSONArray(jSONObject.getString("_map_"));
        HashMap map = new HashMap();
        for (int i = 0; i < jSONArray.length(); i += 2) {
            Object objNewInstance = cls.newInstance();
            if (objNewInstance instanceof IMessageEntity) {
                map.put(jSONArray.get(i), yn(jSONArray.getString(i + 1), (IMessageEntity) objNewInstance));
            } else {
                map.put(jSONArray.get(i), jSONArray.get(i + 1));
            }
        }
        return map;
    }

    public static IMessageEntity yn(String str, IMessageEntity iMessageEntity) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            for (Class<?> superclass = iMessageEntity.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                for (Field field : superclass.getDeclaredFields()) {
                    if (field.isAnnotationPresent(Packed.class)) {
                        try {
                            yn(iMessageEntity, field, jSONObject);
                        } catch (IllegalAccessException unused) {
                            LogConsole.e("JsonUtil", "jsonToEntity, set value of the field exception, field name:" + field.getName());
                        }
                    }
                }
            }
        } catch (Exception unused2) {
            LogConsole.e("JsonUtil", "catch Exception when parse jsonString");
        }
        return iMessageEntity;
    }

    private static String yn(IMessageEntity iMessageEntity) throws IllegalAccessException, JSONException, SecurityException, IllegalArgumentException {
        JSONObject jSONObject = new JSONObject();
        for (Class<?> superclass = iMessageEntity.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            for (Field field : superclass.getDeclaredFields()) {
                if (field.isAnnotationPresent(Packed.class)) {
                    boolean zIsAccessible = field.isAccessible();
                    field.setAccessible(true);
                    String name = field.getName();
                    Object obj = field.get(iMessageEntity);
                    field.setAccessible(zIsAccessible);
                    yn(name, obj, jSONObject);
                }
            }
        }
        return jSONObject.toString();
    }

    private static List yn(Type type, JSONObject jSONObject) throws JSONException, IllegalAccessException, InstantiationException {
        int i = jSONObject.getInt("_list_size_");
        int i2 = jSONObject.getInt("_val_type_");
        ArrayList arrayList = new ArrayList(i);
        for (int i3 = 0; i3 < i; i3++) {
            Object objYn = jSONObject.get("_list_item_" + i3);
            if (i2 == 0 && (type instanceof ParameterizedType)) {
                Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                if (type2 instanceof Class) {
                    Object objNewInstance = ((Class) type2).newInstance();
                    if ((objNewInstance instanceof IMessageEntity) && (objYn instanceof String)) {
                        objYn = yn((String) objYn, (IMessageEntity) objNewInstance);
                        arrayList.add(objYn);
                    }
                }
            } else if (i2 == 1) {
                arrayList.add(objYn);
            } else {
                LogConsole.d("JsonUtil", "readList");
            }
        }
        return arrayList;
    }

    private static void yn(IMessageEntity iMessageEntity, Field field, JSONObject jSONObject) throws JSONException, IllegalAccessException, SecurityException, IllegalArgumentException {
        Object obj;
        String name = field.getName();
        Object objYn = null;
        if (jSONObject.has(name)) {
            obj = jSONObject.get(name);
        } else {
            String str = "header";
            if (!jSONObject.has("header") || !jSONObject.getJSONObject("header").has(name)) {
                str = "body";
                if (!jSONObject.has("body") || !jSONObject.getJSONObject("body").has(name)) {
                    obj = null;
                }
            }
            jSONObject = jSONObject.getJSONObject(str);
            obj = jSONObject.get(name);
        }
        if (obj != null) {
            try {
                if (field.getType().getName().startsWith("com.huawei") && (field.getType().newInstance() instanceof IMessageEntity) && (obj instanceof String)) {
                    objYn = yn((String) obj, (IMessageEntity) field.getType().newInstance());
                } else if ((obj instanceof JSONObject) && ((JSONObject) obj).has("_val_type_")) {
                    int i = ((JSONObject) obj).getInt("_val_type_");
                    if (i == 1 || i == 0) {
                        objYn = yn(field.getGenericType(), (JSONObject) obj);
                    } else if (i == 2) {
                        objYn = SafeBase64.decode(((JSONObject) obj).getString("_byte_"), 2);
                    } else if (i == 3) {
                        objYn = Vw(field.getGenericType(), (JSONObject) obj);
                    } else {
                        LogConsole.e("JsonUtil", "cannot support type : " + i);
                    }
                } else {
                    objYn = obj;
                }
            } catch (InstantiationException unused) {
                LogConsole.e("JsonUtil", "catch InstantiationException");
            }
        }
        if (objYn != null) {
            boolean zIsAccessible = field.isAccessible();
            field.setAccessible(true);
            field.set(iMessageEntity, objYn);
            field.setAccessible(zIsAccessible);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0032 A[PHI: r8
      0x0032: PHI (r8v1 java.lang.Object) = 
      (r8v14 java.lang.Object)
      (r8v15 java.lang.Object)
      (r8v16 java.lang.Object)
      (r8v17 java.lang.Object)
      (r8v18 java.lang.Object)
      (r8v19 java.lang.Object)
      (r8v20 java.lang.Object)
      (r8v21 java.lang.Object)
     binds: [B:3:0x0003, B:9:0x0017, B:12:0x001c, B:15:0x0021, B:18:0x0026, B:21:0x002b, B:24:0x0030, B:50:0x00d0] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean yn(String str, Object obj, JSONObject jSONObject) throws JSONException, IllegalAccessException, SecurityException, IllegalArgumentException {
        JSONObject jSONObject2;
        boolean z = obj instanceof String;
        Object obj2 = obj;
        if (!z) {
            if (obj instanceof Integer) {
                jSONObject.put(str, ((Integer) obj).intValue());
            } else {
                boolean z2 = obj instanceof Short;
                obj2 = obj;
                if (z2) {
                    jSONObject.put(str, obj2);
                } else {
                    boolean z3 = obj instanceof Long;
                    obj2 = obj;
                    if (!z3) {
                        boolean z4 = obj instanceof Float;
                        obj2 = obj;
                        if (!z4) {
                            boolean z5 = obj instanceof Double;
                            obj2 = obj;
                            if (!z5) {
                                boolean z6 = obj instanceof Boolean;
                                obj2 = obj;
                                if (!z6) {
                                    boolean z7 = obj instanceof JSONObject;
                                    obj2 = obj;
                                    if (!z7) {
                                        if (obj instanceof byte[]) {
                                            jSONObject2 = new JSONObject();
                                            jSONObject2.put("_val_type_", 2);
                                            jSONObject2.put("_byte_", SafeBase64.encode((byte[]) obj, 2));
                                        } else if (obj instanceof List) {
                                            List list = (List) obj;
                                            jSONObject2 = new JSONObject();
                                            jSONObject2.put("_val_type_", 1);
                                            jSONObject2.put("_list_size_", list.size());
                                            for (int i = 0; i < list.size(); i++) {
                                                yn("_list_item_" + i, list.get(i), jSONObject2);
                                                if (list.get(i) instanceof IMessageEntity) {
                                                    jSONObject2.put("_val_type_", 0);
                                                }
                                            }
                                        } else {
                                            if (!(obj instanceof Map)) {
                                                if (obj instanceof IMessageEntity) {
                                                    try {
                                                        jSONObject.put(str, yn((IMessageEntity) obj));
                                                    } catch (IllegalAccessException unused) {
                                                        LogConsole.e("JsonUtil", "IllegalAccessException ");
                                                    }
                                                }
                                                return false;
                                            }
                                            JSONArray jSONArray = new JSONArray();
                                            for (Object obj3 : ((Map) obj).entrySet()) {
                                                if (obj3 instanceof Map.Entry) {
                                                    Object key = ((Map.Entry) obj3).getKey();
                                                    if (key instanceof IMessageEntity) {
                                                        key = yn((IMessageEntity) key);
                                                    }
                                                    jSONArray.put(key);
                                                }
                                            }
                                            JSONObject jSONObject3 = new JSONObject();
                                            jSONObject3.put("_val_type_", 3);
                                            jSONObject3.put("_map_", jSONArray.toString());
                                            obj2 = jSONObject3;
                                            jSONObject.put(str, obj2);
                                        }
                                        jSONObject.put(str, jSONObject2);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return true;
    }
}
