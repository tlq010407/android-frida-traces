package org.telegram.messenger;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.opengl.GLSurfaceView;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.util.Consumer;
import com.huawei.hms.maps.CameraUpdate;
import com.huawei.hms.maps.CameraUpdateFactory;
import com.huawei.hms.maps.HuaweiMap;
import com.huawei.hms.maps.MapView;
import com.huawei.hms.maps.MapsInitializer;
import com.huawei.hms.maps.OnMapReadyCallback;
import com.huawei.hms.maps.Projection;
import com.huawei.hms.maps.UiSettings;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import com.huawei.hms.maps.model.CameraPosition;
import com.huawei.hms.maps.model.Circle;
import com.huawei.hms.maps.model.CircleOptions;
import com.huawei.hms.maps.model.Dash;
import com.huawei.hms.maps.model.Gap;
import com.huawei.hms.maps.model.LatLng;
import com.huawei.hms.maps.model.LatLngBounds;
import com.huawei.hms.maps.model.MapStyleOptions;
import com.huawei.hms.maps.model.Marker;
import com.huawei.hms.maps.model.MarkerOptions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.telegram.messenger.HuaweiMapsProvider;
import org.telegram.messenger.IMapsProvider;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class HuaweiMapsProvider implements IMapsProvider {

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static final class HuaweiCameraUpdate implements IMapsProvider.ICameraUpdate {
        private CameraUpdate cameraUpdate;

        private HuaweiCameraUpdate(CameraUpdate cameraUpdate) {
            this.cameraUpdate = cameraUpdate;
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static final class HuaweiCircleOptions implements IMapsProvider.ICircleOptions {
        private CircleOptions circleOptions;

        private HuaweiCircleOptions() {
            this.circleOptions = new CircleOptions();
        }

        @Override // org.telegram.messenger.IMapsProvider.ICircleOptions
        public IMapsProvider.ICircleOptions center(IMapsProvider.LatLng latLng) {
            this.circleOptions.center(new LatLng(latLng.latitude, latLng.longitude));
            return this;
        }

        @Override // org.telegram.messenger.IMapsProvider.ICircleOptions
        public IMapsProvider.ICircleOptions fillColor(int i) {
            this.circleOptions.fillColor(i);
            return this;
        }

        @Override // org.telegram.messenger.IMapsProvider.ICircleOptions
        public IMapsProvider.ICircleOptions radius(double d) {
            this.circleOptions.radius(d);
            return this;
        }

        @Override // org.telegram.messenger.IMapsProvider.ICircleOptions
        public IMapsProvider.ICircleOptions strokeColor(int i) {
            this.circleOptions.strokeColor(i);
            return this;
        }

        @Override // org.telegram.messenger.IMapsProvider.ICircleOptions
        public IMapsProvider.ICircleOptions strokePattern(List<IMapsProvider.PatternItem> list) {
            Parcelable gap;
            ArrayList arrayList = new ArrayList();
            for (IMapsProvider.PatternItem patternItem : list) {
                if (patternItem instanceof IMapsProvider.PatternItem.Gap) {
                    gap = new Gap(((IMapsProvider.PatternItem.Gap) patternItem).length);
                } else if (patternItem instanceof IMapsProvider.PatternItem.Dash) {
                    gap = new Dash(((IMapsProvider.PatternItem.Dash) patternItem).length);
                }
                arrayList.add(gap);
            }
            this.circleOptions.strokePattern(arrayList);
            return this;
        }

        @Override // org.telegram.messenger.IMapsProvider.ICircleOptions
        public IMapsProvider.ICircleOptions strokeWidth(int i) {
            this.circleOptions.strokeWidth(i);
            return this;
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static final class HuaweiLatLngBounds implements IMapsProvider.ILatLngBounds {
        private LatLngBounds bounds;

        private HuaweiLatLngBounds(LatLngBounds latLngBounds) {
            this.bounds = latLngBounds;
        }

        @Override // org.telegram.messenger.IMapsProvider.ILatLngBounds
        public IMapsProvider.LatLng getCenter() {
            LatLng center = this.bounds.getCenter();
            return new IMapsProvider.LatLng(center.latitude, center.longitude);
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static final class HuaweiLatLngBoundsBuilder implements IMapsProvider.ILatLngBoundsBuilder {
        private LatLngBounds.Builder builder;

        private HuaweiLatLngBoundsBuilder() {
            this.builder = new LatLngBounds.Builder();
        }

        @Override // org.telegram.messenger.IMapsProvider.ILatLngBoundsBuilder
        public IMapsProvider.ILatLngBounds build() {
            return new HuaweiLatLngBounds(this.builder.build());
        }

        @Override // org.telegram.messenger.IMapsProvider.ILatLngBoundsBuilder
        public IMapsProvider.ILatLngBoundsBuilder include(IMapsProvider.LatLng latLng) {
            this.builder.include(new LatLng(latLng.latitude, latLng.longitude));
            return this;
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static final class HuaweiMapImpl implements IMapsProvider.IMap {
        private HuaweiMap huaweiMap;
        private Map<Circle, HuaweiCircle> implToAbsCircleMap;
        private Map<Marker, HuaweiMarker> implToAbsMarkerMap;

        public final class HuaweiCircle implements IMapsProvider.ICircle {
            private Circle circle;

            private HuaweiCircle(Circle circle) {
                this.circle = circle;
            }

            @Override // org.telegram.messenger.IMapsProvider.ICircle
            public double getRadius() {
                return this.circle.getRadius();
            }

            @Override // org.telegram.messenger.IMapsProvider.ICircle
            public void remove() {
                this.circle.remove();
                HuaweiMapImpl.this.implToAbsCircleMap.remove(this.circle);
            }

            @Override // org.telegram.messenger.IMapsProvider.ICircle
            public void setCenter(IMapsProvider.LatLng latLng) {
                this.circle.setCenter(new LatLng(latLng.latitude, latLng.longitude));
            }

            @Override // org.telegram.messenger.IMapsProvider.ICircle
            public void setFillColor(int i) {
                this.circle.setFillColor(i);
            }

            @Override // org.telegram.messenger.IMapsProvider.ICircle
            public void setRadius(double d) {
                this.circle.setRadius(d);
            }

            @Override // org.telegram.messenger.IMapsProvider.ICircle
            public void setStrokeColor(int i) {
                this.circle.setStrokeColor(i);
            }
        }

        public final class HuaweiMarker implements IMapsProvider.IMarker {
            private Marker marker;

            private HuaweiMarker(Marker marker) {
                this.marker = marker;
            }

            @Override // org.telegram.messenger.IMapsProvider.IMarker
            public IMapsProvider.LatLng getPosition() {
                LatLng position = this.marker.getPosition();
                return new IMapsProvider.LatLng(position.latitude, position.longitude);
            }

            @Override // org.telegram.messenger.IMapsProvider.IMarker
            public Object getTag() {
                return this.marker.getTag();
            }

            @Override // org.telegram.messenger.IMapsProvider.IMarker
            public void remove() {
                this.marker.remove();
                HuaweiMapImpl.this.implToAbsMarkerMap.remove(this.marker);
            }

            @Override // org.telegram.messenger.IMapsProvider.IMarker
            public void setIcon(int i) {
                this.marker.setIcon(BitmapDescriptorFactory.fromResource(i));
            }

            @Override // org.telegram.messenger.IMapsProvider.IMarker
            public void setIcon(Bitmap bitmap) {
                this.marker.setIcon(BitmapDescriptorFactory.fromBitmap(bitmap));
            }

            @Override // org.telegram.messenger.IMapsProvider.IMarker
            public void setPosition(IMapsProvider.LatLng latLng) {
                this.marker.setPosition(new LatLng(latLng.latitude, latLng.longitude));
            }

            @Override // org.telegram.messenger.IMapsProvider.IMarker
            public void setRotation(int i) {
                this.marker.setRotation(i);
            }

            @Override // org.telegram.messenger.IMapsProvider.IMarker
            public void setTag(Object obj) {
                this.marker.setTag(obj);
            }
        }

        private HuaweiMapImpl(HuaweiMap huaweiMap) {
            this.implToAbsMarkerMap = new HashMap();
            this.implToAbsCircleMap = new HashMap();
            this.huaweiMap = huaweiMap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$setOnCameraMoveStartedListener$0(IMapsProvider.OnCameraMoveStartedListener onCameraMoveStartedListener, int i) {
            int i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    i2 = 1;
                }
            }
            onCameraMoveStartedListener.onCameraMoveStarted(i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$setOnMarkerClickListener$1(IMapsProvider.OnMarkerClickListener onMarkerClickListener, Marker marker) {
            HuaweiMarker huaweiMarker = this.implToAbsMarkerMap.get(marker);
            if (huaweiMarker == null) {
                huaweiMarker = new HuaweiMarker(marker);
                this.implToAbsMarkerMap.put(marker, huaweiMarker);
            }
            return onMarkerClickListener.onClick(huaweiMarker);
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public IMapsProvider.ICircle addCircle(IMapsProvider.ICircleOptions iCircleOptions) {
            Circle circleAddCircle = this.huaweiMap.addCircle(((HuaweiCircleOptions) iCircleOptions).circleOptions);
            HuaweiCircle huaweiCircle = new HuaweiCircle(circleAddCircle);
            this.implToAbsCircleMap.put(circleAddCircle, huaweiCircle);
            return huaweiCircle;
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public IMapsProvider.IMarker addMarker(IMapsProvider.IMarkerOptions iMarkerOptions) {
            Marker markerAddMarker = this.huaweiMap.addMarker(((HuaweiMarkerOptions) iMarkerOptions).markerOptions);
            HuaweiMarker huaweiMarker = new HuaweiMarker(markerAddMarker);
            this.implToAbsMarkerMap.put(markerAddMarker, huaweiMarker);
            return huaweiMarker;
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public void animateCamera(IMapsProvider.ICameraUpdate iCameraUpdate) {
            this.huaweiMap.animateCamera(((HuaweiCameraUpdate) iCameraUpdate).cameraUpdate);
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public void animateCamera(IMapsProvider.ICameraUpdate iCameraUpdate, int i, final IMapsProvider.ICancelableCallback iCancelableCallback) {
            this.huaweiMap.animateCamera(((HuaweiCameraUpdate) iCameraUpdate).cameraUpdate, i, iCancelableCallback == null ? null : new HuaweiMap.CancelableCallback() { // from class: org.telegram.messenger.HuaweiMapsProvider.HuaweiMapImpl.2
                @Override // com.huawei.hms.maps.HuaweiMap.CancelableCallback
                public void onCancel() {
                    iCancelableCallback.onCancel();
                }

                @Override // com.huawei.hms.maps.HuaweiMap.CancelableCallback
                public void onFinish() {
                    iCancelableCallback.onFinish();
                }
            });
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public void animateCamera(IMapsProvider.ICameraUpdate iCameraUpdate, final IMapsProvider.ICancelableCallback iCancelableCallback) {
            this.huaweiMap.animateCamera(((HuaweiCameraUpdate) iCameraUpdate).cameraUpdate, iCancelableCallback == null ? null : new HuaweiMap.CancelableCallback() { // from class: org.telegram.messenger.HuaweiMapsProvider.HuaweiMapImpl.1
                @Override // com.huawei.hms.maps.HuaweiMap.CancelableCallback
                public void onCancel() {
                    iCancelableCallback.onCancel();
                }

                @Override // com.huawei.hms.maps.HuaweiMap.CancelableCallback
                public void onFinish() {
                    iCancelableCallback.onFinish();
                }
            });
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public IMapsProvider.CameraPosition getCameraPosition() {
            CameraPosition cameraPosition = this.huaweiMap.getCameraPosition();
            LatLng latLng = cameraPosition.target;
            return new IMapsProvider.CameraPosition(new IMapsProvider.LatLng(latLng.latitude, latLng.longitude), cameraPosition.zoom);
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public float getMaxZoomLevel() {
            return this.huaweiMap.getMaxZoomLevel();
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public float getMinZoomLevel() {
            return this.huaweiMap.getMinZoomLevel();
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public IMapsProvider.IProjection getProjection() {
            return new HuaweiProjection(this.huaweiMap.getProjection());
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public IMapsProvider.IUISettings getUiSettings() {
            return new HuaweiUISettings(this.huaweiMap.getUiSettings());
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public void moveCamera(IMapsProvider.ICameraUpdate iCameraUpdate) {
            this.huaweiMap.moveCamera(((HuaweiCameraUpdate) iCameraUpdate).cameraUpdate);
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public void setMapStyle(IMapsProvider.IMapStyleOptions iMapStyleOptions) {
            this.huaweiMap.setMapStyle(iMapStyleOptions == null ? null : ((HuaweiMapStyleOptions) iMapStyleOptions).mapStyleOptions);
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public void setMapType(int i) {
            HuaweiMap huaweiMap;
            int i2 = 1;
            if (i == 0) {
                huaweiMap = this.huaweiMap;
            } else if (i == 1) {
                this.huaweiMap.setMapType(2);
                return;
            } else {
                if (i != 2) {
                    return;
                }
                huaweiMap = this.huaweiMap;
                i2 = 4;
            }
            huaweiMap.setMapType(i2);
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        @SuppressLint({"MissingPermission"})
        public void setMyLocationEnabled(boolean z) {
            this.huaweiMap.setMyLocationEnabled(z);
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public void setOnCameraIdleListener(final Runnable runnable) {
            HuaweiMap huaweiMap = this.huaweiMap;
            Objects.requireNonNull(runnable);
            huaweiMap.setOnCameraIdleListener(new HuaweiMap.OnCameraIdleListener() { // from class: org.telegram.messenger.HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda0
                @Override // com.huawei.hms.maps.HuaweiMap.OnCameraIdleListener
                public final void onCameraIdle() {
                    runnable.run();
                }
            });
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public void setOnCameraMoveListener(final Runnable runnable) {
            HuaweiMap huaweiMap = this.huaweiMap;
            Objects.requireNonNull(runnable);
            huaweiMap.setOnCameraMoveListener(new HuaweiMap.OnCameraMoveListener() { // from class: org.telegram.messenger.HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda3
                @Override // com.huawei.hms.maps.HuaweiMap.OnCameraMoveListener
                public final void onCameraMove() {
                    runnable.run();
                }
            });
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public void setOnCameraMoveStartedListener(final IMapsProvider.OnCameraMoveStartedListener onCameraMoveStartedListener) {
            this.huaweiMap.setOnCameraMoveStartedListener(new HuaweiMap.OnCameraMoveStartedListener() { // from class: org.telegram.messenger.HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda1
                @Override // com.huawei.hms.maps.HuaweiMap.OnCameraMoveStartedListener
                public final void onCameraMoveStarted(int i) {
                    HuaweiMapsProvider.HuaweiMapImpl.lambda$setOnCameraMoveStartedListener$0(onCameraMoveStartedListener, i);
                }
            });
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public void setOnMapLoadedCallback(final Runnable runnable) {
            HuaweiMap huaweiMap = this.huaweiMap;
            Objects.requireNonNull(runnable);
            huaweiMap.setOnMapLoadedCallback(new HuaweiMap.OnMapLoadedCallback() { // from class: org.telegram.messenger.HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda2
                @Override // com.huawei.hms.maps.HuaweiMap.OnMapLoadedCallback
                public final void onMapLoaded() {
                    runnable.run();
                }
            });
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public void setOnMarkerClickListener(final IMapsProvider.OnMarkerClickListener onMarkerClickListener) {
            this.huaweiMap.setOnMarkerClickListener(new HuaweiMap.OnMarkerClickListener() { // from class: org.telegram.messenger.HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda4
                @Override // com.huawei.hms.maps.HuaweiMap.OnMarkerClickListener
                public final boolean onMarkerClick(Marker marker) {
                    return this.f$0.lambda$setOnMarkerClickListener$1(onMarkerClickListener, marker);
                }
            });
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public void setOnMyLocationChangeListener(Consumer consumer) {
        }

        @Override // org.telegram.messenger.IMapsProvider.IMap
        public void setPadding(int i, int i2, int i3, int i4) {
            this.huaweiMap.setPadding(i, i2, i3, i4);
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static final class HuaweiMapStyleOptions implements IMapsProvider.IMapStyleOptions {
        private MapStyleOptions mapStyleOptions;

        private HuaweiMapStyleOptions(MapStyleOptions mapStyleOptions) {
            this.mapStyleOptions = mapStyleOptions;
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static final class HuaweiMapView implements IMapsProvider.IMapView {
        private IMapsProvider.ITouchInterceptor dispatchInterceptor;
        private GLSurfaceView glSurfaceView;
        private IMapsProvider.ITouchInterceptor interceptInterceptor;
        private MapView mapView;
        private Runnable onLayoutListener;

        /* renamed from: org.telegram.messenger.HuaweiMapsProvider$HuaweiMapView$1, reason: invalid class name */
        class AnonymousClass1 extends MapView {
            AnonymousClass1(Context context) {
                super(context);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ Boolean lambda$dispatchTouchEvent$0(MotionEvent motionEvent) {
                return Boolean.valueOf(super.dispatchTouchEvent(motionEvent));
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ Boolean lambda$onInterceptTouchEvent$1(MotionEvent motionEvent) {
                return Boolean.valueOf(super.onInterceptTouchEvent(motionEvent));
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                return HuaweiMapView.this.dispatchInterceptor != null ? HuaweiMapView.this.dispatchInterceptor.onInterceptTouchEvent(motionEvent, new IMapsProvider.ICallableMethod() { // from class: org.telegram.messenger.HuaweiMapsProvider$HuaweiMapView$1$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.IMapsProvider.ICallableMethod
                    public final Object call(Object obj) {
                        return this.f$0.lambda$dispatchTouchEvent$0((MotionEvent) obj);
                    }
                }) : super.dispatchTouchEvent(motionEvent);
            }

            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                return HuaweiMapView.this.interceptInterceptor != null ? HuaweiMapView.this.interceptInterceptor.onInterceptTouchEvent(motionEvent, new IMapsProvider.ICallableMethod() { // from class: org.telegram.messenger.HuaweiMapsProvider$HuaweiMapView$1$$ExternalSyntheticLambda1
                    @Override // org.telegram.messenger.IMapsProvider.ICallableMethod
                    public final Object call(Object obj) {
                        return this.f$0.lambda$onInterceptTouchEvent$1((MotionEvent) obj);
                    }
                }) : super.onInterceptTouchEvent(motionEvent);
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                if (HuaweiMapView.this.onLayoutListener != null) {
                    HuaweiMapView.this.onLayoutListener.run();
                }
            }
        }

        private HuaweiMapView(Context context) {
            this.mapView = new AnonymousClass1(context);
        }

        private void findGlSurfaceView(View view) {
            if (view instanceof GLSurfaceView) {
                this.glSurfaceView = (GLSurfaceView) view;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    findGlSurfaceView(viewGroup.getChildAt(i));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$getMapAsync$0(Consumer consumer, HuaweiMap huaweiMap) {
            consumer.accept(new HuaweiMapImpl(huaweiMap));
            findGlSurfaceView(this.mapView);
        }

        @Override // org.telegram.messenger.IMapsProvider.IMapView
        public GLSurfaceView getGlSurfaceView() {
            return this.glSurfaceView;
        }

        @Override // org.telegram.messenger.IMapsProvider.IMapView
        public void getMapAsync(final Consumer consumer) {
            this.mapView.getMapAsync(new OnMapReadyCallback() { // from class: org.telegram.messenger.HuaweiMapsProvider$HuaweiMapView$$ExternalSyntheticLambda0
                @Override // com.huawei.hms.maps.OnMapReadyCallback
                public final void onMapReady(HuaweiMap huaweiMap) {
                    this.f$0.lambda$getMapAsync$0(consumer, huaweiMap);
                }
            });
        }

        @Override // org.telegram.messenger.IMapsProvider.IMapView
        public View getView() {
            return this.mapView;
        }

        @Override // org.telegram.messenger.IMapsProvider.IMapView
        public void onCreate(Bundle bundle) {
            this.mapView.onCreate(bundle);
        }

        @Override // org.telegram.messenger.IMapsProvider.IMapView
        public void onDestroy() {
            this.mapView.onDestroy();
        }

        @Override // org.telegram.messenger.IMapsProvider.IMapView
        public void onLowMemory() {
            this.mapView.onLowMemory();
        }

        @Override // org.telegram.messenger.IMapsProvider.IMapView
        public void onPause() {
            this.mapView.onPause();
        }

        @Override // org.telegram.messenger.IMapsProvider.IMapView
        public void onResume() {
            this.mapView.onResume();
        }

        @Override // org.telegram.messenger.IMapsProvider.IMapView
        public void setOnDispatchTouchEventInterceptor(IMapsProvider.ITouchInterceptor iTouchInterceptor) {
            this.dispatchInterceptor = iTouchInterceptor;
        }

        @Override // org.telegram.messenger.IMapsProvider.IMapView
        public void setOnInterceptTouchEventInterceptor(IMapsProvider.ITouchInterceptor iTouchInterceptor) {
            this.interceptInterceptor = iTouchInterceptor;
        }

        @Override // org.telegram.messenger.IMapsProvider.IMapView
        public void setOnLayoutListener(Runnable runnable) {
            this.onLayoutListener = runnable;
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static final class HuaweiMarkerOptions implements IMapsProvider.IMarkerOptions {
        private MarkerOptions markerOptions;

        private HuaweiMarkerOptions() {
            this.markerOptions = new MarkerOptions();
        }

        @Override // org.telegram.messenger.IMapsProvider.IMarkerOptions
        public IMapsProvider.IMarkerOptions anchor(float f, float f2) {
            this.markerOptions.anchor(f, f2);
            return this;
        }

        @Override // org.telegram.messenger.IMapsProvider.IMarkerOptions
        public IMapsProvider.IMarkerOptions flat(boolean z) {
            this.markerOptions.flat(z);
            return this;
        }

        @Override // org.telegram.messenger.IMapsProvider.IMarkerOptions
        public IMapsProvider.IMarkerOptions icon(int i) {
            this.markerOptions.icon(BitmapDescriptorFactory.fromResource(i));
            return this;
        }

        @Override // org.telegram.messenger.IMapsProvider.IMarkerOptions
        public IMapsProvider.IMarkerOptions icon(Bitmap bitmap) {
            this.markerOptions.icon(BitmapDescriptorFactory.fromBitmap(bitmap));
            return this;
        }

        @Override // org.telegram.messenger.IMapsProvider.IMarkerOptions
        public IMapsProvider.IMarkerOptions position(IMapsProvider.LatLng latLng) {
            this.markerOptions.position(new LatLng(latLng.latitude, latLng.longitude));
            return this;
        }

        @Override // org.telegram.messenger.IMapsProvider.IMarkerOptions
        public IMapsProvider.IMarkerOptions snippet(String str) {
            this.markerOptions.snippet(str);
            return this;
        }

        @Override // org.telegram.messenger.IMapsProvider.IMarkerOptions
        public IMapsProvider.IMarkerOptions title(String str) {
            this.markerOptions.title(str);
            return this;
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static final class HuaweiProjection implements IMapsProvider.IProjection {
        private Projection projection;

        private HuaweiProjection(Projection projection) {
            this.projection = projection;
        }

        @Override // org.telegram.messenger.IMapsProvider.IProjection
        public Point toScreenLocation(IMapsProvider.LatLng latLng) {
            return this.projection.toScreenLocation(new LatLng(latLng.latitude, latLng.longitude));
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static final class HuaweiUISettings implements IMapsProvider.IUISettings {
        private UiSettings uiSettings;

        private HuaweiUISettings(UiSettings uiSettings) {
            this.uiSettings = uiSettings;
        }

        @Override // org.telegram.messenger.IMapsProvider.IUISettings
        public void setCompassEnabled(boolean z) {
            this.uiSettings.setCompassEnabled(z);
        }

        @Override // org.telegram.messenger.IMapsProvider.IUISettings
        public void setMyLocationButtonEnabled(boolean z) {
            this.uiSettings.setMyLocationButtonEnabled(z);
        }

        @Override // org.telegram.messenger.IMapsProvider.IUISettings
        public void setZoomControlsEnabled(boolean z) {
            this.uiSettings.setZoomControlsEnabled(z);
        }
    }

    public HuaweiMapsProvider() {
        initializeMaps(ApplicationLoader.applicationContext);
    }

    @Override // org.telegram.messenger.IMapsProvider
    public int getInstallMapsString() {
        return R.string.InstallHuaweiMaps;
    }

    @Override // org.telegram.messenger.IMapsProvider
    public String getMapsAppPackageName() {
        return "com.huawei.maps.app";
    }

    @Override // org.telegram.messenger.IMapsProvider
    public void initializeMaps(Context context) {
        MapsInitializer.initialize(context);
    }

    @Override // org.telegram.messenger.IMapsProvider
    public IMapsProvider.IMapStyleOptions loadRawResourceStyle(Context context, int i) {
        return new HuaweiMapStyleOptions(MapStyleOptions.loadRawResourceStyle(context, i));
    }

    @Override // org.telegram.messenger.IMapsProvider
    public IMapsProvider.ICameraUpdate newCameraUpdateLatLng(IMapsProvider.LatLng latLng) {
        return new HuaweiCameraUpdate(CameraUpdateFactory.newLatLng(new LatLng(latLng.latitude, latLng.longitude)));
    }

    @Override // org.telegram.messenger.IMapsProvider
    public IMapsProvider.ICameraUpdate newCameraUpdateLatLngBounds(IMapsProvider.ILatLngBounds iLatLngBounds, int i) {
        return new HuaweiCameraUpdate(CameraUpdateFactory.newLatLngBounds(((HuaweiLatLngBounds) iLatLngBounds).bounds, i));
    }

    @Override // org.telegram.messenger.IMapsProvider
    public IMapsProvider.ICameraUpdate newCameraUpdateLatLngZoom(IMapsProvider.LatLng latLng, float f) {
        return new HuaweiCameraUpdate(CameraUpdateFactory.newLatLngZoom(new LatLng(latLng.latitude, latLng.longitude), f));
    }

    @Override // org.telegram.messenger.IMapsProvider
    public IMapsProvider.ICircleOptions onCreateCircleOptions() {
        return new HuaweiCircleOptions();
    }

    @Override // org.telegram.messenger.IMapsProvider
    public IMapsProvider.ILatLngBoundsBuilder onCreateLatLngBoundsBuilder() {
        return new HuaweiLatLngBoundsBuilder();
    }

    @Override // org.telegram.messenger.IMapsProvider
    public IMapsProvider.IMapView onCreateMapView(Context context) {
        return new HuaweiMapView(context);
    }

    @Override // org.telegram.messenger.IMapsProvider
    public IMapsProvider.IMarkerOptions onCreateMarkerOptions() {
        return new HuaweiMarkerOptions();
    }
}
