package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.Context;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class EventStoreModule {
    static String dbName() {
        return "com.google.android.datatransport.events";
    }

    static String packageName(Context context) {
        return context.getPackageName();
    }

    static int schemaVersion() {
        return SchemaManager.SCHEMA_VERSION;
    }

    static EventStoreConfig storeConfig() {
        return EventStoreConfig.DEFAULT;
    }
}
