package org.telegram.messenger.camera;

import android.graphics.Rect;
import android.hardware.Camera;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.os.Build;
import android.text.TextUtils;
import android.view.OrientationEventListener;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.FileLog;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class CameraSession {
    public static final int ORIENTATION_HYSTERESIS = 5;
    public CameraInfo cameraInfo;
    private String currentFlashMode;
    private int currentOrientation;
    private float currentZoom;
    private boolean destroyed;
    private int diffOrientation;
    private int displayOrientation;
    private boolean initied;
    private boolean isRound;
    private boolean isVideo;
    private int jpegOrientation;
    private int maxZoom;
    private boolean meteringAreaSupported;
    private boolean optimizeForBarcode;
    private OrientationEventListener orientationEventListener;
    private final int pictureFormat;
    private final Size pictureSize;
    private final Size previewSize;
    private boolean sameTakePictureOrientation;
    private boolean useTorch;
    private int lastOrientation = -1;
    private int lastDisplayOrientation = -1;
    private boolean flipFront = true;
    public ArrayList<String> availableFlashModes = new ArrayList<>();
    private int infoCameraId = -1;
    Camera.CameraInfo info = new Camera.CameraInfo();
    private Camera.AutoFocusCallback autoFocusCallback = new Camera.AutoFocusCallback() { // from class: org.telegram.messenger.camera.CameraSession$$ExternalSyntheticLambda0
        @Override // android.hardware.Camera.AutoFocusCallback
        public final void onAutoFocus(boolean z, Camera camera) {
            CameraSession.lambda$new$0(z, camera);
        }
    };

    public CameraSession(CameraInfo cameraInfo, Size size, Size size2, int i, boolean z) {
        this.previewSize = size;
        this.pictureSize = size2;
        this.pictureFormat = i;
        this.cameraInfo = cameraInfo;
        this.isRound = z;
        this.currentFlashMode = ApplicationLoader.applicationContext.getSharedPreferences("camera", 0).getString(this.cameraInfo.frontCamera != 0 ? "flashMode_front" : "flashMode", "off");
        OrientationEventListener orientationEventListener = new OrientationEventListener(ApplicationLoader.applicationContext) { // from class: org.telegram.messenger.camera.CameraSession.1
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i2) {
                if (CameraSession.this.orientationEventListener == null || !CameraSession.this.initied || i2 == -1) {
                    return;
                }
                CameraSession cameraSession = CameraSession.this;
                cameraSession.jpegOrientation = cameraSession.roundOrientation(i2, cameraSession.jpegOrientation);
                int rotation = ((WindowManager) ApplicationLoader.applicationContext.getSystemService("window")).getDefaultDisplay().getRotation();
                if (CameraSession.this.lastOrientation == CameraSession.this.jpegOrientation && rotation == CameraSession.this.lastDisplayOrientation) {
                    return;
                }
                if (!CameraSession.this.isVideo) {
                    CameraSession.this.configurePhotoCamera();
                }
                CameraSession.this.lastDisplayOrientation = rotation;
                CameraSession cameraSession2 = CameraSession.this;
                cameraSession2.lastOrientation = cameraSession2.jpegOrientation;
            }
        };
        this.orientationEventListener = orientationEventListener;
        if (orientationEventListener.canDetectOrientation()) {
            this.orientationEventListener.enable();
        } else {
            this.orientationEventListener.disable();
            this.orientationEventListener = null;
        }
    }

    private int getDisplayOrientation(Camera.CameraInfo cameraInfo, boolean z) {
        int rotation = ((WindowManager) ApplicationLoader.applicationContext.getSystemService("window")).getDefaultDisplay().getRotation();
        int i = 0;
        if (rotation != 0) {
            if (rotation == 1) {
                i = 90;
            } else if (rotation == 2) {
                i = 180;
            } else if (rotation == 3) {
                i = 270;
            }
        }
        int i2 = cameraInfo.facing;
        int i3 = cameraInfo.orientation;
        if (i2 != 1) {
            return ((i3 - i) + 360) % 360;
        }
        int i4 = (360 - ((i3 + i) % 360)) % 360;
        if (!z && i4 == 90) {
            i4 = 270;
        }
        if (!z && "Huawei".equals(Build.MANUFACTURER) && "angler".equals(Build.PRODUCT) && i4 == 270) {
            return 90;
        }
        return i4;
    }

    private int getHigh() {
        return ("LGE".equals(Build.MANUFACTURER) && "g3_tmo_us".equals(Build.PRODUCT)) ? 4 : 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(boolean z, Camera camera) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int roundOrientation(int i, int i2) {
        if (i2 != -1) {
            int iAbs = Math.abs(i - i2);
            if (Math.min(iAbs, 360 - iAbs) < 50) {
                return i2;
            }
        }
        return (((i + 45) / 90) * 90) % 360;
    }

    private void updateCameraInfo() {
        if (this.infoCameraId != this.cameraInfo.getCameraId()) {
            int cameraId = this.cameraInfo.getCameraId();
            this.infoCameraId = cameraId;
            Camera.getCameraInfo(cameraId, this.info);
        }
    }

    public void checkFlashMode(String str) {
        if (this.availableFlashModes.contains(this.currentFlashMode)) {
            return;
        }
        this.currentFlashMode = str;
        if (this.isRound) {
            configureRoundCamera(false);
        } else {
            configurePhotoCamera();
            ApplicationLoader.applicationContext.getSharedPreferences("camera", 0).edit().putString(this.cameraInfo.frontCamera != 0 ? "flashMode_front" : "flashMode", str).commit();
        }
    }

    protected void configurePhotoCamera() {
        Camera.Parameters parameters;
        String str;
        int i;
        try {
            Camera camera = this.cameraInfo.camera;
            if (camera != null) {
                try {
                    parameters = camera.getParameters();
                } catch (Exception e) {
                    FileLog.e(e);
                    parameters = null;
                }
                updateCameraInfo();
                updateRotation();
                int i2 = this.currentOrientation - this.displayOrientation;
                this.diffOrientation = i2;
                if (i2 < 0) {
                    this.diffOrientation = i2 + 360;
                }
                if (parameters != null) {
                    parameters.setPreviewSize(this.previewSize.getWidth(), this.previewSize.getHeight());
                    parameters.setPictureSize(this.pictureSize.getWidth(), this.pictureSize.getHeight());
                    parameters.setPictureFormat(this.pictureFormat);
                    parameters.setJpegQuality(100);
                    parameters.setJpegThumbnailQuality(100);
                    int maxZoom = parameters.getMaxZoom();
                    this.maxZoom = maxZoom;
                    parameters.setZoom((int) (this.currentZoom * maxZoom));
                    if (this.optimizeForBarcode) {
                        List<String> supportedSceneModes = parameters.getSupportedSceneModes();
                        if (supportedSceneModes != null && supportedSceneModes.contains("barcode")) {
                            parameters.setSceneMode("barcode");
                        }
                        str = "continuous-video";
                        if (parameters.getSupportedFocusModes().contains("continuous-video")) {
                            parameters.setFocusMode(str);
                        }
                    } else {
                        str = "continuous-picture";
                        if (parameters.getSupportedFocusModes().contains("continuous-picture")) {
                            parameters.setFocusMode(str);
                        }
                    }
                    int i3 = this.jpegOrientation;
                    boolean z = false;
                    if (i3 != -1) {
                        Camera.CameraInfo cameraInfo = this.info;
                        i = (cameraInfo.facing == 1 ? (cameraInfo.orientation - i3) + 360 : cameraInfo.orientation + i3) % 360;
                    } else {
                        i = 0;
                    }
                    try {
                        parameters.setRotation(i);
                        if (this.info.facing == 1) {
                            if ((360 - this.displayOrientation) % 360 == i) {
                                z = true;
                            }
                            this.sameTakePictureOrientation = z;
                        } else {
                            if (this.displayOrientation == i) {
                                z = true;
                            }
                            this.sameTakePictureOrientation = z;
                        }
                    } catch (Exception unused) {
                    }
                    parameters.setFlashMode(this.useTorch ? "torch" : this.currentFlashMode);
                    try {
                        camera.setParameters(parameters);
                    } catch (Exception unused2) {
                    }
                }
            }
        } catch (Throwable th) {
            FileLog.e(th);
        }
    }

    protected void configureRecorder(int i, MediaRecorder mediaRecorder) {
        int i2;
        CamcorderProfile camcorderProfile;
        updateCameraInfo();
        int i3 = this.jpegOrientation;
        if (i3 != -1) {
            Camera.CameraInfo cameraInfo = this.info;
            int i4 = cameraInfo.facing;
            int i5 = cameraInfo.orientation;
            i2 = (i4 == 1 ? (i5 - i3) + 360 : i5 + i3) % 360;
        } else {
            i2 = 0;
        }
        mediaRecorder.setOrientationHint(i2);
        int high = getHigh();
        boolean zHasProfile = CamcorderProfile.hasProfile(this.cameraInfo.cameraId, high);
        boolean zHasProfile2 = CamcorderProfile.hasProfile(this.cameraInfo.cameraId, 0);
        if (zHasProfile && (i == 1 || !zHasProfile2)) {
            camcorderProfile = CamcorderProfile.get(this.cameraInfo.cameraId, high);
        } else {
            if (!zHasProfile2) {
                throw new IllegalStateException("cannot find valid CamcorderProfile");
            }
            camcorderProfile = CamcorderProfile.get(this.cameraInfo.cameraId, 0);
        }
        mediaRecorder.setProfile(camcorderProfile);
        this.isVideo = true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:13|(1:17)|18|(1:22)|23|(5:(1:25)(13:26|(0)|29|(3:31|(1:33)(1:34)|35)(1:37)|60|38|(2:40|(1:42)(1:43))(3:44|(2:46|42)|43)|47|48|64|49|50|(1:52))|64|49|50|(0))|28|29|(0)(0)|60|38|(0)(0)|47|48) */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c6 A[Catch: all -> 0x000f, TryCatch #3 {all -> 0x000f, blocks: (B:3:0x0002, B:5:0x000a, B:11:0x0017, B:15:0x0023, B:17:0x0027, B:18:0x004d, B:20:0x005e, B:22:0x0062, B:23:0x0088, B:28:0x00be, B:29:0x00c1, B:31:0x00c6, B:33:0x00cc, B:35:0x00d5, B:38:0x00d9, B:40:0x00e2, B:47:0x00f3, B:44:0x00ee, B:48:0x00f5, B:49:0x0105, B:50:0x0108, B:52:0x010e, B:54:0x0112, B:55:0x0117, B:34:0x00d2, B:26:0x00b2, B:10:0x0013), top: B:66:0x0002, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e2 A[Catch: all -> 0x000f, Exception -> 0x00f5, TryCatch #0 {Exception -> 0x00f5, blocks: (B:38:0x00d9, B:40:0x00e2, B:47:0x00f3, B:44:0x00ee), top: B:60:0x00d9 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ee A[Catch: all -> 0x000f, Exception -> 0x00f5, TryCatch #0 {Exception -> 0x00f5, blocks: (B:38:0x00d9, B:40:0x00e2, B:47:0x00f3, B:44:0x00ee), top: B:60:0x00d9 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010e A[Catch: all -> 0x000f, TryCatch #3 {all -> 0x000f, blocks: (B:3:0x0002, B:5:0x000a, B:11:0x0017, B:15:0x0023, B:17:0x0027, B:18:0x004d, B:20:0x005e, B:22:0x0062, B:23:0x0088, B:28:0x00be, B:29:0x00c1, B:31:0x00c6, B:33:0x00cc, B:35:0x00d5, B:38:0x00d9, B:40:0x00e2, B:47:0x00f3, B:44:0x00ee, B:48:0x00f5, B:49:0x0105, B:50:0x0108, B:52:0x010e, B:54:0x0112, B:55:0x0117, B:34:0x00d2, B:26:0x00b2, B:10:0x0013), top: B:66:0x0002, inners: #1, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected boolean configureRoundCamera(boolean z) {
        Camera.Parameters parameters;
        int i;
        int i2;
        boolean z2;
        try {
            this.isVideo = true;
            Camera camera = this.cameraInfo.camera;
            if (camera != null) {
                try {
                    parameters = camera.getParameters();
                } catch (Exception e) {
                    FileLog.e(e);
                    parameters = null;
                }
                updateCameraInfo();
                updateRotation();
                if (parameters != null) {
                    if (z && BuildVars.LOGS_ENABLED) {
                        FileLog.d("set preview size = " + this.previewSize.getWidth() + " " + this.previewSize.getHeight());
                    }
                    parameters.setPreviewSize(this.previewSize.getWidth(), this.previewSize.getHeight());
                    if (z && BuildVars.LOGS_ENABLED) {
                        FileLog.d("set picture size = " + this.pictureSize.getWidth() + " " + this.pictureSize.getHeight());
                    }
                    parameters.setPictureSize(this.pictureSize.getWidth(), this.pictureSize.getHeight());
                    parameters.setPictureFormat(this.pictureFormat);
                    parameters.setRecordingHint(true);
                    this.maxZoom = parameters.getMaxZoom();
                    String str = "continuous-video";
                    try {
                        if (!parameters.getSupportedFocusModes().contains("continuous-video")) {
                            str = "auto";
                            if (parameters.getSupportedFocusModes().contains("auto")) {
                            }
                            i = this.jpegOrientation;
                            if (i == -1) {
                                Camera.CameraInfo cameraInfo = this.info;
                                i2 = (cameraInfo.facing == 1 ? (cameraInfo.orientation - i) + 360 : cameraInfo.orientation + i) % 360;
                            } else {
                                i2 = 0;
                            }
                            parameters.setRotation(i2);
                            if (this.info.facing != 1) {
                                z2 = (360 - this.displayOrientation) % 360 == i2;
                            } else {
                                if (this.displayOrientation == i2) {
                                }
                            }
                            this.sameTakePictureOrientation = z2;
                            parameters.setFlashMode(this.currentFlashMode);
                            parameters.setZoom((int) (this.currentZoom * this.maxZoom));
                            camera.setParameters(parameters);
                            if (parameters.getMaxNumMeteringAreas() > 0) {
                                this.meteringAreaSupported = true;
                            }
                        }
                        camera.setParameters(parameters);
                        if (parameters.getMaxNumMeteringAreas() > 0) {
                        }
                    } catch (Exception e2) {
                        throw new RuntimeException(e2);
                    }
                    parameters.setFocusMode(str);
                    i = this.jpegOrientation;
                    if (i == -1) {
                    }
                    parameters.setRotation(i2);
                    if (this.info.facing != 1) {
                    }
                    this.sameTakePictureOrientation = z2;
                    parameters.setFlashMode(this.currentFlashMode);
                    parameters.setZoom((int) (this.currentZoom * this.maxZoom));
                }
            }
            return true;
        } catch (Throwable th) {
            FileLog.e(th);
            return false;
        }
    }

    public void destroy() {
        this.initied = false;
        this.destroyed = true;
        OrientationEventListener orientationEventListener = this.orientationEventListener;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
            this.orientationEventListener = null;
        }
    }

    public void focusToRect(Rect rect, Rect rect2) {
        Camera.Parameters parameters;
        try {
            Camera camera = this.cameraInfo.camera;
            if (camera != null) {
                camera.cancelAutoFocus();
                try {
                    parameters = camera.getParameters();
                } catch (Exception e) {
                    FileLog.e(e);
                    parameters = null;
                }
                if (parameters != null) {
                    parameters.setFocusMode("auto");
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new Camera.Area(rect, 1000));
                    parameters.setFocusAreas(arrayList);
                    if (this.meteringAreaSupported) {
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(new Camera.Area(rect2, 1000));
                        parameters.setMeteringAreas(arrayList2);
                    }
                    try {
                        camera.setParameters(parameters);
                        camera.autoFocus(this.autoFocusCallback);
                    } catch (Exception e2) {
                        FileLog.e(e2);
                    }
                }
            }
        } catch (Exception e3) {
            FileLog.e(e3);
        }
    }

    public String getCurrentFlashMode() {
        return this.currentFlashMode;
    }

    public int getCurrentOrientation() {
        return this.currentOrientation;
    }

    public Camera.Size getCurrentPictureSize() {
        return this.cameraInfo.camera.getParameters().getPictureSize();
    }

    public Camera.Size getCurrentPreviewSize() {
        return this.cameraInfo.camera.getParameters().getPreviewSize();
    }

    public int getDisplayOrientation() {
        try {
            updateCameraInfo();
            return getDisplayOrientation(this.info, true);
        } catch (Exception e) {
            FileLog.e(e);
            return 0;
        }
    }

    protected int getMaxZoom() {
        return this.maxZoom;
    }

    public String getNextFlashMode() {
        ArrayList<String> arrayList = this.availableFlashModes;
        int i = 0;
        while (i < arrayList.size()) {
            if (arrayList.get(i).equals(this.currentFlashMode)) {
                return i < arrayList.size() + (-1) ? arrayList.get(i + 1) : arrayList.get(0);
            }
            i++;
        }
        return this.currentFlashMode;
    }

    public int getWorldAngle() {
        return this.diffOrientation;
    }

    public boolean isFlipFront() {
        return this.flipFront;
    }

    public boolean isInitied() {
        return this.initied;
    }

    public boolean isSameTakePictureOrientation() {
        return this.sameTakePictureOrientation;
    }

    public void onStartRecord() {
        this.isVideo = true;
    }

    public void setCurrentFlashMode(String str) {
        this.currentFlashMode = str;
        if (this.isRound) {
            configureRoundCamera(false);
        } else {
            configurePhotoCamera();
            ApplicationLoader.applicationContext.getSharedPreferences("camera", 0).edit().putString(this.cameraInfo.frontCamera != 0 ? "flashMode_front" : "flashMode", str).commit();
        }
    }

    public void setFlipFront(boolean z) {
        this.flipFront = z;
    }

    public void setInitied() {
        this.initied = true;
    }

    public void setOneShotPreviewCallback(Camera.PreviewCallback previewCallback) {
        Camera camera;
        CameraInfo cameraInfo = this.cameraInfo;
        if (cameraInfo == null || (camera = cameraInfo.camera) == null) {
            return;
        }
        try {
            camera.setOneShotPreviewCallback(previewCallback);
        } catch (Exception unused) {
        }
    }

    public void setOptimizeForBarcode(boolean z) {
        this.optimizeForBarcode = z;
        configurePhotoCamera();
    }

    public void setPreviewCallback(Camera.PreviewCallback previewCallback) {
        this.cameraInfo.camera.setPreviewCallback(previewCallback);
    }

    public void setTorchEnabled(boolean z) {
        try {
            String str = this.currentFlashMode;
            String str2 = z ? "torch" : "off";
            this.currentFlashMode = str2;
            if (!TextUtils.equals(str, str2)) {
                if (this.isRound) {
                    configureRoundCamera(false);
                } else {
                    configurePhotoCamera();
                }
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    public void setZoom(float f) {
        this.currentZoom = f;
        if (this.isVideo && "on".equals(this.currentFlashMode)) {
            this.useTorch = true;
        }
        if (this.isRound) {
            configureRoundCamera(false);
        } else {
            configurePhotoCamera();
        }
    }

    public void stopVideoRecording() {
        this.isVideo = false;
        this.useTorch = false;
        configurePhotoCamera();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateRotation() {
        int i;
        Camera.CameraInfo cameraInfo;
        if (this.cameraInfo == null) {
            return;
        }
        try {
            updateCameraInfo();
            Camera camera = this.destroyed ? null : this.cameraInfo.camera;
            this.displayOrientation = getDisplayOrientation(this.info, true);
            int i2 = 0;
            if (!"samsung".equals(Build.MANUFACTURER) || !"sf2wifixx".equals(Build.PRODUCT)) {
                int i3 = this.displayOrientation;
                if (i3 == 0) {
                    i = 0;
                    cameraInfo = this.info;
                    if (cameraInfo.orientation % 90 != 0) {
                        cameraInfo.orientation = 0;
                    }
                    i2 = cameraInfo.facing != 1 ? (360 - ((cameraInfo.orientation + i) % 360)) % 360 : ((cameraInfo.orientation - i) + 360) % 360;
                } else {
                    if (i3 == 1) {
                        i = 90;
                    } else if (i3 == 2) {
                        i = 180;
                    } else if (i3 == 3) {
                        i = 270;
                    }
                    cameraInfo = this.info;
                    if (cameraInfo.orientation % 90 != 0) {
                    }
                    if (cameraInfo.facing != 1) {
                    }
                }
            }
            this.currentOrientation = i2;
            if (camera != null) {
                try {
                    camera.setDisplayOrientation(i2);
                } catch (Throwable unused) {
                }
            }
            int i4 = this.currentOrientation - this.displayOrientation;
            this.diffOrientation = i4;
            if (i4 < 0) {
                this.diffOrientation = i4 + 360;
            }
        } catch (Throwable th) {
            FileLog.e(th);
        }
    }
}
