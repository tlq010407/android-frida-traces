package com.google.gson;

import java.lang.reflect.Type;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public interface JsonSerializer {
    JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonSerializationContext);
}
