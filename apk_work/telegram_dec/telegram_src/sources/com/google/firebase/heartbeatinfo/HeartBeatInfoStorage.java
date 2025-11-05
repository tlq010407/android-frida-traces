package com.google.firebase.heartbeatinfo;

import android.content.Context;
import android.content.SharedPreferences;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
class HeartBeatInfoStorage {
    private static final SimpleDateFormat FORMATTER = new SimpleDateFormat("dd/MM/yyyy z");
    private static HeartBeatInfoStorage instance;
    private final SharedPreferences heartBeatSharedPreferences;
    private final SharedPreferences sharedPreferences;

    private HeartBeatInfoStorage(Context context) {
        this.sharedPreferences = context.getSharedPreferences("FirebaseAppHeartBeat", 0);
        this.heartBeatSharedPreferences = context.getSharedPreferences("FirebaseAppHeartBeatStorage", 0);
    }

    static synchronized HeartBeatInfoStorage getInstance(Context context) {
        try {
            if (instance == null) {
                instance = new HeartBeatInfoStorage(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    static boolean isSameDateUtc(long j, long j2) {
        Date date = new Date(j);
        Date date2 = new Date(j2);
        SimpleDateFormat simpleDateFormat = FORMATTER;
        return !simpleDateFormat.format(date).equals(simpleDateFormat.format(date2));
    }

    synchronized boolean shouldSendGlobalHeartBeat(long j) {
        return shouldSendSdkHeartBeat("fire-global", j);
    }

    synchronized boolean shouldSendSdkHeartBeat(String str, long j) {
        if (!this.sharedPreferences.contains(str)) {
            this.sharedPreferences.edit().putLong(str, j).apply();
            return true;
        }
        if (!isSameDateUtc(this.sharedPreferences.getLong(str, -1L), j)) {
            return false;
        }
        this.sharedPreferences.edit().putLong(str, j).apply();
        return true;
    }
}
