package com.huawei.location.vdr.data.ephemeris;

import com.huawei.riemann.gnsslocation.core.bean.eph.BdsNav;
import com.huawei.riemann.gnsslocation.core.bean.eph.GalileoNav;
import com.huawei.riemann.gnsslocation.core.bean.eph.GlonassNav;
import com.huawei.riemann.gnsslocation.core.bean.eph.GpsNav;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class FB {
    public GlonassNav[] FB(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
            arrayList.add(GlonassNav.Builder.aGlonassNav().withDeltaTau(jSONObjectOptJSONObject.optDouble("deltaTaun", 0.0d) / 1.073741824E9d).withEn(jSONObjectOptJSONObject.optInt("en", 0)).withGamma(jSONObjectOptJSONObject.optDouble("gamma", 0.0d) / 1.099511627776E12d).withHealth(jSONObjectOptJSONObject.optInt("health", 0)).withIod(jSONObjectOptJSONObject.optInt("iod", 0)).withM(jSONObjectOptJSONObject.optInt("m", 0)).withP1(jSONObjectOptJSONObject.optInt("p1", 0)).withP2(jSONObjectOptJSONObject.optInt("p2", 0)).withSvid(jSONObjectOptJSONObject.optInt("svid", 0) + 1).withTaun(jSONObjectOptJSONObject.optDouble("taun", 0.0d) / 1.073741824E9d).withX(jSONObjectOptJSONObject.optDouble("x", 0.0d) / 2048.0d).withXDot(jSONObjectOptJSONObject.optDouble("xDot", 0.0d) / 1048576.0d).withXDotDot(jSONObjectOptJSONObject.optDouble("xDotDot", 0.0d) / 1.073741824E9d).withY(jSONObjectOptJSONObject.optDouble("y", 0.0d) / 2048.0d).withYDot(jSONObjectOptJSONObject.optDouble("yDot", 0.0d) / 1048576.0d).withYDotDot(jSONObjectOptJSONObject.optDouble("yDotDot", 0.0d) / 1.073741824E9d).withZ(jSONObjectOptJSONObject.optDouble("z", 0.0d) / 2048.0d).withZDot(jSONObjectOptJSONObject.optDouble("zDot", 0.0d) / 1048576.0d).withZDotDot(jSONObjectOptJSONObject.optDouble("zDotDot", 0.0d) / 1.073741824E9d).build());
        }
        GlonassNav[] glonassNavArr = new GlonassNav[arrayList.size()];
        arrayList.toArray(glonassNavArr);
        return glonassNavArr;
    }

    public GpsNav[] LW(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
            arrayList.add(GpsNav.Builder.aGpsNav().withAcc(jSONObjectOptJSONObject.optInt("acc", 0)).withAf0(jSONObjectOptJSONObject.optDouble("af0", 0.0d) / 2.147483648E9d).withAf1(jSONObjectOptJSONObject.optDouble("af1", 0.0d) / 8.796093022208E12d).withAf2(jSONObjectOptJSONObject.optDouble("af2", 0.0d) / 3.6028797018963968E16d).withAodo(jSONObjectOptJSONObject.optInt("aodo", 0)).withCic(jSONObjectOptJSONObject.optDouble("cic", 0.0d) / 5.36870912E8d).withCis(jSONObjectOptJSONObject.optDouble("cis", 0.0d) / 5.36870912E8d).withCrs(jSONObjectOptJSONObject.optDouble("crs", 0.0d) / 32.0d).withCrc(jSONObjectOptJSONObject.optDouble("crc", 0.0d) / 32.0d).withCuc(jSONObjectOptJSONObject.optDouble("cuc", 0.0d) / 5.36870912E8d).withCus(jSONObjectOptJSONObject.optDouble("cus", 0.0d) / 5.36870912E8d).withDeltaN((jSONObjectOptJSONObject.optDouble("deltaN", 0.0d) / 8.796093022208E12d) * 3.141592653589793d).withEcc(jSONObjectOptJSONObject.optDouble("ecc", 0.0d) / 8.589934592E9d).withGpsTow23b((jSONObjectOptJSONObject.optDouble("gpsTow23b", 0.0d) * 4.0d) / 50.0d).withGroupDelay(jSONObjectOptJSONObject.optDouble("groupDelay", 0.0d) / 2.147483648E9d).withHealth(jSONObjectOptJSONObject.optInt("health", 0)).withI0((jSONObjectOptJSONObject.optDouble("i0", 0.0d) / 2.147483648E9d) * 3.141592653589793d).withIdot((jSONObjectOptJSONObject.optDouble("idot", 0.0d) / 8.796093022208E12d) * 3.141592653589793d).withIodc(jSONObjectOptJSONObject.optInt("iodc", 0)).withIode(jSONObjectOptJSONObject.optInt("iode", 0)).withM0((jSONObjectOptJSONObject.optDouble("m0", 0.0d) / 2.147483648E9d) * 3.141592653589793d).withOmega((jSONObjectOptJSONObject.optDouble("omega", 0.0d) / 2.147483648E9d) * 3.141592653589793d).withOmega0((jSONObjectOptJSONObject.optDouble("omega0", 0.0d) / 2.147483648E9d) * 3.141592653589793d).withOmegaDot((jSONObjectOptJSONObject.optDouble("omegaDot", 0.0d) / 8.796093022208E12d) * 3.141592653589793d).withSqrtA(jSONObjectOptJSONObject.optDouble("sqrtA", 0.0d) / 524288.0d).withSvid(jSONObjectOptJSONObject.optInt("svid", 0) + 1).withToc(jSONObjectOptJSONObject.optInt("toc", 0) * 16).withToe(jSONObjectOptJSONObject.optInt("toe", 0) * 16).withWeekNumber(jSONObjectOptJSONObject.optInt("weekNumber", 0)).build());
        }
        GpsNav[] gpsNavArr = new GpsNav[arrayList.size()];
        arrayList.toArray(gpsNavArr);
        return gpsNavArr;
    }

    public GalileoNav[] Vw(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
            arrayList.add(GalileoNav.Builder.aGalileoNav().withAf0(jSONObjectOptJSONObject.optDouble("af0", 0.0d) / 1.7179869184E10d).withAf1(jSONObjectOptJSONObject.optDouble("af1", 0.0d) / 7.0368744177664E13d).withAf2(jSONObjectOptJSONObject.optDouble("af2", 0.0d) / 5.7646075230342349E17d).withCic(jSONObjectOptJSONObject.optDouble("cic", 0.0d) / 5.36870912E8d).withCis(jSONObjectOptJSONObject.optDouble("cis", 0.0d) / 5.36870912E8d).withCrc(jSONObjectOptJSONObject.optDouble("crc", 0.0d) / 32.0d).withCrs(jSONObjectOptJSONObject.optDouble("crs", 0.0d) / 32.0d).withCuc(jSONObjectOptJSONObject.optDouble("cuc", 0.0d) / 5.36870912E8d).withCus(jSONObjectOptJSONObject.optDouble("cus", 0.0d) / 5.36870912E8d).withDeltaN((jSONObjectOptJSONObject.optDouble("deltaN", 0.0d) / 8.796093022208E12d) * 3.141592653589793d).withEcc(jSONObjectOptJSONObject.optDouble("ecc", 0.0d) / 8.589934592E9d).withGroupDelay(jSONObjectOptJSONObject.optDouble("groupDelay", 0.0d) / 4.294967296E9d).withHealth(jSONObjectOptJSONObject.optInt("health", 0)).withI0((jSONObjectOptJSONObject.optDouble("i0", 0.0d) / 2.147483648E9d) * 3.141592653589793d).withIDot((jSONObjectOptJSONObject.optDouble("inclinationDot", 0.0d) / 8.796093022208E12d) * 3.141592653589793d).withIodc(jSONObjectOptJSONObject.optInt("iodc", 0)).withIode(jSONObjectOptJSONObject.optInt("iode", 0)).withM0((jSONObjectOptJSONObject.optDouble("m0", 0.0d) / 2.147483648E9d) * 3.141592653589793d).withOmega((jSONObjectOptJSONObject.optDouble("omega", 0.0d) / 2.147483648E9d) * 3.141592653589793d).withOmega0((jSONObjectOptJSONObject.optDouble("omega0", 0.0d) / 2.147483648E9d) * 3.141592653589793d).withOmegaDot((jSONObjectOptJSONObject.optDouble("omegaDot", 0.0d) / 8.796093022208E12d) * 3.141592653589793d).withSqrtA(jSONObjectOptJSONObject.optDouble("sqrtA", 0.0d) / 524288.0d).withSvid(jSONObjectOptJSONObject.optInt("svid", 0) + 1).withToc(jSONObjectOptJSONObject.optInt("toc", 0) * 60).withToe(jSONObjectOptJSONObject.optInt("toe", 0) * 60).withNumClockModel(jSONObjectOptJSONObject.optInt("numClockModel", 0)).withClockModelId(jSONObjectOptJSONObject.optInt("clockModelID", 0)).build());
        }
        GalileoNav[] galileoNavArr = new GalileoNav[arrayList.size()];
        arrayList.toArray(galileoNavArr);
        return galileoNavArr;
    }

    public BdsNav[] yn(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
            BdsNav.Builder builderWithEcc = BdsNav.Builder.aBdsNav().withAcc(jSONObjectOptJSONObject.optInt("acc", 0)).withAf0(jSONObjectOptJSONObject.optDouble("af0", 0.0d) / 8.589934592E9d).withAf1(jSONObjectOptJSONObject.optDouble("af1", 0.0d) / 1.125899906842624E15d).withAf2((jSONObjectOptJSONObject.optDouble("af2", 0.0d) / 1.15292150460684698E18d) / 64.0d).withAodc(jSONObjectOptJSONObject.optInt("aodc", 0)).withAode(jSONObjectOptJSONObject.optInt("aode", 0)).withCic(jSONObjectOptJSONObject.optDouble("cic", 0.0d) / 2.147483648E9d).withCis(jSONObjectOptJSONObject.optDouble("cis", 0.0d) / 2.147483648E9d).withCrs(jSONObjectOptJSONObject.optDouble("crs", 0.0d) / 64.0d).withCrc(jSONObjectOptJSONObject.optDouble("crc", 0.0d) / 64.0d).withCuc(jSONObjectOptJSONObject.optDouble("cuc", 0.0d) / 2.147483648E9d).withCus(jSONObjectOptJSONObject.optDouble("cus", 0.0d) / 2.147483648E9d).withDeltaN((jSONObjectOptJSONObject.optDouble("deltaN", 0.0d) / 8.796093022208E12d) * 3.141592653589793d).withEcc(jSONObjectOptJSONObject.optDouble("ecc", 0.0d) / 8.589934592E9d);
            double dOptInt = jSONObjectOptJSONObject.optInt("groupDelay", 0);
            double dPow = Math.pow(10.0d, 10.0d);
            Double.isNaN(dOptInt);
            arrayList.add(builderWithEcc.withGroupDelay(dOptInt / dPow).withHealth(jSONObjectOptJSONObject.optInt("health", 0)).withI0((jSONObjectOptJSONObject.optDouble("i0", 0.0d) / 2.147483648E9d) * 3.141592653589793d).withIDot((jSONObjectOptJSONObject.optDouble("inclinationDot", 0.0d) / 8.796093022208E12d) * 3.141592653589793d).withM0((jSONObjectOptJSONObject.optDouble("m0", 0.0d) / 2.147483648E9d) * 3.141592653589793d).withOmega((jSONObjectOptJSONObject.optDouble("omega", 0.0d) / 2.147483648E9d) * 3.141592653589793d).withOmega0((jSONObjectOptJSONObject.optDouble("omega0", 0.0d) / 2.147483648E9d) * 3.141592653589793d).withOmegaDot((jSONObjectOptJSONObject.optDouble("omegaDot", 0.0d) / 8.796093022208E12d) * 3.141592653589793d).withSqrtA(jSONObjectOptJSONObject.optDouble("sqrtA", 0.0d) / 524288.0d).withSvid(jSONObjectOptJSONObject.optInt("svid", 0) + 1).withToc(jSONObjectOptJSONObject.optInt("toc", 0) * 8).withToe(jSONObjectOptJSONObject.optInt("toe", 0) * 8).build());
        }
        BdsNav[] bdsNavArr = new BdsNav[arrayList.size()];
        arrayList.toArray(bdsNavArr);
        return bdsNavArr;
    }
}
