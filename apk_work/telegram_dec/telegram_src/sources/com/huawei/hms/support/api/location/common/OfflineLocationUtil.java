package com.huawei.hms.support.api.location.common;

import android.net.wifi.ScanResult;
import android.os.Build;
import android.telephony.CellIdentity;
import android.telephony.CellIdentityNr;
import android.telephony.CellInfo;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoNr;
import android.telephony.CellInfoWcdma;
import android.telephony.CellSignalStrength;
import android.telephony.CellSignalStrengthNr;
import com.huawei.hms.framework.common.NetworkUtil$$ExternalSyntheticApiModelOutline1;
import com.huawei.hms.support.api.entity.location.offlinelocation.HwCellInfo;
import com.huawei.hms.support.api.entity.location.offlinelocation.HwWifiInfo;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.ReflectionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class OfflineLocationUtil {
    private static final boolean HAS_CELL_INFO_NR = ReflectionUtils.isSupportClass("android.telephony.CellInfoNr");
    private static final int RAT_GSM = 1;
    private static final int RAT_LTE = 3;
    private static final int RAT_NR = 4;
    private static final int RAT_WCDMA = 2;
    private static final String TAG = "OfflineLocationUtil";

    private static int getCellSignalStrength(CellInfoNr cellInfoNr) {
        int dbm = cellInfoNr.getCellSignalStrength().getDbm();
        if (dbm != Integer.MAX_VALUE) {
            return dbm;
        }
        CellSignalStrength cellSignalStrength = cellInfoNr.getCellSignalStrength();
        if (!OfflineLocationUtil$$ExternalSyntheticApiModelOutline1.m(cellSignalStrength)) {
            return Integer.MAX_VALUE;
        }
        CellSignalStrengthNr cellSignalStrengthNrM = NetworkUtil$$ExternalSyntheticApiModelOutline1.m(cellSignalStrength);
        int ssRsrp = cellSignalStrengthNrM.getSsRsrp();
        int ssRsrq = cellSignalStrengthNrM.getSsRsrq();
        int ssSinr = cellSignalStrengthNrM.getSsSinr();
        int csiRsrp = cellSignalStrengthNrM.getCsiRsrp();
        int csiRsrq = cellSignalStrengthNrM.getCsiRsrq();
        int csiSinr = cellSignalStrengthNrM.getCsiSinr();
        if (ssRsrp != Integer.MAX_VALUE && ssRsrq != Integer.MAX_VALUE && ssSinr != Integer.MAX_VALUE) {
            return ssRsrp > 0 ? -ssRsrp : ssRsrp;
        }
        if (csiRsrp != Integer.MAX_VALUE && csiRsrq != Integer.MAX_VALUE && csiSinr != Integer.MAX_VALUE) {
            return csiRsrp > 0 ? -csiRsrp : csiRsrp;
        }
        LogConsole.d(TAG, "getCellSignalStrength error");
        return dbm;
    }

    private static HwCellInfo parseCellInfo(CellInfo cellInfo) {
        HwCellInfo hwCellInfo = new HwCellInfo();
        if (cellInfo instanceof CellInfoGsm) {
            parseCellInfoGsm((CellInfoGsm) cellInfo, hwCellInfo);
        } else if (cellInfo instanceof CellInfoWcdma) {
            parseCellInfoWcdma((CellInfoWcdma) cellInfo, hwCellInfo);
        } else if (cellInfo instanceof CellInfoLte) {
            parseCellInfoLte((CellInfoLte) cellInfo, hwCellInfo);
        } else {
            if (!HAS_CELL_INFO_NR || Build.VERSION.SDK_INT < 29 || !OfflineLocationUtil$$ExternalSyntheticApiModelOutline2.m(cellInfo)) {
                LogConsole.i(TAG, "parseCellInfo fail");
                return null;
            }
            parseCellInfoNr(OfflineLocationUtil$$ExternalSyntheticApiModelOutline3.m(cellInfo), hwCellInfo);
        }
        hwCellInfo.setTimeStamp(cellInfo.getTimeStamp());
        hwCellInfo.setRegistered(cellInfo.isRegistered());
        return hwCellInfo;
    }

    private static void parseCellInfoGsm(CellInfoGsm cellInfoGsm, HwCellInfo hwCellInfo) {
        hwCellInfo.setMcc(cellInfoGsm.getCellIdentity().getMcc());
        hwCellInfo.setMnc(cellInfoGsm.getCellIdentity().getMnc());
        hwCellInfo.setLacOrTac(cellInfoGsm.getCellIdentity().getLac());
        hwCellInfo.setCellId(cellInfoGsm.getCellIdentity().getCid());
        hwCellInfo.setRat(1);
        hwCellInfo.setRssi(cellInfoGsm.getCellSignalStrength().getDbm());
        if (Build.VERSION.SDK_INT >= 24) {
            hwCellInfo.setChannelNumber(cellInfoGsm.getCellIdentity().getArfcn());
            hwCellInfo.setPhysicalIdentity(cellInfoGsm.getCellIdentity().getBsic());
        }
    }

    private static void parseCellInfoLte(CellInfoLte cellInfoLte, HwCellInfo hwCellInfo) {
        hwCellInfo.setMcc(cellInfoLte.getCellIdentity().getMcc());
        hwCellInfo.setMnc(cellInfoLte.getCellIdentity().getMnc());
        hwCellInfo.setLacOrTac(cellInfoLte.getCellIdentity().getTac());
        hwCellInfo.setCellId(cellInfoLte.getCellIdentity().getCi());
        hwCellInfo.setRat(3);
        hwCellInfo.setRssi(cellInfoLte.getCellSignalStrength().getDbm());
        hwCellInfo.setPhysicalIdentity(cellInfoLte.getCellIdentity().getPci());
        if (Build.VERSION.SDK_INT >= 24) {
            hwCellInfo.setChannelNumber(cellInfoLte.getCellIdentity().getEarfcn());
        }
    }

    private static void parseCellInfoNr(CellInfoNr cellInfoNr, HwCellInfo hwCellInfo) {
        CellIdentity cellIdentity = cellInfoNr.getCellIdentity();
        if (OfflineLocationUtil$$ExternalSyntheticApiModelOutline6.m(cellIdentity)) {
            CellIdentityNr cellIdentityNrM = OfflineLocationUtil$$ExternalSyntheticApiModelOutline7.m(cellIdentity);
            try {
                hwCellInfo.setMcc(Integer.parseInt(cellIdentityNrM.getMccString()));
                hwCellInfo.setMnc(Integer.parseInt(cellIdentityNrM.getMncString()));
            } catch (NumberFormatException unused) {
                LogConsole.e(TAG, "parse cellInfoNr mcc/mnc failed");
            }
            hwCellInfo.setLacOrTac(cellIdentityNrM.getTac());
            hwCellInfo.setCellId(cellIdentityNrM.getNci());
            hwCellInfo.setRat(4);
            hwCellInfo.setPhysicalIdentity(cellIdentityNrM.getPci());
            hwCellInfo.setChannelNumber(cellIdentityNrM.getNrarfcn());
            hwCellInfo.setRssi(getCellSignalStrength(cellInfoNr));
        }
    }

    private static void parseCellInfoWcdma(CellInfoWcdma cellInfoWcdma, HwCellInfo hwCellInfo) {
        hwCellInfo.setMcc(cellInfoWcdma.getCellIdentity().getMcc());
        hwCellInfo.setMnc(cellInfoWcdma.getCellIdentity().getMnc());
        hwCellInfo.setLacOrTac(cellInfoWcdma.getCellIdentity().getLac());
        hwCellInfo.setCellId(cellInfoWcdma.getCellIdentity().getCid());
        hwCellInfo.setRat(2);
        hwCellInfo.setRssi(cellInfoWcdma.getCellSignalStrength().getDbm());
        hwCellInfo.setPhysicalIdentity(cellInfoWcdma.getCellIdentity().getPsc());
        if (Build.VERSION.SDK_INT >= 24) {
            hwCellInfo.setChannelNumber(cellInfoWcdma.getCellIdentity().getUarfcn());
        }
    }

    public static List<HwCellInfo> transformCellInfo(List<CellInfo> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<CellInfo> it = list.iterator();
        while (it.hasNext()) {
            HwCellInfo cellInfo = parseCellInfo(it.next());
            if (cellInfo != null) {
                arrayList.add(cellInfo);
            }
        }
        LogConsole.i(TAG, "transformCellInfo end,size is:" + arrayList.size());
        return arrayList;
    }

    public static List<HwWifiInfo> transformWifiInfo(List<ScanResult> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (ScanResult scanResult : list) {
            HwWifiInfo hwWifiInfo = new HwWifiInfo();
            try {
                hwWifiInfo.setBssid(scanResult.BSSID);
            } catch (NumberFormatException unused) {
                LogConsole.e(TAG, "parse bssid failed");
            }
            hwWifiInfo.setRssi(scanResult.level);
            hwWifiInfo.setFrequency(scanResult.frequency);
            hwWifiInfo.setTimestamp(scanResult.timestamp);
            arrayList.add(hwWifiInfo);
        }
        LogConsole.i(TAG, "transformWifiInfo end,size is:" + arrayList.size());
        return arrayList;
    }
}
