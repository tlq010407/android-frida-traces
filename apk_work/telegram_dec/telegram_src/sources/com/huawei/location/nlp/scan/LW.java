package com.huawei.location.nlp.scan;

import android.net.wifi.ScanResult;
import android.os.Build;
import android.os.SystemClock;
import android.telephony.CellIdentity;
import android.telephony.CellIdentityNr;
import android.telephony.CellInfo;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoNr;
import android.telephony.CellInfoWcdma;
import android.telephony.CellSignalStrength;
import android.telephony.CellSignalStrengthNr;
import android.text.TextUtils;
import android.util.Pair;
import com.huawei.hms.framework.common.NetworkUtil$$ExternalSyntheticApiModelOutline1;
import com.huawei.hms.support.api.location.common.OfflineLocationUtil$$ExternalSyntheticApiModelOutline1;
import com.huawei.hms.support.api.location.common.OfflineLocationUtil$$ExternalSyntheticApiModelOutline2;
import com.huawei.hms.support.api.location.common.OfflineLocationUtil$$ExternalSyntheticApiModelOutline3;
import com.huawei.hms.support.api.location.common.OfflineLocationUtil$$ExternalSyntheticApiModelOutline6;
import com.huawei.hms.support.api.location.common.OfflineLocationUtil$$ExternalSyntheticApiModelOutline7;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.ReflectionUtils;
import com.huawei.location.nlp.network.request.cell.CellSourceInfo;
import com.huawei.location.nlp.network.request.cell.CurrentCell;
import com.huawei.location.nlp.network.request.cell.HwCellInfo;
import com.huawei.location.nlp.network.request.cell.HwNeighborCellInfo;
import com.huawei.location.nlp.network.request.cell.NeighborCell;
import com.huawei.location.nlp.network.request.wifi.WifiInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class LW {
    protected com.huawei.location.nlp.api.Vw yn;
    protected long Vw = 30000;
    private boolean FB = ReflectionUtils.isSupportClass("android.telephony.CellInfoNr");

    public LW(com.huawei.location.nlp.api.Vw vw) {
        this.yn = vw;
    }

    private void yn(long j, long j2, long j3, HwCellInfo hwCellInfo) {
        if (j3 <= 5000000000L) {
            return;
        }
        long boottime = hwCellInfo.getBoottime();
        if (Math.abs(j - boottime) <= 30000000000L && Math.abs(j2 - boottime) >= 30000000000L) {
            hwCellInfo.setBoottime(boottime + j3);
            LogConsole.i("ScanBase", "amendCellTimeStamp bootTime is " + hwCellInfo.getBoottime());
        }
    }

    private boolean yn(HwCellInfo hwCellInfo) {
        String str;
        if (hwCellInfo.getMcc() < 1 || hwCellInfo.getMcc() >= Integer.MAX_VALUE) {
            str = "hwCellInfo is invalid, mcc error";
        } else if (hwCellInfo.getMnc() < 0 || hwCellInfo.getMnc() >= Integer.MAX_VALUE) {
            str = "hwCellInfo is invalid, mnc error";
        } else if (hwCellInfo.getRssi() < -139 || hwCellInfo.getRssi() > -1) {
            str = "hwCellInfo is invalid, rssi error";
        } else {
            int rat = hwCellInfo.getRat();
            long cellId = hwCellInfo.getCellId();
            if (rat != 4 ? cellId < 1 || hwCellInfo.getCellId() >= 2147483647L : cellId < 1 || hwCellInfo.getCellId() >= Long.MAX_VALUE) {
                str = "hwCellInfo is invalid, cellId error";
            } else if (hwCellInfo.getRat() != 4 ? hwCellInfo.getLac() < 0 || hwCellInfo.getLac() > 65535 : hwCellInfo.getLac() < 0 || hwCellInfo.getLac() > 16777215) {
                str = "hwCellInfo is invalid, lac error";
            } else {
                if (hwCellInfo.getChannelNumber() >= 1 && hwCellInfo.getChannelNumber() < Integer.MAX_VALUE) {
                    return true;
                }
                str = "hwCellInfo is invalid, channelNumber error";
            }
        }
        LogConsole.w("ScanBase", str);
        return false;
    }

    public static boolean yn(List list, List list2) {
        if (list2 == null || list2.isEmpty() || list.isEmpty()) {
            LogConsole.e("ScanBase", "wifi cache is null");
            return false;
        }
        if (list.size() != list2.size()) {
            return false;
        }
        HashMap map = new HashMap();
        for (int i = 0; i < list2.size(); i++) {
            WifiInfo wifiInfo = (WifiInfo) list2.get(i);
            map.put(String.valueOf(wifiInfo.getMac()), String.valueOf(wifiInfo.getRssi()));
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            WifiInfo wifiInfo2 = (WifiInfo) list.get(i2);
            String strValueOf = String.valueOf(wifiInfo2.getMac());
            if (!map.containsKey(strValueOf) || !TextUtils.equals((CharSequence) map.get(strValueOf), String.valueOf(wifiInfo2.getRssi()))) {
                return false;
            }
        }
        return true;
    }

    public Pair Vw(List list) {
        HwCellInfo hwCellInfo;
        HwNeighborCellInfo hwNeighborCellInfo;
        int uarfcn;
        List arrayList = new ArrayList();
        if (list.isEmpty()) {
            return new Pair(0L, arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CellInfo cellInfo = (CellInfo) it.next();
            if (!cellInfo.isRegistered()) {
                if (cellInfo instanceof CellInfoGsm) {
                    CellInfoGsm cellInfoGsm = (CellInfoGsm) cellInfo;
                    hwNeighborCellInfo = new HwNeighborCellInfo();
                    hwNeighborCellInfo.setMcc(cellInfoGsm.getCellIdentity().getMcc());
                    hwNeighborCellInfo.setMnc(cellInfoGsm.getCellIdentity().getMnc());
                    hwNeighborCellInfo.setRssi((short) cellInfoGsm.getCellSignalStrength().getDbm());
                    hwNeighborCellInfo.setRat(1);
                    if (Build.VERSION.SDK_INT >= 24) {
                        hwNeighborCellInfo.setChannelNumber(cellInfoGsm.getCellIdentity().getArfcn());
                        hwNeighborCellInfo.setPhysicalIdentity(cellInfoGsm.getCellIdentity().getBsic());
                    }
                } else if (cellInfo instanceof CellInfoWcdma) {
                    CellInfoWcdma cellInfoWcdma = (CellInfoWcdma) cellInfo;
                    hwNeighborCellInfo = new HwNeighborCellInfo();
                    hwNeighborCellInfo.setMcc(cellInfoWcdma.getCellIdentity().getMcc());
                    hwNeighborCellInfo.setMnc(cellInfoWcdma.getCellIdentity().getMnc());
                    hwNeighborCellInfo.setPhysicalIdentity(cellInfoWcdma.getCellIdentity().getPsc());
                    hwNeighborCellInfo.setRssi((short) cellInfoWcdma.getCellSignalStrength().getDbm());
                    hwNeighborCellInfo.setRat(2);
                    if (Build.VERSION.SDK_INT >= 24) {
                        uarfcn = cellInfoWcdma.getCellIdentity().getUarfcn();
                        hwNeighborCellInfo.setChannelNumber(uarfcn);
                    }
                } else if (cellInfo instanceof CellInfoLte) {
                    CellInfoLte cellInfoLte = (CellInfoLte) cellInfo;
                    hwNeighborCellInfo = new HwNeighborCellInfo();
                    hwNeighborCellInfo.setMcc(cellInfoLte.getCellIdentity().getMcc());
                    hwNeighborCellInfo.setMnc(cellInfoLte.getCellIdentity().getMnc());
                    hwNeighborCellInfo.setPhysicalIdentity(cellInfoLte.getCellIdentity().getPci());
                    hwNeighborCellInfo.setRssi((short) cellInfoLte.getCellSignalStrength().getDbm());
                    hwNeighborCellInfo.setRat(3);
                    if (Build.VERSION.SDK_INT >= 24) {
                        uarfcn = cellInfoLte.getCellIdentity().getEarfcn();
                        hwNeighborCellInfo.setChannelNumber(uarfcn);
                    }
                } else if (!this.FB) {
                    LogConsole.e("ScanBase", "getNeighborCellInfoList fail");
                } else if (Build.VERSION.SDK_INT >= 29 && OfflineLocationUtil$$ExternalSyntheticApiModelOutline2.m(cellInfo)) {
                    CellInfoNr cellInfoNrM = OfflineLocationUtil$$ExternalSyntheticApiModelOutline3.m(cellInfo);
                    CellIdentity cellIdentity = cellInfoNrM.getCellIdentity();
                    if (OfflineLocationUtil$$ExternalSyntheticApiModelOutline6.m(cellIdentity)) {
                        CellIdentityNr cellIdentityNrM = OfflineLocationUtil$$ExternalSyntheticApiModelOutline7.m(cellIdentity);
                        String mccString = cellIdentityNrM.getMccString();
                        String mncString = cellIdentityNrM.getMncString();
                        if (mccString != null && mncString != null) {
                            HwNeighborCellInfo hwNeighborCellInfo2 = new HwNeighborCellInfo();
                            hwNeighborCellInfo2.setMcc(Integer.parseInt(mccString));
                            hwNeighborCellInfo2.setMnc(Integer.parseInt(mncString));
                            hwNeighborCellInfo2.setPhysicalIdentity(cellIdentityNrM.getPci());
                            hwNeighborCellInfo2.setRssi((short) yn(cellInfoNrM));
                            hwNeighborCellInfo2.setRat(4);
                            hwNeighborCellInfo2.setChannelNumber(cellIdentityNrM.getNrarfcn());
                            arrayList3.add(hwNeighborCellInfo2);
                        }
                    }
                }
                arrayList3.add(hwNeighborCellInfo);
            } else if (cellInfo instanceof CellInfoGsm) {
                hwCellInfo = new HwCellInfo();
                CellInfoGsm cellInfoGsm2 = (CellInfoGsm) cellInfo;
                hwCellInfo.setBoottime(cellInfo.getTimeStamp());
                hwCellInfo.setMcc(cellInfoGsm2.getCellIdentity().getMcc());
                hwCellInfo.setMnc(cellInfoGsm2.getCellIdentity().getMnc());
                hwCellInfo.setLac(cellInfoGsm2.getCellIdentity().getLac());
                hwCellInfo.setCellId(cellInfoGsm2.getCellIdentity().getCid());
                hwCellInfo.setRssi((short) cellInfoGsm2.getCellSignalStrength().getDbm());
                hwCellInfo.setRat(1);
                if (Build.VERSION.SDK_INT >= 24) {
                    hwCellInfo.setChannelNumber(cellInfoGsm2.getCellIdentity().getArfcn());
                }
                if (yn(hwCellInfo)) {
                    arrayList2.add(hwCellInfo);
                }
            } else if (cellInfo instanceof CellInfoWcdma) {
                hwCellInfo = new HwCellInfo();
                CellInfoWcdma cellInfoWcdma2 = (CellInfoWcdma) cellInfo;
                hwCellInfo.setBoottime(cellInfo.getTimeStamp());
                hwCellInfo.setMcc(cellInfoWcdma2.getCellIdentity().getMcc());
                hwCellInfo.setMnc(cellInfoWcdma2.getCellIdentity().getMnc());
                hwCellInfo.setLac(cellInfoWcdma2.getCellIdentity().getLac());
                hwCellInfo.setCellId(cellInfoWcdma2.getCellIdentity().getCid());
                hwCellInfo.setRssi((short) cellInfoWcdma2.getCellSignalStrength().getDbm());
                hwCellInfo.setRat(2);
                if (Build.VERSION.SDK_INT >= 24) {
                    hwCellInfo.setChannelNumber(cellInfoWcdma2.getCellIdentity().getUarfcn());
                }
                if (yn(hwCellInfo)) {
                    arrayList2.add(hwCellInfo);
                }
            } else if (cellInfo instanceof CellInfoLte) {
                hwCellInfo = new HwCellInfo();
                CellInfoLte cellInfoLte2 = (CellInfoLte) cellInfo;
                hwCellInfo.setBoottime(cellInfo.getTimeStamp());
                hwCellInfo.setMcc(cellInfoLte2.getCellIdentity().getMcc());
                hwCellInfo.setMnc(cellInfoLte2.getCellIdentity().getMnc());
                hwCellInfo.setLac(cellInfoLte2.getCellIdentity().getTac());
                hwCellInfo.setCellId(cellInfoLte2.getCellIdentity().getCi());
                hwCellInfo.setRssi((short) cellInfoLte2.getCellSignalStrength().getDbm());
                hwCellInfo.setRat(3);
                if (Build.VERSION.SDK_INT >= 24) {
                    hwCellInfo.setChannelNumber(cellInfoLte2.getCellIdentity().getEarfcn());
                }
                if (yn(hwCellInfo)) {
                    arrayList2.add(hwCellInfo);
                }
            } else if (!this.FB) {
                LogConsole.i("ScanBase", "getCurrentCellList fail");
            } else if (Build.VERSION.SDK_INT >= 29 && OfflineLocationUtil$$ExternalSyntheticApiModelOutline2.m(cellInfo)) {
                CellInfoNr cellInfoNrM2 = OfflineLocationUtil$$ExternalSyntheticApiModelOutline3.m(cellInfo);
                CellIdentity cellIdentity2 = cellInfoNrM2.getCellIdentity();
                if (OfflineLocationUtil$$ExternalSyntheticApiModelOutline6.m(cellIdentity2)) {
                    CellIdentityNr cellIdentityNrM2 = OfflineLocationUtil$$ExternalSyntheticApiModelOutline7.m(cellIdentity2);
                    String mccString2 = cellIdentityNrM2.getMccString();
                    String mncString2 = cellIdentityNrM2.getMncString();
                    if (mccString2 != null && mncString2 != null) {
                        HwCellInfo hwCellInfo2 = new HwCellInfo();
                        hwCellInfo2.setBoottime(cellInfo.getTimeStamp());
                        hwCellInfo2.setMcc(Integer.parseInt(mccString2));
                        hwCellInfo2.setMnc(Integer.parseInt(mncString2));
                        hwCellInfo2.setLac(cellIdentityNrM2.getTac());
                        hwCellInfo2.setCellId(cellIdentityNrM2.getNci());
                        hwCellInfo2.setRssi((short) yn(cellInfoNrM2));
                        hwCellInfo2.setRat(4);
                        hwCellInfo2.setChannelNumber(cellIdentityNrM2.getNrarfcn());
                        if (yn(hwCellInfo2)) {
                            arrayList2.add(hwCellInfo2);
                        }
                    }
                }
            }
        }
        int size = arrayList2.size();
        long jNanoTime = System.nanoTime();
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        long j = jElapsedRealtimeNanos < jNanoTime ? 0L : jElapsedRealtimeNanos - jNanoTime;
        LogConsole.i("ScanBase", "current cell is " + size + ", neighbor Cell size is " + arrayList3.size());
        if (size == 2 && ((HwCellInfo) arrayList2.get(0)).getMcc() == ((HwCellInfo) arrayList2.get(1)).getMcc() && ((HwCellInfo) arrayList2.get(0)).getMnc() == ((HwCellInfo) arrayList2.get(1)).getMnc() && ((HwCellInfo) arrayList2.get(0)).getRat() == ((HwCellInfo) arrayList2.get(1)).getRat()) {
            yn((HwCellInfo) arrayList2.get(1), arrayList3, arrayList);
            yn(jNanoTime, jElapsedRealtimeNanos, j, (HwCellInfo) arrayList2.get(1));
            return new Pair(Long.valueOf(((HwCellInfo) arrayList2.get(1)).getBoottime()), arrayList);
        }
        long boottime = -1;
        for (int i = 0; i < size; i++) {
            HwCellInfo hwCellInfo3 = (HwCellInfo) arrayList2.get(i);
            yn(hwCellInfo3, arrayList3, arrayList);
            if (hwCellInfo3.getBoottime() >= boottime) {
                yn(jNanoTime, jElapsedRealtimeNanos, j, hwCellInfo3);
                boottime = hwCellInfo3.getBoottime();
            }
        }
        return new Pair(Long.valueOf(boottime), arrayList);
    }

    public int yn(CellInfoNr cellInfoNr) {
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
        LogConsole.d("ScanBase", "getCellSignalStrength error");
        return dbm;
    }

    public Pair yn(List list) throws NumberFormatException {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        long mac = -1;
        long j = -1;
        while (it.hasNext()) {
            ScanResult scanResult = (ScanResult) it.next();
            long j2 = Long.parseLong(scanResult.BSSID.replace(":", ""), 16);
            long millis = TimeUnit.MICROSECONDS.toMillis(scanResult.timestamp);
            int i = scanResult.level;
            long j3 = scanResult.timestamp;
            int i2 = scanResult.frequency;
            if (j2 >= 1 && j2 <= 281474976710654L) {
                if (((i > -120) & (i < 0)) && j3 > 0 && ((i2 >= 2400 && i2 <= 2500) || (i2 >= 4900 && i2 <= 5850))) {
                    if (millis > j) {
                        j = millis;
                    }
                    arrayList.add(new WifiInfo(j2, i, millis, i2));
                }
            }
        }
        LogConsole.i("ScanBase", "convertScanResult size is " + arrayList.size() + ", current time is " + SystemClock.elapsedRealtime() + ", bootTimeMax is " + j);
        Pair pair = new Pair(Long.valueOf(j), arrayList);
        StringBuilder sb = new StringBuilder();
        sb.append("filterResult, wifiScanResult bootTime is ");
        sb.append(pair.first);
        LogConsole.i("ScanBase", sb.toString());
        if (((List) pair.second).size() > 120) {
            long jLongValue = ((Long) pair.first).longValue();
            List list2 = (List) pair.second;
            Collections.sort(list2, new FB(this));
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = list2.iterator();
            int frequency = -1;
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                WifiInfo wifiInfo = (WifiInfo) it2.next();
                if (jLongValue - wifiInfo.getTime() >= 8000000) {
                    it2.remove();
                }
                if (mac != wifiInfo.getMac() / 16 || frequency != wifiInfo.getFrequency()) {
                    arrayList2.add(wifiInfo);
                    mac = wifiInfo.getMac() / 16;
                    frequency = wifiInfo.getFrequency();
                }
                if (arrayList2.size() + list2.size() == 120) {
                    arrayList2.addAll(list2);
                    break;
                }
            }
        }
        return pair;
    }

    public void yn(HwCellInfo hwCellInfo, List list, List list2) {
        boolean z;
        String str = hwCellInfo.getMcc() + "_" + hwCellInfo.getMnc();
        if (hwCellInfo.getRat() == 2 || hwCellInfo.getRat() == 3) {
            str = str + "_" + hwCellInfo.getChannelNumber();
            z = true;
        } else {
            z = false;
        }
        ArrayList arrayList = new ArrayList();
        if (list.size() > 0) {
            for (int i = 0; i < list.size(); i++) {
                HwNeighborCellInfo hwNeighborCellInfo = (HwNeighborCellInfo) list.get(i);
                String str2 = hwNeighborCellInfo.getMcc() + "_" + hwNeighborCellInfo.getMnc();
                if (z) {
                    str2 = str2 + "_" + hwNeighborCellInfo.getChannelNumber();
                }
                if (str2.equals(str)) {
                    arrayList.add(new NeighborCell(hwNeighborCellInfo.getChannelNumber(), hwNeighborCellInfo.getPhysicalIdentity(), hwNeighborCellInfo.getRssi()));
                }
                if (arrayList.size() == 8) {
                    break;
                }
            }
        }
        list2.add(new CellSourceInfo(new CurrentCell(hwCellInfo.getBoottime(), hwCellInfo.getMcc(), hwCellInfo.getMnc(), hwCellInfo.getLac(), hwCellInfo.getCellId(), hwCellInfo.getRat(), hwCellInfo.getRssi()), arrayList));
    }
}
