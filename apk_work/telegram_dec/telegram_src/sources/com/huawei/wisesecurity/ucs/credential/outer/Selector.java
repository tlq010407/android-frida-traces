package com.huawei.wisesecurity.ucs.credential.outer;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.log.LogUcs;
import com.huawei.wisesecurity.ucs.common.report.ReportOption;
import com.huawei.wisesecurity.ucs.credential.outer.impl.QuietHACapabilityImpl;
import com.huawei.wisesecurity.ucs_credential.m;
import com.huawei.wisesecurity.ucs_credential.n;
import com.huawei.wisesecurity.ucs_credential.o;
import com.huawei.wisesecurity.ucs_credential.q;
import com.huawei.wisesecurity.ucs_credential.v;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class Selector {
    public static final String GRS_FEATURE_CLASS = "com.huawei.hms.framework.network.grs.GrsClient";
    public static final String HA_FEATURE_CLASS = "com.huawei.hianalytics.process.HiAnalyticsInstance";
    public static final String NETWORK_FEATURE_CLASS = "com.huawei.hms.network.restclient.RestClient";
    public static final int NETWORK_RETRY_TIME_MAX = 5;
    public static final int NETWORK_RETRY_TIME_MIN = 1;
    public static final int NETWORK_TIME_OUT_MAX = 20000;
    public static final int NETWORK_TIME_OUT_MIN = 10000;
    public static final int SER_COUNTRY_LENGTH_MAX = 7;
    public static final int SER_COUNTRY_LENGTH_MIN = 2;
    public static final String TAG = "Selector";

    public static m selectGrsCapability(GrsCapability grsCapability, Context context, String str) throws UcsException {
        if (grsCapability != null) {
            return new o(grsCapability);
        }
        try {
            if (!TextUtils.isEmpty(str) && (str.length() < 2 || str.length() > 7)) {
                throw new UcsException(1001L, "serCountry param error");
            }
            LogUcs.i(TAG, "outer GRS capability is null, use inner capability", new Object[0]);
            return new n(context, str);
        } catch (ClassNotFoundException e) {
            throw new UcsException(1025L, "GRS capability not found : " + e.getMessage());
        }
    }

    public static HACapability selectHACapability(HACapability hACapability, m mVar, ReportOption reportOption) throws ClassNotFoundException, UcsException {
        if (hACapability != null) {
            return hACapability;
        }
        if (ReportOption.REPORT_CLOSE == reportOption) {
            return new QuietHACapabilityImpl();
        }
        try {
            Class.forName(HA_FEATURE_CLASS);
            LogUcs.i(TAG, "outer HA capability is null, use inner capability", new Object[0]);
            return new v();
        } catch (ClassNotFoundException unused) {
            LogUcs.i(TAG, "HA capability not found", new Object[0]);
            return new QuietHACapabilityImpl();
        }
    }

    public static NetworkCapability selectNetWorkCapability(NetworkCapability networkCapability, Context context, int i, int i2) throws UcsException, ClassNotFoundException {
        if (networkCapability != null) {
            networkCapability.initConfig(i, i2);
            return networkCapability;
        }
        try {
            Class.forName(NETWORK_FEATURE_CLASS);
            if (i < 10000 || i > 20000 || i2 < 1 || i2 > 5) {
                throw new UcsException(1001L, "networkTimeOut or networkRetryTime param error");
            }
            q qVar = new q(context);
            qVar.initConfig(i, i2);
            LogUcs.i(TAG, "outer Network capability is null, use inner capability", new Object[0]);
            return qVar;
        } catch (ClassNotFoundException e) {
            throw new UcsException(1025L, "Network capability not found : " + e.getMessage());
        }
    }
}
