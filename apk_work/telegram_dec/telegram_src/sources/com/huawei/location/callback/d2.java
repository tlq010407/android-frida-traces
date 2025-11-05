package com.huawei.location.callback;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.huawei.hms.location.HwLocationResult;
import com.huawei.hms.location.LocationRequest;
import com.huawei.hms.support.api.entity.location.updates.RequestLocationUpdatesRequest;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.GsonUtil;
import com.huawei.location.resp.LocationAvailabilityInfo;
import com.huawei.location.resp.ResponseInfo;
import com.huawei.location.router.RouterResponse;
import com.huawei.location.router.entity.StatusInfo;
import com.huawei.location.utils.Vw;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class d2 implements LocationListener {
    protected RequestLocationUpdatesRequest E5;
    public Location FB;
    protected Handler LW;
    private long Vw = SystemClock.elapsedRealtimeNanos();
    private boolean d2 = false;
    protected Vw.yn dC;
    public oc yn;

    class yn implements Handler.Callback {
        yn() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1001) {
                d2.this.yn(message.getData());
                return false;
            }
            if (i != 1002) {
                return false;
            }
            d2.this.yn(message);
            return false;
        }
    }

    public d2() {
        HandlerThread handlerThread = new HandlerThread("HwBaseCallback");
        handlerThread.start();
        this.LW = new Handler(handlerThread.getLooper(), new yn());
    }

    protected boolean FB(HwLocationResult hwLocationResult) {
        String str;
        if (hwLocationResult == null || hwLocationResult.getCode() != 0) {
            str = "checkLocationResult fail, hwLocationResult is invalid";
        } else if (hwLocationResult.getLocation() == null) {
            str = "checkLocationResult fail, location is null";
        } else {
            RequestLocationUpdatesRequest requestLocationUpdatesRequest = this.E5;
            if (requestLocationUpdatesRequest != null && !TextUtils.isEmpty(requestLocationUpdatesRequest.getUuid())) {
                return false;
            }
            str = "checkLocationResult fail, request is invalid";
        }
        LogConsole.e("HwBaseCallback", str);
        return true;
    }

    public void LW(HwLocationResult hwLocationResult) {
        Message messageObtainMessage = this.LW.obtainMessage(1001);
        Bundle bundle = new Bundle();
        bundle.putParcelable("hwLocationResult", hwLocationResult);
        messageObtainMessage.setData(bundle);
        this.LW.sendMessage(messageObtainMessage);
    }

    public void Vw(HwLocationResult hwLocationResult) {
        ResponseInfo responseInfo = new ResponseInfo();
        StatusInfo statusInfo = new StatusInfo(0, 0, hwLocationResult.getMessage());
        com.huawei.location.resp.Vw vw = new com.huawei.location.resp.Vw();
        vw.yn(this.FB);
        responseInfo.setLocationResult(vw);
        List arrayList = new ArrayList();
        if (responseInfo.getLocationResult() != null) {
            arrayList = responseInfo.getLocationResult().yn();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                jSONArray.put(com.huawei.location.FB.yn(((com.huawei.location.resp.yn) it.next()).yn()));
            }
            jSONObject2.put("locations", jSONArray);
            jSONObject.put("locationResult", jSONObject2);
        } catch (JSONException unused) {
            LogConsole.e("LocationInnerUtil", "buildEntityFromResponse get jsonException .");
        }
        String string = jSONObject.toString();
        LogConsole.i("HwBaseCallback", "callJson to cp, tid is " + this.E5.getTid() + ", uuid is " + this.E5.getUuid() + ", provider is " + this.FB.getProvider());
        this.yn.yn(new RouterResponse(string, statusInfo));
        com.huawei.location.cache.yn.Vw().FB(this.E5.getUuid());
        Vw.yn ynVar = this.dC;
        if (ynVar != null) {
            ynVar.yn(vw);
            this.dC.yn().Vw(String.valueOf(0));
        }
    }

    public void Vw(boolean z) {
        this.d2 = z;
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        LogConsole.i("HwBaseCallback", "gnss location successful");
        HwLocationResult hwLocationResult = new HwLocationResult();
        hwLocationResult.setLocation(location);
        LW(hwLocationResult);
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
    }

    protected Location yn(Location location, Location location2) {
        String str;
        String str2;
        if (location != null) {
            if (location2 == null) {
                str2 = "nlpTempLocation is null";
            } else if (location.getElapsedRealtimeNanos() >= SystemClock.elapsedRealtimeNanos() - 20000000000L) {
                str2 = "gnssLocation is better";
            } else {
                str = "network location is better";
            }
            LogConsole.i("HwBaseCallback", str2);
            return location;
        }
        str = "gnssTempLocation is null";
        LogConsole.i("HwBaseCallback", str);
        return location2;
    }

    public void yn() {
        Handler handler = this.LW;
        if (handler == null || handler.getLooper() == null) {
            return;
        }
        this.LW.getLooper().quitSafely();
        LogConsole.i("HwBaseCallback", "handler quitSafely");
    }

    protected abstract void yn(Bundle bundle);

    protected void yn(Message message) {
    }

    public void yn(HwLocationResult hwLocationResult) {
        if (com.huawei.location.FB.yn()) {
            LogConsole.e("HwBaseCallback", "no precise location permission");
            return;
        }
        Location location = this.FB;
        if (this.d2 && location != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(location);
            if (com.huawei.location.logic.d2.yn().yn(this.E5.getTid(), this, arrayList)) {
                LogConsole.i("HwBaseCallback", "this locationResult add maxWaitTimeQueue , not need callback");
                if (this.FB != null) {
                    this.Vw = SystemClock.elapsedRealtimeNanos();
                }
                this.FB = location;
                com.huawei.location.cache.yn.Vw().yn(location);
                return;
            }
        }
        Location location2 = hwLocationResult.getLocation();
        if (this.FB != null) {
            this.Vw = SystemClock.elapsedRealtimeNanos();
        }
        this.FB = location2;
        com.huawei.location.cache.yn.Vw().yn(location2);
        Vw(hwLocationResult);
    }

    public void yn(boolean z) {
        ResponseInfo responseInfo = new ResponseInfo();
        LocationAvailabilityInfo locationAvailabilityInfo = new LocationAvailabilityInfo();
        locationAvailabilityInfo.setLocationStatus(z ? 0 : 1001);
        responseInfo.setLocationAvailability(locationAvailabilityInfo);
        this.yn.yn(new RouterResponse(GsonUtil.getInstance().toJson(responseInfo), new StatusInfo(0, 0, "success")));
    }

    public abstract void yn(boolean z, boolean z2);

    protected boolean yn(Location location) {
        LocationRequest locationRequest = this.E5.getLocationRequest();
        if (locationRequest == null) {
            LogConsole.i("HwBaseCallback", "report location fail, locationRequest is null");
            return false;
        }
        if (this.FB == null) {
            return true;
        }
        long jElapsedRealtimeNanos = (SystemClock.elapsedRealtimeNanos() - this.Vw) / 1000000;
        double dMin = Math.min(locationRequest.getInterval(), locationRequest.getFastestInterval());
        Double.isNaN(dMin);
        double d = 0.9d * dMin;
        if (dMin >= 2000.0d) {
            Double.isNaN(dMin);
            d = dMin - 1000.0d;
        }
        if (jElapsedRealtimeNanos < d) {
            LogConsole.e("HwBaseCallback", "report location fail, timeDifference is " + jElapsedRealtimeNanos + ", provider is " + location.getProvider());
            return false;
        }
        if (locationRequest.getNumUpdates() < 1) {
            LogConsole.e("HwBaseCallback", "report location fail, numUpdate < 1");
            return false;
        }
        double smallestDisplacement = locationRequest.getSmallestDisplacement();
        if (smallestDisplacement > 0.0d && location.distanceTo(this.FB) <= smallestDisplacement) {
            LogConsole.i("HwBaseCallback", "report location fail, minDistance is not met");
            return false;
        }
        if (locationRequest.getExpirationTime() >= SystemClock.elapsedRealtime()) {
            return true;
        }
        LogConsole.i("HwBaseCallback", "report location fail, expirationTime is not met");
        return false;
    }
}
