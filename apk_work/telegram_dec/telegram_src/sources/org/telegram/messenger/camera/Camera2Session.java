package org.telegram.messenger.camera;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.Image;
import android.media.ImageReader;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Range;
import android.view.Surface;
import android.view.WindowManager;
import androidx.core.os.BundleKt$$ExternalSyntheticApiModelOutline1;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.camera.Camera2Session;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class Camera2Session {
    private CameraCharacteristics cameraCharacteristics;
    private CameraDevice cameraDevice;
    public final String cameraId;
    private final CameraManager cameraManager;
    private final CameraDevice.StateCallback cameraStateCallback;
    private CaptureRequest.Builder captureRequestBuilder;
    private CameraCaptureSession captureSession;
    private final CameraCaptureSession.StateCallback captureStateCallback;
    private Runnable doneCallback;
    private boolean flashing;
    private Handler handler;
    private ImageReader imageReader;
    private boolean isClosed;
    private boolean isError;
    private final boolean isFront;
    private boolean isSuccess;
    private long lastTime;
    private float maxZoom;
    private boolean nightMode;
    private final android.util.Size previewSize;
    private boolean recordingVideo;
    private boolean scanningBarcode;
    private Rect sensorSize;
    private Surface surface;
    private SurfaceTexture surfaceTexture;
    private HandlerThread thread;
    private float currentZoom = 1.0f;
    private boolean opened = false;
    private final Rect cropRegion = new Rect();

    /* renamed from: org.telegram.messenger.camera.Camera2Session$1, reason: invalid class name */
    class AnonymousClass1 extends CameraDevice.StateCallback {
        final /* synthetic */ String val$cameraId;

        AnonymousClass1(String str) {
            this.val$cameraId = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onError$0() {
            Camera2Session.this.isError = true;
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            Camera2Session.this.cameraDevice = cameraDevice;
            FileLog.d("Camera2Session camera #" + this.val$cameraId + " disconnected");
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i) {
            Camera2Session.this.cameraDevice = cameraDevice;
            FileLog.e("Camera2Session camera #" + this.val$cameraId + " received " + i + " error");
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onError$0();
                }
            });
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) throws CameraAccessException {
            Camera2Session.this.cameraDevice = cameraDevice;
            Camera2Session.this.lastTime = System.currentTimeMillis();
            FileLog.d("Camera2Session camera #" + this.val$cameraId + " opened");
            Camera2Session.this.checkOpen();
        }
    }

    /* renamed from: org.telegram.messenger.camera.Camera2Session$2, reason: invalid class name */
    class AnonymousClass2 extends CameraCaptureSession.StateCallback {
        final /* synthetic */ String val$cameraId;

        AnonymousClass2(String str) {
            this.val$cameraId = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onConfigureFailed$1() {
            Camera2Session.this.isError = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onConfigured$0() {
            Camera2Session.this.isSuccess = true;
            if (Camera2Session.this.doneCallback != null) {
                Camera2Session.this.doneCallback.run();
                Camera2Session.this.doneCallback = null;
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
            Camera2Session.this.captureSession = cameraCaptureSession;
            FileLog.e("Camera2Session camera #" + this.val$cameraId + " capture session failed to configure");
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onConfigureFailed$1();
                }
            });
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(CameraCaptureSession cameraCaptureSession) {
            Camera2Session.this.captureSession = cameraCaptureSession;
            FileLog.e("Camera2Session camera #" + this.val$cameraId + " capture session configured");
            Camera2Session.this.lastTime = System.currentTimeMillis();
            try {
                Camera2Session.this.updateCaptureRequest();
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onConfigured$0();
                    }
                });
            } catch (Exception e) {
                FileLog.e(e);
            }
        }
    }

    /* renamed from: org.telegram.messenger.camera.Camera2Session$3, reason: invalid class name */
    class AnonymousClass3 implements ImageReader.OnImageAvailableListener {
        final /* synthetic */ File val$file;
        final /* synthetic */ int val$orientation;
        final /* synthetic */ Utilities.Callback val$whenDone;

        AnonymousClass3(File file, Utilities.Callback callback, int i) {
            this.val$file = file;
            this.val$whenDone = callback;
            this.val$orientation = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onImageAvailable$0(Utilities.Callback callback, int i) {
            if (callback != null) {
                callback.run(Integer.valueOf(i));
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x0055 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // android.media.ImageReader.OnImageAvailableListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onImageAvailable(ImageReader imageReader) throws Throwable {
            FileOutputStream fileOutputStream;
            Throwable th;
            IOException e;
            Image imageAcquireLatestImage = imageReader.acquireLatestImage();
            ByteBuffer buffer = imageAcquireLatestImage.getPlanes()[0].getBuffer();
            byte[] bArr = new byte[buffer.remaining()];
            buffer.get(bArr);
            try {
                try {
                    fileOutputStream = new FileOutputStream(this.val$file);
                    try {
                        fileOutputStream.write(bArr);
                        imageAcquireLatestImage.close();
                    } catch (IOException e2) {
                        e = e2;
                        e.printStackTrace();
                        imageAcquireLatestImage.close();
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        final Utilities.Callback callback = this.val$whenDone;
                        final int i = this.val$orientation;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$3$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                Camera2Session.AnonymousClass3.lambda$onImageAvailable$0(callback, i);
                            }
                        });
                    }
                } catch (Throwable th2) {
                    th = th2;
                    imageAcquireLatestImage.close();
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e4) {
                fileOutputStream = null;
                e = e4;
            } catch (Throwable th3) {
                fileOutputStream = null;
                th = th3;
                imageAcquireLatestImage.close();
                if (fileOutputStream != null) {
                }
                throw th;
            }
            try {
                fileOutputStream.close();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
            final Utilities.Callback callback2 = this.val$whenDone;
            final int i2 = this.val$orientation;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Camera2Session.AnonymousClass3.lambda$onImageAvailable$0(callback2, i2);
                }
            });
        }
    }

    static class CompareSizesByArea implements Comparator<android.util.Size> {
        CompareSizesByArea() {
        }

        /* renamed from: compare, reason: avoid collision after fix types in other method */
        public int compare2(android.util.Size size, android.util.Size size2) {
            return Long.signum((size.getWidth() * size.getHeight()) - (size2.getWidth() * size2.getHeight()));
        }

        @Override // java.util.Comparator
        public /* bridge */ /* synthetic */ int compare(android.util.Size size, android.util.Size size2) {
            return compare2(BundleKt$$ExternalSyntheticApiModelOutline1.m(size), BundleKt$$ExternalSyntheticApiModelOutline1.m(size2));
        }
    }

    private Camera2Session(Context context, boolean z, String str, android.util.Size size) throws CameraAccessException {
        float fFloatValue = 1.0f;
        this.maxZoom = 1.0f;
        HandlerThread handlerThread = new HandlerThread("tg_camera2");
        this.thread = handlerThread;
        handlerThread.start();
        this.handler = new Handler(this.thread.getLooper());
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(str);
        this.cameraStateCallback = anonymousClass1;
        this.captureStateCallback = new AnonymousClass2(str);
        this.isFront = z;
        this.cameraId = str;
        this.previewSize = size;
        this.lastTime = System.currentTimeMillis();
        this.imageReader = ImageReader.newInstance(size.getWidth(), size.getHeight(), 256, 1);
        CameraManager cameraManagerM = Camera2Session$$ExternalSyntheticApiModelOutline9.m(context.getSystemService("camera"));
        this.cameraManager = cameraManagerM;
        try {
            CameraCharacteristics cameraCharacteristics = cameraManagerM.getCameraCharacteristics(str);
            this.cameraCharacteristics = cameraCharacteristics;
            this.sensorSize = (Rect) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
            Float f = (Float) this.cameraCharacteristics.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM);
            if (f != null && f.floatValue() >= 1.0f) {
                fFloatValue = f.floatValue();
            }
            this.maxZoom = fFloatValue;
            cameraManagerM.openCamera(str, anonymousClass1, this.handler);
        } catch (Exception e) {
            FileLog.e(e);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$$ExternalSyntheticLambda30
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkOpen() throws CameraAccessException {
        if (this.opened || this.surfaceTexture == null || this.cameraDevice == null) {
            return;
        }
        this.opened = true;
        this.surface = new Surface(this.surfaceTexture);
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.surface);
            arrayList.add(this.imageReader.getSurface());
            this.cameraDevice.createCaptureSession(arrayList, this.captureStateCallback, null);
        } catch (Exception e) {
            FileLog.e(e);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$$ExternalSyntheticLambda33
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$checkOpen$2();
                }
            });
        }
    }

    public static android.util.Size chooseOptimalSize(android.util.Size[] sizeArr, int i, int i2, boolean z) {
        ArrayList arrayList = new ArrayList(sizeArr.length);
        ArrayList arrayList2 = new ArrayList(sizeArr.length);
        for (android.util.Size size : sizeArr) {
            if (!z || (size.getHeight() <= i2 && size.getWidth() <= i)) {
                if (size.getHeight() == (size.getWidth() * i2) / i && size.getWidth() >= i && size.getHeight() >= i2) {
                    arrayList.add(size);
                } else if (size.getHeight() * size.getWidth() <= i * i2 * 4 && size.getWidth() >= i && size.getHeight() >= i2) {
                    arrayList2.add(size);
                }
            }
        }
        return BundleKt$$ExternalSyntheticApiModelOutline1.m(arrayList.size() > 0 ? Collections.min(arrayList, new CompareSizesByArea()) : arrayList2.size() > 0 ? Collections.min(arrayList2, new CompareSizesByArea()) : Collections.max(Arrays.asList(sizeArr), new CompareSizesByArea()));
    }

    public static Camera2Session create(boolean z, int i, int i2) {
        String str;
        android.util.Size size;
        CameraManager cameraManager;
        Context context = ApplicationLoader.applicationContext;
        CameraManager cameraManagerM = Camera2Session$$ExternalSyntheticApiModelOutline9.m(context.getSystemService("camera"));
        try {
            String[] cameraIdList = cameraManagerM.getCameraIdList();
            int i3 = 0;
            str = null;
            size = null;
            float f = BitmapDescriptorFactory.HUE_RED;
            while (i3 < cameraIdList.length) {
                try {
                    String str2 = cameraIdList[i3];
                    CameraCharacteristics cameraCharacteristics = cameraManagerM.getCameraCharacteristics(str2);
                    if (cameraCharacteristics != null && ((Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING)).intValue() == (!z)) {
                        StreamConfigurationMap streamConfigurationMapM = Camera2Session$$ExternalSyntheticApiModelOutline19.m(cameraCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP));
                        float width = BundleKt$$ExternalSyntheticApiModelOutline1.m(cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE)) == null ? BitmapDescriptorFactory.HUE_RED : r14.getWidth() / r14.getHeight();
                        float f2 = i / i2;
                        cameraManager = cameraManagerM;
                        if ((f2 >= 1.0f) != (width >= 1.0f)) {
                            width = 1.0f / width;
                        }
                        if (f <= BitmapDescriptorFactory.HUE_RED || Math.abs(f2 - f) > Math.abs(f2 - width)) {
                            if (streamConfigurationMapM != null && Build.VERSION.SDK_INT >= 23) {
                                android.util.Size sizeChooseOptimalSize = chooseOptimalSize(streamConfigurationMapM.getOutputSizes(SurfaceTexture.class), i, i2, false);
                                if (sizeChooseOptimalSize != null) {
                                    size = sizeChooseOptimalSize;
                                    str = str2;
                                    f = width;
                                }
                            }
                        }
                        i3++;
                        cameraManagerM = cameraManager;
                    } else {
                        cameraManager = cameraManagerM;
                    }
                    i3++;
                    cameraManagerM = cameraManager;
                } catch (Exception e) {
                    e = e;
                    FileLog.e(e);
                    return str == null ? null : null;
                }
            }
        } catch (Exception e2) {
            e = e2;
            str = null;
            size = null;
        }
        if (str == null && size != null) {
            return new Camera2Session(context, z, str, size);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int getJpegOrientation() {
        int i;
        try {
            Context context = ApplicationLoader.applicationContext;
            if (context == null) {
                return 0;
            }
            int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
            if (rotation == 0) {
                i = 0;
            } else if (rotation == 1) {
                i = 90;
            } else if (rotation == 2) {
                i = 180;
            } else if (rotation == 3) {
                i = 270;
            }
            Integer num = (Integer) this.cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION);
            return (this.isFront ? 360 - ((num.intValue() + i) % 360) : (num.intValue() - i) + 360) % 360;
        } catch (Exception e) {
            FileLog.e(e);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkOpen$2() {
        this.isError = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$destroy$3(Runnable runnable) throws InterruptedException {
        try {
            this.thread.join();
        } catch (Exception e) {
            FileLog.e(e);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$destroy$4(final Runnable runnable) {
        CameraCaptureSession cameraCaptureSession = this.captureSession;
        if (cameraCaptureSession != null) {
            cameraCaptureSession.close();
            this.captureSession = null;
        }
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice != null) {
            cameraDevice.close();
            this.cameraDevice = null;
        }
        ImageReader imageReader = this.imageReader;
        if (imageReader != null) {
            imageReader.close();
            this.imageReader = null;
        }
        this.thread.quitSafely();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() throws InterruptedException {
                this.f$0.lambda$destroy$3(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.isError = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$1(SurfaceTexture surfaceTexture) throws CameraAccessException {
        this.surfaceTexture = surfaceTexture;
        if (surfaceTexture != null) {
            surfaceTexture.setDefaultBufferSize(getPreviewWidth(), getPreviewHeight());
        }
        checkOpen();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0057 A[Catch: Exception -> 0x0036, TryCatch #0 {Exception -> 0x0036, blocks: (B:9:0x000e, B:16:0x001e, B:18:0x0028, B:19:0x0032, B:29:0x004d, B:31:0x0057, B:35:0x005e, B:37:0x0069, B:38:0x0090, B:40:0x0094, B:42:0x00a4, B:43:0x00e4, B:22:0x0039, B:24:0x003d, B:28:0x0048, B:12:0x0017), top: B:47:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0069 A[Catch: Exception -> 0x0036, TryCatch #0 {Exception -> 0x0036, blocks: (B:9:0x000e, B:16:0x001e, B:18:0x0028, B:19:0x0032, B:29:0x004d, B:31:0x0057, B:35:0x005e, B:37:0x0069, B:38:0x0090, B:40:0x0094, B:42:0x00a4, B:43:0x00e4, B:22:0x0039, B:24:0x003d, B:28:0x0048, B:12:0x0017), top: B:47:0x000e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateCaptureRequest() throws CameraAccessException {
        CaptureRequest.Key key;
        int iValueOf;
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice == null || this.surface == null || this.captureSession == null) {
            return;
        }
        try {
            int i = 1;
            CaptureRequest.Builder builderCreateCaptureRequest = cameraDevice.createCaptureRequest(this.recordingVideo ? 3 : this.scanningBarcode ? 2 : 1);
            this.captureRequestBuilder = builderCreateCaptureRequest;
            if (!this.scanningBarcode) {
                if (this.nightMode) {
                    key = CaptureRequest.CONTROL_SCENE_MODE;
                    iValueOf = Integer.valueOf(this.isFront ? 6 : 5);
                }
                CaptureRequest.Builder builder = this.captureRequestBuilder;
                CaptureRequest.Key key2 = CaptureRequest.FLASH_MODE;
                if (this.flashing) {
                    i = 0;
                } else if (this.recordingVideo) {
                    i = 2;
                }
                builder.set(key2, Integer.valueOf(i));
                if (this.recordingVideo) {
                    this.captureRequestBuilder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, new Range(30, 60));
                    this.captureRequestBuilder.set(CaptureRequest.CONTROL_CAPTURE_INTENT, 3);
                }
                if (this.sensorSize != null && Math.abs(this.currentZoom - 1.0f) >= 0.01f) {
                    int iWidth = this.sensorSize.width() / 2;
                    int iHeight = this.sensorSize.height() / 2;
                    int iWidth2 = (int) ((this.sensorSize.width() * 0.5f) / this.currentZoom);
                    int iHeight2 = (int) ((this.sensorSize.height() * 0.5f) / this.currentZoom);
                    this.cropRegion.set(iWidth - iWidth2, iHeight - iHeight2, iWidth + iWidth2, iHeight + iHeight2);
                    this.captureRequestBuilder.set(CaptureRequest.SCALER_CROP_REGION, this.cropRegion);
                }
                this.captureRequestBuilder.addTarget(this.surface);
                this.captureSession.setRepeatingRequest(this.captureRequestBuilder.build(), null, this.handler);
            }
            key = CaptureRequest.CONTROL_SCENE_MODE;
            iValueOf = 16;
            builderCreateCaptureRequest.set(key, iValueOf);
            CaptureRequest.Builder builder2 = this.captureRequestBuilder;
            CaptureRequest.Key key22 = CaptureRequest.FLASH_MODE;
            if (this.flashing) {
            }
            builder2.set(key22, Integer.valueOf(i));
            if (this.recordingVideo) {
            }
            if (this.sensorSize != null) {
                int iWidth3 = this.sensorSize.width() / 2;
                int iHeight3 = this.sensorSize.height() / 2;
                int iWidth22 = (int) ((this.sensorSize.width() * 0.5f) / this.currentZoom);
                int iHeight22 = (int) ((this.sensorSize.height() * 0.5f) / this.currentZoom);
                this.cropRegion.set(iWidth3 - iWidth22, iHeight3 - iHeight22, iWidth3 + iWidth22, iHeight3 + iHeight22);
                this.captureRequestBuilder.set(CaptureRequest.SCALER_CROP_REGION, this.cropRegion);
            }
            this.captureRequestBuilder.addTarget(this.surface);
            this.captureSession.setRepeatingRequest(this.captureRequestBuilder.build(), null, this.handler);
        } catch (Exception e) {
            FileLog.e("Camera2Sessions setRepeatingRequest error in updateCaptureRequest", e);
        }
    }

    public void destroy(boolean z) {
        destroy(z, null);
    }

    public void destroy(boolean z, final Runnable runnable) throws InterruptedException {
        this.isClosed = true;
        if (z) {
            this.handler.post(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$$ExternalSyntheticLambda32
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$destroy$4(runnable);
                }
            });
            return;
        }
        CameraCaptureSession cameraCaptureSession = this.captureSession;
        if (cameraCaptureSession != null) {
            cameraCaptureSession.close();
            this.captureSession = null;
        }
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice != null) {
            cameraDevice.close();
            this.cameraDevice = null;
        }
        ImageReader imageReader = this.imageReader;
        if (imageReader != null) {
            imageReader.close();
            this.imageReader = null;
        }
        this.thread.quitSafely();
        try {
            this.thread.join();
        } catch (Exception e) {
            FileLog.e(e);
        }
        if (runnable != null) {
            AndroidUtilities.runOnUIThread(runnable);
        }
    }

    public int getCurrentOrientation() {
        return getJpegOrientation();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getDisplayOrientation() {
        int i;
        try {
            Context context = ApplicationLoader.applicationContext;
            if (context == null) {
                return 0;
            }
            int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
            if (rotation == 0) {
                i = 0;
            } else if (rotation == 1) {
                i = 90;
            } else if (rotation == 2) {
                i = 180;
            } else if (rotation == 3) {
                i = 270;
            }
            Integer num = (Integer) this.cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION);
            return (this.isFront ? 360 - ((num.intValue() + i) % 360) : (num.intValue() - i) + 360) % 360;
        } catch (Exception e) {
            FileLog.e(e);
            return 0;
        }
    }

    public boolean getFlash() {
        return this.flashing;
    }

    public float getMaxZoom() {
        return this.maxZoom;
    }

    public float getMinZoom() {
        return 1.0f;
    }

    public int getPreviewHeight() {
        return this.previewSize.getHeight();
    }

    public int getPreviewWidth() {
        return this.previewSize.getWidth();
    }

    public int getWorldAngle() {
        int jpegOrientation = getJpegOrientation() - getDisplayOrientation();
        return jpegOrientation < 0 ? jpegOrientation + 360 : jpegOrientation;
    }

    public float getZoom() {
        return this.currentZoom;
    }

    public boolean isInitiated() {
        return (this.isError || !this.isSuccess || this.isClosed) ? false : true;
    }

    public void open(final SurfaceTexture surfaceTexture) {
        this.handler.post(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() throws CameraAccessException {
                this.f$0.lambda$open$1(surfaceTexture);
            }
        });
    }

    public void setFlash(boolean z) {
        if (this.flashing != z) {
            this.flashing = z;
            updateCaptureRequest();
        }
    }

    public void setNightMode(boolean z) throws CameraAccessException {
        if (this.nightMode != z) {
            this.nightMode = z;
            updateCaptureRequest();
        }
    }

    public void setRecordingVideo(boolean z) {
        if (this.recordingVideo != z) {
            this.recordingVideo = z;
            updateCaptureRequest();
        }
    }

    public void setScanningBarcode(boolean z) throws CameraAccessException {
        if (this.scanningBarcode != z) {
            this.scanningBarcode = z;
            updateCaptureRequest();
        }
    }

    public void setZoom(float f) {
        if (!isInitiated() || this.captureRequestBuilder == null || this.cameraDevice == null || this.sensorSize == null) {
            return;
        }
        this.currentZoom = Utilities.clamp(f, this.maxZoom, 1.0f);
        updateCaptureRequest();
        try {
            this.captureSession.setRepeatingRequest(this.captureRequestBuilder.build(), null, this.handler);
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    public boolean takePicture(File file, Utilities.Callback<Integer> callback) throws CameraAccessException {
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice != null && this.captureSession != null) {
            try {
                CaptureRequest.Builder builderCreateCaptureRequest = cameraDevice.createCaptureRequest(2);
                int jpegOrientation = getJpegOrientation();
                builderCreateCaptureRequest.set(CaptureRequest.JPEG_ORIENTATION, Integer.valueOf(jpegOrientation));
                this.imageReader.setOnImageAvailableListener(new AnonymousClass3(file, callback, jpegOrientation), null);
                if (this.scanningBarcode) {
                    builderCreateCaptureRequest.set(CaptureRequest.CONTROL_SCENE_MODE, 16);
                }
                builderCreateCaptureRequest.addTarget(this.imageReader.getSurface());
                this.captureSession.capture(builderCreateCaptureRequest.build(), new CameraCaptureSession.CaptureCallback() { // from class: org.telegram.messenger.camera.Camera2Session.4
                }, null);
                return true;
            } catch (Exception e) {
                FileLog.e("Camera2Sessions takePicture error", e);
            }
        }
        return false;
    }

    public void whenDone(Runnable runnable) {
        if (isInitiated()) {
            runnable.run();
            runnable = null;
        }
        this.doneCallback = runnable;
    }
}
