package com.huawei.secure.android.common.intent;

import android.os.Bundle;
import android.os.Parcelable;
import com.huawei.secure.android.common.activity.a;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Set;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class SafeBundle {
    private final Bundle a;

    public SafeBundle() {
        this(new Bundle());
    }

    public SafeBundle(Bundle bundle) {
        this.a = bundle == null ? new Bundle() : bundle;
    }

    public boolean containsKey(String str) {
        try {
            return this.a.containsKey(str);
        } catch (Exception unused) {
            a.a("SafeBundle", "containsKey exception. key:");
            return false;
        }
    }

    public Object get(String str) {
        try {
            return this.a.get(str);
        } catch (Exception e) {
            a.a("SafeBundle", "get exception: " + e.getMessage(), true);
            return null;
        }
    }

    public boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    public boolean getBoolean(String str, boolean z) {
        try {
            return this.a.getBoolean(str, z);
        } catch (Exception e) {
            a.a("SafeBundle", "getBoolean exception : " + e.getMessage(), true);
            return z;
        }
    }

    public Bundle getBundle() {
        return this.a;
    }

    public int getInt(String str) {
        return getInt(str, 0);
    }

    public int getInt(String str, int i) {
        try {
            return this.a.getInt(str, i);
        } catch (Exception e) {
            a.a("SafeBundle", "getInt exception: " + e.getMessage(), true);
            return i;
        }
    }

    public Parcelable getParcelable(String str) {
        try {
            return this.a.getParcelable(str);
        } catch (Exception e) {
            a.a("SafeBundle", "getParcelable exception: " + e.getMessage(), true);
            return null;
        }
    }

    public ArrayList getParcelableArrayList(String str) {
        try {
            return this.a.getParcelableArrayList(str);
        } catch (Exception e) {
            a.a("SafeBundle", "getParcelableArrayList exception: " + e.getMessage(), true);
            return null;
        }
    }

    public Serializable getSerializable(String str) {
        try {
            return this.a.getSerializable(str);
        } catch (Exception e) {
            a.a("SafeBundle", "getSerializable exception: " + e.getMessage(), true);
            return null;
        }
    }

    public String getString(String str) {
        try {
            return this.a.getString(str);
        } catch (Exception e) {
            a.a("SafeBundle", "getString exception: " + e.getMessage(), true);
            return "";
        }
    }

    public Set keySet() {
        try {
            return this.a.keySet();
        } catch (Exception unused) {
            a.a("SafeBundle", "keySet exception.");
            return null;
        }
    }

    public SafeBundle putInt(String str, int i) {
        try {
            this.a.putInt(str, i);
        } catch (Exception e) {
            a.a("SafeBundle", "putInt exception: " + e.getMessage(), true);
        }
        return this;
    }

    public SafeBundle putParcelable(String str, Parcelable parcelable) {
        try {
            this.a.putParcelable(str, parcelable);
        } catch (Exception e) {
            a.a("SafeBundle", "putParcelable exception: " + e.getMessage(), true);
        }
        return this;
    }

    public SafeBundle putSerializable(String str, Serializable serializable) {
        try {
            this.a.putSerializable(str, serializable);
        } catch (Exception e) {
            a.a("SafeBundle", "putSerializable exception: " + e.getMessage(), true);
        }
        return this;
    }

    public String toString() {
        return this.a.toString();
    }
}
