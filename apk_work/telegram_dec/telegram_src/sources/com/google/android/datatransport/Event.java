package com.google.android.datatransport;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class Event {
    public static Event ofData(int i, Object obj) {
        return new AutoValue_Event(Integer.valueOf(i), obj, Priority.DEFAULT);
    }

    public static Event ofData(Object obj) {
        return new AutoValue_Event(null, obj, Priority.DEFAULT);
    }

    public static Event ofTelemetry(int i, Object obj) {
        return new AutoValue_Event(Integer.valueOf(i), obj, Priority.VERY_LOW);
    }

    public static Event ofTelemetry(Object obj) {
        return new AutoValue_Event(null, obj, Priority.VERY_LOW);
    }

    public abstract Integer getCode();

    public abstract Object getPayload();

    public abstract Priority getPriority();
}
