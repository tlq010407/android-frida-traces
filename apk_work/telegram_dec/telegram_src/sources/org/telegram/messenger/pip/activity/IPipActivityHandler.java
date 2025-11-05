package org.telegram.messenger.pip.activity;

import android.app.PictureInPictureParams;
import android.content.res.Configuration;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IPipActivityHandler {
    void onConfigurationChanged(Configuration configuration);

    void onPause();

    void onPictureInPictureModeChanged(boolean z, Configuration configuration);

    void onPictureInPictureRequested();

    void onResume();

    void onStart();

    void onStop();

    void onUserLeaveHint();

    void setPictureInPictureParams(PictureInPictureParams pictureInPictureParams);
}
