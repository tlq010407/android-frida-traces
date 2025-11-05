package com.huawei.hms.maps.model;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.common.parcel.ParcelReader;
import com.huawei.hms.common.parcel.ParcelWrite;
import com.huawei.hms.maps.utils.LogM;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class CameraUpdateParam implements Parcelable {
    public static final Parcelable.Creator<CameraUpdateParam> CREATOR = new Parcelable.Creator<CameraUpdateParam>() { // from class: com.huawei.hms.maps.model.CameraUpdateParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CameraUpdateParam createFromParcel(Parcel parcel) {
            return new CameraUpdateParam(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CameraUpdateParam[] newArray(int i) {
            return new CameraUpdateParam[i];
        }
    };
    private CameraPosition a;
    private LatLng b;
    private NewLatLngBounds c;
    private NewLatLngBoundsWidthHeight d;
    private NewLatLngZoom e;
    private ScrollBy f;
    private ZoomByWithFocus g;
    private ZoomBy h;
    private ZoomTo i;

    public static class NewLatLngBounds implements Parcelable {
        public static final Parcelable.Creator<NewLatLngBounds> CREATOR = new Parcelable.Creator<NewLatLngBounds>() { // from class: com.huawei.hms.maps.model.CameraUpdateParam.NewLatLngBounds.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public NewLatLngBounds createFromParcel(Parcel parcel) {
                return new NewLatLngBounds(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public NewLatLngBounds[] newArray(int i) {
                return new NewLatLngBounds[i];
            }
        };
        private LatLngBounds a;
        private int b;

        public NewLatLngBounds() {
            this.a = null;
            this.b = Integer.MAX_VALUE;
        }

        protected NewLatLngBounds(Parcel parcel) {
            this.a = null;
            this.b = Integer.MAX_VALUE;
            ParcelReader parcelReader = new ParcelReader(parcel);
            this.a = (LatLngBounds) parcelReader.readParcelable(2, LatLngBounds.CREATOR, null);
            this.b = parcelReader.readInt(3, this.b);
        }

        public NewLatLngBounds(LatLngBounds latLngBounds, int i) {
            this.a = latLngBounds;
            this.b = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public LatLngBounds getBounds() {
            return this.a;
        }

        public int getPadding() {
            return this.b;
        }

        public void setBounds(LatLngBounds latLngBounds) {
            this.a = latLngBounds;
        }

        public void setPadding(int i) {
            this.b = i;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            ParcelWrite parcelWrite = new ParcelWrite(parcel);
            int iBeginObjectHeader = parcelWrite.beginObjectHeader();
            parcelWrite.writeParcelable(2, this.a, i, false);
            parcelWrite.writeInt(3, this.b);
            parcelWrite.finishObjectHeader(iBeginObjectHeader);
        }
    }

    public static class NewLatLngBoundsWidthHeight implements Parcelable {
        public static final Parcelable.Creator<NewLatLngBoundsWidthHeight> CREATOR = new Parcelable.Creator<NewLatLngBoundsWidthHeight>() { // from class: com.huawei.hms.maps.model.CameraUpdateParam.NewLatLngBoundsWidthHeight.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public NewLatLngBoundsWidthHeight createFromParcel(Parcel parcel) {
                return new NewLatLngBoundsWidthHeight(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public NewLatLngBoundsWidthHeight[] newArray(int i) {
                return new NewLatLngBoundsWidthHeight[i];
            }
        };
        private LatLngBounds a;
        private int b;
        private int c;
        private int d;

        public NewLatLngBoundsWidthHeight() {
            this.a = null;
            this.b = Integer.MAX_VALUE;
            this.c = Integer.MAX_VALUE;
            this.d = Integer.MAX_VALUE;
        }

        protected NewLatLngBoundsWidthHeight(Parcel parcel) {
            this.a = null;
            this.b = Integer.MAX_VALUE;
            this.c = Integer.MAX_VALUE;
            this.d = Integer.MAX_VALUE;
            ParcelReader parcelReader = new ParcelReader(parcel);
            this.a = (LatLngBounds) parcelReader.readParcelable(2, LatLngBounds.CREATOR, null);
            this.b = parcelReader.readInt(3, this.b);
            this.c = parcelReader.readInt(4, this.c);
            this.d = parcelReader.readInt(5, this.d);
        }

        public NewLatLngBoundsWidthHeight(LatLngBounds latLngBounds, int i, int i2, int i3) {
            this.a = latLngBounds;
            this.c = i;
            this.d = i2;
            this.b = i3;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public LatLngBounds getBounds() {
            return this.a;
        }

        public int getHeight() {
            return this.d;
        }

        public int getPadding() {
            return this.b;
        }

        public int getWidth() {
            return this.c;
        }

        public void setBounds(LatLngBounds latLngBounds) {
            this.a = latLngBounds;
        }

        public void setHeight(int i) {
            this.d = i;
        }

        public void setPadding(int i) {
            this.b = i;
        }

        public void setWidth(int i) {
            this.c = i;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            ParcelWrite parcelWrite = new ParcelWrite(parcel);
            int iBeginObjectHeader = parcelWrite.beginObjectHeader();
            parcelWrite.writeParcelable(2, this.a, i, false);
            parcelWrite.writeInt(3, this.b);
            parcelWrite.writeInt(4, this.c);
            parcelWrite.writeInt(5, this.d);
            parcelWrite.finishObjectHeader(iBeginObjectHeader);
        }
    }

    public static class NewLatLngZoom implements Parcelable {
        public static final Parcelable.Creator<NewLatLngZoom> CREATOR = new Parcelable.Creator<NewLatLngZoom>() { // from class: com.huawei.hms.maps.model.CameraUpdateParam.NewLatLngZoom.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public NewLatLngZoom createFromParcel(Parcel parcel) {
                return new NewLatLngZoom(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public NewLatLngZoom[] newArray(int i) {
                return new NewLatLngZoom[i];
            }
        };
        private LatLng a;
        private float b;

        public NewLatLngZoom() {
            this.a = null;
            this.b = -1.0f;
        }

        protected NewLatLngZoom(Parcel parcel) {
            this.a = null;
            this.b = -1.0f;
            ParcelReader parcelReader = new ParcelReader(parcel);
            this.a = (LatLng) parcelReader.readParcelable(2, LatLng.CREATOR, null);
            this.b = parcelReader.readFloat(3, this.b);
        }

        public NewLatLngZoom(LatLng latLng, float f) {
            this.a = latLng;
            this.b = f;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public LatLng getLatLng() {
            return this.a;
        }

        public float getZoom() {
            return this.b;
        }

        public void setLatLng(LatLng latLng) {
            this.a = latLng;
        }

        public void setZoom(float f) {
            this.b = f;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            ParcelWrite parcelWrite = new ParcelWrite(parcel);
            int iBeginObjectHeader = parcelWrite.beginObjectHeader();
            parcelWrite.writeParcelable(2, this.a, i, false);
            parcelWrite.writeFloat(3, this.b);
            parcelWrite.finishObjectHeader(iBeginObjectHeader);
        }
    }

    public static class ScrollBy implements Parcelable {
        public static final Parcelable.Creator<ScrollBy> CREATOR = new Parcelable.Creator<ScrollBy>() { // from class: com.huawei.hms.maps.model.CameraUpdateParam.ScrollBy.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ScrollBy createFromParcel(Parcel parcel) {
                return new ScrollBy(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ScrollBy[] newArray(int i) {
                return new ScrollBy[i];
            }
        };
        private float a;
        private float b;

        public ScrollBy() {
            this.a = Float.MAX_VALUE;
            this.b = Float.MAX_VALUE;
        }

        public ScrollBy(float f, float f2) {
            this.a = f;
            this.b = f2;
        }

        protected ScrollBy(Parcel parcel) {
            this.a = Float.MAX_VALUE;
            this.b = Float.MAX_VALUE;
            ParcelReader parcelReader = new ParcelReader(parcel);
            this.a = parcelReader.readFloat(2, this.a);
            this.b = parcelReader.readFloat(3, this.b);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public float getxPixel() {
            return this.a;
        }

        public float getyPixel() {
            return this.b;
        }

        public void setxPixel(float f) {
            this.a = f;
        }

        public void setyPixel(float f) {
            this.b = f;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            ParcelWrite parcelWrite = new ParcelWrite(parcel);
            int iBeginObjectHeader = parcelWrite.beginObjectHeader();
            parcelWrite.writeFloat(2, this.a);
            parcelWrite.writeFloat(3, this.b);
            parcelWrite.finishObjectHeader(iBeginObjectHeader);
        }
    }

    public static class ZoomBy implements Parcelable {
        public static final Parcelable.Creator<ZoomBy> CREATOR = new Parcelable.Creator<ZoomBy>() { // from class: com.huawei.hms.maps.model.CameraUpdateParam.ZoomBy.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ZoomBy createFromParcel(Parcel parcel) {
                return new ZoomBy(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ZoomBy[] newArray(int i) {
                return new ZoomBy[i];
            }
        };
        private float a;

        public ZoomBy(float f) {
            this.a = f;
        }

        protected ZoomBy(Parcel parcel) {
            this.a = new ParcelReader(parcel).readFloat(2, BitmapDescriptorFactory.HUE_RED);
            LogM.d("zoomby", "zoomBy: constructor ReadDone " + this.a);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public float getAmount() {
            return this.a;
        }

        public void setAmount(float f) {
            this.a = f;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            LogM.d("zoomby", "zoomBy: writeToParcel " + this.a);
            ParcelWrite parcelWrite = new ParcelWrite(parcel);
            int iBeginObjectHeader = parcelWrite.beginObjectHeader();
            parcelWrite.writeFloat(2, this.a);
            parcelWrite.finishObjectHeader(iBeginObjectHeader);
        }
    }

    public static class ZoomByWithFocus implements Parcelable {
        public static final Parcelable.Creator<ZoomByWithFocus> CREATOR = new Parcelable.Creator<ZoomByWithFocus>() { // from class: com.huawei.hms.maps.model.CameraUpdateParam.ZoomByWithFocus.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ZoomByWithFocus createFromParcel(Parcel parcel) {
                return new ZoomByWithFocus(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ZoomByWithFocus[] newArray(int i) {
                return new ZoomByWithFocus[i];
            }
        };
        private float a;
        private Point b;

        public ZoomByWithFocus() {
        }

        public ZoomByWithFocus(float f, Point point) {
            this.a = f;
            this.b = point;
        }

        protected ZoomByWithFocus(Parcel parcel) {
            ParcelReader parcelReader = new ParcelReader(parcel);
            this.a = parcelReader.readFloat(2, 1.0f);
            this.b = (Point) parcelReader.readParcelable(3, Point.CREATOR, null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public float getAmount() {
            return this.a;
        }

        public Point getFocus() {
            return this.b;
        }

        public void setAmount(float f) {
            this.a = f;
        }

        public void setFocus(Point point) {
            this.b = point;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            ParcelWrite parcelWrite = new ParcelWrite(parcel);
            int iBeginObjectHeader = parcelWrite.beginObjectHeader();
            parcelWrite.writeFloat(2, this.a);
            parcelWrite.writeParcelable(3, this.b, i, false);
            parcelWrite.finishObjectHeader(iBeginObjectHeader);
        }
    }

    public static class ZoomTo implements Parcelable {
        public static final Parcelable.Creator<ZoomTo> CREATOR = new Parcelable.Creator<ZoomTo>() { // from class: com.huawei.hms.maps.model.CameraUpdateParam.ZoomTo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ZoomTo createFromParcel(Parcel parcel) {
                return new ZoomTo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ZoomTo[] newArray(int i) {
                return new ZoomTo[i];
            }
        };
        private float a;

        public ZoomTo(float f) {
            this.a = f;
        }

        protected ZoomTo(Parcel parcel) {
            this.a = Float.MAX_VALUE;
            this.a = new ParcelReader(parcel).readFloat(2, this.a);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public float getZoom() {
            return this.a;
        }

        public void setZoom(float f) {
            this.a = f;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            ParcelWrite parcelWrite = new ParcelWrite(parcel);
            int iBeginObjectHeader = parcelWrite.beginObjectHeader();
            parcelWrite.writeFloat(2, this.a);
            parcelWrite.finishObjectHeader(iBeginObjectHeader);
        }
    }

    public CameraUpdateParam() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
    }

    protected CameraUpdateParam(Parcel parcel) {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        LogM.d("ContentValues", "CameraUpdateParam: zoomBy");
        ParcelReader parcelReader = new ParcelReader(parcel);
        this.a = (CameraPosition) parcelReader.readParcelable(2, CameraPosition.CREATOR, null);
        this.b = (LatLng) parcelReader.readParcelable(3, LatLng.CREATOR, null);
        this.c = (NewLatLngBounds) parcelReader.readParcelable(4, NewLatLngBounds.CREATOR, null);
        this.e = (NewLatLngZoom) parcelReader.readParcelable(5, NewLatLngZoom.CREATOR, null);
        this.f = (ScrollBy) parcelReader.readParcelable(6, ScrollBy.CREATOR, null);
        this.g = (ZoomByWithFocus) parcelReader.readParcelable(7, ZoomByWithFocus.CREATOR, null);
        this.h = (ZoomBy) parcelReader.readParcelable(8, ZoomBy.CREATOR, null);
        this.i = (ZoomTo) parcelReader.readParcelable(9, ZoomTo.CREATOR, null);
        this.d = (NewLatLngBoundsWidthHeight) parcelReader.readParcelable(10, NewLatLngBoundsWidthHeight.CREATOR, null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CameraPosition getCameraPosition() {
        return this.a;
    }

    public LatLng getLatLng() {
        return this.b;
    }

    public NewLatLngBounds getNewLatLngBounds() {
        return this.c;
    }

    public NewLatLngBoundsWidthHeight getNewLatLngBoundsWidthHeight() {
        return this.d;
    }

    public NewLatLngZoom getNewLatLngZoom() {
        return this.e;
    }

    public ScrollBy getScrollBy() {
        return this.f;
    }

    public ZoomBy getZoomBy() {
        return this.h;
    }

    public ZoomByWithFocus getZoomByWithFocus() {
        return this.g;
    }

    public ZoomTo getZoomTo() {
        return this.i;
    }

    public void setCameraPosition(CameraPosition cameraPosition) {
        this.a = cameraPosition;
    }

    public void setLatLng(LatLng latLng) {
        this.b = latLng;
    }

    public void setNewLatLngBounds(NewLatLngBounds newLatLngBounds) {
        this.c = newLatLngBounds;
    }

    public void setNewLatLngBoundsWidthHeight(NewLatLngBoundsWidthHeight newLatLngBoundsWidthHeight) {
        this.d = newLatLngBoundsWidthHeight;
    }

    public void setNewLatLngZoom(NewLatLngZoom newLatLngZoom) {
        this.e = newLatLngZoom;
    }

    public void setScrollBy(ScrollBy scrollBy) {
        this.f = scrollBy;
    }

    public void setZoomBy(ZoomBy zoomBy) {
        this.h = zoomBy;
    }

    public void setZoomByWithFocus(ZoomByWithFocus zoomByWithFocus) {
        this.g = zoomByWithFocus;
    }

    public void setZoomTo(ZoomTo zoomTo) {
        this.i = zoomTo;
    }

    public String toString() {
        return getClass().getSimpleName() + ":{cameraPosition=" + this.a + ",latLng=" + this.b + ",scrollBy=" + this.f + ",zoomByWithFocus=" + this.g + ",newLatLngBounds=" + this.c + ",newLatLngZoom=" + this.e + ",zoomBy=" + this.h + ",zoomTo=" + this.i + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ParcelWrite parcelWrite = new ParcelWrite(parcel);
        int iBeginObjectHeader = parcelWrite.beginObjectHeader();
        parcelWrite.writeParcelable(2, getCameraPosition(), i, false);
        parcelWrite.writeParcelable(3, getLatLng(), i, false);
        parcelWrite.writeParcelable(4, getNewLatLngBounds(), i, false);
        parcelWrite.writeParcelable(5, getNewLatLngZoom(), i, false);
        parcelWrite.writeParcelable(6, getScrollBy(), i, false);
        parcelWrite.writeParcelable(7, getZoomByWithFocus(), i, false);
        parcelWrite.writeParcelable(8, getZoomBy(), i, false);
        parcelWrite.writeParcelable(9, getZoomTo(), i, false);
        parcelWrite.writeParcelable(10, getNewLatLngBoundsWidthHeight(), i, false);
        parcelWrite.finishObjectHeader(iBeginObjectHeader);
    }
}
