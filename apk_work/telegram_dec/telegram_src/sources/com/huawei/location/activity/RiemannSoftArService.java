package com.huawei.location.activity;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.huawei.hms.location.entity.activity.ActivityRecognitionResult;
import com.huawei.hms.location.entity.activity.ActivityTransition;
import com.huawei.hms.location.entity.activity.ActivityTransitionRequest;
import com.huawei.hms.location.entity.activity.DetectedActivity;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import com.huawei.location.activity.model.FB;
import com.huawei.location.activity.util.JniUtils;
import com.huawei.location.base.activity.AbstractARServiceManager;
import com.huawei.location.base.activity.ActivityRecognitionConstantsMapping;
import com.huawei.location.base.activity.ActivityRecognitionMappingManager;
import com.huawei.location.base.activity.ActivityTransitionMappingManager;
import com.huawei.location.base.activity.callback.ARCallback;
import com.huawei.location.base.activity.callback.ATCallback;
import com.huawei.location.base.activity.constant.ActivityErrorCode;
import com.huawei.location.base.activity.entity.ClientInfo;
import com.huawei.location.base.activity.entity.MovementEvent;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.exception.LocationServiceException;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.ObjectCheckUtils;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class RiemannSoftArService extends AbstractARServiceManager implements SensorEventListener, com.huawei.location.activity.callback.yn {
    private static final int ACQUISITION_FREQUENCY = 10000;
    public static final long ACTIVITY_TRANSITION_UPDATETIMNE = 1000;
    private static final int BASE_CONFIDENCE = 50;
    private static final int FULL_CONFIDENCE = 100;
    private static final long INIT_VALUE = -1;
    private static final int JUDGE_INVALID_TIME = 100000000;
    private static final int MAX_INVALID_TIME = 10000;
    private static final int ONE = 1;
    private static final int SAMPLE_LIST_SIZE = 100;
    private static final int SAMPLE_SIZE = 4;
    private static final int SENSOR_LIST_ALL = 656;
    private static final int SENSOR_LIST_SIZE = 256;
    private static final String TAG = "RiemannSoftArService";
    private static final int ZERO = 0;
    private static volatile RiemannSoftArService instance;
    private Sensor acc;
    private List<FB> accRecordList;
    private boolean alreadyRegister;
    private boolean alreadyRequestAR;
    private com.huawei.location.activity.model.yn atProvider;
    private Context context;
    private long delay;
    private boolean needToWait;
    private Sensor ori;
    private List<FB> oriRecordList;
    private SensorManager sensorManager;
    private long updatTime;
    private static final byte[] SYNC_LOCK = new byte[0];
    private static final byte[] SYNC_LIST_LOCK = new byte[0];

    private class Vw implements Runnable {
        private Vw() {
        }

        /* synthetic */ Vw(RiemannSoftArService riemannSoftArService, yn ynVar) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Thread.currentThread().setName("Location-ACTIVITY-RiemannSoftArService");
                LogConsole.i(RiemannSoftArService.TAG, "start to get result when data is enough!");
                ((AbstractARServiceManager) RiemannSoftArService.this).recognitionMappingManager.send(RiemannSoftArService.this.getDetectedActivities());
                LogConsole.i(RiemannSoftArService.TAG, "RiemannSoftArService Task run end");
            } catch (LocationServiceException e) {
                throw e;
            } catch (Exception unused) {
                LogConsole.e(RiemannSoftArService.TAG, "RiemannSoftArService Task run exception", true);
            }
        }
    }

    class yn implements Comparator {
        yn(RiemannSoftArService riemannSoftArService) {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((DetectedActivity) obj2).getConfidence() - ((DetectedActivity) obj).getConfidence();
        }
    }

    private RiemannSoftArService() {
        super(new ActivityTransitionMappingManager(), new ActivityRecognitionMappingManager());
        this.accRecordList = new CopyOnWriteArrayList();
        this.oriRecordList = new CopyOnWriteArrayList();
        this.context = ContextUtil.getHMSContext();
        this.needToWait = false;
        this.updatTime = System.currentTimeMillis();
        this.alreadyRegister = false;
        this.alreadyRequestAR = false;
        Object systemService = this.context.getSystemService("sensor");
        if (!(systemService instanceof SensorManager)) {
            LogConsole.d(TAG, "no sensorManager service");
            return;
        }
        SensorManager sensorManager = (SensorManager) systemService;
        this.sensorManager = sensorManager;
        this.acc = sensorManager.getDefaultSensor(1);
        this.ori = this.sensorManager.getDefaultSensor(3);
        this.atProvider = new com.huawei.location.activity.model.yn();
    }

    private boolean checkDateVilid(List<FB> list, List<FB> list2) {
        String str;
        if (Math.abs(list.get(0).yn() - list2.get(0).yn()) > 100000000) {
            str = "difference time  is : " + (list.get(0).yn() - list2.get(0).yn());
        } else {
            int size = list.size() - 1;
            if (Math.abs(list.get(size).yn() - list2.get(size).yn()) <= 100000000) {
                return true;
            }
            str = "difference time  is : " + (list.get(size).yn() - list2.get(size).yn());
        }
        LogConsole.i(TAG, str);
        return false;
    }

    private void checkIfValid() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (SYNC_LIST_LOCK) {
            try {
                if (jCurrentTimeMillis - this.updatTime > 10000) {
                    LogConsole.i(TAG, "sensor data is not valid !");
                    this.oriRecordList.clear();
                    this.accRecordList.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private List<DetectedActivity> dealWithDatas() {
        CopyOnWriteArrayList copyOnWriteArrayList;
        CopyOnWriteArrayList copyOnWriteArrayList2;
        int i;
        int i2;
        int i3;
        boolean z;
        int i4;
        char c;
        int i5;
        int i6;
        int i7 = 100;
        int i8 = 3;
        int i9 = 1;
        List<DetectedActivity> copyOnWriteArrayList3 = new CopyOnWriteArrayList<>();
        CopyOnWriteArrayList copyOnWriteArrayList4 = new CopyOnWriteArrayList(this.accRecordList);
        CopyOnWriteArrayList copyOnWriteArrayList5 = new CopyOnWriteArrayList(this.oriRecordList);
        int i10 = 256;
        int i11 = 0;
        int i12 = 256;
        int i13 = 0;
        boolean z2 = false;
        int i14 = 0;
        while (i11 <= 4 && copyOnWriteArrayList4.size() >= i12 && copyOnWriteArrayList5.size() >= i12) {
            if (checkDateVilid(copyOnWriteArrayList4.subList(i13, i12), copyOnWriteArrayList5.subList(i13, i12))) {
                int i15 = i14 + i9;
                List listSubList = copyOnWriteArrayList4.subList(i13, i12);
                List listSubList2 = copyOnWriteArrayList5.subList(i13, i12);
                LogConsole.i("ResultPredict", "predict...");
                ArrayList arrayList = new ArrayList(i10);
                ArrayList arrayList2 = new ArrayList(i10);
                int i16 = 0;
                while (i16 < i10) {
                    float fVw = ((FB) listSubList.get(i16)).Vw();
                    float fFB = ((FB) listSubList.get(i16)).FB();
                    float fLW = ((FB) listSubList.get(i16)).LW();
                    float[] fArr = new float[i8];
                    fArr[0] = fVw;
                    fArr[1] = fFB;
                    fArr[2] = fLW;
                    float fVw2 = ((FB) listSubList2.get(i16)).Vw();
                    float fFB2 = ((FB) listSubList2.get(i16)).FB();
                    float fLW2 = ((FB) listSubList2.get(i16)).LW();
                    List list = listSubList;
                    float[] fArr2 = new float[i8];
                    fArr2[0] = fVw2;
                    fArr2[1] = fFB2;
                    fArr2[2] = fLW2;
                    arrayList.add(fArr);
                    arrayList2.add(fArr2);
                    i16++;
                    listSubList = list;
                    i8 = 3;
                    i10 = 256;
                }
                ArrayList arrayListYn = com.huawei.location.FB.yn(arrayList, 256);
                ArrayList arrayListYn2 = com.huawei.location.FB.yn(arrayList2, 256);
                int[] iArr = {arrayListYn.size(), ((float[]) arrayListYn.get(0)).length};
                Class cls = Float.TYPE;
                float[][] fArr3 = (float[][]) Array.newInstance((Class<?>) cls, iArr);
                copyOnWriteArrayList = copyOnWriteArrayList4;
                char c2 = 0;
                float[][] fArr4 = (float[][]) Array.newInstance((Class<?>) cls, arrayListYn2.size(), ((float[]) arrayListYn2.get(0)).length);
                int i17 = 0;
                while (i17 < arrayListYn.size()) {
                    System.arraycopy(arrayListYn.get(i17), 0, fArr3[i17], 0, ((float[]) arrayListYn.get(i17)).length);
                    i17++;
                    copyOnWriteArrayList5 = copyOnWriteArrayList5;
                }
                copyOnWriteArrayList2 = copyOnWriteArrayList5;
                int i18 = 1;
                for (int i19 = 0; i19 < arrayListYn2.size(); i19++) {
                    System.arraycopy(arrayListYn2.get(i19), 0, fArr4[i19], 0, ((float[]) arrayListYn2.get(i19)).length);
                    i18 = 1;
                }
                if (fArr3.length < i18) {
                    i = i11;
                    i2 = i12;
                    i3 = i13;
                    z = z2;
                    i4 = i15;
                } else {
                    int length = fArr3.length;
                    int[] iArr2 = new int[2];
                    iArr2[i18] = fArr3[0].length;
                    iArr2[0] = length;
                    float[][] fArr5 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, iArr2);
                    int i20 = 0;
                    while (i20 < fArr3.length) {
                        float[] fArr6 = fArr4[i20];
                        float f = fArr6[c2];
                        float f2 = fArr6[i18];
                        float f3 = fArr6[2];
                        float[][] fArr7 = fArr4;
                        float[] fArr8 = new float[3];
                        fArr8[c2] = f;
                        fArr8[1] = f2;
                        fArr8[2] = f3;
                        float[] fArr9 = fArr3[i20];
                        float[][] fArr10 = fArr3;
                        float[] fArr11 = new float[1];
                        fArr11[c2] = fArr9[c2];
                        int i21 = i15;
                        float[] fArr12 = new float[1];
                        fArr12[c2] = fArr9[1];
                        float[] fArr13 = new float[1];
                        fArr13[c2] = fArr9[2];
                        boolean z3 = z2;
                        float[][] fArr14 = new float[3][];
                        fArr14[c2] = fArr11;
                        fArr14[1] = fArr12;
                        fArr14[2] = fArr13;
                        float f4 = fArr8[c2];
                        float f5 = fArr8[1];
                        float f6 = fArr8[2] * 0.017453292f;
                        double d = f4 * 0.017453292f;
                        float fCos = (float) Math.cos(d);
                        float fSin = (float) Math.sin(d);
                        double d2 = f6;
                        int i22 = i11;
                        int i23 = i12;
                        float fCos2 = (float) Math.cos(d2);
                        float fSin2 = (float) Math.sin(d2);
                        double d3 = f5 * 0.017453292f;
                        float fCos3 = (float) Math.cos(d3);
                        float fSin3 = (float) Math.sin(d3);
                        float[][] fArr15 = {new float[]{fCos, fSin * (-1.0f), BitmapDescriptorFactory.HUE_RED}, new float[]{fSin, fCos, BitmapDescriptorFactory.HUE_RED}, new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f}};
                        int i24 = i13;
                        float[][] fArr16 = {new float[]{fCos2, BitmapDescriptorFactory.HUE_RED, fSin2}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED}, new float[]{fSin2 * (-1.0f), BitmapDescriptorFactory.HUE_RED, fCos2}};
                        float[][] fArr17 = {new float[]{1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED}, new float[]{BitmapDescriptorFactory.HUE_RED, fCos3, fSin3 * (-1.0f)}, new float[]{BitmapDescriptorFactory.HUE_RED, fSin3, fCos3}};
                        ArrayList arrayList3 = new ArrayList(3);
                        for (int i25 = 0; i25 < 3; i25++) {
                            arrayList3.add(fArr17[i25]);
                        }
                        ArrayList arrayList4 = new ArrayList(3);
                        for (int i26 = 0; i26 < 3; i26++) {
                            arrayList4.add(fArr16[i26]);
                        }
                        ArrayList arrayList5 = new ArrayList(3);
                        for (int i27 = 0; i27 < 3; i27++) {
                            arrayList5.add(fArr15[i27]);
                        }
                        ArrayList arrayListYn3 = com.huawei.location.FB.yn(arrayList3, arrayList4, arrayList3.size());
                        ArrayList arrayListYn4 = com.huawei.location.FB.yn(arrayListYn3, arrayList5, arrayListYn3.size());
                        new ArrayList(3);
                        float[][] fArr18 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, arrayListYn4.size(), ((float[]) arrayListYn4.get(0)).length);
                        for (int i28 = 0; i28 < arrayListYn4.size(); i28++) {
                            System.arraycopy(arrayListYn4.get(i28), 0, fArr18[i28], 0, ((float[]) arrayListYn4.get(i28)).length);
                        }
                        int length2 = fArr18.length;
                        int length3 = fArr18[0].length;
                        float[][] fArr19 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, length3, length2);
                        for (int i29 = 0; i29 < length2; i29++) {
                            for (int i30 = 0; i30 < length3; i30++) {
                                fArr19[i30][i29] = fArr18[i29][i30];
                            }
                        }
                        ArrayList arrayList6 = new ArrayList(length2);
                        for (float[] fArr20 : fArr19) {
                            arrayList6.add(fArr20);
                        }
                        ArrayList arrayList7 = new ArrayList(3);
                        int i31 = 0;
                        for (int i32 = 3; i31 < i32; i32 = 3) {
                            arrayList7.add(fArr14[i31]);
                            i31++;
                        }
                        float[][] fArr21 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, arrayList6.size(), ((float[]) arrayList6.get(0)).length);
                        for (int i33 = 0; i33 < arrayList6.size(); i33++) {
                            System.arraycopy(arrayList6.get(i33), 0, fArr21[i33], 0, ((float[]) arrayList6.get(i33)).length);
                        }
                        float[][] fArr22 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, arrayList7.size(), ((float[]) arrayList7.get(0)).length);
                        for (int i34 = 0; i34 < arrayList7.size(); i34++) {
                            System.arraycopy(arrayList7.get(i34), 0, fArr22[i34], 0, ((float[]) arrayList7.get(i34)).length);
                        }
                        char c3 = 0;
                        float[][] fArr23 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, fArr21.length, fArr22[0].length);
                        int i35 = 0;
                        while (i35 < fArr21.length) {
                            int i36 = 0;
                            while (i36 < fArr22[c3].length) {
                                float f7 = BitmapDescriptorFactory.HUE_RED;
                                for (int i37 = 0; i37 < fArr22.length; i37++) {
                                    f7 += fArr21[i35][i37] * fArr22[i37][i36];
                                }
                                fArr23[i35][i36] = f7;
                                i36++;
                                c3 = 0;
                            }
                            i35++;
                            c3 = 0;
                        }
                        float[] fArr24 = fArr5[i20];
                        fArr24[0] = fArr23[0][0];
                        fArr24[1] = fArr23[1][0];
                        fArr24[2] = fArr23[2][0];
                        i20++;
                        fArr3 = fArr10;
                        fArr4 = fArr7;
                        i15 = i21;
                        z2 = z3;
                        i11 = i22;
                        i13 = i24;
                        i12 = i23;
                        c2 = 0;
                        i18 = 1;
                    }
                    i = i11;
                    i2 = i12;
                    i3 = i13;
                    z = z2;
                    i4 = i15;
                    ArrayList arrayList8 = new ArrayList(arrayListYn.size());
                    for (float[] fArr25 : fArr5) {
                        arrayList8.add(fArr25);
                    }
                    arrayListYn = arrayList8;
                }
                for (int i38 = 0; i38 < 256; i38++) {
                    float[] fArr26 = (float[]) arrayListYn.get(i38);
                    double d4 = ((float[]) arrayListYn.get(i38))[2];
                    Double.isNaN(d4);
                    fArr26[2] = (float) (d4 - 9.81d);
                }
                float[][] fArr27 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, arrayListYn.size(), ((float[]) arrayListYn.get(0)).length);
                for (int i39 = 0; i39 < arrayListYn.size(); i39++) {
                    System.arraycopy(arrayListYn.get(i39), 0, fArr27[i39], 0, ((float[]) arrayListYn.get(i39)).length);
                }
                if (fArr27.length == 0) {
                    c = 1;
                } else {
                    float[][] fArr28 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, fArr27.length, fArr27[0].length);
                    int i40 = 0;
                    for (int i41 = 0; i40 < fArr27[i41].length; i41 = 0) {
                        int size = arrayListYn.size();
                        int[] iArr3 = new int[2];
                        iArr3[1] = ((float[]) arrayListYn.get(i41)).length;
                        iArr3[i41] = size;
                        float[][] fArr29 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, iArr3);
                        for (int i42 = 0; i42 < arrayListYn.size(); i42++) {
                            System.arraycopy(arrayListYn.get(i42), 0, fArr29[i42], 0, ((float[]) arrayListYn.get(i42)).length);
                        }
                        ArrayList arrayList9 = new ArrayList();
                        for (float[] fArr30 : fArr29) {
                            if (i40 >= 0) {
                                if (i40 < fArr30.length) {
                                    arrayList9.add(Float.valueOf(fArr30[i40]));
                                }
                            }
                        }
                        int i43 = (int) 40.5d;
                        ArrayList arrayList10 = new ArrayList();
                        for (int i44 = -i43; i44 < i43 + 1; i44++) {
                            double d5 = i44 * i44;
                            Double.isNaN(d5);
                            arrayList10.add(Float.valueOf((float) Math.exp((-0.005d) * d5)));
                        }
                        int size2 = (arrayList10.size() - 1) / 2;
                        int size3 = arrayList9.size();
                        int i45 = (size2 * 2) + size3;
                        ArrayList arrayList11 = new ArrayList(i45);
                        int i46 = 0;
                        while (i46 < i45) {
                            if (i46 < size2) {
                                i6 = size2 - i46;
                            } else {
                                int i47 = size3 + size2;
                                if (i46 < i47) {
                                    i6 = i46 - size2;
                                } else {
                                    i5 = 1;
                                    if (i46 >= i47) {
                                        arrayList11.add(arrayList9.get((((i47 - 1) * 2) - i46) - size2));
                                    }
                                    i46 += i5;
                                }
                            }
                            arrayList11.add(arrayList9.get(i6));
                            i5 = 1;
                            i46 += i5;
                        }
                        int i48 = 1;
                        ArrayList arrayList12 = new ArrayList();
                        int i49 = 0;
                        while (i49 < size3) {
                            int i50 = i49 + size2;
                            ArrayList arrayList13 = new ArrayList(arrayList11.subList(i50 - size2, i50 + size2 + i48));
                            double d6 = 0.0d;
                            double d7 = 0.0d;
                            int i51 = 0;
                            while (i51 < arrayList10.size()) {
                                int i52 = size3;
                                double dFloatValue = ((Float) arrayList13.get(i51)).floatValue() * ((Float) arrayList10.get(i51)).floatValue();
                                Double.isNaN(dFloatValue);
                                d6 += dFloatValue;
                                double dFloatValue2 = ((Float) arrayList10.get(i51)).floatValue();
                                Double.isNaN(dFloatValue2);
                                d7 += dFloatValue2;
                                i51++;
                                size3 = i52;
                                arrayList11 = arrayList11;
                            }
                            arrayList12.add(Float.valueOf((float) (d6 / d7)));
                            i49++;
                            size3 = size3;
                            arrayList11 = arrayList11;
                            i48 = 1;
                        }
                        for (int i53 = 0; i53 < fArr27.length; i53++) {
                            fArr28[i53][i40] = ((Float) arrayList12.get(i53)).floatValue();
                        }
                        i40++;
                    }
                    c = 1;
                    ArrayList arrayList14 = new ArrayList(arrayListYn.size());
                    for (float[] fArr31 : fArr28) {
                        arrayList14.add(fArr31);
                    }
                    arrayListYn = arrayList14;
                }
                int i54 = 0;
                int i55 = 3;
                while (i54 < i55) {
                    int size4 = arrayListYn.size();
                    int[] iArr4 = new int[2];
                    iArr4[c] = ((float[]) arrayListYn.get(0)).length;
                    iArr4[0] = size4;
                    float[][] fArr32 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, iArr4);
                    for (int i56 = 0; i56 < arrayListYn.size(); i56++) {
                        System.arraycopy(arrayListYn.get(i56), 0, fArr32[i56], 0, ((float[]) arrayListYn.get(i56)).length);
                    }
                    int length4 = fArr32.length;
                    float[] fArr33 = new float[length4];
                    for (int i57 = 0; i57 < fArr32.length; i57++) {
                        if (i54 >= 0) {
                            float[] fArr34 = fArr32[i57];
                            if (i54 < fArr34.length) {
                                fArr33[i57] = fArr34[i54];
                            }
                        }
                    }
                    float f8 = BitmapDescriptorFactory.HUE_RED;
                    for (int i58 = 0; i58 < length4; i58++) {
                        f8 += fArr33[i58];
                    }
                    float f9 = f8 / length4;
                    for (int i59 = 0; i59 < 256; i59++) {
                        ((float[]) arrayListYn.get(i59))[i54] = ((float[]) arrayListYn.get(i59))[i54] - f9;
                    }
                    i54++;
                    i55 = 3;
                    c = 1;
                }
                float[] fArr35 = new float[768];
                float[][] fArr36 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, arrayListYn.size(), ((float[]) arrayListYn.get(0)).length);
                for (int i60 = 0; i60 < arrayListYn.size(); i60++) {
                    System.arraycopy(arrayListYn.get(i60), 0, fArr36[i60], 0, ((float[]) arrayListYn.get(i60)).length);
                }
                char c4 = 0;
                int length5 = fArr36.length;
                int i61 = 0;
                int i62 = 0;
                while (i61 < length5) {
                    float[] fArr37 = fArr36[i61];
                    int i63 = i62;
                    int i64 = 0;
                    while (i64 < fArr36[c4].length) {
                        fArr35[i63] = fArr37[i64];
                        i64++;
                        i63++;
                        c4 = 0;
                    }
                    i61++;
                    i62 = i63;
                    c4 = 0;
                }
                float[][] fArr38 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 1, 5);
                if (JniUtils.analysisData(fArr35, fArr38) != 0) {
                    LogConsole.e("ResultPredict", "analysis result fail");
                    throw new LocationServiceException(ActivityErrorCode.ACTIVITY_IDENTIFICATION_NOT_AVAILABLE, ActivityErrorCode.getErrorCodeMessage(ActivityErrorCode.ACTIVITY_IDENTIFICATION_NOT_AVAILABLE) + ":end request.");
                }
                float[] fArr39 = fArr38[0];
                com.huawei.location.activity.model.Vw.yn = new CopyOnWriteArrayList();
                for (int i65 = 0; i65 < fArr39.length; i65++) {
                    DetectedActivity detectedActivity = new DetectedActivity();
                    if (i65 == 0) {
                        detectedActivity.setConfidence((int) (fArr39[i65] * 100.0f));
                        detectedActivity.setType(3);
                    }
                    if (i65 == 1) {
                        detectedActivity.setConfidence((int) (fArr39[i65] * 100.0f));
                        detectedActivity.setType(7);
                    }
                    if (i65 == 2) {
                        detectedActivity.setConfidence((int) (fArr39[i65] * 100.0f));
                        detectedActivity.setType(8);
                    }
                    if (i65 == 3) {
                        detectedActivity.setConfidence((int) (fArr39[i65] * 100.0f));
                        detectedActivity.setType(1);
                    }
                    if (i65 == 4) {
                        detectedActivity.setConfidence((int) (fArr39[i65] * 100.0f));
                        detectedActivity.setType(0);
                    }
                    com.huawei.location.activity.model.Vw.yn.add(detectedActivity);
                }
                com.huawei.location.activity.model.Vw.yn.add(new DetectedActivity(2, (int) ((fArr39[1] + fArr39[2]) * 100.0f)));
                i13 = i3 + 100;
                i12 = i2 + 100;
                copyOnWriteArrayList3 = mergeList(copyOnWriteArrayList3, com.huawei.location.activity.model.Vw.yn);
                i14 = i4;
                z2 = z;
            } else {
                LogConsole.i(TAG, "data not valid ! drop it ");
                i13 += i7;
                i12 += i7;
                copyOnWriteArrayList = copyOnWriteArrayList4;
                copyOnWriteArrayList2 = copyOnWriteArrayList5;
                i = i11;
                z2 = true;
            }
            i11 = i + 1;
            copyOnWriteArrayList4 = copyOnWriteArrayList;
            copyOnWriteArrayList5 = copyOnWriteArrayList2;
            i7 = 100;
            i8 = 3;
            i9 = 1;
            i10 = 256;
        }
        boolean z4 = z2;
        synchronized (SYNC_LIST_LOCK) {
            if (z4) {
                try {
                    this.oriRecordList.clear();
                    this.accRecordList.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        for (int i66 = 0; i66 < copyOnWriteArrayList3.size(); i66++) {
            copyOnWriteArrayList3.get(i66).setConfidence(copyOnWriteArrayList3.get(i66).getConfidence() / i14);
        }
        Iterator<DetectedActivity> it = copyOnWriteArrayList3.iterator();
        while (it.hasNext()) {
            if (it.next().getConfidence() >= 50) {
                return copyOnWriteArrayList3;
            }
        }
        copyOnWriteArrayList3.add(new DetectedActivity(4, 100));
        return copyOnWriteArrayList3;
    }

    private FB event2Acc(SensorEvent sensorEvent) {
        FB fb = new FB(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        fb.yn(sensorEvent.timestamp);
        fb.yn(sensorEvent.values[0]);
        fb.Vw(sensorEvent.values[1]);
        fb.FB(sensorEvent.values[2]);
        return fb;
    }

    private static void freeAssets() {
        JniUtils.freeBuffer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<DetectedActivity> getDetectedActivities() {
        checkIfValid();
        try {
            if (this.accRecordList.size() < 256 || this.oriRecordList.size() < 256) {
                LogConsole.i(TAG, "need to wait for data !");
                this.needToWait = true;
                byte[] bArr = SYNC_LOCK;
                synchronized (bArr) {
                    bArr.wait();
                }
                LogConsole.i(TAG, "wait end!");
                this.needToWait = false;
            }
        } catch (InterruptedException unused) {
            LogConsole.d(TAG, "InterruptedException ");
        }
        ArrayList arrayList = new ArrayList(dealWithDatas());
        Collections.sort(arrayList, new yn(this));
        return arrayList;
    }

    public static RiemannSoftArService getInstance() {
        if (instance == null) {
            synchronized (SYNC_LOCK) {
                try {
                    if (instance == null) {
                        instance = new RiemannSoftArService();
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    private List<DetectedActivity> mergeList(List<DetectedActivity> list, List<DetectedActivity> list2) {
        if (list2 == null || list2.size() == 0) {
            LogConsole.e(TAG, "ResultPredict.predict result is null !");
            return list;
        }
        if (list == null || list.size() == 0) {
            return list2;
        }
        for (int i = 0; i < list.size(); i++) {
            list.get(i).setConfidence(list.get(i).getConfidence() + list2.get(i).getConfidence());
        }
        return list;
    }

    private void register() {
        if (this.alreadyRegister) {
            LogConsole.i(TAG, " already registered");
        } else {
            new com.huawei.location.activity.yn().yn(this);
        }
    }

    private void unregister() {
        try {
            if (this.alreadyRegister) {
                freeAssets();
                SensorManager sensorManager = this.sensorManager;
                if (sensorManager != null) {
                    sensorManager.unregisterListener(this, this.acc);
                    this.sensorManager.unregisterListener(this, this.ori);
                    this.alreadyRegister = false;
                    LogConsole.i(TAG, "unregister acc & ori success");
                }
            }
        } catch (LocationServiceException e) {
            throw e;
        } catch (Exception unused) {
            LogConsole.e(TAG, "unregister sensor listener failed");
        }
    }

    @Override // com.huawei.location.base.activity.AbstractARServiceManager
    public boolean connectService() {
        return false;
    }

    @Override // com.huawei.location.base.activity.AbstractARServiceManager
    public boolean disConnectService() {
        return false;
    }

    @Override // com.huawei.location.base.activity.AbstractARServiceManager
    public ActivityRecognitionResult getDetectedActivity(int i, int i2) {
        LogConsole.i(TAG, "getDetectedActivity");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.huawei.location.base.activity.AbstractARServiceManager
    public Vw getTask() {
        return new Vw(this, null);
    }

    @Override // com.huawei.location.base.activity.AbstractARServiceManager
    public boolean isConnected() {
        return false;
    }

    public void modelFileLoadFail(int i) {
    }

    @Override // com.huawei.location.activity.callback.yn
    public void modelFileLoadSuccess() {
        try {
            SensorManager sensorManager = this.sensorManager;
            if (sensorManager == null) {
                LogConsole.i(TAG, "sensorManager is null");
                throw new LocationServiceException(ActivityErrorCode.ACTIVITY_IDENTIFICATION_NOT_AVAILABLE, ActivityErrorCode.getErrorCodeMessage(ActivityErrorCode.ACTIVITY_IDENTIFICATION_NOT_AVAILABLE) + ":end request.");
            }
            boolean zRegisterListener = sensorManager.registerListener(this, this.acc, 10000);
            boolean zRegisterListener2 = this.sensorManager.registerListener(this, this.ori, 10000);
            LogConsole.i(TAG, "register accResult: " + zRegisterListener + " register oriResult: " + zRegisterListener2);
            if (!zRegisterListener || !zRegisterListener2) {
                throw new LocationServiceException(ActivityErrorCode.ACTIVITY_IDENTIFICATION_NOT_AVAILABLE, ActivityErrorCode.getErrorCodeMessage(ActivityErrorCode.ACTIVITY_IDENTIFICATION_NOT_AVAILABLE) + ":end request.");
            }
            this.alreadyRegister = true;
            if (this.scheduledExecutorService == null) {
                this.scheduledExecutorService = Executors.newScheduledThreadPool(1);
            }
            this.scheduledFuture = this.scheduledExecutorService.scheduleWithFixedDelay(getTask(), 0L, this.delay, TimeUnit.MILLISECONDS);
            LogConsole.i(TAG, "startScheduled exit");
        } catch (LocationServiceException e) {
            throw e;
        } catch (Exception unused) {
            LogConsole.e(TAG, "register sensor listener failed");
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() == 1 || sensorEvent.sensor.getType() == 3) {
            checkIfValid();
            this.updatTime = System.currentTimeMillis();
            if (sensorEvent.sensor.getType() == 1) {
                this.accRecordList.add(event2Acc(sensorEvent));
                synchronized (SYNC_LIST_LOCK) {
                    try {
                        if (this.accRecordList.size() > SENSOR_LIST_ALL) {
                            this.accRecordList.remove(0);
                        }
                    } finally {
                    }
                }
            } else {
                this.oriRecordList.add(event2Acc(sensorEvent));
                synchronized (SYNC_LIST_LOCK) {
                    try {
                        if (this.oriRecordList.size() > SENSOR_LIST_ALL) {
                            this.oriRecordList.remove(0);
                        }
                    } finally {
                    }
                }
            }
            if (!this.needToWait || this.oriRecordList.size() < 256 || this.accRecordList.size() < 256) {
                return;
            }
            byte[] bArr = SYNC_LOCK;
            synchronized (bArr) {
                bArr.notifyAll();
            }
        }
    }

    public void onStatusChanged(int i, int i2) {
        MovementEvent movementEvent = new MovementEvent(ActivityRecognitionConstantsMapping.getActivityType(Integer.valueOf(i)), i2);
        ArrayList arrayList = new ArrayList();
        arrayList.add(movementEvent);
        if (i == 7 || i == 8) {
            arrayList.add(new MovementEvent(ActivityRecognitionConstantsMapping.getActivityType(2), i2));
        }
        this.transitionMappingManager.sendActivityTransitionMappingInfo(arrayList, this.mContext);
    }

    @Override // com.huawei.location.base.activity.AbstractARServiceManager
    public void removeActivityTransitionUpdates(ATCallback aTCallback, ClientInfo clientInfo) {
        com.huawei.location.activity.model.yn ynVar;
        LogConsole.i(TAG, "removeActivityTransitionUpdates");
        this.transitionMappingManager.removeActivityTransitionMappingInfo(aTCallback);
        if (this.transitionMappingManager.getInfos().size() != 0 || (ynVar = this.atProvider) == null) {
            return;
        }
        this.recognitionMappingManager.removeActivityUpdatesMappingInfo(ynVar.yn());
        scheduleTimer();
        this.atProvider.Vw();
        this.alreadyRequestAR = false;
        LogConsole.i(TAG, "no activity transition request ");
    }

    @Override // com.huawei.location.base.activity.AbstractARServiceManager
    public synchronized void removeActivityUpdates(ARCallback aRCallback, ClientInfo clientInfo) {
        LogConsole.i(TAG, "removeActivityUpdates");
        this.recognitionMappingManager.removeActivityUpdatesMappingInfo(aRCallback);
        scheduleTimer();
    }

    @Override // com.huawei.location.base.activity.AbstractARServiceManager
    public void requestActivityTransitionUpdates(ActivityTransitionRequest activityTransitionRequest, ATCallback aTCallback, ClientInfo clientInfo) {
        com.huawei.location.activity.model.yn ynVar;
        ObjectCheckUtils.checkNullObject(TAG, activityTransitionRequest, ActivityTransitionRequest.class);
        List<ActivityTransition> transitions = activityTransitionRequest.getTransitions();
        if (transitions == null || transitions.size() < 1) {
            LogConsole.i(TAG, "requestActivityTransitionUpdates ,null == transitions || transitions.size() < 1");
            return;
        }
        LogConsole.i(TAG, "requestActivityTransitionUpdates");
        this.transitionMappingManager.addActivityTransitionMappingInfo(transitions, aTCallback, clientInfo);
        if (!this.alreadyRequestAR && (ynVar = this.atProvider) != null) {
            this.recognitionMappingManager.addActivityUpdatesMappingInfo(1000L, ynVar.yn(), clientInfo);
            this.alreadyRequestAR = true;
        }
        scheduleTimer();
    }

    @Override // com.huawei.location.base.activity.AbstractARServiceManager
    public synchronized void requestActivityUpdates(long j, ARCallback aRCallback, ClientInfo clientInfo) {
        LogConsole.i(TAG, "requestActivityUpdates");
        this.recognitionMappingManager.addActivityUpdatesMappingInfo(j, aRCallback, clientInfo);
        scheduleTimer();
    }

    @Override // com.huawei.location.base.activity.AbstractARServiceManager
    public synchronized void scheduleTimer() {
        long minTime;
        try {
            minTime = this.recognitionMappingManager.getMinTime();
        } catch (LocationServiceException e) {
            throw e;
        } catch (Exception unused) {
            LogConsole.e(TAG, "scheduleTimer exception", true);
        }
        if (-1 == minTime) {
            LogConsole.i(TAG, "scheduleTimer return time is " + minTime);
            this.lastTimeByTimer = -1L;
            stopScheduled();
            return;
        }
        long j = this.lastTimeByTimer;
        if (j == -1) {
            LogConsole.i(TAG, "scheduleTimer begin time is " + minTime);
            this.lastTimeByTimer = minTime;
            startScheduled(minTime);
        } else if (minTime != j) {
            LogConsole.i(TAG, "scheduleTimer begin again time is " + minTime);
            this.lastTimeByTimer = minTime;
            restartScheduled(minTime);
        } else {
            register();
        }
    }

    @Override // com.huawei.location.base.activity.AbstractARServiceManager
    protected void startScheduled(long j) {
        this.delay = j;
        LogConsole.i(TAG, "startScheduled enter");
        register();
    }

    @Override // com.huawei.location.base.activity.AbstractARServiceManager
    protected void stopScheduled() {
        LogConsole.i(TAG, "stopScheduled enter");
        unregister();
        try {
            ScheduledFuture scheduledFuture = this.scheduledFuture;
            if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                LogConsole.i(TAG, "stopScheduled exit:" + this.scheduledFuture.cancel(true));
                return;
            }
            LogConsole.i(TAG, "scheduled not init or cancelled");
        } catch (LocationServiceException e) {
            throw e;
        } catch (Exception unused) {
            LogConsole.e(TAG, "stopScheduled exit exception", true);
        }
    }
}
