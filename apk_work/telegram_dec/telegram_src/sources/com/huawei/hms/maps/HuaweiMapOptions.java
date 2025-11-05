package com.huawei.hms.maps;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.huawei.hms.common.parcel.ParcelReader;
import com.huawei.hms.common.parcel.ParcelWrite;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import com.huawei.hms.maps.model.CameraPosition;
import com.huawei.hms.maps.model.LatLng;
import com.huawei.hms.maps.model.LatLngBounds;
import com.huawei.hms.maps.utils.LogM;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class HuaweiMapOptions implements Parcelable {
    public static final Parcelable.Creator<HuaweiMapOptions> CREATOR = new Parcelable.Creator<HuaweiMapOptions>() { // from class: com.huawei.hms.maps.HuaweiMapOptions.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public HuaweiMapOptions createFromParcel(Parcel parcel) {
            return new HuaweiMapOptions(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public HuaweiMapOptions[] newArray(int i) {
            return new HuaweiMapOptions[i];
        }
    };
    private int a;
    private Boolean b;
    private Boolean c;
    private CameraPosition d;
    private Boolean e;
    private Boolean f;
    private Boolean g;
    private Boolean h;
    private Boolean i;
    private Boolean j;
    private Boolean k;
    private Boolean l;
    private Boolean m;
    private Float n;
    private Float o;
    private LatLngBounds p;
    private Boolean q;
    private String r;
    private String s;
    private Boolean t;

    public HuaweiMapOptions() {
        this.a = -1;
        Boolean bool = Boolean.TRUE;
        this.e = bool;
        this.f = bool;
        this.g = bool;
        this.h = bool;
        this.i = bool;
        this.j = bool;
        Boolean bool2 = Boolean.FALSE;
        this.k = bool2;
        this.n = Float.valueOf(3.0f);
        this.o = Float.valueOf(20.0f);
        this.p = null;
        this.t = bool2;
    }

    protected HuaweiMapOptions(Parcel parcel) {
        this.a = -1;
        Boolean bool = Boolean.TRUE;
        this.e = bool;
        this.f = bool;
        this.g = bool;
        this.h = bool;
        this.i = bool;
        this.j = bool;
        Boolean bool2 = Boolean.FALSE;
        this.k = bool2;
        this.n = Float.valueOf(3.0f);
        this.o = Float.valueOf(20.0f);
        this.p = null;
        this.t = bool2;
        ParcelReader parcelReader = new ParcelReader(parcel);
        this.a = parcelReader.readInt(2, this.a);
        this.b = parcelReader.readBooleanObject(3, null);
        this.c = parcelReader.readBooleanObject(4, null);
        this.e = parcelReader.readBooleanObject(5, null);
        this.f = parcelReader.readBooleanObject(6, null);
        this.g = parcelReader.readBooleanObject(7, null);
        this.h = parcelReader.readBooleanObject(8, null);
        this.i = parcelReader.readBooleanObject(9, null);
        this.j = parcelReader.readBooleanObject(10, null);
        this.k = parcelReader.readBooleanObject(11, null);
        this.l = parcelReader.readBooleanObject(12, null);
        this.m = parcelReader.readBooleanObject(13, null);
        this.n = parcelReader.readFloatObject(14, null);
        this.o = parcelReader.readFloatObject(15, null);
        this.p = (LatLngBounds) parcelReader.readParcelable(16, LatLngBounds.CREATOR, null);
        this.d = (CameraPosition) parcelReader.readParcelable(17, CameraPosition.CREATOR, null);
        this.q = parcelReader.readBooleanObject(18, null);
        this.r = parcelReader.createString(19, null);
        this.s = parcelReader.createString(20, null);
        this.t = parcelReader.readBooleanObject(21, null);
    }

    public static CameraPosition buildCameraPosition(Context context, AttributeSet attributeSet) {
        if (context == null || attributeSet == null) {
            return null;
        }
        TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attributeSet, R.styleable.MapAttrs);
        int i = R.styleable.MapAttrs_cameraTargetLat;
        LatLng latLng = new LatLng(typedArrayObtainAttributes.hasValue(i) ? typedArrayObtainAttributes.getFloat(i, BitmapDescriptorFactory.HUE_RED) : BitmapDescriptorFactory.HUE_RED, typedArrayObtainAttributes.hasValue(R.styleable.MapAttrs_cameraTargetLng) ? typedArrayObtainAttributes.getFloat(r0, BitmapDescriptorFactory.HUE_RED) : BitmapDescriptorFactory.HUE_RED);
        CameraPosition.Builder builder = CameraPosition.builder();
        builder.target(latLng);
        int i2 = R.styleable.MapAttrs_cameraZoom;
        if (typedArrayObtainAttributes.hasValue(i2)) {
            builder.zoom(typedArrayObtainAttributes.getFloat(i2, BitmapDescriptorFactory.HUE_RED));
        }
        int i3 = R.styleable.MapAttrs_cameraBearing;
        if (typedArrayObtainAttributes.hasValue(i3)) {
            builder.bearing(typedArrayObtainAttributes.getFloat(i3, BitmapDescriptorFactory.HUE_RED));
        }
        int i4 = R.styleable.MapAttrs_cameraTilt;
        if (typedArrayObtainAttributes.hasValue(i4)) {
            builder.tilt(typedArrayObtainAttributes.getFloat(i4, BitmapDescriptorFactory.HUE_RED));
        }
        typedArrayObtainAttributes.recycle();
        return builder.build();
    }

    public static LatLngBounds buildLatLngBounds(Context context, AttributeSet attributeSet) {
        if (context == null || attributeSet == null) {
            return null;
        }
        TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attributeSet, R.styleable.MapAttrs);
        int i = R.styleable.MapAttrs_latLngBoundsSouthWestLatitude;
        Float fValueOf = typedArrayObtainAttributes.hasValue(i) ? Float.valueOf(typedArrayObtainAttributes.getFloat(i, BitmapDescriptorFactory.HUE_RED)) : null;
        int i2 = R.styleable.MapAttrs_latLngBoundsSouthWestLongitude;
        Float fValueOf2 = typedArrayObtainAttributes.hasValue(i2) ? Float.valueOf(typedArrayObtainAttributes.getFloat(i2, BitmapDescriptorFactory.HUE_RED)) : null;
        int i3 = R.styleable.MapAttrs_latLngBoundsNorthEastLatitude;
        Float fValueOf3 = typedArrayObtainAttributes.hasValue(i3) ? Float.valueOf(typedArrayObtainAttributes.getFloat(i3, BitmapDescriptorFactory.HUE_RED)) : null;
        int i4 = R.styleable.MapAttrs_latLngBoundsNorthEastLongitude;
        Float fValueOf4 = typedArrayObtainAttributes.hasValue(i4) ? Float.valueOf(typedArrayObtainAttributes.getFloat(i4, BitmapDescriptorFactory.HUE_RED)) : null;
        typedArrayObtainAttributes.recycle();
        if (fValueOf == null || fValueOf2 == null || fValueOf3 == null || fValueOf4 == null) {
            return null;
        }
        return new LatLngBounds(new LatLng(fValueOf.floatValue(), fValueOf2.floatValue()), new LatLng(fValueOf3.floatValue(), fValueOf4.floatValue()));
    }

    public static HuaweiMapOptions createFromAttributes(Context context, AttributeSet attributeSet) {
        HuaweiMapOptions huaweiMapOptions = new HuaweiMapOptions();
        if (attributeSet == null) {
            LogM.d("ContentValues", "createFromAttributes() attrs is null");
            return huaweiMapOptions;
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.MapAttrs, 0, 0);
        try {
            int i = typedArrayObtainStyledAttributes.getInt(R.styleable.MapAttrs_mapType, 1);
            LogM.d("ContentValues", "createFromAttributes() mapyType is " + i);
            if (i != 0 && i != 3) {
                i = 1;
            }
            huaweiMapOptions.a = i;
            huaweiMapOptions.d = CameraPosition.createFromAttributes(context, attributeSet);
            huaweiMapOptions.e = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(R.styleable.MapAttrs_uiZoomControls, true));
            huaweiMapOptions.f = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(R.styleable.MapAttrs_uiCompass, true));
            int i2 = R.styleable.MapAttrs_uiZoomGestures;
            if (typedArrayObtainStyledAttributes.hasValue(i2)) {
                huaweiMapOptions.h = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(i2, true));
            }
            int i3 = R.styleable.MapAttrs_uiScrollGestures;
            if (typedArrayObtainStyledAttributes.hasValue(i3)) {
                huaweiMapOptions.g = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(i3, true));
            }
            int i4 = R.styleable.MapAttrs_uiRotateGestures;
            if (typedArrayObtainStyledAttributes.hasValue(i4)) {
                huaweiMapOptions.j = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(i4, true));
            }
            int i5 = R.styleable.MapAttrs_uiTiltGestures;
            if (typedArrayObtainStyledAttributes.hasValue(i5)) {
                huaweiMapOptions.i = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(i5, true));
            }
            huaweiMapOptions.b = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(R.styleable.MapAttrs_zOrderOnTop, false));
            huaweiMapOptions.c = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(R.styleable.MapAttrs_useViewLifecycle, true));
            huaweiMapOptions.k = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(R.styleable.MapAttrs_liteMode, false));
            huaweiMapOptions.q = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(R.styleable.MapAttrs_uiScrollGesturesDuringRotateOrZoom, false));
            huaweiMapOptions.l = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(R.styleable.MapAttrs_uiMapToolbar, false));
            huaweiMapOptions.m = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(R.styleable.MapAttrs_ambientEnabled, false));
            huaweiMapOptions.n = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(R.styleable.MapAttrs_cameraMinZoomPreference, BitmapDescriptorFactory.HUE_RED));
            huaweiMapOptions.o = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(R.styleable.MapAttrs_cameraMaxZoomPreference, 22.0f));
            huaweiMapOptions.r = typedArrayObtainStyledAttributes.getString(R.styleable.MapAttrs_styleId);
            huaweiMapOptions.s = typedArrayObtainStyledAttributes.getString(R.styleable.MapAttrs_previewId);
            huaweiMapOptions.t = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(R.styleable.MapAttrs_supportChina, false));
            huaweiMapOptions.latLngBoundsForCameraTarget(buildLatLngBounds(context, attributeSet));
            typedArrayObtainStyledAttributes.recycle();
            return huaweiMapOptions;
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public HuaweiMapOptions ambientEnabled(boolean z) {
        this.m = Boolean.valueOf(z);
        return this;
    }

    public HuaweiMapOptions camera(CameraPosition cameraPosition) {
        this.d = cameraPosition;
        return this;
    }

    public HuaweiMapOptions compassEnabled(boolean z) {
        this.f = Boolean.valueOf(z);
        return this;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Boolean getAmbientEnabled() {
        return Boolean.FALSE;
    }

    public CameraPosition getCamera() {
        return this.d;
    }

    public Boolean getCompassEnabled() {
        return this.f;
    }

    public LatLngBounds getLatLngBoundsForCameraTarget() {
        return this.p;
    }

    public Boolean getLiteMode() {
        return this.k;
    }

    public Boolean getMapToolbarEnabled() {
        return Boolean.FALSE;
    }

    public int getMapType() {
        return this.a;
    }

    public Float getMaxZoomPreference() {
        return this.o;
    }

    public Float getMinZoomPreference() {
        return this.n;
    }

    public String getPreviewId() {
        return this.s;
    }

    public Boolean getRotateGesturesEnabled() {
        return this.j;
    }

    public Boolean getScrollGesturesEnabled() {
        return this.g;
    }

    public String getStyleId() {
        return this.r;
    }

    public Boolean getSupportChina() {
        return this.t;
    }

    public Boolean getTiltGesturesEnabled() {
        return this.i;
    }

    public Boolean getUseViewLifecycleInFragment() {
        return this.c;
    }

    public Boolean getZOrderOnTop() {
        return this.b;
    }

    public Boolean getZoomControlsEnabled() {
        return this.e;
    }

    public Boolean getZoomGesturesEnabled() {
        return this.h;
    }

    public HuaweiMapOptions isChinaSupported(boolean z) {
        this.t = Boolean.valueOf(z);
        return this;
    }

    public HuaweiMapOptions latLngBoundsForCameraTarget(LatLngBounds latLngBounds) {
        this.p = latLngBounds;
        return this;
    }

    public HuaweiMapOptions liteMode(boolean z) {
        this.k = Boolean.valueOf(z);
        return this;
    }

    public HuaweiMapOptions mapToolbarEnabled(boolean z) {
        this.l = Boolean.valueOf(z);
        return this;
    }

    public HuaweiMapOptions mapType(int i) {
        this.a = i;
        return this;
    }

    public HuaweiMapOptions maxZoomPreference(float f) {
        this.o = Float.valueOf(f);
        return this;
    }

    public HuaweiMapOptions minZoomPreference(float f) {
        this.n = Float.valueOf(f);
        return this;
    }

    public HuaweiMapOptions previewId(String str) {
        this.s = str;
        return this;
    }

    public HuaweiMapOptions rotateGesturesEnabled(boolean z) {
        this.j = Boolean.valueOf(z);
        return this;
    }

    public HuaweiMapOptions scrollGesturesEnabled(boolean z) {
        this.g = Boolean.valueOf(z);
        return this;
    }

    public HuaweiMapOptions styleId(String str) {
        this.r = str;
        return this;
    }

    public HuaweiMapOptions tiltGesturesEnabled(boolean z) {
        this.i = Boolean.valueOf(z);
        return this;
    }

    public String toString() {
        return "HuaweiMapOptions{mapType=" + this.a + ", zOrderOnTop=" + this.b + ", isUseViewLifecycleInFragment=" + this.c + ", cameraPosition=" + this.d + ", isZoomControlsEnabled=" + this.e + ", isCompassEnabled=" + this.f + ", isScrollGesturesEnabled=" + this.g + ", isZoomGesturesEnabled=" + this.h + ", isTiltGesturesEnabled=" + this.i + ", isRotateGesturesEnabled=" + this.j + ", isLiteMode=" + this.k + ", isMapToolbarEnabled=" + this.l + ", isAmbientEnabled=" + this.m + ", minZoomLevel=" + this.n + ", maxZoomLevel=" + this.o + ", latLngBounds=" + this.p + ", styleId=" + this.r + ", previewId=" + this.s + ", isChinaSupported=" + this.t + '}';
    }

    public HuaweiMapOptions useViewLifecycleInFragment(boolean z) {
        this.c = Boolean.valueOf(z);
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ParcelWrite parcelWrite = new ParcelWrite(parcel);
        int iBeginObjectHeader = parcelWrite.beginObjectHeader();
        parcelWrite.writeInt(2, this.a);
        parcelWrite.writeBooleanObject(3, this.b);
        parcelWrite.writeBooleanObject(4, this.c);
        parcelWrite.writeBooleanObject(5, this.e);
        parcelWrite.writeBooleanObject(6, this.f);
        parcelWrite.writeBooleanObject(7, this.g);
        parcelWrite.writeBooleanObject(8, this.h);
        parcelWrite.writeBooleanObject(9, this.i);
        parcelWrite.writeBooleanObject(10, this.j);
        parcelWrite.writeBooleanObject(11, this.k);
        parcelWrite.writeBooleanObject(12, this.l);
        parcelWrite.writeBooleanObject(13, this.m);
        parcelWrite.writeFloatObject(14, this.n, true);
        parcelWrite.writeFloatObject(15, this.o, true);
        parcelWrite.writeParcelable(16, this.p, i, false);
        parcelWrite.writeParcelable(17, this.d, i, false);
        parcelWrite.writeBooleanObject(18, this.q);
        parcelWrite.writeString(19, this.r, false);
        parcelWrite.writeString(20, this.s, false);
        parcelWrite.writeBooleanObject(21, this.t);
        parcelWrite.finishObjectHeader(iBeginObjectHeader);
    }

    public HuaweiMapOptions zOrderOnTop(boolean z) {
        this.b = Boolean.valueOf(z);
        return this;
    }

    public HuaweiMapOptions zoomControlsEnabled(boolean z) {
        this.e = Boolean.valueOf(z);
        return this;
    }

    public HuaweiMapOptions zoomGesturesEnabled(boolean z) {
        this.h = Boolean.valueOf(z);
        return this;
    }
}
