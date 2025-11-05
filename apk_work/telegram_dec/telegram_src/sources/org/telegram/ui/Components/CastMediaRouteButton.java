package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import androidx.mediarouter.app.MediaRouteButton;
import java.lang.reflect.Field;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public abstract class CastMediaRouteButton extends MediaRouteButton {
    private boolean lastConnected;

    public CastMediaRouteButton(Context context) {
        super(context);
    }

    private void checkConnected() throws NoSuchFieldException, SecurityException {
        boolean zIsConnected = isConnected();
        if (this.lastConnected != zIsConnected) {
            this.lastConnected = zIsConnected;
            stateUpdated(zIsConnected);
        }
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) throws NoSuchFieldException, SecurityException {
        checkConnected();
    }

    @Override // android.view.View
    public void invalidate() throws NoSuchFieldException, SecurityException {
        super.invalidate();
        checkConnected();
    }

    public boolean isConnected() throws NoSuchFieldException, SecurityException {
        try {
            Field declaredField = MediaRouteButton.class.getDeclaredField("mConnectionState");
            declaredField.setAccessible(true);
            return ((Integer) declaredField.get(this)).intValue() > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // androidx.mediarouter.app.MediaRouteButton, android.view.View
    public void onAttachedToWindow() throws NoSuchFieldException, SecurityException {
        super.onAttachedToWindow();
        checkConnected();
    }

    @Override // androidx.mediarouter.app.MediaRouteButton, android.view.View
    protected void onDraw(Canvas canvas) throws NoSuchFieldException, SecurityException {
        checkConnected();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
    }

    public abstract void stateUpdated(boolean z);
}
