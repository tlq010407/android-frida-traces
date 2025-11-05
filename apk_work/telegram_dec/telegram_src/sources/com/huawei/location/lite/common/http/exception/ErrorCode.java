package com.huawei.location.lite.common.http.exception;

import com.huawei.hms.location.LocationRequest;
import com.huawei.location.base.activity.constant.ActivityErrorCode;
import java.util.HashMap;
import java.util.Map;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.voip.VoIPService;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class ErrorCode {
    private static final Map ERROR_CODE_DESC_MAP;
    public int code;
    public String msg;

    static {
        HashMap map = new HashMap();
        ERROR_CODE_DESC_MAP = map;
        map.put(0, "success");
        map.put(1, "inner error");
        map.put(200, "HTTP_OK");
        map.put(Integer.valueOf(NotificationCenter.smsJobStatusUpdate), "HTTP_CREATED");
        map.put(202, "HTTP_ACCEPTED");
        map.put(Integer.valueOf(VoIPService.ID_INCOMING_CALL_PRENOTIFICATION), "HTTP_NOT_AUTHORITATIVE");
        map.put(204, "HTTP_NO_CONTENT");
        map.put(205, "HTTP_RESET");
        map.put(206, "HTTP_PARTIAL");
        map.put(Integer.valueOf(LocationRequest.PRIORITY_INDOOR), "HTTP_MULT_CHOICE");
        map.put(301, "HTTP_MOVED_PERM");
        map.put(302, "HTTP_MOVED_TEMP");
        map.put(303, "HTTP_SEE_OTHER");
        map.put(304, "HTTP_NOT_MODIFIED");
        map.put(305, "HTTP_USE_PROXY");
        map.put(400, "HTTP_BAD_REQUEST");
        map.put(401, "HTTP_UNAUTHORIZED");
        map.put(402, "HTTP_PAYMENT_REQUIRED");
        map.put(403, "HTTP_FORBIDDEN");
        map.put(404, "HTTP_NOT_FOUND");
        map.put(405, "HTTP_BAD_METHOD");
        map.put(406, "HTTP_NOT_ACCEPTABLE");
        map.put(407, "HTTP_PROXY_AUTH");
        map.put(408, "HTTP_CLIENT_TIMEOUT");
        map.put(409, "HTTP_CONFLICT");
        map.put(410, "HTTP_GONE");
        map.put(411, "HTTP_LENGTH_REQUIRED");
        map.put(412, "HTTP_PRECON_FAILED");
        map.put(413, "HTTP_ENTITY_TOO_LARGE");
        map.put(414, "HTTP_REQ_TOO_LONG");
        map.put(415, "HTTP_UNSUPPORTED_TYPE");
        map.put(500, "HTTP_INTERNAL_ERROR");
        map.put(501, "HTTP_NOT_IMPLEMENTED");
        map.put(502, "HTTP_BAD_GATEWAY");
        map.put(503, "HTTP_UNAVAILABLE");
        map.put(504, "HTTP_GATEWAY_TIMEOUT");
        map.put(505, "HTTP_VERSION");
        map.put(10000, "internal error");
        map.put(Integer.valueOf(ActivityErrorCode.ENABLE_CONVERSION_EVENT_FAILED), "connect server exception access denied connection timed out");
        map.put(10302, "no network");
        map.put(10304, "json parse failed");
        map.put(Integer.valueOf(ActivityErrorCode.ACTIVITY_IDENTIFICATION_NOT_AVAILABLE), "server response format is error");
        map.put(10315, "server response error code");
        map.put(10307, "okHttp Response is null");
        map.put(10309, "param error");
        map.put(40, "get device cert info fail");
        map.put(41, "sign fail");
        map.put(80, "Get ta status from tss fail");
        map.put(81, "sign str from tss fail");
        map.put(82, "get cert chain from tss fail");
        map.put(85, "decrypt sk from Tss with RSA algorithm fail");
        map.put(86, "decrypt dk from Tss with RSA algorithm fail");
        map.put(87, "get key version fail");
        map.put(88, "key version from device does not match remote");
        map.put(89, "get ak/sk info fail");
        map.put(90, "decrypt kek from tss fail");
        map.put(91, "decrypt sk or dk with kek fail");
        map.put(92, "Get ta ak sk fail");
        map.put(93, "sign message with sk fail");
        map.put(94, "encrypt message with dk fail");
        map.put(95, "decrypt data with tss using rsa algorithm fail");
        map.put(96, "Get no ta ak sk fail");
        map.put(98, "persistence fail");
        map.put(99, "tss aes encrypt data fail");
        map.put(97, "tss aes decrypt data fail");
        map.put(105, "check certified credential fail");
        map.put(Integer.valueOf(R.styleable.AppCompatTheme_textAppearancePopupMenuHeader), "remote check signature fail");
        map.put(Integer.valueOf(R.styleable.AppCompatTheme_textColorAlertDialogListItem), "key version invalid");
        map.put(Integer.valueOf(R.styleable.AppCompatTheme_viewInflaterClass), "check sk failed");
        map.put(117, "remote check signature using sk generate fail");
    }

    public ErrorCode(int i, String str) {
        this.code = i;
        this.msg = str;
    }

    public static ErrorCode valueOf(int i) {
        Map map = ERROR_CODE_DESC_MAP;
        return map.containsKey(Integer.valueOf(i)) ? new ErrorCode(i, (String) map.get(Integer.valueOf(i))) : new ErrorCode(10000, (String) map.get(10000));
    }

    public static String valueOfKey(int i) {
        Map map = ERROR_CODE_DESC_MAP;
        if (!map.containsKey(Integer.valueOf(i))) {
            i = 10000;
        }
        return (String) map.get(Integer.valueOf(i));
    }

    public String toString() {
        return "ErrorCode{code=" + this.code + ", msg='" + this.msg + "'}";
    }
}
