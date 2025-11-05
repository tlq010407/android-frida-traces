package com.huawei.location.vdr.data.ephemeris;

import android.text.TextUtils;
import com.google.gson.JsonSyntaxException;
import com.huawei.hms.location.BuildConfig;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.grs.LocationNlpGrsHelper;
import com.huawei.location.lite.common.http.HttpClientEx;
import com.huawei.location.lite.common.http.exception.OnErrorException;
import com.huawei.location.lite.common.http.exception.OnFailureException;
import com.huawei.location.lite.common.http.request.BaseRequest;
import com.huawei.location.lite.common.http.request.HeadBuilder;
import com.huawei.location.lite.common.http.request.RequestJsonBody;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.security.LocationSecurityManager;
import com.huawei.location.lite.common.util.GsonUtil;
import com.huawei.location.lite.common.util.PreferencesHelper;
import com.huawei.location.vdr.data.ephemeris.net.EphemerisResponse;
import com.huawei.riemann.gnsslocation.core.bean.eph.BdsEphemeris;
import com.huawei.riemann.gnsslocation.core.bean.eph.BdsIon;
import com.huawei.riemann.gnsslocation.core.bean.eph.BdsNav;
import com.huawei.riemann.gnsslocation.core.bean.eph.BdsTim;
import com.huawei.riemann.gnsslocation.core.bean.eph.Ephemeris;
import com.huawei.riemann.gnsslocation.core.bean.eph.GalileoEphemeris;
import com.huawei.riemann.gnsslocation.core.bean.eph.GalileoNav;
import com.huawei.riemann.gnsslocation.core.bean.eph.GalileoTim;
import com.huawei.riemann.gnsslocation.core.bean.eph.GlonassEphemeris;
import com.huawei.riemann.gnsslocation.core.bean.eph.GlonassNav;
import com.huawei.riemann.gnsslocation.core.bean.eph.GlonassTim;
import com.huawei.riemann.gnsslocation.core.bean.eph.GpsEphemeris;
import com.huawei.riemann.gnsslocation.core.bean.eph.GpsIon;
import com.huawei.riemann.gnsslocation.core.bean.eph.GpsNav;
import com.huawei.wisesecurity.ucs.credential.nativelib.UcsLib;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.telegram.messenger.LiteMode;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class yn {
    private static long FB = 0;
    private static boolean Vw = false;
    private static long yn;
    private FB LW = new FB();

    private JSONArray E5(EphemerisResponse ephemerisResponse) {
        try {
            return new JSONObject(ephemerisResponse.getBdsNav()).getJSONArray("ephList");
        } catch (JSONException e) {
            LogConsole.e("EphProvider", "getBdsNavs JSONException:" + e.getMessage());
            return new JSONArray();
        }
    }

    private GalileoEphemeris FB(EphemerisResponse ephemerisResponse) {
        FB fb = this.LW;
        JSONObject jSONObject = new JSONObject(ephemerisResponse.getGalTim());
        fb.getClass();
        GalileoTim galileoTimBuild = GalileoTim.Builder.aGalileoTim().withA0(jSONObject.optDouble("a0", 0.0d) / 3.4359738368E10d).withA1(jSONObject.optDouble("a1", 0.0d) / 2.251799813685248E15d).withT0(jSONObject.optLong("t0", 0L)).build();
        JSONObject jSONObject2 = new JSONObject(ephemerisResponse.getGalNav());
        GalileoNav[] galileoNavArrVw = this.LW.Vw(jSONObject2.getJSONArray("ephList"));
        LogConsole.i("EphProvider", "galNavArray size = " + galileoNavArrVw.length);
        return GalileoEphemeris.Builder.aGalileoEphemeris().withSatNumber(jSONObject2.optInt("satNumber", 0)).withNonBroadcastInd(jSONObject2.optInt("nonBroadcastInd", 0)).withGalileoNavs(galileoNavArrVw).withGalileoTim(galileoTimBuild).build();
    }

    private GlonassEphemeris LW(EphemerisResponse ephemerisResponse) {
        FB fb = this.LW;
        JSONObject jSONObject = new JSONObject(ephemerisResponse.getGloTim());
        fb.getClass();
        GlonassTim glonassTimBuild = GlonassTim.Builder.aGlonassTim().withA0(jSONObject.optDouble("a0", 0.0d) / 3.4359738368E10d).withA1(jSONObject.optDouble("a1", 0.0d) / 2.251799813685248E15d).withA2((jSONObject.optDouble("a2", 0.0d) / 1.15292150460684698E18d) / 256.0d).withGnssToId(jSONObject.optInt("gnssToId", 0)).withWeekNumber(jSONObject.optInt("weekNumber", 0)).withWeekSecond(jSONObject.optInt("weekSecond", 0) * 16).build();
        JSONObject jSONObject2 = new JSONObject(ephemerisResponse.getGloNav());
        GlonassNav[] glonassNavArrFB = this.LW.FB(jSONObject2.getJSONArray("gloNavItemList"));
        LogConsole.i("EphProvider", "GlonassNav size = " + glonassNavArrFB.length);
        return GlonassEphemeris.Builder.aGlonassEphemeris().withSatNumber(jSONObject2.optInt("satNumber", 0)).withNonBroadcastInd(jSONObject2.optInt("nonBroadcastInd", 0)).withGlonassNavs(glonassNavArrFB).withGlonassTim(glonassTimBuild).build();
    }

    private Ephemeris Vw(EphemerisResponse ephemerisResponse) {
        String str;
        if (ephemerisResponse == null) {
            return null;
        }
        try {
            if (this.LW == null) {
                this.LW = new FB();
            }
            GpsEphemeris gpsEphemerisDC = dC(ephemerisResponse);
            BdsEphemeris bdsEphemerisYn = yn(ephemerisResponse);
            return Ephemeris.Builder.anEphemeris().withGpsEphemeris(gpsEphemerisDC).withBdsEphemeris(bdsEphemerisYn).withGalileoEphemeris(FB(ephemerisResponse)).withGlonassEphemeris(LW(ephemerisResponse)).build();
        } catch (JsonSyntaxException unused) {
            str = "json syntax error";
            LogConsole.e("EphProvider", str);
            return null;
        } catch (JSONException e) {
            str = "jsonException:" + e.getMessage();
            LogConsole.e("EphProvider", str);
            return null;
        }
    }

    private JSONArray d2(EphemerisResponse ephemerisResponse) {
        try {
            return new JSONObject(ephemerisResponse.getGalNav()).getJSONArray("ephList");
        } catch (JSONException e) {
            LogConsole.e("EphProvider", "getGalNavs JSONException:" + e.getMessage());
            return new JSONArray();
        }
    }

    private GpsEphemeris dC(EphemerisResponse ephemerisResponse) {
        FB fb = this.LW;
        JSONObject jSONObject = new JSONObject(ephemerisResponse.getGpsIon());
        fb.getClass();
        GpsIon gpsIonBuild = GpsIon.Builder.aGpsIon().withA0(jSONObject.optDouble("a0", 0.0d) / 1.073741824E9d).withA1(jSONObject.optDouble("a1", 0.0d) / 1.34217728E8d).withA2(jSONObject.optDouble("a2", 0.0d) / 1.6777216E7d).withA3(jSONObject.optDouble("a3", 0.0d) / 1.6777216E7d).withB0(jSONObject.optInt("b0", 0) * 2048).withB1(jSONObject.optInt("b1", 0) * LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM).withB2(jSONObject.optInt("b2", 0) * 65536).withB3(jSONObject.optInt("b3", 0) * 65536).withValid(jSONObject.optBoolean("valid")).build();
        JSONObject jSONObject2 = new JSONObject(ephemerisResponse.getGpsNav());
        GpsNav[] gpsNavArrLW = this.LW.LW(jSONObject2.getJSONArray("ephList"));
        LogConsole.i("EphProvider", "GpsNav size = " + gpsNavArrLW.length);
        return GpsEphemeris.Builder.aGpsEphemeris().withSatNumber(jSONObject2.optInt("satNumber", 0)).withGpsNavs(gpsNavArrLW).withGpsIon(gpsIonBuild).build();
    }

    private JSONArray ut(EphemerisResponse ephemerisResponse) {
        try {
            return new JSONObject(ephemerisResponse.getGpsNav()).getJSONArray("ephList");
        } catch (JSONException e) {
            LogConsole.e("EphProvider", "getGpsNavs JSONException:" + e.getMessage());
            return new JSONArray();
        }
    }

    private BdsEphemeris yn(EphemerisResponse ephemerisResponse) throws JSONException {
        JSONObject jSONObject = new JSONObject(ephemerisResponse.getBdsNav());
        JSONObject jSONObject2 = new JSONObject(ephemerisResponse.getBdsIon());
        JSONObject jSONObject3 = new JSONObject(ephemerisResponse.getBdsTim());
        BdsNav[] bdsNavArrYn = this.LW.yn(jSONObject.getJSONArray("ephList"));
        FB fb = this.LW;
        JSONArray jSONArray = jSONObject2.getJSONArray("ionList");
        fb.getClass();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
            arrayList.add(BdsIon.Builder.aBdsIon().withA0(jSONObjectOptJSONObject.optDouble("a0", 0.0d) / 1.073741824E9d).withA1(jSONObjectOptJSONObject.optDouble("a1", 0.0d) / 1.34217728E8d).withA2(jSONObjectOptJSONObject.optDouble("a2", 0.0d) / 1.6777216E7d).withA3(jSONObjectOptJSONObject.optDouble("a3", 0.0d) / 1.6777216E7d).withB0(jSONObjectOptJSONObject.optInt("b0", 0) * 2048).withB1(jSONObjectOptJSONObject.optInt("b1", 0) * LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM).withB2(jSONObjectOptJSONObject.optInt("b2", 0) * 65536).withB3(jSONObjectOptJSONObject.optInt("b3", 0) * 65536).withSvid(jSONObjectOptJSONObject.optInt("svid", 0) + 1).withToe(jSONObjectOptJSONObject.optInt("toe", 0) * 8).withSvid(jSONObjectOptJSONObject.optInt("svid", 0) + 1).build());
        }
        BdsIon[] bdsIonArr = new BdsIon[arrayList.size()];
        arrayList.toArray(bdsIonArr);
        FB fb2 = this.LW;
        JSONArray jSONArray2 = jSONObject3.getJSONArray("timList");
        fb2.getClass();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            JSONObject jSONObjectOptJSONObject2 = jSONArray2.optJSONObject(i2);
            arrayList2.add(BdsTim.Builder.aBdsTim().withA0(jSONObjectOptJSONObject2.optDouble("a0", 0.0d) / 3.4359738368E10d).withA1(jSONObjectOptJSONObject2.optDouble("a1", 0.0d) / 2.251799813685248E15d).withA2((jSONObjectOptJSONObject2.optDouble("a2", 0.0d) / 1.15292150460684698E18d) / 256.0d).withDeltaT(jSONObjectOptJSONObject2.optInt("deltaT", 0)).withGnssToId(jSONObjectOptJSONObject2.optInt("gnssToId", 0)).withWeekNumber(jSONObjectOptJSONObject2.optInt("weekNumber", 0)).withWeekSecond(jSONObjectOptJSONObject2.optInt("weekSecond", 0) * 16).build());
        }
        BdsTim[] bdsTimArr = new BdsTim[arrayList2.size()];
        arrayList2.toArray(bdsTimArr);
        LogConsole.i("EphProvider", "BdsNav size = " + bdsNavArrYn.length);
        return BdsEphemeris.Builder.aBdsEphemeris().withSatNumber(jSONObject.optInt("satNumber", 0)).withNonBroadcastInd(jSONObject.optInt("nonBroadcastInd", 0)).withBdsNavs(bdsNavArrYn).withBdsIons(bdsIonArr).withBdsTims(bdsTimArr).build();
    }

    private JSONArray zp(EphemerisResponse ephemerisResponse) {
        try {
            return new JSONObject(ephemerisResponse.getGloNav()).getJSONArray("gloNavItemList");
        } catch (JSONException e) {
            LogConsole.e("EphProvider", "getGloNavs JSONException:" + e.getMessage());
            return new JSONArray();
        }
    }

    public long FB() {
        if (yn <= 0) {
            yn = new PreferencesHelper("ephemeris_expire_time").getLong("ephemeris_expire_time");
        }
        LogConsole.i("EphProvider", "getExpireTime = " + yn);
        return yn;
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0137  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Ephemeris Vw() throws JSONException, IOException {
        String string;
        boolean z;
        long j;
        int i;
        String str;
        long j2;
        String str2;
        String strEncrypt;
        StringBuilder sb;
        String message;
        LogConsole.i("EphProvider", "try to downloadEphemeris here");
        if (Vw) {
            str2 = "download task running, return empty ephemeris here";
        } else {
            long jVw = new Vw(System.currentTimeMillis()).Vw();
            if (System.currentTimeMillis() - FB < UcsLib.NATIVE_VERIFY_SIGNATURE_FAIL) {
                str2 = "request too frequent, return empty ephemeris here";
            } else {
                Vw = true;
                com.huawei.location.vdr.data.ephemeris.net.yn ynVar = new com.huawei.location.vdr.data.ephemeris.net.yn("AGNSS");
                LogConsole.i("OnlineEphService", "get online eph data");
                EphemerisResponse ephemerisResponse = new EphemerisResponse();
                try {
                    try {
                        RequestJsonBody requestJsonBodyBuild = new RequestJsonBody.Builder().build(new JSONObject(GsonUtil.getInstance().toJson(ynVar)));
                        String string2 = UUID.randomUUID().toString();
                        String grsHostAddress = LocationNlpGrsHelper.getGrsHostAddress(BuildConfig.LIBRARY_PACKAGE_NAME);
                        if (TextUtils.isEmpty(grsHostAddress)) {
                            LogConsole.e("OnlineEphService", "grsHostAddress is null");
                        } else {
                            EphemerisResponse ephemerisResponse2 = (EphemerisResponse) new HttpClientEx().newSubmit(new BaseRequest.Builder("/networklocation/v1/gnssData").setBaseUrl(grsHostAddress).setHeads(new HeadBuilder(string2).setPackageName(ContextUtil.getContext().getPackageName())).setBody(requestJsonBodyBuild).builder()).execute(EphemerisResponse.class);
                            try {
                                LogConsole.i("OnlineEphService", "doHttp, response code is " + ephemerisResponse2.getApiCode());
                                ephemerisResponse = ephemerisResponse2;
                            } catch (OnErrorException e) {
                                e = e;
                                ephemerisResponse = ephemerisResponse2;
                                sb = new StringBuilder();
                                sb.append("doHttp, OnErrorException: code is ");
                                sb.append(e.getApiCode());
                                sb.append(", msg is ");
                                message = e.getApiMsg();
                                sb.append(message);
                                string = sb.toString();
                                LogConsole.e("OnlineEphService", string);
                                if (ephemerisResponse.isSuccess()) {
                                }
                                Vw = z;
                                str2 = "ephemeris in cloud is invalid, return empty ephemeris here";
                                LogConsole.i("EphProvider", str2);
                                return null;
                            } catch (OnFailureException e2) {
                                e = e2;
                                ephemerisResponse = ephemerisResponse2;
                                sb = new StringBuilder();
                                sb.append("doHttp, OnFailureException: code is ");
                                sb.append(e.getErrorCode());
                                sb.append(", msg is ");
                                message = e.getMessage();
                                sb.append(message);
                                string = sb.toString();
                                LogConsole.e("OnlineEphService", string);
                                if (ephemerisResponse.isSuccess()) {
                                }
                                Vw = z;
                                str2 = "ephemeris in cloud is invalid, return empty ephemeris here";
                                LogConsole.i("EphProvider", str2);
                                return null;
                            } catch (Exception unused) {
                                ephemerisResponse = ephemerisResponse2;
                                string = "unknown exception";
                                LogConsole.e("OnlineEphService", string);
                                if (ephemerisResponse.isSuccess()) {
                                }
                                Vw = z;
                                str2 = "ephemeris in cloud is invalid, return empty ephemeris here";
                                LogConsole.i("EphProvider", str2);
                                return null;
                            }
                        }
                    } catch (OnErrorException e3) {
                        e = e3;
                    } catch (OnFailureException e4) {
                        e = e4;
                    } catch (Exception unused2) {
                    }
                } catch (JSONException unused3) {
                    string = "doHttp, transfer to JSONException failed";
                }
                if (ephemerisResponse.isSuccess()) {
                    LogConsole.i("EphProvider", "get online ephemeris failed");
                    FB = System.currentTimeMillis();
                    Vw = false;
                    z = false;
                } else if (ephemerisResponse.getBdsNav() == null || ephemerisResponse.getGpsNav() == null) {
                    z = false;
                    LogConsole.i("EphProvider", "get online ephemeris contains illegal arguments");
                    FB = System.currentTimeMillis();
                    Vw = false;
                } else {
                    JSONArray jSONArrayUt = ut(ephemerisResponse);
                    JSONArray jSONArrayE5 = E5(ephemerisResponse);
                    JSONArray jSONArrayD2 = d2(ephemerisResponse);
                    JSONArray jSONArrayZp = zp(ephemerisResponse);
                    if (jSONArrayUt.length() == 0 || jSONArrayE5.length() == 0 || jSONArrayD2.length() == 0 || jSONArrayZp.length() == 0) {
                        j = jVw;
                        i = 1;
                        str = "parse response failed";
                    } else {
                        j = jVw;
                        Vw vw = new Vw(System.currentTimeMillis());
                        GpsNav[] gpsNavArrLW = this.LW.LW(jSONArrayUt);
                        for (int length = jSONArrayUt.length() - 1; length >= 0; length--) {
                            GpsNav gpsNav = gpsNavArrLW[length];
                            int iFB = vw.FB() - gpsNav.getWeekNumber();
                            if (iFB > 512) {
                                LogConsole.i("EphProvider", "weekNumberDiff > 512");
                                iFB -= 1024;
                            } else if (iFB < -512) {
                                iFB += 1024;
                            } else {
                                LogConsole.i("EphProvider", "between -512 and 512");
                            }
                            int iDC = ((iFB * 604800) + vw.dC()) - gpsNav.getToe();
                            if (iDC > 302400) {
                                iDC -= 604800;
                            } else if (iDC < -302400) {
                                iDC += 604800;
                            } else {
                                LogConsole.i("EphProvider", "between half day");
                            }
                            if (Math.abs(iDC) > 7200) {
                                LogConsole.e("EphProvider", "gpsTime diff =" + iDC);
                                jSONArrayUt.remove(length);
                            }
                        }
                        LogConsole.i("EphProvider", "gpsNavs size = " + gpsNavArrLW.length + ", gpsNavArray size = " + jSONArrayUt.length());
                        BdsNav[] bdsNavArrYn = this.LW.yn(jSONArrayE5);
                        for (int length2 = jSONArrayE5.length() - 1; length2 >= 0; length2--) {
                            long jDC = vw.dC() - bdsNavArrYn[length2].getToe();
                            if (jDC > 302400) {
                                jDC -= 604800;
                            } else if (jDC < -302400) {
                                jDC += 604800;
                            } else {
                                LogConsole.i("EphProvider", "between one week");
                            }
                            if (Math.abs(jDC) > 4200) {
                                LogConsole.e("EphProvider", "BdsTime diff =" + jDC);
                                jSONArrayE5.remove(length2);
                            }
                        }
                        LogConsole.i("EphProvider", "bdsNavs size = " + bdsNavArrYn.length + ", bdsNavArrays size = " + jSONArrayE5.length());
                        GalileoNav[] galileoNavArrVw = this.LW.Vw(jSONArrayD2);
                        for (int length3 = jSONArrayD2.length() - 1; length3 >= 0; length3--) {
                            long jDC2 = vw.dC() - galileoNavArrVw[length3].getToe();
                            if (jDC2 > 302400) {
                                jDC2 -= 604800;
                            } else if (jDC2 < -302400) {
                                jDC2 += 604800;
                            } else {
                                LogConsole.i("EphProvider", "between one week");
                            }
                            if (Math.abs(jDC2) > 1800) {
                                LogConsole.e("EphProvider", "GalTime diff =" + jDC2);
                                jSONArrayD2.remove(length3);
                            }
                        }
                        LogConsole.i("EphProvider", "galNavs size = " + galileoNavArrVw.length + ", galJSONArrays size = " + jSONArrayD2.length());
                        GlonassNav[] glonassNavArrFB = this.LW.FB(jSONArrayZp);
                        i = 1;
                        for (int length4 = jSONArrayZp.length() - 1; length4 >= 0; length4--) {
                            int iod = (((glonassNavArrFB[length4].getIod() * 900) - 10800) % RemoteMessageConst.DEFAULT_TTL) - (vw.dC() % RemoteMessageConst.DEFAULT_TTL);
                            if (iod > 43200) {
                                iod -= RemoteMessageConst.DEFAULT_TTL;
                            } else if (iod < -43200) {
                                iod += RemoteMessageConst.DEFAULT_TTL;
                            }
                            if (Math.abs(iod) > 1800) {
                                LogConsole.e("EphProvider", "GloTime diff =" + iod);
                                jSONArrayZp.remove(length4);
                            }
                        }
                        LogConsole.i("EphProvider", "gloNavs size = " + glonassNavArrFB.length + ", gloJSONArrays size = " + jSONArrayZp.length());
                        if (jSONArrayUt.length() == 0 || jSONArrayE5.length() == 0 || jSONArrayD2.length() == 0 || jSONArrayZp.length() == 0) {
                            str = "ephemeris is not valid";
                        } else {
                            try {
                                JSONObject jSONObject = new JSONObject(ephemerisResponse.getGpsNav());
                                jSONObject.put("ephList", jSONArrayUt);
                                ephemerisResponse.setGpsNav(jSONObject.toString());
                                JSONObject jSONObject2 = new JSONObject(ephemerisResponse.getBdsNav());
                                jSONObject2.put("ephList", jSONArrayE5);
                                ephemerisResponse.setBdsNav(jSONObject2.toString());
                                JSONObject jSONObject3 = new JSONObject(ephemerisResponse.getGalNav());
                                jSONObject3.put("ephList", jSONArrayD2);
                                ephemerisResponse.setGalNav(jSONObject3.toString());
                                JSONObject jSONObject4 = new JSONObject(ephemerisResponse.getGloNav());
                                jSONObject4.put("gloNavItemList", jSONArrayZp);
                                ephemerisResponse.setGloNav(jSONObject4.toString());
                            } catch (JSONException unused4) {
                                LogConsole.e("EphProvider", "filteringResponse JSONException");
                            }
                            j2 = 0;
                            if (ephemerisResponse != null) {
                                GpsNav[] gpsNavArrLW2 = this.LW.LW(ut(ephemerisResponse));
                                BdsNav[] bdsNavArrYn2 = this.LW.yn(E5(ephemerisResponse));
                                GalileoNav[] galileoNavArrVw2 = this.LW.Vw(d2(ephemerisResponse));
                                GlonassNav[] glonassNavArrFB2 = this.LW.FB(zp(ephemerisResponse));
                                if (gpsNavArrLW2.length == 0 || bdsNavArrYn2.length == 0 || galileoNavArrVw2.length == 0 || glonassNavArrFB2.length == 0) {
                                    LogConsole.e("EphProvider", "new eph data invalid");
                                } else {
                                    int toe = gpsNavArrLW2[0].getToe();
                                    for (int i2 = 1; i2 < gpsNavArrLW2.length; i2++) {
                                        toe = Math.min(gpsNavArrLW2[i2].getToe(), toe);
                                    }
                                    int toe2 = bdsNavArrYn2[0].getToe();
                                    for (int i3 = 1; i3 < bdsNavArrYn2.length; i3++) {
                                        toe2 = Math.min(toe2, bdsNavArrYn2[i3].getToe());
                                    }
                                    int toe3 = galileoNavArrVw2[0].getToe();
                                    while (i < galileoNavArrVw2.length) {
                                        toe3 = Math.min(toe3, galileoNavArrVw2[i].getToe());
                                        i++;
                                    }
                                    int iod2 = glonassNavArrFB2[0].getIod();
                                    for (GlonassNav glonassNav : glonassNavArrFB2) {
                                        iod2 = Math.min(iod2, glonassNav.getIod());
                                    }
                                    Vw vw2 = new Vw(System.currentTimeMillis());
                                    long jFB = ((vw2.FB() + (vw2.LW() * 1024)) * 604800) + toe + 7200;
                                    long jFB2 = ((vw2.FB() + (vw2.LW() * 1024)) * 604800) + toe2 + 4200;
                                    long jFB3 = ((vw2.FB() + (vw2.LW() * 1024)) * 604800) + vw2.yn() + ((iod2 * 900) - 10818) + 1800;
                                    if (j - jFB3 > 43200) {
                                        jFB3 += 86400;
                                    }
                                    long jFB4 = ((vw2.FB() + (vw2.LW() * 1024)) * 604800) + toe3 + 1800;
                                    long jMin = Math.min(jFB, jFB2);
                                    LogConsole.i("EphProvider", "gpsExpireTime:" + jFB + ", bdsExpireTime:" + jFB2 + ", galExpireTime:" + jFB4 + ", gloExpireTime:" + jFB3 + ", expireTimeVdr:" + jMin);
                                    j2 = jMin;
                                }
                            }
                            if (j2 < yn && j2 > j) {
                                yn = j2;
                                new PreferencesHelper("ephemeris_expire_time").saveLong("ephemeris_expire_time", yn);
                                LogConsole.i("EphProvider", "get online ephemeris success");
                                LocationSecurityManager locationSecurityManager = new LocationSecurityManager(3);
                                String json = GsonUtil.getInstance().toJson(ephemerisResponse);
                                if (json.length() > 4096) {
                                    double length5 = json.length();
                                    Double.isNaN(length5);
                                    double dCeil = Math.ceil(length5 / 4096.0d);
                                    StringBuffer stringBuffer = new StringBuffer();
                                    int i4 = 0;
                                    while (true) {
                                        double d = i4;
                                        if (d >= dCeil) {
                                            break;
                                        }
                                        double d2 = dCeil - 1.0d;
                                        int i5 = i4 * LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM;
                                        stringBuffer.append(locationSecurityManager.encrypt(json.substring(i5, d == d2 ? json.length() : i5 + LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM), "LOCATION_LITE_SDK") + "\n");
                                        i4++;
                                    }
                                    strEncrypt = stringBuffer.toString();
                                } else {
                                    strEncrypt = locationSecurityManager.encrypt(json, "LOCATION_LITE_SDK");
                                }
                                com.huawei.location.FB.dC(strEncrypt, "ephData");
                                Vw = false;
                                return Vw(ephemerisResponse);
                            }
                            FB = System.currentTimeMillis();
                            Vw = false;
                            str2 = "ephemeris in cloud is expired, return empty ephemeris here";
                        }
                    }
                    LogConsole.e("EphProvider", str);
                    ephemerisResponse = null;
                    j2 = 0;
                    if (ephemerisResponse != null) {
                    }
                    if (j2 < yn) {
                    }
                    FB = System.currentTimeMillis();
                    Vw = false;
                    str2 = "ephemeris in cloud is expired, return empty ephemeris here";
                }
                Vw = z;
                str2 = "ephemeris in cloud is invalid, return empty ephemeris here";
            }
        }
        LogConsole.i("EphProvider", str2);
        return null;
    }

    public Ephemeris yn() throws IOException {
        String string;
        Vw vw = new Vw(System.currentTimeMillis());
        long jVw = vw.Vw();
        LogConsole.i("EphProvider", "gpsTime = " + vw.Vw());
        if (jVw > FB()) {
            return Vw();
        }
        LogConsole.i("EphProvider", "try to get local Ephemeris here");
        try {
            FileInputStream fileInputStreamOpenFileInput = ContextUtil.getContext().openFileInput("ephData");
            try {
                if (fileInputStreamOpenFileInput.available() < 0 || fileInputStreamOpenFileInput.available() > 20971520) {
                    LogConsole.e("FileUtil", "FileInputStream length is illegal");
                    string = null;
                } else {
                    byte[] bArr = new byte[1024];
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        int i = fileInputStreamOpenFileInput.read(bArr);
                        if (i <= 0) {
                            break;
                        }
                        sb.append(new String(bArr, 0, i, StandardCharsets.UTF_8));
                    }
                    string = sb.toString();
                }
                fileInputStreamOpenFileInput.close();
            } finally {
            }
        } catch (IOException e) {
            LogConsole.e("FileUtil", "read failed:" + e.getMessage());
            string = null;
        }
        if (string == null) {
            LogConsole.i("EphProvider", "read Ephemeris From Json is null");
            return null;
        }
        LocationSecurityManager locationSecurityManager = new LocationSecurityManager(3);
        String[] strArrSplit = string.split("\n");
        StringBuffer stringBuffer = new StringBuffer();
        if (strArrSplit.length == 1) {
            stringBuffer.append(locationSecurityManager.decrypt(string, "LOCATION_LITE_SDK"));
        } else {
            for (String str : strArrSplit) {
                stringBuffer.append(locationSecurityManager.decrypt(str, "LOCATION_LITE_SDK"));
            }
        }
        try {
            return Vw((EphemerisResponse) GsonUtil.getInstance().fromJson(stringBuffer.toString().trim(), EphemerisResponse.class));
        } catch (JsonSyntaxException unused) {
            LogConsole.e("EphProvider", "json syntax error");
            return null;
        }
    }
}
