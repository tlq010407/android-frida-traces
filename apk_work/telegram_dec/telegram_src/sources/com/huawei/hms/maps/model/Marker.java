package com.huawei.hms.maps.model;

import android.os.RemoteException;
import com.huawei.hms.feature.dynamic.ObjectWrapper;
import com.huawei.hms.maps.internal.IAnimationListener;
import com.huawei.hms.maps.model.animation.Animation;
import com.huawei.hms.maps.model.animation.AnimationSet;
import com.huawei.hms.maps.model.internal.IMarkerDelegate;
import java.util.Iterator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class Marker {
    private final IMarkerDelegate a;

    public Marker(IMarkerDelegate iMarkerDelegate) {
        if (iMarkerDelegate == null) {
            throw new NullPointerException("Object is null");
        }
        this.a = iMarkerDelegate;
    }

    private void a(Animation animation) {
        try {
            if (animation instanceof AnimationSet) {
                Iterator<Animation> it = ((AnimationSet) animation).getAnimations().iterator();
                while (it.hasNext()) {
                    a(it.next());
                }
            }
            final Animation.AnimationListener listener = animation.getListener();
            this.a.setAnimationListener(listener == null ? null : new IAnimationListener.Stub() { // from class: com.huawei.hms.maps.model.Marker.1
                @Override // com.huawei.hms.maps.internal.IAnimationListener
                public void onAnimationEnd() {
                    Animation.AnimationListener animationListener = listener;
                    if (animationListener != null) {
                        animationListener.onAnimationEnd();
                    }
                }

                @Override // com.huawei.hms.maps.internal.IAnimationListener
                public void onAnimationStart() {
                    Animation.AnimationListener animationListener = listener;
                    if (animationListener != null) {
                        animationListener.onAnimationStart();
                    }
                }
            });
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Marker)) {
            return false;
        }
        try {
            return this.a.equalsRemote(((Marker) obj).a);
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final float getAlpha() {
        try {
            return this.a.getAlpha();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final String getId() {
        try {
            return this.a.getId();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final LatLng getPosition() {
        try {
            return this.a.getPosition();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final float getRotation() {
        try {
            return this.a.getRotation();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final String getSnippet() {
        try {
            return this.a.getSnippet();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final Object getTag() {
        try {
            return ObjectWrapper.unwrap(this.a.getTag());
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final String getTitle() {
        try {
            return this.a.getTitle();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final float getZIndex() {
        try {
            return this.a.getZIndex();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        try {
            return this.a.hashCodeRemote();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final void hideInfoWindow() {
        try {
            this.a.hideInfoWindow();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public boolean isClusterable() {
        try {
            return this.a.isClusterable();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final boolean isDraggable() {
        try {
            return this.a.isDraggable();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final boolean isFlat() {
        try {
            return this.a.isFlat();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final boolean isInfoWindowShown() {
        try {
            return this.a.isInfoWindowShown();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final boolean isVisible() {
        try {
            return this.a.isVisible();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final void remove() {
        try {
            this.a.remove();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final void setAlpha(float f) {
        try {
            this.a.setAlpha(f);
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    @Deprecated
    public final void setAnchor(float f, float f2) {
        try {
            this.a.setAnchor(f, f2);
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public void setAnimation(Animation animation) {
        if (animation == null) {
            throw new IllegalArgumentException("animation cannot be null.");
        }
        try {
            a(animation);
            this.a.setAnimation(animation);
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final void setDraggable(boolean z) {
        try {
            this.a.setDraggable(z);
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final void setFlat(boolean z) {
        try {
            this.a.setFlat(z);
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final void setIcon(BitmapDescriptor bitmapDescriptor) {
        try {
            if (bitmapDescriptor == null) {
                this.a.setIcon(ObjectWrapper.wrap(null));
            } else {
                this.a.setIcon(bitmapDescriptor.getObject());
            }
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final void setInfoWindowAnchor(float f, float f2) {
        try {
            this.a.setInfoWindowAnchor(f, f2);
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final void setMarkerAnchor(float f, float f2) {
        try {
            this.a.setMarkerAnchor(f, f2);
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final void setPosition(LatLng latLng) {
        if (latLng == null) {
            throw new IllegalArgumentException("latlng cannot be null - a position is required.");
        }
        try {
            this.a.setPosition(latLng);
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final void setRotation(float f) {
        try {
            this.a.setRotation(f);
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final void setSnippet(String str) {
        try {
            this.a.setSnippet(str);
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final void setTag(Object obj) {
        try {
            this.a.setTag(ObjectWrapper.wrap(obj));
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final void setTitle(String str) {
        try {
            this.a.setTitle(str);
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final void setVisible(boolean z) {
        try {
            this.a.setVisible(z);
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final void setZIndex(float f) {
        try {
            this.a.setZIndex(f);
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public final void showInfoWindow() {
        try {
            this.a.showInfoWindow();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public void startAnimation() {
        try {
            this.a.startAnimation();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }
}
