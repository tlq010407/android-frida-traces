package com.huawei.location.vdr.data;

import android.location.GnssMeasurement;
import android.location.GnssMeasurementsEvent;
import android.location.LocationManager;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import androidx.core.content.ContextCompat;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.CollectionsUtils;
import com.huawei.location.sdm.Sdm$$ExternalSyntheticApiModelOutline14;
import com.huawei.riemann.gnsslocation.core.bean.obs.GnssClock;
import com.huawei.riemann.gnsslocation.core.bean.obs.GnssRawObservation;
import com.huawei.riemann.gnsslocation.core.bean.obs.SatelliteMeasurement;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class yn {
    private final GnssMeasurementsEvent.Callback E5 = new C0037yn();
    LocationManager FB;
    private com.huawei.location.vdr.listener.yn LW;
    Handler Vw;
    private long dC;
    HandlerThread yn;

    /* renamed from: com.huawei.location.vdr.data.yn$yn, reason: collision with other inner class name */
    class C0037yn extends GnssMeasurementsEvent.Callback {
        C0037yn() {
        }

        @Override // android.location.GnssMeasurementsEvent.Callback
        public void onGnssMeasurementsReceived(GnssMeasurementsEvent gnssMeasurementsEvent) {
            yn.yn(yn.this, gnssMeasurementsEvent);
        }

        @Override // android.location.GnssMeasurementsEvent.Callback
        public void onStatusChanged(int i) {
            LogConsole.i("GnssMeasurementsProvider", "GnssMeasurementsEvent onStatusChanged :" + i);
            super.onStatusChanged(i);
        }
    }

    static void yn(yn ynVar, GnssMeasurementsEvent gnssMeasurementsEvent) {
        GnssRawObservation[] gnssRawObservationArr;
        ynVar.getClass();
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        if (jElapsedRealtimeNanos - ynVar.dC < 600000) {
            LogConsole.d("GnssMeasurementsProvider", "The interval does not meet requirements,dropping this gnssRaw");
            return;
        }
        ynVar.dC = jElapsedRealtimeNanos;
        long millis = TimeUnit.NANOSECONDS.toMillis(jElapsedRealtimeNanos);
        int i = 0;
        if (CollectionsUtils.isEmpty(gnssMeasurementsEvent.getMeasurements()) || gnssMeasurementsEvent.getClock() == null) {
            gnssRawObservationArr = new GnssRawObservation[0];
        } else {
            GnssClock gnssClockBuild = GnssClock.Builder.aGnssClock().withBiasNanos(gnssMeasurementsEvent.getClock().hasBiasNanos() ? gnssMeasurementsEvent.getClock().getBiasNanos() : 0.0d).withBiasUncertaintyNanos(gnssMeasurementsEvent.getClock().hasBiasUncertaintyNanos() ? gnssMeasurementsEvent.getClock().getBiasUncertaintyNanos() : 0.0d).withDriftNanosPerSecond(gnssMeasurementsEvent.getClock().hasDriftNanosPerSecond() ? gnssMeasurementsEvent.getClock().getDriftNanosPerSecond() : 0.0d).withDriftUncertaintyNanosPerSecond(gnssMeasurementsEvent.getClock().hasDriftUncertaintyNanosPerSecond() ? gnssMeasurementsEvent.getClock().getDriftUncertaintyNanosPerSecond() : 0.0d).withFullBiasNanos(gnssMeasurementsEvent.getClock().getFullBiasNanos()).withHardwareClockDiscontinuityCount(gnssMeasurementsEvent.getClock().getHardwareClockDiscontinuityCount()).withLeapSecond(gnssMeasurementsEvent.getClock().hasLeapSecond() ? gnssMeasurementsEvent.getClock().getLeapSecond() : 0).withTimeNanos(gnssMeasurementsEvent.getClock().getTimeNanos()).withTimeUncertaintyNanos(gnssMeasurementsEvent.getClock().hasTimeUncertaintyNanos() ? gnssMeasurementsEvent.getClock().getTimeUncertaintyNanos() : 0.0d).withElapsedRealtimeMillis(Build.VERSION.SDK_INT >= 29 ? gnssMeasurementsEvent.getClock().getElapsedRealtimeNanos() : 0L).build();
            GnssRawObservation[] gnssRawObservationArr2 = new GnssRawObservation[gnssMeasurementsEvent.getMeasurements().size()];
            Iterator it = gnssMeasurementsEvent.getMeasurements().iterator();
            while (it.hasNext()) {
                GnssMeasurement gnssMeasurementM = Sdm$$ExternalSyntheticApiModelOutline14.m(it.next());
                SatelliteMeasurement.Builder builderWithSvid = SatelliteMeasurement.Builder.aSatelliteMeasurement().withBootTime(millis).withAccumulatedDeltaRangeMeters(gnssMeasurementM.getAccumulatedDeltaRangeMeters()).withAccumulatedDeltaRangeState(gnssMeasurementM.getAccumulatedDeltaRangeState()).withAccumulatedDeltaRangeUncertaintyMeters(gnssMeasurementM.getAccumulatedDeltaRangeUncertaintyMeters()).withCarrierCycles(gnssMeasurementM.hasCarrierCycles() ? gnssMeasurementM.getCarrierCycles() : 0L).withCarrierFrequencyHz(gnssMeasurementM.hasCarrierFrequencyHz() ? gnssMeasurementM.getCarrierFrequencyHz() : BitmapDescriptorFactory.HUE_RED).withCarrierPhase(gnssMeasurementM.hasCarrierPhase() ? gnssMeasurementM.getCarrierPhase() : 0.0d).withCarrierPhaseUncertainty(gnssMeasurementM.hasCarrierPhaseUncertainty() ? gnssMeasurementM.getCarrierPhaseUncertainty() : 0.0d).withCn0DbHz(gnssMeasurementM.getCn0DbHz()).withConstellationType(gnssMeasurementM.getConstellationType()).withSnrInDb(gnssMeasurementM.hasSnrInDb() ? gnssMeasurementM.getSnrInDb() : 0.0d).withMultipathIndicator(gnssMeasurementM.getMultipathIndicator()).withTimeOffsetNanos(gnssMeasurementM.getTimeOffsetNanos()).withPseudorangeRateMetersPerSecond(gnssMeasurementM.getPseudorangeRateMetersPerSecond()).withPseudorangeRateUncertaintyMetersPerSecond(gnssMeasurementM.getPseudorangeRateUncertaintyMetersPerSecond()).withReceivedSvTimeNanos(gnssMeasurementM.getReceivedSvTimeNanos()).withReceivedSvTimeUncertaintyNanos(gnssMeasurementM.getReceivedSvTimeUncertaintyNanos()).withState(gnssMeasurementM.getState()).withSvid(gnssMeasurementM.getSvid());
                int i2 = Build.VERSION.SDK_INT;
                builderWithSvid.withAutomaticGainControlLevelInDb((i2 < 26 || !gnssMeasurementM.hasAutomaticGainControlLevelDb()) ? 0.0d : gnssMeasurementM.getAutomaticGainControlLevelDb());
                if (i2 >= 30) {
                    builderWithSvid.withFullInterSignalBiasNanos(gnssMeasurementM.hasFullInterSignalBiasNanos() ? gnssMeasurementM.getFullInterSignalBiasNanos() : 0.0d);
                    builderWithSvid.withFullInterSignalBiasUncertaintyNanos(gnssMeasurementM.hasFullInterSignalBiasUncertaintyNanos() ? gnssMeasurementM.getFullInterSignalBiasUncertaintyNanos() : 0.0d);
                    builderWithSvid.withSatelliteInterSignalBiasNanos(gnssMeasurementM.hasSatelliteInterSignalBiasNanos() ? gnssMeasurementM.getSatelliteInterSignalBiasNanos() : 0.0d);
                    builderWithSvid.withSatelliteInterSignalBiasUncertaintyNanos(gnssMeasurementM.hasSatelliteInterSignalBiasUncertaintyNanos() ? gnssMeasurementM.getSatelliteInterSignalBiasUncertaintyNanos() : 0.0d);
                } else {
                    builderWithSvid.withFullInterSignalBiasNanos(0.0d);
                    builderWithSvid.withFullInterSignalBiasUncertaintyNanos(0.0d);
                    builderWithSvid.withSatelliteInterSignalBiasNanos(0.0d);
                    builderWithSvid.withSatelliteInterSignalBiasUncertaintyNanos(0.0d);
                }
                gnssRawObservationArr2[i] = GnssRawObservation.Builder.aGnssRawObservation().withSatelliteMeasurement(builderWithSvid.build()).withGnssClock(gnssClockBuild).build();
                i++;
            }
            gnssRawObservationArr = gnssRawObservationArr2;
        }
        if (gnssRawObservationArr.length < 10) {
            LogConsole.i("GnssMeasurementsProvider", "gnssRawObservations not enough, drop here. length is : " + gnssRawObservationArr.length);
            return;
        }
        com.huawei.location.vdr.listener.yn ynVar2 = ynVar.LW;
        if (ynVar2 != null) {
            ((LW) ynVar2).Vw(gnssRawObservationArr, jElapsedRealtimeNanos);
        } else {
            LogConsole.e("GnssMeasurementsProvider", "gnss listener is null!");
        }
    }

    public void Vw() {
        LocationManager locationManager = this.FB;
        if (locationManager != null) {
            locationManager.unregisterGnssMeasurementsCallback(this.E5);
        }
        this.LW = null;
        HandlerThread handlerThread = this.yn;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
        this.Vw = null;
    }

    public void yn() {
        boolean zRegisterGnssMeasurementsCallback;
        HandlerThread handlerThread = new HandlerThread("Loc-Vdr-gnssMeasure");
        this.yn = handlerThread;
        handlerThread.start();
        this.Vw = new Handler(this.yn.getLooper());
        try {
            Object systemService = ContextUtil.getContext().getSystemService("location");
            if (systemService instanceof LocationManager) {
                this.FB = (LocationManager) systemService;
                if (ContextCompat.checkSelfPermission(ContextUtil.getContext(), "android.permission.ACCESS_FINE_LOCATION") != 0) {
                    LogConsole.e("GnssMeasurementsProvider", "init fail because of checkSelfPermission fail");
                    return;
                }
                zRegisterGnssMeasurementsCallback = this.FB.registerGnssMeasurementsCallback(this.E5, this.Vw);
            } else {
                zRegisterGnssMeasurementsCallback = false;
            }
            LogConsole.i("GnssMeasurementsProvider", "RegisterMeasurements:" + zRegisterGnssMeasurementsCallback);
        } catch (Exception unused) {
            LogConsole.e("GnssMeasurementsProvider", "registerGnssMeasurements error.");
        }
    }

    public void yn(com.huawei.location.vdr.listener.yn ynVar) {
        this.LW = ynVar;
    }
}
