package org.telegram.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.voip.VoIPPreNotificationService;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.tgnet.tl.TL_phone$PhoneCall;
import org.telegram.ui.Components.voip.VoIPHelper;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class VoIPPermissionActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        boolean zIsVideo;
        super.onCreate(bundle);
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            TL_phone$PhoneCall tL_phone$PhoneCall = sharedInstance.privateCall;
            zIsVideo = tL_phone$PhoneCall != null && tL_phone$PhoneCall.video;
        } else {
            zIsVideo = VoIPPreNotificationService.isVideo();
        }
        ArrayList arrayList = new ArrayList();
        if (checkSelfPermission("android.permission.RECORD_AUDIO") != 0) {
            arrayList.add("android.permission.RECORD_AUDIO");
        }
        if (zIsVideo && checkSelfPermission("android.permission.CAMERA") != 0) {
            arrayList.add("android.permission.CAMERA");
        }
        if (arrayList.isEmpty()) {
            return;
        }
        try {
            requestPermissions((String[]) arrayList.toArray(new String[0]), zIsVideo ? 102 : 101);
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) throws InterruptedException {
        if (i == 101 || i == 102) {
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 >= iArr.length) {
                    z = true;
                    break;
                } else if (iArr[i2] != 0) {
                    break;
                } else {
                    i2++;
                }
            }
            if (iArr.length > 0 && z) {
                if (VoIPService.getSharedInstance() != null) {
                    VoIPService.getSharedInstance().acceptIncomingCall();
                } else {
                    VoIPPreNotificationService.answer(this);
                }
                finish();
                startActivity(new Intent(this, (Class<?>) LaunchActivity.class).setAction("voip"));
                return;
            }
            if (shouldShowRequestPermissionRationale("android.permission.RECORD_AUDIO")) {
                finish();
                return;
            }
            if (VoIPService.getSharedInstance() != null) {
                VoIPService.getSharedInstance().declineIncomingCall();
            } else {
                VoIPPreNotificationService.decline(this, 1);
            }
            VoIPHelper.permissionDenied(this, new Runnable() { // from class: org.telegram.ui.VoIPPermissionActivity$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.finish();
                }
            }, i);
        }
    }
}
