package com.huawei.hms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.huawei.hms.feature.dynamic.IObjectWrapper;
import com.huawei.hms.maps.internal.IProjectionDelegate;
import com.huawei.hms.maps.internal.IUiSettingsDelegate;
import com.huawei.hms.maps.model.CameraPosition;
import com.huawei.hms.maps.model.CameraUpdateParam;
import com.huawei.hms.maps.model.CircleOptions;
import com.huawei.hms.maps.model.GroundOverlayOptions;
import com.huawei.hms.maps.model.HeatMapOptions;
import com.huawei.hms.maps.model.LatLngBounds;
import com.huawei.hms.maps.model.MapStyleOptions;
import com.huawei.hms.maps.model.MarkerOptions;
import com.huawei.hms.maps.model.PolygonOptions;
import com.huawei.hms.maps.model.PolylineOptions;
import com.huawei.hms.maps.model.TileOverlayOptions;
import com.huawei.hms.maps.model.internal.IBitmapDescriptorDelegate;
import com.huawei.hms.maps.model.internal.ICircleDelegate;
import com.huawei.hms.maps.model.internal.IGroundOverlayDelegate;
import com.huawei.hms.maps.model.internal.IHeatMapDelegate;
import com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate;
import com.huawei.hms.maps.model.internal.IMarkerDelegate;
import com.huawei.hms.maps.model.internal.IPolygonDelegate;
import com.huawei.hms.maps.model.internal.IPolylineDelegate;
import com.huawei.hms.maps.model.internal.ITileOverlayDelegate;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IHuaweiMapDelegate extends IInterface {

    public static abstract class Stub extends Binder implements IHuaweiMapDelegate {

        private static class Proxy implements IHuaweiMapDelegate {
            private IBinder a;

            Proxy(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public ICircleDelegate addCircle(CircleOptions circleOptions) {
                return ICircleDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 25, circleOptions));
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public IGroundOverlayDelegate addGroundOverlay(GroundOverlayOptions groundOverlayOptions) {
                return IGroundOverlayDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 28, groundOverlayOptions));
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public IHeatMapDelegate addHeatMap(String str, HeatMapOptions heatMapOptions) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.hms.maps.internal.IHuaweiMapDelegate");
                    parcelObtain.writeString(str);
                    if (heatMapOptions != null) {
                        parcelObtain.writeInt(1);
                        heatMapOptions.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.a.transact(74, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    IHeatMapDelegate iHeatMapDelegateAsInterface = IHeatMapDelegate.Stub.asInterface(parcelObtain2.readStrongBinder());
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return iHeatMapDelegateAsInterface;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public IMarkerDelegate addMarker(MarkerOptions markerOptions) {
                return IMarkerDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 24, markerOptions));
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public IPolygonDelegate addPolygon(PolygonOptions polygonOptions) {
                return IPolygonDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 26, polygonOptions));
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public IPolylineDelegate addPolyline(PolylineOptions polylineOptions) {
                return IPolylineDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 27, polylineOptions));
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public ITileOverlayDelegate addTileOverlay(TileOverlayOptions tileOverlayOptions) {
                return ITileOverlayDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 1, tileOverlayOptions));
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void animateCamera(CameraUpdateParam cameraUpdateParam) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 33, cameraUpdateParam);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void animateCameraWithCallback(CameraUpdateParam cameraUpdateParam, ICancelableCallback iCancelableCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.hms.maps.internal.IHuaweiMapDelegate");
                    if (cameraUpdateParam != null) {
                        parcelObtain.writeInt(1);
                        cameraUpdateParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iCancelableCallback != null ? iCancelableCallback.asBinder() : null);
                    this.a.transact(35, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void animateCameraWithDurationAndCallback(CameraUpdateParam cameraUpdateParam, int i, ICancelableCallback iCancelableCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.hms.maps.internal.IHuaweiMapDelegate");
                    if (cameraUpdateParam != null) {
                        parcelObtain.writeInt(1);
                        cameraUpdateParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i);
                    parcelObtain.writeStrongBinder(iCancelableCallback != null ? iCancelableCallback.asBinder() : null);
                    this.a.transact(36, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void clear() {
                com.huawei.hms.maps.model.internal.mab.i(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 32);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public IBitmapDescriptorDelegate getBitmapDescriptor() {
                return IBitmapDescriptorDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.j(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 68));
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public CameraPosition getCameraPosition() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.hms.maps.internal.IHuaweiMapDelegate");
                    this.a.transact(41, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? CameraPosition.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public IIndoorBuildingDelegate getFocusedBuilding() {
                return IIndoorBuildingDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.j(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 2));
            }

            public String getInterfaceDescriptor() {
                return "com.huawei.hms.maps.internal.IHuaweiMapDelegate";
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public int getMapType() {
                return com.huawei.hms.maps.model.internal.mab.b(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 10);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public float getMaxZoomLevel() {
                return com.huawei.hms.maps.model.internal.mab.c(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 3);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public float getMinZoomLevel() {
                return com.huawei.hms.maps.model.internal.mab.c(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 4);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public IProjectionDelegate getProjection() {
                return IProjectionDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.j(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 29));
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public IUiSettingsDelegate getUiSettings() {
                return IUiSettingsDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.j(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 22));
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public boolean isBuildingsEnabled() {
                return com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 5);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public boolean isIndoorEnabled() {
                return com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 11);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public boolean isMyLocationEnabled() {
                return com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 9);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public boolean isTrafficEnabled() {
                return com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 12);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void moveCamera(CameraUpdateParam cameraUpdateParam) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 34, cameraUpdateParam);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void previewId(String str) {
                com.huawei.hms.maps.model.internal.mab.a(str, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 72);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void resetMinMaxZoomPreference() {
                com.huawei.hms.maps.model.internal.mab.i(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 13);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setBuildingsEnabled(boolean z) {
                com.huawei.hms.maps.model.internal.mab.a(z, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 6);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setCameraIdleListener(IOnCameraIdleListener iOnCameraIdleListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnCameraIdleListener != null ? iOnCameraIdleListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 40);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setCameraMoveCanceledListener(IOnCameraMoveCanceledListener iOnCameraMoveCanceledListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnCameraMoveCanceledListener != null ? iOnCameraMoveCanceledListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 39);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setCameraMoveListener(IOnCameraMoveListener iOnCameraMoveListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnCameraMoveListener != null ? iOnCameraMoveListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 38);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setCameraMoveStartedListener(IOnCameraMoveStartedListener iOnCameraMoveStartedListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnCameraMoveStartedListener != null ? iOnCameraMoveStartedListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 37);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setCircleClickListener(IOnCircleClickListener iOnCircleClickListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnCircleClickListener != null ? iOnCircleClickListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 42);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setContentDescription(String str) {
                com.huawei.hms.maps.model.internal.mab.a(str, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 14);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setGcj02CoordinateEnabled(boolean z) {
                com.huawei.hms.maps.model.internal.mab.a(z, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 73);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setGeoPoliticalView(String str) {
                com.huawei.hms.maps.model.internal.mab.a(str, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 67);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public boolean setIndoorEnabled(boolean z) {
                return com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 15, z);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setInfoWindowAdapter(IInfoWindowAdapter iInfoWindowAdapter) {
                com.huawei.hms.maps.model.internal.mab.a(iInfoWindowAdapter != null ? iInfoWindowAdapter.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 45);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setLanguage(String str) {
                com.huawei.hms.maps.model.internal.mab.a(str, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 69);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setLatLngBoundsForCameraTarget(LatLngBounds latLngBounds) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 23, latLngBounds);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setLiteMode(boolean z) {
                com.huawei.hms.maps.model.internal.mab.a(z, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 31);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setLocationSource(ILocationSourceDelegate iLocationSourceDelegate) {
                com.huawei.hms.maps.model.internal.mab.a(iLocationSourceDelegate != null ? iLocationSourceDelegate.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 58);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public boolean setMapStyle(MapStyleOptions mapStyleOptions) {
                return com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 59, 0, mapStyleOptions).intValue() != 0;
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setMapType(int i) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 7, Integer.valueOf(i));
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setMarkerClickListener(IOnMarkerClickListener iOnMarkerClickListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnMarkerClickListener != null ? iOnMarkerClickListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 51);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setMarkerDragListener(IOnMarkerDragListener iOnMarkerDragListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnMarkerDragListener != null ? iOnMarkerDragListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 52);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setMarkersClustering(boolean z) {
                com.huawei.hms.maps.model.internal.mab.a(z, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 60);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setMaxZoomPreference(float f) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 16, Float.valueOf(f));
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setMinZoomPreference(float f) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 17, Float.valueOf(f));
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setMyLocationEnabled(boolean z) {
                com.huawei.hms.maps.model.internal.mab.a(z, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 8);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setOnGroundOverlayClickListener(IOnGroundOverlayClickListener iOnGroundOverlayClickListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnGroundOverlayClickListener != null ? iOnGroundOverlayClickListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 47);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setOnIndoorStateChangeListener(IOnIndoorStateChangeListener iOnIndoorStateChangeListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnIndoorStateChangeListener != null ? iOnIndoorStateChangeListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 48);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setOnInfoWindowClickListener(IOnInfoWindowClickListener iOnInfoWindowClickListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnInfoWindowClickListener != null ? iOnInfoWindowClickListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 46);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setOnInfoWindowCloseListener(IOnInfoWindowCloseListener iOnInfoWindowCloseListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnInfoWindowCloseListener != null ? iOnInfoWindowCloseListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 49);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setOnInfoWindowLongClickListener(IOnInfoWindowLongClickListener iOnInfoWindowLongClickListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnInfoWindowLongClickListener != null ? iOnInfoWindowLongClickListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 50);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setOnMapClickListener(IOnMapClickListener iOnMapClickListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnMapClickListener != null ? iOnMapClickListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 54);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setOnMapLoadedCallback(IOnMapLoadedCallback iOnMapLoadedCallback) {
                com.huawei.hms.maps.model.internal.mab.a(iOnMapLoadedCallback != null ? iOnMapLoadedCallback.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 30);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setOnMapLongClickListener(IOnMapLongClickListener iOnMapLongClickListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnMapLongClickListener != null ? iOnMapLongClickListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 53);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setOnMyLocationButtonClickListener(IOnMyLocationButtonClickListener iOnMyLocationButtonClickListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnMyLocationButtonClickListener != null ? iOnMyLocationButtonClickListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 55);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setOnMyLocationChangeListener(IOnMyLocationChangeListener iOnMyLocationChangeListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnMyLocationChangeListener != null ? iOnMyLocationChangeListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 56);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setOnMyLocationClickListener(IOnMyLocationClickListener iOnMyLocationClickListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnMyLocationClickListener != null ? iOnMyLocationClickListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 57);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setOnPoiClickListener(IOnPoiClickListener iOnPoiClickListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnPoiClickListener != null ? iOnPoiClickListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 61);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setOnPolygonClickListener(IOnPolygonClickListener iOnPolygonClickListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnPolygonClickListener != null ? iOnPolygonClickListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 62);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setOnPolylineClickListener(IOnPolylineClickListener iOnPolylineClickListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnPolylineClickListener != null ? iOnPolylineClickListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 63);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setPadding(int i, int i2, int i3, int i4) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 18, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setPointToCenter(int i, int i2) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 70, Integer.valueOf(i), Integer.valueOf(i2));
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setPolygonClickListener(IOnPolygonClickListener iOnPolygonClickListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnPolygonClickListener != null ? iOnPolygonClickListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 43);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setPolylineClickListener(IOnPolylineClickListener iOnPolylineClickListener) {
                com.huawei.hms.maps.model.internal.mab.a(iOnPolylineClickListener != null ? iOnPolylineClickListener.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 44);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setStyleId(String str) {
                com.huawei.hms.maps.model.internal.mab.a(str, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 71);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setTrafficEnabled(boolean z) {
                com.huawei.hms.maps.model.internal.mab.a(z, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 19);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void setWatermarkEnabled(boolean z) {
                com.huawei.hms.maps.model.internal.mab.a(z, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 20);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void snapshot(ISnapshotReadyCallback iSnapshotReadyCallback, IObjectWrapper iObjectWrapper) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 64, iSnapshotReadyCallback != null ? iSnapshotReadyCallback.asBinder() : null, iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void snapshotForTest(ISnapshotReadyCallback iSnapshotReadyCallback) {
                com.huawei.hms.maps.model.internal.mab.a(iSnapshotReadyCallback != null ? iSnapshotReadyCallback.asBinder() : null, this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 65);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public void stopAnimation() {
                com.huawei.hms.maps.model.internal.mab.i(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 66);
            }

            @Override // com.huawei.hms.maps.internal.IHuaweiMapDelegate
            public boolean useViewLifecycleWhenInFragment() {
                return com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IHuaweiMapDelegate", 21);
            }
        }

        public Stub() {
            attachInterface(this, "com.huawei.hms.maps.internal.IHuaweiMapDelegate");
        }

        public static IHuaweiMapDelegate asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.maps.internal.IHuaweiMapDelegate");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IHuaweiMapDelegate)) ? new Proxy(iBinder) : (IHuaweiMapDelegate) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    ICircleDelegate addCircle(CircleOptions circleOptions);

    IGroundOverlayDelegate addGroundOverlay(GroundOverlayOptions groundOverlayOptions);

    IHeatMapDelegate addHeatMap(String str, HeatMapOptions heatMapOptions);

    IMarkerDelegate addMarker(MarkerOptions markerOptions);

    IPolygonDelegate addPolygon(PolygonOptions polygonOptions);

    IPolylineDelegate addPolyline(PolylineOptions polylineOptions);

    ITileOverlayDelegate addTileOverlay(TileOverlayOptions tileOverlayOptions);

    void animateCamera(CameraUpdateParam cameraUpdateParam);

    void animateCameraWithCallback(CameraUpdateParam cameraUpdateParam, ICancelableCallback iCancelableCallback);

    void animateCameraWithDurationAndCallback(CameraUpdateParam cameraUpdateParam, int i, ICancelableCallback iCancelableCallback);

    void clear();

    IBitmapDescriptorDelegate getBitmapDescriptor();

    CameraPosition getCameraPosition();

    IIndoorBuildingDelegate getFocusedBuilding();

    int getMapType();

    float getMaxZoomLevel();

    float getMinZoomLevel();

    IProjectionDelegate getProjection();

    IUiSettingsDelegate getUiSettings();

    boolean isBuildingsEnabled();

    boolean isIndoorEnabled();

    boolean isMyLocationEnabled();

    boolean isTrafficEnabled();

    void moveCamera(CameraUpdateParam cameraUpdateParam);

    void previewId(String str);

    void resetMinMaxZoomPreference();

    void setBuildingsEnabled(boolean z);

    void setCameraIdleListener(IOnCameraIdleListener iOnCameraIdleListener);

    void setCameraMoveCanceledListener(IOnCameraMoveCanceledListener iOnCameraMoveCanceledListener);

    void setCameraMoveListener(IOnCameraMoveListener iOnCameraMoveListener);

    void setCameraMoveStartedListener(IOnCameraMoveStartedListener iOnCameraMoveStartedListener);

    void setCircleClickListener(IOnCircleClickListener iOnCircleClickListener);

    void setContentDescription(String str);

    void setGcj02CoordinateEnabled(boolean z);

    void setGeoPoliticalView(String str);

    boolean setIndoorEnabled(boolean z);

    void setInfoWindowAdapter(IInfoWindowAdapter iInfoWindowAdapter);

    void setLanguage(String str);

    void setLatLngBoundsForCameraTarget(LatLngBounds latLngBounds);

    void setLiteMode(boolean z);

    void setLocationSource(ILocationSourceDelegate iLocationSourceDelegate);

    boolean setMapStyle(MapStyleOptions mapStyleOptions);

    void setMapType(int i);

    void setMarkerClickListener(IOnMarkerClickListener iOnMarkerClickListener);

    void setMarkerDragListener(IOnMarkerDragListener iOnMarkerDragListener);

    void setMarkersClustering(boolean z);

    void setMaxZoomPreference(float f);

    void setMinZoomPreference(float f);

    void setMyLocationEnabled(boolean z);

    void setOnGroundOverlayClickListener(IOnGroundOverlayClickListener iOnGroundOverlayClickListener);

    void setOnIndoorStateChangeListener(IOnIndoorStateChangeListener iOnIndoorStateChangeListener);

    void setOnInfoWindowClickListener(IOnInfoWindowClickListener iOnInfoWindowClickListener);

    void setOnInfoWindowCloseListener(IOnInfoWindowCloseListener iOnInfoWindowCloseListener);

    void setOnInfoWindowLongClickListener(IOnInfoWindowLongClickListener iOnInfoWindowLongClickListener);

    void setOnMapClickListener(IOnMapClickListener iOnMapClickListener);

    void setOnMapLoadedCallback(IOnMapLoadedCallback iOnMapLoadedCallback);

    void setOnMapLongClickListener(IOnMapLongClickListener iOnMapLongClickListener);

    void setOnMyLocationButtonClickListener(IOnMyLocationButtonClickListener iOnMyLocationButtonClickListener);

    void setOnMyLocationChangeListener(IOnMyLocationChangeListener iOnMyLocationChangeListener);

    void setOnMyLocationClickListener(IOnMyLocationClickListener iOnMyLocationClickListener);

    void setOnPoiClickListener(IOnPoiClickListener iOnPoiClickListener);

    void setOnPolygonClickListener(IOnPolygonClickListener iOnPolygonClickListener);

    void setOnPolylineClickListener(IOnPolylineClickListener iOnPolylineClickListener);

    void setPadding(int i, int i2, int i3, int i4);

    void setPointToCenter(int i, int i2);

    void setPolygonClickListener(IOnPolygonClickListener iOnPolygonClickListener);

    void setPolylineClickListener(IOnPolylineClickListener iOnPolylineClickListener);

    void setStyleId(String str);

    void setTrafficEnabled(boolean z);

    void setWatermarkEnabled(boolean z);

    void snapshot(ISnapshotReadyCallback iSnapshotReadyCallback, IObjectWrapper iObjectWrapper);

    void snapshotForTest(ISnapshotReadyCallback iSnapshotReadyCallback);

    void stopAnimation();

    boolean useViewLifecycleWhenInFragment();
}
