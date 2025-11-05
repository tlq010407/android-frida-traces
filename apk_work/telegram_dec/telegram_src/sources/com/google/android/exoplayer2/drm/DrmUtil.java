package com.google.android.exoplayer2.drm;

import android.media.DeniedByServerException;
import android.media.NotProvisionedException;
import com.google.android.exoplayer2.analytics.MediaMetricsListener$$ExternalSyntheticApiModelOutline48;
import com.google.android.exoplayer2.analytics.MediaMetricsListener$$ExternalSyntheticApiModelOutline49;
import com.google.android.exoplayer2.analytics.MediaMetricsListener$$ExternalSyntheticApiModelOutline51;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.util.Util;
import com.huawei.hms.support.api.entity.auth.AuthCode;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class DrmUtil {

    private static final class Api18 {
        public static boolean isDeniedByServerException(Throwable th) {
            return th instanceof DeniedByServerException;
        }

        public static boolean isNotProvisionedException(Throwable th) {
            return th instanceof NotProvisionedException;
        }
    }

    private static final class Api21 {
        public static boolean isMediaDrmStateException(Throwable th) {
            return MediaMetricsListener$$ExternalSyntheticApiModelOutline48.m(th);
        }

        public static int mediaDrmStateExceptionToErrorCode(Throwable th) {
            return Util.getErrorCodeForMediaDrmErrorCode(Util.getErrorCodeFromPlatformDiagnosticsInfo(MediaMetricsListener$$ExternalSyntheticApiModelOutline49.m(th).getDiagnosticInfo()));
        }
    }

    private static final class Api23 {
        public static boolean isMediaDrmResetException(Throwable th) {
            return MediaMetricsListener$$ExternalSyntheticApiModelOutline51.m(th);
        }
    }

    public static int getErrorCodeForMediaDrmException(Exception exc, int i) {
        int i2 = Util.SDK_INT;
        if (i2 >= 21 && Api21.isMediaDrmStateException(exc)) {
            return Api21.mediaDrmStateExceptionToErrorCode(exc);
        }
        if (i2 >= 23 && Api23.isMediaDrmResetException(exc)) {
            return AuthCode.StatusCode.PERMISSION_EXPIRED;
        }
        if (i2 >= 18 && Api18.isNotProvisionedException(exc)) {
            return AuthCode.StatusCode.AUTH_INFO_NOT_EXIST;
        }
        if (i2 >= 18 && Api18.isDeniedByServerException(exc)) {
            return 6007;
        }
        if (exc instanceof UnsupportedDrmException) {
            return AuthCode.StatusCode.WAITING_CONNECT;
        }
        if (exc instanceof DefaultDrmSessionManager.MissingSchemeDataException) {
            return AuthCode.StatusCode.CERT_FINGERPRINT_ERROR;
        }
        if (exc instanceof KeysExpiredException) {
            return 6008;
        }
        if (i == 1) {
            return AuthCode.StatusCode.PERMISSION_EXPIRED;
        }
        if (i == 2) {
            return AuthCode.StatusCode.PERMISSION_NOT_EXIST;
        }
        if (i == 3) {
            return AuthCode.StatusCode.AUTH_INFO_NOT_EXIST;
        }
        throw new IllegalArgumentException();
    }
}
