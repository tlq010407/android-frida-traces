package org.telegram.messenger;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Environment;
import android.os.SystemClock;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.location.base.activity.constant.ActivityRecognitionConstants;
import j$.util.concurrent.ConcurrentHashMap;
import j$.util.function.Consumer;
import j$.util.stream.Stream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.InterruptedIOException;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.zip.GZIPInputStream;
import org.json.JSONArray;
import org.json.JSONObject;
import org.telegram.DispatchQueuePriority;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FilePathDatabase;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.secretmedia.EncryptedFileInputStream;
import org.telegram.messenger.utils.BitmapsCache;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.Components.AnimatedFileDrawable;
import org.telegram.ui.Components.BackgroundGradientDrawable;
import org.telegram.ui.Components.MotionBackgroundDrawable;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.SlotsDrawable;
import org.telegram.ui.Components.ThemePreviewDrawable;
import org.telegram.ui.web.WebInstantView;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class ImageLoader {
    public static final String AUTOPLAY_FILTER = "g";
    public static final int CACHE_TYPE_CACHE = 1;
    public static final int CACHE_TYPE_ENCRYPTED = 2;
    public static final int CACHE_TYPE_NONE = 0;
    private static final boolean DEBUG_MODE = false;
    private boolean canForce8888;
    private LruCache<BitmapDrawable> lottieMemCache;
    private LruCache<BitmapDrawable> memCache;
    private LruCache<BitmapDrawable> smallImagesMemCache;
    private LruCache<BitmapDrawable> wallpaperMemCache;
    private static ThreadLocal<byte[]> bytesLocal = new ThreadLocal<>();
    private static ThreadLocal<byte[]> bytesThumbLocal = new ThreadLocal<>();
    private static byte[] header = new byte[12];
    private static byte[] headerThumb = new byte[12];
    private static volatile ImageLoader Instance = null;
    private HashMap<String, Integer> bitmapUseCounts = new HashMap<>();
    ArrayList<AnimatedFileDrawable> cachedAnimatedFileDrawables = new ArrayList<>();
    private HashMap<String, CacheImage> imageLoadingByUrl = new HashMap<>();
    private HashMap<String, CacheImage> imageLoadingByUrlPframe = new HashMap<>();
    public ConcurrentHashMap<String, CacheImage> imageLoadingByKeys = new ConcurrentHashMap<>();
    public HashSet<String> imageLoadingKeys = new HashSet<>();
    private SparseArray<CacheImage> imageLoadingByTag = new SparseArray<>();
    private HashMap<String, ThumbGenerateInfo> waitingForQualityThumb = new HashMap<>();
    private SparseArray<String> waitingForQualityThumbByTag = new SparseArray<>();
    private LinkedList<HttpImageTask> httpTasks = new LinkedList<>();
    private LinkedList<ArtworkLoadTask> artworkTasks = new LinkedList<>();
    private DispatchQueuePriority cacheOutQueue = new DispatchQueuePriority("cacheOutQueue");
    private DispatchQueue cacheThumbOutQueue = new DispatchQueue("cacheThumbOutQueue");
    private DispatchQueue thumbGeneratingQueue = new DispatchQueue("thumbGeneratingQueue");
    private DispatchQueue imageLoadQueue = new DispatchQueue("imageLoadQueue");
    private HashMap<String, String> replacedBitmaps = new HashMap<>();
    private ConcurrentHashMap<String, long[]> fileProgresses = new ConcurrentHashMap<>();
    private HashMap<String, ThumbGenerateTask> thumbGenerateTasks = new HashMap<>();
    private HashMap<String, Integer> forceLoadingImages = new HashMap<>();
    private int currentHttpTasksCount = 0;
    private int currentArtworkTasksCount = 0;
    private ConcurrentHashMap<String, WebFile> testWebFile = new ConcurrentHashMap<>();
    private LinkedList<HttpFileTask> httpFileLoadTasks = new LinkedList<>();
    private HashMap<String, HttpFileTask> httpFileLoadTasksByKeys = new HashMap<>();
    private HashMap<String, Runnable> retryHttpsTasks = new HashMap<>();
    private int currentHttpFileLoadTasksCount = 0;
    private String ignoreRemoval = null;
    private volatile long lastCacheOutTime = 0;
    private int lastImageNum = 0;
    private File telegramPath = null;

    /* renamed from: org.telegram.messenger.ImageLoader$5, reason: invalid class name */
    class AnonymousClass5 implements FileLoader.FileLoaderDelegate {
        final /* synthetic */ int val$currentAccount;

        AnonymousClass5(int i) {
            this.val$currentAccount = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fileDidFailedLoad$6(String str, int i, int i2) {
            ImageLoader.this.fileDidFailedLoad(str, i);
            NotificationCenter.getInstance(i2).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadFailed, str, Integer.valueOf(i));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$fileDidFailedUpload$3(int i, String str, boolean z) {
            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileUploadFailed, str, Boolean.valueOf(z));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fileDidFailedUpload$4(final int i, final String str, final boolean z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.AnonymousClass5.lambda$fileDidFailedUpload$3(i, str, z);
                }
            });
            ImageLoader.this.fileProgresses.remove(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fileDidLoaded$5(File file, String str, int i, Object obj, int i2) {
            FilePathDatabase.FileMeta fileMetadataFromParent;
            if (file != null && ((str.endsWith(".mp4") || str.endsWith(".jpg")) && (fileMetadataFromParent = FileLoader.getFileMetadataFromParent(i, obj)) != null)) {
                MessageObject messageObject = obj instanceof MessageObject ? (MessageObject) obj : null;
                long j = fileMetadataFromParent.dialogId;
                if (SaveToGallerySettingsHelper.needSave(j >= 0 ? 1 : ChatObject.isChannelAndNotMegaGroup(MessagesController.getInstance(i).getChat(Long.valueOf(-j))) ? 4 : 2, fileMetadataFromParent, messageObject, i)) {
                    AndroidUtilities.addMediaToGallery(file.toString());
                }
            }
            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoaded, str, file);
            ImageLoader.this.fileDidLoaded(str, file, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$fileDidUploaded$1(int i, String str, TLRPC.InputFile inputFile, TLRPC.InputEncryptedFile inputEncryptedFile, byte[] bArr, byte[] bArr2, long j) {
            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileUploaded, str, inputFile, inputEncryptedFile, bArr, bArr2, Long.valueOf(j));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fileDidUploaded$2(final int i, final String str, final TLRPC.InputFile inputFile, final TLRPC.InputEncryptedFile inputEncryptedFile, final byte[] bArr, final byte[] bArr2, final long j) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.AnonymousClass5.lambda$fileDidUploaded$1(i, str, inputFile, inputEncryptedFile, bArr, bArr2, j);
                }
            });
            ImageLoader.this.fileProgresses.remove(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fileLoadProgressChanged$7(String str, FileLoadOperation fileLoadOperation) {
            CacheImage cacheImage = (CacheImage) ImageLoader.this.imageLoadingByUrlPframe.remove(str);
            if (cacheImage == null) {
                return;
            }
            ImageLoader.this.imageLoadingByUrl.remove(str);
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < cacheImage.imageReceiverArray.size(); i++) {
                String str2 = cacheImage.keys.get(i);
                String str3 = cacheImage.filters.get(i);
                int iIntValue = cacheImage.types.get(i).intValue();
                ImageReceiver imageReceiver = cacheImage.imageReceiverArray.get(i);
                int iIntValue2 = cacheImage.imageReceiverGuidsArray.get(i).intValue();
                CacheImage cacheImage2 = ImageLoader.this.imageLoadingByKeys.get(str2);
                if (cacheImage2 == null) {
                    cacheImage2 = new CacheImage();
                    cacheImage2.priority = cacheImage.priority;
                    cacheImage2.secureDocument = cacheImage.secureDocument;
                    cacheImage2.currentAccount = cacheImage.currentAccount;
                    cacheImage2.finalFilePath = fileLoadOperation.getCurrentFile();
                    cacheImage2.parentObject = cacheImage.parentObject;
                    cacheImage2.isPFrame = cacheImage.isPFrame;
                    cacheImage2.key = str2;
                    cacheImage2.imageLocation = cacheImage.imageLocation;
                    cacheImage2.type = iIntValue;
                    cacheImage2.ext = cacheImage.ext;
                    cacheImage2.encryptionKeyPath = cacheImage.encryptionKeyPath;
                    cacheImage2.cacheTask = ImageLoader.this.new CacheOutTask(cacheImage2);
                    cacheImage2.filter = str3;
                    cacheImage2.imageType = cacheImage.imageType;
                    cacheImage2.cacheType = cacheImage.cacheType;
                    ImageLoader.this.imageLoadingByKeys.put(str2, cacheImage2);
                    ImageLoader.this.imageLoadingKeys.add(ImageLoader.cutFilter(str2));
                    arrayList.add(cacheImage2.cacheTask);
                }
                cacheImage2.addImageReceiver(imageReceiver, str2, str3, iIntValue, iIntValue2);
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                CacheOutTask cacheOutTask = (CacheOutTask) arrayList.get(i2);
                if (cacheOutTask.cacheImage.type == 1) {
                    ImageLoader.this.cacheThumbOutQueue.postRunnable(cacheOutTask);
                } else {
                    ImageLoader.this.cacheOutQueue.postRunnable(cacheOutTask, cacheOutTask.cacheImage.priority);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$fileLoadProgressChanged$8(int i, String str, long j, long j2) {
            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadProgressChanged, str, Long.valueOf(j), Long.valueOf(j2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$fileUploadProgressChanged$0(int i, String str, long j, long j2, boolean z) {
            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileUploadProgressChanged, str, Long.valueOf(j), Long.valueOf(j2), Boolean.valueOf(z));
        }

        @Override // org.telegram.messenger.FileLoader.FileLoaderDelegate
        public void fileDidFailedLoad(final String str, final int i) {
            ImageLoader.this.fileProgresses.remove(str);
            final int i2 = this.val$currentAccount;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fileDidFailedLoad$6(str, i, i2);
                }
            });
        }

        @Override // org.telegram.messenger.FileLoader.FileLoaderDelegate
        public void fileDidFailedUpload(final String str, final boolean z) {
            DispatchQueue dispatchQueue = Utilities.stageQueue;
            final int i = this.val$currentAccount;
            dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fileDidFailedUpload$4(i, str, z);
                }
            });
        }

        @Override // org.telegram.messenger.FileLoader.FileLoaderDelegate
        public void fileDidLoaded(final String str, final File file, final Object obj, final int i) {
            ImageLoader.this.fileProgresses.remove(str);
            final int i2 = this.val$currentAccount;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fileDidLoaded$5(file, str, i2, obj, i);
                }
            });
        }

        @Override // org.telegram.messenger.FileLoader.FileLoaderDelegate
        public void fileDidUploaded(final String str, final TLRPC.InputFile inputFile, final TLRPC.InputEncryptedFile inputEncryptedFile, final byte[] bArr, final byte[] bArr2, final long j) {
            DispatchQueue dispatchQueue = Utilities.stageQueue;
            final int i = this.val$currentAccount;
            dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fileDidUploaded$2(i, str, inputFile, inputEncryptedFile, bArr, bArr2, j);
                }
            });
        }

        @Override // org.telegram.messenger.FileLoader.FileLoaderDelegate
        public void fileLoadProgressChanged(final FileLoadOperation fileLoadOperation, final String str, final long j, final long j2) {
            ImageLoader.this.fileProgresses.put(str, new long[]{j, j2});
            if (!ImageLoader.this.imageLoadingByUrlPframe.isEmpty() && fileLoadOperation.checkPrefixPreloadFinished()) {
                ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$fileLoadProgressChanged$7(str, fileLoadOperation);
                    }
                });
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j3 = fileLoadOperation.lastProgressUpdateTime;
            if (j3 == 0 || j3 < jElapsedRealtime - 500 || j == 0) {
                fileLoadOperation.lastProgressUpdateTime = jElapsedRealtime;
                final int i = this.val$currentAccount;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageLoader.AnonymousClass5.lambda$fileLoadProgressChanged$8(i, str, j, j2);
                    }
                });
            }
        }

        @Override // org.telegram.messenger.FileLoader.FileLoaderDelegate
        public void fileUploadProgressChanged(FileUploadOperation fileUploadOperation, final String str, final long j, final long j2, final boolean z) {
            ImageLoader.this.fileProgresses.put(str, new long[]{j, j2});
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j3 = fileUploadOperation.lastProgressUpdateTime;
            if (j3 == 0 || j3 < jElapsedRealtime - 100 || j == j2) {
                fileUploadOperation.lastProgressUpdateTime = jElapsedRealtime;
                final int i = this.val$currentAccount;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageLoader.AnonymousClass5.lambda$fileUploadProgressChanged$0(i, str, j, j2, z);
                    }
                });
            }
        }
    }

    /* renamed from: org.telegram.messenger.ImageLoader$6, reason: invalid class name */
    class AnonymousClass6 extends BroadcastReceiver {
        AnonymousClass6() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceive$0() {
            ImageLoader.this.checkMediaPaths();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("file system changed");
            }
            Runnable runnable = new Runnable() { // from class: org.telegram.messenger.ImageLoader$6$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onReceive$0();
                }
            };
            if ("android.intent.action.MEDIA_UNMOUNTED".equals(intent.getAction())) {
                AndroidUtilities.runOnUIThread(runnable, 1000L);
            } else {
                runnable.run();
            }
        }
    }

    /* renamed from: org.telegram.messenger.ImageLoader$7, reason: invalid class name */
    static /* synthetic */ class AnonymousClass7 {
        static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$CompressFormat;

        static {
            int[] iArr = new int[Bitmap.CompressFormat.values().length];
            $SwitchMap$android$graphics$Bitmap$CompressFormat = iArr;
            try {
                iArr[Bitmap.CompressFormat.WEBP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$CompressFormat[Bitmap.CompressFormat.WEBP_LOSSY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$CompressFormat[Bitmap.CompressFormat.WEBP_LOSSLESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ArtworkLoadTask extends AsyncTask<Void, Void, String> {
        private CacheImage cacheImage;
        private boolean canRetry = true;
        private HttpURLConnection httpConnection;
        private boolean small;

        public ArtworkLoadTask(CacheImage cacheImage) {
            this.cacheImage = cacheImage;
            this.small = Uri.parse(cacheImage.imageLocation.path).getQueryParameter("s") != null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCancelled$2() {
            ImageLoader.this.runArtworkTasks(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$0(String str) {
            CacheImage cacheImage = this.cacheImage;
            cacheImage.httpTask = ImageLoader.this.new HttpImageTask(cacheImage, 0, str);
            ImageLoader.this.httpTasks.add(this.cacheImage.httpTask);
            ImageLoader.this.runHttpTasks(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$1() {
            ImageLoader.this.runArtworkTasks(true);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:149:0x00e2 A[EXC_TOP_SPLITTER, PHI: r2
          0x00e2: PHI (r2v4 java.io.ByteArrayOutputStream) = 
          (r2v3 java.io.ByteArrayOutputStream)
          (r2v9 java.io.ByteArrayOutputStream)
          (r2v9 java.io.ByteArrayOutputStream)
          (r2v9 java.io.ByteArrayOutputStream)
         binds: [B:105:0x0132, B:64:0x00d8, B:68:0x00df, B:65:0x00da] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:153:0x012a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:76:0x00f1 A[Catch: all -> 0x00f8, TryCatch #15 {all -> 0x00f8, blocks: (B:74:0x00ed, B:76:0x00f1, B:93:0x011a, B:94:0x011c, B:81:0x00fa, B:84:0x00ff, B:86:0x0103, B:88:0x0109, B:91:0x0116), top: B:157:0x00ed }] */
        /* JADX WARN: Removed duplicated region for block: B:81:0x00fa A[Catch: all -> 0x00f8, TryCatch #15 {all -> 0x00f8, blocks: (B:74:0x00ed, B:76:0x00f1, B:93:0x011a, B:94:0x011c, B:81:0x00fa, B:84:0x00ff, B:86:0x0103, B:88:0x0109, B:91:0x0116), top: B:157:0x00ed }] */
        /* JADX WARN: Removed duplicated region for block: B:97:0x0123 A[Catch: all -> 0x0127, TRY_LEAVE, TryCatch #8 {all -> 0x0127, blocks: (B:95:0x011f, B:97:0x0123), top: B:143:0x011f }] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public String doInBackground(Void... voidArr) throws IOException {
            InputStream inputStream;
            Throwable th;
            InputStream inputStream2;
            ByteArrayOutputStream byteArrayOutputStream;
            HttpURLConnection httpURLConnection;
            JSONArray jSONArray;
            int i;
            int responseCode;
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(this.cacheImage.imageLocation.path.replace("athumb://", "https://")).openConnection();
                this.httpConnection = httpURLConnection2;
                httpURLConnection2.setConnectTimeout(5000);
                this.httpConnection.setReadTimeout(5000);
                this.httpConnection.connect();
                try {
                    HttpURLConnection httpURLConnection3 = this.httpConnection;
                    if (httpURLConnection3 != null && (responseCode = httpURLConnection3.getResponseCode()) != 200 && responseCode != 202 && responseCode != 304) {
                        this.canRetry = false;
                    }
                } catch (Exception e) {
                    FileLog.e((Throwable) e, false);
                }
                inputStream2 = this.httpConnection.getInputStream();
            } catch (Throwable th2) {
                th = th2;
                inputStream = null;
            }
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
            } catch (Throwable th3) {
                inputStream = inputStream2;
                th = th3;
                th = th;
                inputStream2 = inputStream;
                byteArrayOutputStream = null;
                try {
                    if (th instanceof SocketTimeoutException) {
                        if (!(th instanceof UnknownHostException)) {
                            if (th instanceof SocketException) {
                                if (th.getMessage() != null && th.getMessage().contains("ECONNRESET")) {
                                }
                                FileLog.e(th, false);
                                httpURLConnection = this.httpConnection;
                                if (httpURLConnection != null) {
                                }
                                if (inputStream2 != null) {
                                }
                                if (byteArrayOutputStream != null) {
                                }
                            } else {
                                if (th instanceof FileNotFoundException) {
                                }
                                FileLog.e(th, false);
                                httpURLConnection = this.httpConnection;
                                if (httpURLConnection != null) {
                                }
                                if (inputStream2 != null) {
                                }
                                if (byteArrayOutputStream != null) {
                                }
                            }
                        }
                        this.canRetry = false;
                        FileLog.e(th, false);
                        httpURLConnection = this.httpConnection;
                        if (httpURLConnection != null) {
                        }
                        if (inputStream2 != null) {
                        }
                        if (byteArrayOutputStream != null) {
                        }
                    } else {
                        if (ApplicationLoader.isNetworkOnline()) {
                            this.canRetry = false;
                        }
                        FileLog.e(th, false);
                        try {
                            httpURLConnection = this.httpConnection;
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        } catch (Throwable unused) {
                        }
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (Throwable th4) {
                                FileLog.e(th4);
                            }
                        }
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Exception unused2) {
                            }
                        }
                    }
                    return null;
                } finally {
                    try {
                        HttpURLConnection httpURLConnection4 = this.httpConnection;
                        if (httpURLConnection4 != null) {
                            httpURLConnection4.disconnect();
                        }
                    } catch (Throwable unused3) {
                    }
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (Throwable th5) {
                            FileLog.e(th5);
                        }
                    }
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception unused4) {
                        }
                    }
                }
            }
            try {
                byte[] bArr = new byte[LiteMode.FLAG_CHAT_SCALE];
                while (!isCancelled() && (i = inputStream2.read(bArr)) > 0) {
                    byteArrayOutputStream.write(bArr, 0, i);
                }
                this.canRetry = false;
                jSONArray = new JSONObject(new String(byteArrayOutputStream.toByteArray())).getJSONArray("results");
            } catch (Throwable th6) {
                th = th6;
                if (th instanceof SocketTimeoutException) {
                }
                return null;
            }
            if (jSONArray.length() <= 0) {
                try {
                    HttpURLConnection httpURLConnection5 = this.httpConnection;
                    if (httpURLConnection5 != null) {
                        httpURLConnection5.disconnect();
                    }
                } catch (Throwable unused5) {
                }
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (Throwable th7) {
                        FileLog.e(th7);
                    }
                }
                byteArrayOutputStream.close();
                return null;
            }
            String string = jSONArray.getJSONObject(0).getString("artworkUrl100");
            if (this.small) {
                try {
                    HttpURLConnection httpURLConnection6 = this.httpConnection;
                    if (httpURLConnection6 != null) {
                        httpURLConnection6.disconnect();
                    }
                } catch (Throwable unused6) {
                }
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (Throwable th8) {
                        FileLog.e(th8);
                    }
                }
                try {
                    byteArrayOutputStream.close();
                } catch (Exception unused7) {
                }
                return string;
            }
            String strReplace = string.replace("100x100", "600x600");
            try {
                HttpURLConnection httpURLConnection7 = this.httpConnection;
                if (httpURLConnection7 != null) {
                    httpURLConnection7.disconnect();
                }
            } catch (Throwable unused8) {
            }
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (Throwable th9) {
                    FileLog.e(th9);
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (Exception unused9) {
            }
            return strReplace;
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$ArtworkLoadTask$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCancelled$2();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(final String str) {
            if (str != null) {
                ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$ArtworkLoadTask$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onPostExecute$0(str);
                    }
                });
            } else if (this.canRetry) {
                ImageLoader.this.artworkLoadError(this.cacheImage.url);
            }
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$ArtworkLoadTask$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPostExecute$1();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class CacheImage {
        protected ArtworkLoadTask artworkTask;
        protected CacheOutTask cacheTask;
        protected int cacheType;
        protected int currentAccount;
        protected File encryptionKeyPath;
        protected String ext;
        protected String filter;
        protected ArrayList<String> filters;
        protected File finalFilePath;
        protected HttpImageTask httpTask;
        protected ImageLocation imageLocation;
        protected ArrayList<ImageReceiver> imageReceiverArray;
        protected ArrayList<Integer> imageReceiverGuidsArray;
        protected int imageType;
        public boolean isPFrame;
        protected String key;
        protected ArrayList<String> keys;
        protected Object parentObject;
        public int priority;
        public Runnable runningTask;
        protected SecureDocument secureDocument;
        protected long size;
        protected File tempFilePath;
        protected int type;
        protected ArrayList<Integer> types;
        protected String url;

        private CacheImage() {
            this.priority = 1;
            this.imageReceiverArray = new ArrayList<>();
            this.imageReceiverGuidsArray = new ArrayList<>();
            this.keys = new ArrayList<>();
            this.filters = new ArrayList<>();
            this.types = new ArrayList<>();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:34:? A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$setImageAndClear$0(Drawable drawable, ArrayList arrayList, ArrayList arrayList2, String str) {
            int i = 0;
            if (drawable instanceof AnimatedFileDrawable) {
                AnimatedFileDrawable animatedFileDrawable = (AnimatedFileDrawable) drawable;
                if (animatedFileDrawable.isWebmSticker) {
                    while (i < arrayList.size()) {
                        ((ImageReceiver) arrayList.get(i)).setImageBitmapByKey(drawable, this.key, this.types.get(i).intValue(), false, ((Integer) arrayList2.get(i)).intValue());
                        i++;
                    }
                } else {
                    boolean z = false;
                    while (i < arrayList.size()) {
                        ImageReceiver imageReceiver = (ImageReceiver) arrayList.get(i);
                        AnimatedFileDrawable animatedFileDrawableMakeCopy = i == 0 ? animatedFileDrawable : animatedFileDrawable.makeCopy();
                        if (imageReceiver.setImageBitmapByKey(animatedFileDrawableMakeCopy, this.key, this.type, false, ((Integer) arrayList2.get(i)).intValue())) {
                            if (animatedFileDrawableMakeCopy == animatedFileDrawable) {
                                z = true;
                            }
                        } else if (animatedFileDrawableMakeCopy != animatedFileDrawable) {
                            animatedFileDrawableMakeCopy.recycle();
                        }
                        i++;
                    }
                    if (!z) {
                        animatedFileDrawable.recycle();
                    }
                }
            }
            if (str != null) {
                ImageLoader.this.decrementUseCount(str);
            }
        }

        public void addImageReceiver(ImageReceiver imageReceiver, String str, String str2, int i, int i2) {
            int iIndexOf = this.imageReceiverArray.indexOf(imageReceiver);
            if (iIndexOf >= 0 && Objects.equals(this.imageReceiverArray.get(iIndexOf).getImageKey(), str)) {
                this.imageReceiverGuidsArray.set(iIndexOf, Integer.valueOf(i2));
                return;
            }
            this.imageReceiverArray.add(imageReceiver);
            this.imageReceiverGuidsArray.add(Integer.valueOf(i2));
            this.keys.add(str);
            this.filters.add(str2);
            this.types.add(Integer.valueOf(i));
            ImageLoader.this.imageLoadingByTag.put(imageReceiver.getTag(i), this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v0, types: [org.telegram.messenger.FileLoader] */
        /* JADX WARN: Type inference failed for: r6v0 */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v6 */
        /* JADX WARN: Type inference failed for: r6v7, types: [org.telegram.messenger.SecureDocument] */
        /* JADX WARN: Type inference failed for: r6v8 */
        /* JADX WARN: Type inference failed for: r7v5, types: [org.telegram.messenger.WebFile] */
        /* JADX WARN: Type inference failed for: r7v6 */
        /* JADX WARN: Type inference failed for: r7v7 */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v2 */
        void changePriority(int i) {
            TLRPC.Document document;
            ?? r6;
            TLObject tLObject;
            TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated;
            TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated2;
            ?? r9;
            ?? r7;
            ImageLocation imageLocation = this.imageLocation;
            if (imageLocation != null) {
                TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated3 = imageLocation.location;
                if (tL_fileLocationToBeDeprecated3 != null) {
                    r9 = this.ext;
                    tL_fileLocationToBeDeprecated = tL_fileLocationToBeDeprecated3;
                    document = null;
                    r6 = null;
                    r7 = 0;
                } else {
                    TLRPC.Document document2 = imageLocation.document;
                    if (document2 != null) {
                        document = document2;
                        r6 = null;
                    } else {
                        SecureDocument secureDocument = imageLocation.secureDocument;
                        if (secureDocument != null) {
                            r6 = secureDocument;
                            document = null;
                            tL_fileLocationToBeDeprecated2 = null;
                            tL_fileLocationToBeDeprecated = tL_fileLocationToBeDeprecated2;
                            tLObject = tL_fileLocationToBeDeprecated2;
                            r9 = tL_fileLocationToBeDeprecated;
                            r7 = tLObject;
                        } else {
                            TLObject tLObject2 = imageLocation.webFile;
                            if (tLObject2 != null) {
                                tLObject = tLObject2;
                                document = null;
                                r6 = null;
                                tL_fileLocationToBeDeprecated = null;
                                r9 = tL_fileLocationToBeDeprecated;
                                r7 = tLObject;
                            } else {
                                document = null;
                                r6 = null;
                            }
                        }
                    }
                    tL_fileLocationToBeDeprecated2 = r6;
                    tL_fileLocationToBeDeprecated = tL_fileLocationToBeDeprecated2;
                    tLObject = tL_fileLocationToBeDeprecated2;
                    r9 = tL_fileLocationToBeDeprecated;
                    r7 = tLObject;
                }
                FileLoader.getInstance(this.currentAccount).changePriority(i, document, r6, r7, tL_fileLocationToBeDeprecated, r9, null);
            }
        }

        public void removeImageReceiver(ImageReceiver imageReceiver) {
            int iIntValue = this.type;
            int i = 0;
            while (i < this.imageReceiverArray.size()) {
                ImageReceiver imageReceiver2 = this.imageReceiverArray.get(i);
                if (imageReceiver2 == null || imageReceiver2 == imageReceiver) {
                    this.imageReceiverArray.remove(i);
                    this.imageReceiverGuidsArray.remove(i);
                    this.keys.remove(i);
                    this.filters.remove(i);
                    iIntValue = this.types.remove(i).intValue();
                    if (imageReceiver2 != null) {
                        ImageLoader.this.imageLoadingByTag.remove(imageReceiver2.getTag(iIntValue));
                    }
                    i--;
                }
                i++;
            }
            if (this.imageReceiverArray.isEmpty()) {
                if (this.imageLocation != null && !ImageLoader.this.forceLoadingImages.containsKey(this.key)) {
                    ImageLocation imageLocation = this.imageLocation;
                    if (imageLocation.location != null) {
                        FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.imageLocation.location, this.ext);
                    } else if (imageLocation.document != null) {
                        FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.imageLocation.document);
                    } else if (imageLocation.secureDocument != null) {
                        FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.imageLocation.secureDocument);
                    } else if (imageLocation.webFile != null) {
                        FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.imageLocation.webFile);
                    }
                }
                if (this.cacheTask != null) {
                    ImageLoader imageLoader = ImageLoader.this;
                    if (iIntValue == 1) {
                        imageLoader.cacheThumbOutQueue.cancelRunnable(this.cacheTask);
                    } else {
                        imageLoader.cacheOutQueue.cancelRunnable(this.cacheTask);
                        ImageLoader.this.cacheOutQueue.cancelRunnable(this.runningTask);
                    }
                    this.cacheTask.cancel();
                    this.cacheTask = null;
                }
                if (this.httpTask != null) {
                    ImageLoader.this.httpTasks.remove(this.httpTask);
                    this.httpTask.cancel(true);
                    this.httpTask = null;
                }
                if (this.artworkTask != null) {
                    ImageLoader.this.artworkTasks.remove(this.artworkTask);
                    this.artworkTask.cancel(true);
                    this.artworkTask = null;
                }
                if (this.url != null) {
                    ImageLoader.this.imageLoadingByUrl.remove(this.url);
                }
                if (this.url != null) {
                    ImageLoader.this.imageLoadingByUrlPframe.remove(this.url);
                }
                String str = this.key;
                if (str != null) {
                    ImageLoader.this.imageLoadingByKeys.remove(str);
                    ImageLoader.this.imageLoadingKeys.remove(ImageLoader.cutFilter(this.key));
                }
            }
        }

        public void replaceImageReceiver(ImageReceiver imageReceiver, String str, String str2, int i, int i2) {
            int iIndexOf = this.imageReceiverArray.indexOf(imageReceiver);
            if (iIndexOf == -1) {
                return;
            }
            if (this.types.get(iIndexOf).intValue() != i) {
                ArrayList<ImageReceiver> arrayList = this.imageReceiverArray;
                iIndexOf = arrayList.subList(iIndexOf + 1, arrayList.size()).indexOf(imageReceiver);
                if (iIndexOf == -1) {
                    return;
                }
            }
            this.imageReceiverGuidsArray.set(iIndexOf, Integer.valueOf(i2));
            this.keys.set(iIndexOf, str);
            this.filters.set(iIndexOf, str2);
        }

        public void setImageAndClear(final Drawable drawable, final String str) {
            if (drawable != null) {
                final ArrayList arrayList = new ArrayList(this.imageReceiverArray);
                final ArrayList arrayList2 = new ArrayList(this.imageReceiverGuidsArray);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$CacheImage$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setImageAndClear$0(drawable, arrayList, arrayList2, str);
                    }
                });
            }
            for (int i = 0; i < this.imageReceiverArray.size(); i++) {
                ImageLoader.this.imageLoadingByTag.remove(this.imageReceiverArray.get(i).getTag(this.type));
            }
            this.imageReceiverArray.clear();
            this.imageReceiverGuidsArray.clear();
            if (this.url != null) {
                ImageLoader.this.imageLoadingByUrl.remove(this.url);
            }
            if (this.url != null) {
                ImageLoader.this.imageLoadingByUrlPframe.remove(this.url);
            }
            String str2 = this.key;
            if (str2 != null) {
                ImageLoader.this.imageLoadingByKeys.remove(str2);
                ImageLoader.this.imageLoadingKeys.remove(ImageLoader.cutFilter(this.key));
            }
        }

        public void setImageReceiverGuid(ImageReceiver imageReceiver, int i) {
            int iIndexOf = this.imageReceiverArray.indexOf(imageReceiver);
            if (iIndexOf == -1) {
                return;
            }
            this.imageReceiverGuidsArray.set(iIndexOf, Integer.valueOf(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class CacheOutTask implements Runnable {
        private CacheImage cacheImage;
        private boolean isCancelled;
        private Thread runningThread;
        private final Object sync = new Object();

        public CacheOutTask(CacheImage cacheImage) {
            this.cacheImage = cacheImage;
        }

        private Bitmap applyWallpaperSetting(Bitmap bitmap, TLRPC.WallPaper wallPaper) {
            int patternColor;
            if (!wallPaper.pattern || wallPaper.settings == null) {
                TLRPC.WallPaperSettings wallPaperSettings = wallPaper.settings;
                return (wallPaperSettings == null || !wallPaperSettings.blur) ? bitmap : Utilities.blurWallpaper(bitmap);
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            TLRPC.WallPaperSettings wallPaperSettings2 = wallPaper.settings;
            boolean z = true;
            if (wallPaperSettings2.second_background_color == 0) {
                patternColor = AndroidUtilities.getPatternColor(wallPaperSettings2.background_color);
                canvas.drawColor(ColorUtils.setAlphaComponent(wallPaper.settings.background_color, 255));
            } else {
                int i = wallPaperSettings2.third_background_color;
                int alphaComponent = ColorUtils.setAlphaComponent(wallPaperSettings2.background_color, 255);
                if (i == 0) {
                    int alphaComponent2 = ColorUtils.setAlphaComponent(wallPaper.settings.second_background_color, 255);
                    int averageColor = AndroidUtilities.getAverageColor(alphaComponent, alphaComponent2);
                    GradientDrawable gradientDrawable = new GradientDrawable(BackgroundGradientDrawable.getGradientOrientation(wallPaper.settings.rotation), new int[]{alphaComponent, alphaComponent2});
                    gradientDrawable.setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                    gradientDrawable.draw(canvas);
                    patternColor = averageColor;
                } else {
                    int alphaComponent3 = ColorUtils.setAlphaComponent(wallPaper.settings.second_background_color, 255);
                    int alphaComponent4 = ColorUtils.setAlphaComponent(wallPaper.settings.third_background_color, 255);
                    int i2 = wallPaper.settings.fourth_background_color;
                    int alphaComponent5 = i2 == 0 ? 0 : ColorUtils.setAlphaComponent(i2, 255);
                    int patternColor2 = MotionBackgroundDrawable.getPatternColor(alphaComponent, alphaComponent3, alphaComponent4, alphaComponent5);
                    MotionBackgroundDrawable motionBackgroundDrawable = new MotionBackgroundDrawable();
                    motionBackgroundDrawable.setColors(alphaComponent, alphaComponent3, alphaComponent4, alphaComponent5);
                    motionBackgroundDrawable.setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                    motionBackgroundDrawable.setPatternBitmap(wallPaper.settings.intensity, bitmap);
                    motionBackgroundDrawable.draw(canvas);
                    patternColor = patternColor2;
                    z = false;
                }
            }
            if (z) {
                Paint paint = new Paint(2);
                paint.setColorFilter(new PorterDuffColorFilter(patternColor, PorterDuff.Mode.SRC_IN));
                paint.setAlpha((int) ((wallPaper.settings.intensity / 100.0f) * 255.0f));
                canvas.drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
            }
            return bitmapCreateBitmap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$0(Drawable drawable, String str) {
            this.cacheImage.setImageAndClear(drawable, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0059 A[PHI: r6
          0x0059: PHI (r6v11 android.graphics.drawable.Drawable) = 
          (r6v5 android.graphics.drawable.Drawable)
          (r6v7 android.graphics.drawable.Drawable)
          (r6v10 android.graphics.drawable.Drawable)
          (r6v17 android.graphics.drawable.Drawable)
         binds: [B:39:0x00e7, B:17:0x0056, B:16:0x0047, B:8:0x002c] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$onPostExecute$1(final Drawable drawable) {
            boolean z = false;
            final String str = null;
            if (drawable instanceof RLottieDrawable) {
                RLottieDrawable rLottieDrawable = (RLottieDrawable) drawable;
                Drawable drawable2 = (Drawable) ImageLoader.this.lottieMemCache.get(this.cacheImage.key);
                if (drawable2 == null) {
                    ImageLoader.this.lottieMemCache.put(this.cacheImage.key, rLottieDrawable);
                    drawable = rLottieDrawable;
                } else {
                    rLottieDrawable.recycle(false);
                    drawable = drawable2;
                }
                if (drawable != null) {
                    ImageLoader.this.incrementUseCount(this.cacheImage.key);
                    str = this.cacheImage.key;
                }
            } else if (drawable instanceof AnimatedFileDrawable) {
                AnimatedFileDrawable animatedFileDrawable = (AnimatedFileDrawable) drawable;
                if (animatedFileDrawable.isWebmSticker) {
                    drawable = ImageLoader.this.getFromLottieCache(this.cacheImage.key);
                    if (drawable == null) {
                        ImageLoader.this.lottieMemCache.put(this.cacheImage.key, animatedFileDrawable);
                        drawable = animatedFileDrawable;
                    } else {
                        animatedFileDrawable.recycle();
                    }
                    ImageLoader.this.incrementUseCount(this.cacheImage.key);
                    str = this.cacheImage.key;
                }
            } else if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                BitmapDrawable fromMemCache = ImageLoader.this.getFromMemCache(this.cacheImage.key);
                boolean z2 = true;
                if (fromMemCache == null) {
                    if (this.cacheImage.key.endsWith("_f")) {
                        ImageLoader.this.wallpaperMemCache.put(this.cacheImage.key, bitmapDrawable);
                    } else {
                        ((this.cacheImage.key.endsWith("_isc") || ((float) bitmapDrawable.getBitmap().getWidth()) > AndroidUtilities.density * 80.0f || ((float) bitmapDrawable.getBitmap().getHeight()) > AndroidUtilities.density * 80.0f) ? ImageLoader.this.memCache : ImageLoader.this.smallImagesMemCache).put(this.cacheImage.key, bitmapDrawable);
                        z = true;
                    }
                    z2 = z;
                    drawable = bitmapDrawable;
                } else {
                    AndroidUtilities.recycleBitmap(bitmapDrawable.getBitmap());
                    drawable = fromMemCache;
                }
                if (drawable != null && z2) {
                }
            } else {
                drawable = null;
            }
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$CacheOutTask$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPostExecute$0(drawable, str);
                }
            }, this.cacheImage.priority);
        }

        private void loadLastFrame(RLottieDrawable rLottieDrawable, int i, int i2, boolean z, boolean z2) {
            Bitmap bitmapCreateBitmap;
            Canvas canvas;
            Drawable bitmapDrawable;
            if (z && z2) {
                float f = i * 1.2f;
                float f2 = i2 * 1.2f;
                bitmapCreateBitmap = Bitmap.createBitmap((int) f, (int) f2, Bitmap.Config.ARGB_8888);
                canvas = new Canvas(bitmapCreateBitmap);
                canvas.scale(2.0f, 2.0f, f / 2.0f, f2 / 2.0f);
            } else {
                bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                canvas = new Canvas(bitmapCreateBitmap);
            }
            rLottieDrawable.prepareForGenerateCache();
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(rLottieDrawable.getIntrinsicWidth(), rLottieDrawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
            rLottieDrawable.setGeneratingFrame(z ? rLottieDrawable.getFramesCount() - 1 : 0);
            rLottieDrawable.getNextFrame(bitmapCreateBitmap2);
            rLottieDrawable.releaseForGenerateCache();
            canvas.save();
            if (!z || !z2) {
                canvas.scale(bitmapCreateBitmap2.getWidth() / i, bitmapCreateBitmap2.getHeight() / i2, i / 2.0f, i2 / 2.0f);
            }
            Paint paint = new Paint(1);
            paint.setFilterBitmap(true);
            if (z && z2) {
                canvas.drawBitmap(bitmapCreateBitmap2, (bitmapCreateBitmap.getWidth() - bitmapCreateBitmap2.getWidth()) / 2.0f, (bitmapCreateBitmap.getHeight() - bitmapCreateBitmap2.getHeight()) / 2.0f, paint);
                bitmapDrawable = new ImageReceiver.ReactionLastFrame(bitmapCreateBitmap);
            } else {
                canvas.drawBitmap(bitmapCreateBitmap2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
                bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
            }
            rLottieDrawable.recycle(false);
            bitmapCreateBitmap2.recycle();
            onPostExecute(bitmapDrawable);
        }

        private void onPostExecute(final Drawable drawable) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$CacheOutTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPostExecute$1(drawable);
                }
            });
        }

        public void cancel() {
            synchronized (this.sync) {
                try {
                    this.isCancelled = true;
                    Thread thread = this.runningThread;
                    if (thread != null) {
                        thread.interrupt();
                    }
                } catch (Exception unused) {
                }
            }
        }

        /* JADX WARN: Can't wrap try/catch for region: R(12:362|363|(1:365)|366|(2:918|367)|(17:369|(5:371|372|909|373|374)(1:384)|970|385|(1:387)(2:388|(1:390)(2:391|(1:393)(2:394|(1:396)(1:397))))|960|398|934|399|(1:401)(2:403|(1:405))|402|406|(1:484)(10:410|930|(2:425|(12:944|427|(1:432)(1:431)|(1:434)|435|436|437|438|(1:447)(1:443)|444|448|(1:450))(4:453|(1:455)(1:457)|456|458))(2:(4:956|414|415|416)(1:423)|417)|459|(1:465)(1:463)|464|466|(1:468)|469|(1:481)(3:475|(2:476|(1:983)(1:480))|478))|485|486|522|(3:968|524|851)(3:641|(1:643)(1:644)|(5:950|646|(2:648|(1:652))(1:656)|657|ae1)(0)))(5:491|(10:493|924|494|(1:496)(1:499)|500|954|501|(1:503)|504|(4:506|(2:507|(1:985)(1:514))|509|510)(1:515))(1:520)|511|522|(0)(0))|911|516|517|486|522|(0)(0)) */
        /* JADX WARN: Code restructure failed: missing block: B:359:0x0597, code lost:
        
            if (r0.startsWith("http") == false) goto L360;
         */
        /* JADX WARN: Code restructure failed: missing block: B:518:0x0828, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:519:0x0829, code lost:
        
            r39 = r6;
            r6 = r4;
            r4 = r39;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Not initialized variable reg: 36, insn: 0x08cf: MOVE (r8 I:??[OBJECT, ARRAY]) = (r36 I:??[OBJECT, ARRAY]), block:B:566:0x08cf */
        /* JADX WARN: Removed duplicated region for block: B:119:0x0207  */
        /* JADX WARN: Removed duplicated region for block: B:139:0x022c A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:142:0x0231  */
        /* JADX WARN: Removed duplicated region for block: B:148:0x023c  */
        /* JADX WARN: Removed duplicated region for block: B:161:0x0268  */
        /* JADX WARN: Removed duplicated region for block: B:165:0x0270  */
        /* JADX WARN: Removed duplicated region for block: B:166:0x028d  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
        /* JADX WARN: Removed duplicated region for block: B:195:0x0300  */
        /* JADX WARN: Removed duplicated region for block: B:226:0x0369  */
        /* JADX WARN: Removed duplicated region for block: B:227:0x036e  */
        /* JADX WARN: Removed duplicated region for block: B:278:0x042b A[PHI: r0
          0x042b: PHI (r0v280 org.telegram.ui.Components.AnimatedFileDrawable) = (r0v367 org.telegram.ui.Components.AnimatedFileDrawable), (r0v368 org.telegram.ui.Components.AnimatedFileDrawable) binds: [B:276:0x0428, B:315:0x04e6] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:280:0x0431  */
        /* JADX WARN: Removed duplicated region for block: B:285:0x045a  */
        /* JADX WARN: Removed duplicated region for block: B:318:0x04ec  */
        /* JADX WARN: Removed duplicated region for block: B:323:0x0506  */
        /* JADX WARN: Removed duplicated region for block: B:365:0x05b0  */
        /* JADX WARN: Removed duplicated region for block: B:369:0x05c0 A[Catch: all -> 0x05ef, TryCatch #7 {all -> 0x05ef, blocks: (B:367:0x05ba, B:369:0x05c0, B:371:0x05c9), top: B:918:0x05ba }] */
        /* JADX WARN: Removed duplicated region for block: B:491:0x07a4  */
        /* JADX WARN: Removed duplicated region for block: B:641:0x0a93  */
        /* JADX WARN: Removed duplicated region for block: B:656:0x0ad2  */
        /* JADX WARN: Removed duplicated region for block: B:674:0x0b00 A[Catch: all -> 0x0ac9, TryCatch #25 {all -> 0x0ac9, blocks: (B:646:0x0a9e, B:648:0x0aaa, B:650:0x0abf, B:652:0x0ac5, B:657:0x0ad6, B:658:0x0ae1, B:667:0x0aee, B:670:0x0af6, B:673:0x0afd, B:675:0x0b02, B:679:0x0b0d, B:681:0x0b17, B:686:0x0b43, B:688:0x0b54, B:674:0x0b00, B:847:0x0d8a, B:659:0x0ae2, B:661:0x0ae6, B:665:0x0aeb), top: B:950:0x0a9e, inners: #3 }] */
        /* JADX WARN: Removed duplicated region for block: B:710:0x0ba1 A[Catch: all -> 0x0bf7, TRY_ENTER, TRY_LEAVE, TryCatch #17 {all -> 0x0bf7, blocks: (B:701:0x0b86, B:710:0x0ba1, B:700:0x0b81), top: B:936:0x0b81 }] */
        /* JADX WARN: Removed duplicated region for block: B:723:0x0bd4 A[Catch: all -> 0x0bc8, TRY_ENTER, TryCatch #24 {all -> 0x0bc8, blocks: (B:726:0x0be6, B:713:0x0bb7, B:716:0x0bbe, B:723:0x0bd4, B:725:0x0bdc), top: B:948:0x0bb7 }] */
        /* JADX WARN: Removed duplicated region for block: B:724:0x0bda  */
        /* JADX WARN: Removed duplicated region for block: B:774:0x0c7e  */
        /* JADX WARN: Removed duplicated region for block: B:781:0x0c9d A[Catch: all -> 0x0c72, TryCatch #11 {all -> 0x0c72, blocks: (B:775:0x0c80, B:777:0x0c8a, B:779:0x0c90, B:781:0x0c9d, B:783:0x0ca3, B:789:0x0cba, B:795:0x0cca, B:797:0x0cd0, B:798:0x0cd5, B:802:0x0ce2, B:805:0x0cea, B:799:0x0cd8, B:801:0x0cde, B:808:0x0cf2, B:810:0x0d00, B:812:0x0d0b, B:768:0x0c6e), top: B:926:0x0c6e }] */
        /* JADX WARN: Removed duplicated region for block: B:79:0x0154  */
        /* JADX WARN: Removed duplicated region for block: B:838:0x0d77 A[PHI: r8
          0x0d77: PHI (r8v39 android.graphics.Bitmap) = (r8v38 android.graphics.Bitmap), (r8v42 android.graphics.Bitmap) binds: [B:782:0x0ca1, B:806:0x0cee] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:852:0x0d9d A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:855:0x0dab  */
        /* JADX WARN: Removed duplicated region for block: B:856:0x0dad  */
        /* JADX WARN: Removed duplicated region for block: B:859:0x0dc2  */
        /* JADX WARN: Removed duplicated region for block: B:865:0x0de0  */
        /* JADX WARN: Removed duplicated region for block: B:868:0x0dea  */
        /* JADX WARN: Removed duplicated region for block: B:872:0x0df6 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:879:0x0e08  */
        /* JADX WARN: Removed duplicated region for block: B:885:0x0e3c  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x01a9  */
        /* JADX WARN: Removed duplicated region for block: B:968:0x0846 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:974:0x02c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:986:? A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r0v129 */
        /* JADX WARN: Type inference failed for: r0v370 */
        /* JADX WARN: Type inference failed for: r0v371 */
        /* JADX WARN: Type inference failed for: r0v97, types: [int] */
        /* JADX WARN: Type inference failed for: r25v10 */
        /* JADX WARN: Type inference failed for: r25v8 */
        /* JADX WARN: Type inference failed for: r25v9, types: [int] */
        /* JADX WARN: Type inference failed for: r40v0, types: [org.telegram.messenger.ImageLoader$CacheOutTask] */
        /* JADX WARN: Type inference failed for: r4v100 */
        /* JADX WARN: Type inference failed for: r4v101 */
        /* JADX WARN: Type inference failed for: r4v102 */
        /* JADX WARN: Type inference failed for: r4v47, types: [int] */
        /* JADX WARN: Type inference failed for: r4v48 */
        /* JADX WARN: Type inference failed for: r4v49 */
        /* JADX WARN: Type inference failed for: r4v50 */
        /* JADX WARN: Type inference failed for: r4v52 */
        /* JADX WARN: Type inference failed for: r4v99 */
        /* JADX WARN: Type inference failed for: r6v7 */
        /* JADX WARN: Type inference failed for: r6v8 */
        /* JADX WARN: Type inference failed for: r6v87 */
        /* JADX WARN: Type inference failed for: r6v88 */
        /* JADX WARN: Type inference failed for: r8v105 */
        /* JADX WARN: Type inference failed for: r8v77 */
        /* JADX WARN: Type inference failed for: r8v78 */
        /* JADX WARN: Type inference failed for: r8v79 */
        /* JADX WARN: Type inference failed for: r8v80 */
        /* JADX WARN: Type inference failed for: r8v81 */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() throws Throwable {
            Drawable themePreviewDrawable;
            Bitmap bitmapApplyWallpaperSetting;
            SecureDocumentKey secureDocumentKey;
            byte[] bArr;
            String str;
            Long lValueOf;
            boolean z;
            boolean z2;
            Long l;
            boolean z3;
            float f;
            float f2;
            Bitmap bitmapDecodeByteArray;
            boolean z4;
            boolean z5;
            int i;
            float f3;
            float f4;
            ?? r6;
            boolean z6;
            boolean z7;
            boolean z8;
            SecureDocumentKey secureDocumentKey2;
            boolean z9;
            int i2;
            Bitmap bitmap;
            boolean z10;
            boolean z11;
            int i3;
            SecureDocumentKey secureDocumentKey3;
            ?? r25;
            int width;
            int height;
            int rowBytes;
            int i4;
            boolean z12;
            Bitmap bitmapCreateScaledBitmap;
            int i5;
            SecureDocumentKey secureDocumentKey4;
            ?? r0;
            CacheImage cacheImage;
            String str2;
            Object obj;
            boolean z13;
            float f5;
            boolean z14;
            boolean z15;
            int i6;
            Bitmap bitmapCreateScaledBitmap2;
            FileInputStream fileInputStream;
            int iIntValue;
            ?? IntValue;
            SecureDocumentKey secureDocumentKey5;
            boolean z16;
            int i7;
            Bitmap thumbnail;
            String str3;
            boolean z17;
            FileInputStream fileInputStream2;
            Bitmap bitmapDecodeStream;
            int i8;
            boolean z18;
            float f6;
            int i9;
            boolean z19;
            float f7;
            int i10;
            Long lValueOf2;
            boolean z20;
            String strSubstring;
            boolean z21;
            boolean z22;
            boolean z23;
            boolean z24;
            boolean z25;
            Bitmap frameAtTime;
            MediaMetadataRetriever mediaMetadataRetriever;
            BitmapsCache.CacheOptions cacheOptions;
            AnimatedFileDrawable animatedFileDrawable;
            AnimatedFileDrawable animatedFileDrawable2;
            Drawable bitmapDrawable;
            RLottieDrawable rLottieDrawable;
            int i11;
            int i12;
            String str4;
            int i13;
            int i14;
            int i15;
            boolean z26;
            boolean z27;
            boolean z28;
            String str5;
            boolean z29;
            boolean z30;
            int i16;
            RandomAccessFile randomAccessFile;
            boolean z31;
            RandomAccessFile randomAccessFile2;
            Throwable th;
            boolean z32;
            BitmapsCache.CacheOptions cacheOptions2;
            BitmapsCache.CacheOptions cacheOptions3;
            RLottieDrawable slotsDrawable;
            byte[] bArr2;
            boolean zContains;
            boolean zContains2;
            synchronized (this.sync) {
                try {
                    this.runningThread = Thread.currentThread();
                    Thread.interrupted();
                    if (this.isCancelled) {
                        return;
                    }
                    CacheImage cacheImage2 = this.cacheImage;
                    ImageLocation imageLocation = cacheImage2.imageLocation;
                    TLRPC.PhotoSize photoSize = imageLocation.photoSize;
                    if (photoSize instanceof TLRPC.TL_photoStrippedSize) {
                        Bitmap strippedPhotoBitmap = ImageLoader.getStrippedPhotoBitmap(((TLRPC.TL_photoStrippedSize) photoSize).bytes, "b");
                        themePreviewDrawable = strippedPhotoBitmap != null ? new BitmapDrawable(strippedPhotoBitmap) : null;
                    } else {
                        int i17 = cacheImage2.imageType;
                        if (i17 == 5) {
                            try {
                                CacheImage cacheImage3 = this.cacheImage;
                                themePreviewDrawable = new ThemePreviewDrawable(cacheImage3.finalFilePath, (DocumentObject.ThemeDocument) cacheImage3.imageLocation.document);
                            } catch (Throwable th2) {
                                FileLog.e(th2);
                            }
                        } else {
                            boolean z33 = true;
                            if (i17 != 3 && i17 != 4) {
                                if (i17 == 1) {
                                    int iMin = Math.min(LiteMode.FLAG_CALLS_ANIMATIONS, AndroidUtilities.dp(170.6f));
                                    int iMin2 = Math.min(LiteMode.FLAG_CALLS_ANIMATIONS, AndroidUtilities.dp(170.6f));
                                    String str6 = this.cacheImage.filter;
                                    if (str6 != null) {
                                        String[] strArrSplit = str6.split("_");
                                        if (strArrSplit.length >= 2) {
                                            float f8 = Float.parseFloat(strArrSplit[0]);
                                            float f9 = Float.parseFloat(strArrSplit[1]);
                                            int iMin3 = Math.min(LiteMode.FLAG_CALLS_ANIMATIONS, (int) (AndroidUtilities.density * f8));
                                            int iMin4 = Math.min(LiteMode.FLAG_CALLS_ANIMATIONS, (int) (AndroidUtilities.density * f9));
                                            if (f8 > 90.0f || f9 > 90.0f || this.cacheImage.filter.contains("nolimit")) {
                                                iMin2 = iMin4;
                                                iMin = iMin3;
                                                z26 = false;
                                            } else {
                                                iMin = Math.min(iMin3, 160);
                                                iMin2 = Math.min(iMin4, 160);
                                                z26 = true;
                                            }
                                            z30 = (strArrSplit.length >= 3 && "pcache".equals(strArrSplit[2])) || this.cacheImage.filter.contains("pcache") || !(this.cacheImage.filter.contains("nolimit") || SharedConfig.getDevicePerformanceClass() == 2);
                                            zContains2 = this.cacheImage.filter.contains("lastframe");
                                            zContains = this.cacheImage.filter.contains("lastreactframe");
                                            if (zContains) {
                                                zContains2 = true;
                                            }
                                            z29 = this.cacheImage.filter.contains("firstframe");
                                        } else {
                                            z26 = false;
                                            zContains = false;
                                            z29 = false;
                                            z30 = false;
                                            zContains2 = false;
                                        }
                                        if (strArrSplit.length < 3) {
                                            str5 = null;
                                            i16 = 1;
                                            if (strArrSplit.length < 5) {
                                                i13 = iMin2;
                                                z28 = zContains;
                                                z27 = zContains2;
                                                i14 = iMin;
                                                i15 = 0;
                                            } else if ("c1".equals(strArrSplit[4])) {
                                                i13 = iMin2;
                                                z28 = zContains;
                                                z27 = zContains2;
                                                i14 = iMin;
                                                i15 = 12;
                                            } else if ("c2".equals(strArrSplit[4])) {
                                                i13 = iMin2;
                                                z28 = zContains;
                                                z27 = zContains2;
                                                i14 = iMin;
                                                i15 = 3;
                                            } else if ("c3".equals(strArrSplit[4])) {
                                                i13 = iMin2;
                                                z28 = zContains;
                                                z27 = zContains2;
                                                i14 = iMin;
                                                i15 = 4;
                                            } else if ("c4".equals(strArrSplit[4])) {
                                                i13 = iMin2;
                                                z28 = zContains;
                                                z27 = zContains2;
                                                i14 = iMin;
                                                i15 = 5;
                                            } else if ("c5".equals(strArrSplit[4])) {
                                                i13 = iMin2;
                                                z28 = zContains;
                                                z27 = zContains2;
                                                i14 = iMin;
                                                i15 = 6;
                                            }
                                        } else {
                                            if (!"nr".equals(strArrSplit[2])) {
                                                if ("nrs".equals(strArrSplit[2])) {
                                                    str5 = null;
                                                    i16 = 3;
                                                    if (strArrSplit.length < 5) {
                                                    }
                                                } else {
                                                    str5 = "dice".equals(strArrSplit[2]) ? strArrSplit[3] : null;
                                                    str5 = null;
                                                    i16 = 1;
                                                    if (strArrSplit.length < 5) {
                                                    }
                                                }
                                            }
                                            i16 = 2;
                                            if (strArrSplit.length < 5) {
                                            }
                                        }
                                    } else {
                                        i13 = iMin2;
                                        i14 = iMin;
                                        i15 = 0;
                                        z26 = false;
                                        z27 = false;
                                        z28 = false;
                                        str5 = null;
                                        z29 = false;
                                        z30 = false;
                                        i16 = 1;
                                    }
                                    if (str5 != null) {
                                        slotsDrawable = "🎰".equals(str5) ? new SlotsDrawable(str5, i14, i13) : new RLottieDrawable(str5, i14, i13);
                                    } else {
                                        File file = this.cacheImage.finalFilePath;
                                        try {
                                            randomAccessFile2 = new RandomAccessFile(this.cacheImage.finalFilePath, "r");
                                            try {
                                                bArr2 = this.cacheImage.type == 1 ? ImageLoader.headerThumb : ImageLoader.header;
                                                randomAccessFile2.readFully(bArr2, 0, 2);
                                            } catch (Exception e) {
                                                e = e;
                                                z31 = false;
                                                try {
                                                    FileLog.e(e, z31);
                                                    if (randomAccessFile2 != null) {
                                                        try {
                                                            randomAccessFile2.close();
                                                        } catch (Exception e2) {
                                                            e = e2;
                                                            z32 = false;
                                                            FileLog.e(e);
                                                            if (z27) {
                                                                if ((!z27 || z29) ? false : z30) {
                                                                    cacheOptions2 = new BitmapsCache.CacheOptions();
                                                                    if (z27) {
                                                                        cacheOptions2.firstFrame = true;
                                                                        cacheOptions3 = cacheOptions2;
                                                                        if (z32) {
                                                                        }
                                                                        rLottieDrawable = slotsDrawable;
                                                                        if (z27) {
                                                                        }
                                                                        loadLastFrame(rLottieDrawable, i13, i14, z27, z28);
                                                                        return;
                                                                    }
                                                                }
                                                            }
                                                            onPostExecute(rLottieDrawable);
                                                            return;
                                                        }
                                                    }
                                                    z32 = false;
                                                    onPostExecute(rLottieDrawable);
                                                    return;
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    randomAccessFile = randomAccessFile2;
                                                    th = th;
                                                    randomAccessFile2 = randomAccessFile;
                                                    if (randomAccessFile2 == null) {
                                                        throw th;
                                                    }
                                                    try {
                                                        randomAccessFile2.close();
                                                        throw th;
                                                    } catch (Exception e3) {
                                                        FileLog.e(e3);
                                                        throw th;
                                                    }
                                                }
                                            } catch (Throwable th4) {
                                                th = th4;
                                                if (randomAccessFile2 == null) {
                                                }
                                            }
                                        } catch (Exception e4) {
                                            e = e4;
                                            z31 = false;
                                            randomAccessFile2 = null;
                                        } catch (Throwable th5) {
                                            th = th5;
                                            randomAccessFile = null;
                                            th = th;
                                            randomAccessFile2 = randomAccessFile;
                                            if (randomAccessFile2 == null) {
                                            }
                                        }
                                        if (bArr2[0] == 31) {
                                            z32 = bArr2[1] == -117;
                                            try {
                                                randomAccessFile2.close();
                                            } catch (Exception e5) {
                                                e = e5;
                                                FileLog.e(e);
                                                onPostExecute(rLottieDrawable);
                                                return;
                                            }
                                            if (!((!z27 || z29) ? false : z30) || z27 || z29) {
                                                cacheOptions2 = new BitmapsCache.CacheOptions();
                                                if (!z27 || z29) {
                                                    cacheOptions2.firstFrame = true;
                                                } else {
                                                    String str7 = this.cacheImage.filter;
                                                    if (str7 != null && str7.contains("compress")) {
                                                        cacheOptions2.compressQuality = 60;
                                                    }
                                                    String str8 = this.cacheImage.filter;
                                                    if (str8 != null && str8.contains("flbk")) {
                                                        cacheOptions2.fallback = true;
                                                    }
                                                }
                                                cacheOptions3 = cacheOptions2;
                                            } else {
                                                cacheOptions3 = null;
                                            }
                                            if (z32) {
                                                slotsDrawable = new RLottieDrawable(this.cacheImage.finalFilePath, i14, i13, cacheOptions3, z26, null, i15);
                                            } else {
                                                File file2 = this.cacheImage.finalFilePath;
                                                slotsDrawable = new RLottieDrawable(file2, ImageLoader.decompressGzip(file2), i14, i13, cacheOptions3, z26, null, i15);
                                            }
                                        }
                                    }
                                    rLottieDrawable = slotsDrawable;
                                    if (!z27 || z29) {
                                        loadLastFrame(rLottieDrawable, i13, i14, z27, z28);
                                        return;
                                    }
                                    rLottieDrawable.setAutoRepeat(i16);
                                } else if (i17 == 2) {
                                    long j = imageLocation.videoSeekTo;
                                    String str9 = cacheImage2.filter;
                                    if (str9 != null) {
                                        String[] strArrSplit2 = str9.split("_");
                                        if (strArrSplit2.length >= 2) {
                                            z21 = Float.parseFloat(strArrSplit2[0]) <= 90.0f && Float.parseFloat(strArrSplit2[1]) <= 90.0f && !this.cacheImage.filter.contains("nolimit");
                                            z22 = false;
                                            z23 = false;
                                            z24 = false;
                                            z25 = false;
                                            for (int i18 = 0; i18 < strArrSplit2.length; i18++) {
                                                if ("pcache".equals(strArrSplit2[i18])) {
                                                    z23 = true;
                                                }
                                                if ("firstframe".equals(strArrSplit2[i18])) {
                                                    z22 = true;
                                                }
                                                if ("nostream".equals(strArrSplit2[i18])) {
                                                    z25 = true;
                                                }
                                                if ("pframe".equals(strArrSplit2[i18])) {
                                                    z24 = true;
                                                }
                                            }
                                            if (z22) {
                                                z25 = true;
                                            }
                                        }
                                    } else {
                                        z21 = false;
                                        z22 = false;
                                        z23 = false;
                                        z24 = false;
                                        z25 = false;
                                    }
                                    if (z24) {
                                        try {
                                            mediaMetadataRetriever = new MediaMetadataRetriever();
                                            mediaMetadataRetriever.setDataSource(this.cacheImage.finalFilePath.getAbsolutePath());
                                            frameAtTime = mediaMetadataRetriever.getFrameAtTime(2L);
                                        } catch (Exception e6) {
                                            e = e6;
                                            frameAtTime = null;
                                        }
                                        try {
                                            mediaMetadataRetriever.release();
                                        } catch (Exception e7) {
                                            e = e7;
                                            e.printStackTrace();
                                            Thread.interrupted();
                                            if (frameAtTime != null) {
                                            }
                                        }
                                        Thread.interrupted();
                                        if (frameAtTime != null) {
                                            onPostExecute(null);
                                            return;
                                        } else {
                                            onPostExecute(new BitmapDrawable(frameAtTime));
                                            return;
                                        }
                                    }
                                    if (!z23 || z22) {
                                        cacheOptions = null;
                                    } else {
                                        BitmapsCache.CacheOptions cacheOptions4 = new BitmapsCache.CacheOptions();
                                        String str10 = this.cacheImage.filter;
                                        if (str10 != null && str10.contains("compress")) {
                                            cacheOptions4.compressQuality = 60;
                                        }
                                        cacheOptions = cacheOptions4;
                                    }
                                    if (ImageLoader.this.isAnimatedAvatar(this.cacheImage.filter) || ImageLoader.AUTOPLAY_FILTER.equals(this.cacheImage.filter)) {
                                        CacheImage cacheImage4 = this.cacheImage;
                                        ImageLocation imageLocation2 = cacheImage4.imageLocation;
                                        TLRPC.Document document = imageLocation2.document;
                                        if (!(document instanceof TLRPC.TL_documentEncrypted) && !z23) {
                                            if (!(document instanceof TLRPC.Document)) {
                                                document = null;
                                            }
                                            long j2 = document != null ? cacheImage4.size : imageLocation2.currentSize;
                                            int i19 = document != null ? 1 : 0;
                                            int i20 = cacheImage4.cacheType;
                                            int i21 = i20 > 1 ? i20 : i19;
                                            CacheImage cacheImage5 = this.cacheImage;
                                            AnimatedFileDrawable animatedFileDrawable3 = new AnimatedFileDrawable(cacheImage5.finalFilePath, z22, z25 ? 0L : j2, cacheImage5.priority, z25 ? null : document, (document != null || z25) ? null : cacheImage5.imageLocation, cacheImage5.parentObject, j, cacheImage5.currentAccount, false, 0, 0, cacheOptions, i21);
                                            animatedFileDrawable2 = animatedFileDrawable3;
                                            if (!MessageObject.isWebM(document)) {
                                                animatedFileDrawable2 = animatedFileDrawable3;
                                                if (!MessageObject.isVideoSticker(document)) {
                                                    animatedFileDrawable2 = animatedFileDrawable3;
                                                    animatedFileDrawable = animatedFileDrawable3;
                                                    if (!ImageLoader.this.isAnimatedAvatar(this.cacheImage.filter)) {
                                                    }
                                                }
                                            }
                                            animatedFileDrawable2.setIsWebmSticker(z33);
                                            if (z22) {
                                            }
                                            onPostExecute(bitmapDrawable);
                                            return;
                                        }
                                        String str11 = this.cacheImage.filter;
                                        if (str11 != null) {
                                            String[] strArrSplit3 = str11.split("_");
                                            if (strArrSplit3.length >= 2) {
                                                float f10 = Float.parseFloat(strArrSplit3[0]);
                                                float f11 = Float.parseFloat(strArrSplit3[1]);
                                                float f12 = AndroidUtilities.density;
                                                i12 = (int) (f11 * f12);
                                                i11 = (int) (f10 * f12);
                                            } else {
                                                i11 = 0;
                                                i12 = 0;
                                            }
                                            boolean z34 = z22 || ((str4 = this.cacheImage.filter) != null && ("d".equals(str4) || this.cacheImage.filter.contains("_d")));
                                            int i22 = (z25 ? null : this.cacheImage.imageLocation.document) != null ? 1 : 0;
                                            int i23 = this.cacheImage.cacheType;
                                            int i24 = i23 > 1 ? i23 : i22;
                                            CacheImage cacheImage6 = this.cacheImage;
                                            AnimatedFileDrawable animatedFileDrawable4 = new AnimatedFileDrawable(cacheImage6.finalFilePath, z34, 0L, cacheImage6.priority, z25 ? null : cacheImage6.imageLocation.document, null, null, j, cacheImage6.currentAccount, false, i11, i12, cacheOptions, i24);
                                            animatedFileDrawable2 = animatedFileDrawable4;
                                            if (!MessageObject.isWebM(this.cacheImage.imageLocation.document)) {
                                                animatedFileDrawable2 = animatedFileDrawable4;
                                                if (!MessageObject.isVideoSticker(this.cacheImage.imageLocation.document)) {
                                                    animatedFileDrawable2 = animatedFileDrawable4;
                                                    animatedFileDrawable = animatedFileDrawable4;
                                                    if (!ImageLoader.this.isAnimatedAvatar(this.cacheImage.filter)) {
                                                        z33 = false;
                                                        animatedFileDrawable2 = animatedFileDrawable;
                                                    }
                                                }
                                            }
                                            animatedFileDrawable2.setIsWebmSticker(z33);
                                            if (z22) {
                                                animatedFileDrawable2.setLimitFps(z21);
                                                Thread.interrupted();
                                                bitmapDrawable = animatedFileDrawable2;
                                            } else {
                                                Bitmap frameAtTime2 = animatedFileDrawable2.getFrameAtTime(0L, false);
                                                animatedFileDrawable2.recycle();
                                                Thread.interrupted();
                                                if (frameAtTime2 == null) {
                                                    rLottieDrawable = null;
                                                } else {
                                                    bitmapDrawable = new BitmapDrawable(frameAtTime2);
                                                }
                                            }
                                            onPostExecute(bitmapDrawable);
                                            return;
                                        }
                                    }
                                } else {
                                    File file3 = cacheImage2.finalFilePath;
                                    boolean z35 = (cacheImage2.secureDocument == null && (cacheImage2.encryptionKeyPath == null || file3 == null || !file3.getAbsolutePath().endsWith(".enc"))) ? false : true;
                                    CacheImage cacheImage7 = this.cacheImage;
                                    SecureDocument secureDocument = cacheImage7.secureDocument;
                                    if (secureDocument != null) {
                                        SecureDocumentKey secureDocumentKey6 = secureDocument.secureDocumentKey;
                                        TLRPC.TL_secureFile tL_secureFile = secureDocument.secureFile;
                                        if (tL_secureFile == null || (bArr = tL_secureFile.file_hash) == null) {
                                            bArr = secureDocument.fileHash;
                                        }
                                        secureDocumentKey = secureDocumentKey6;
                                    } else {
                                        secureDocumentKey = null;
                                        bArr = null;
                                    }
                                    String str12 = cacheImage7.imageLocation.path;
                                    if (str12 == null) {
                                        str = null;
                                        lValueOf = null;
                                        z = false;
                                        z2 = true;
                                        BitmapFactory.Options options = new BitmapFactory.Options();
                                        options.inSampleSize = 1;
                                        if (Build.VERSION.SDK_INT < 21) {
                                            options.inPurgeable = true;
                                        }
                                        boolean z36 = ImageLoader.this.canForce8888;
                                        try {
                                            str3 = this.cacheImage.filter;
                                        } catch (Throwable th6) {
                                            th = th6;
                                            l = lValueOf;
                                            z3 = z;
                                        }
                                        if (str3 == null) {
                                            String[] strArrSplit4 = str3.split("_");
                                            if (strArrSplit4.length >= 2) {
                                                f = Float.parseFloat(strArrSplit4[0]) * AndroidUtilities.density;
                                                try {
                                                    f7 = f;
                                                    f4 = Float.parseFloat(strArrSplit4[1]) * AndroidUtilities.density;
                                                } catch (Throwable th7) {
                                                    th = th7;
                                                    l = lValueOf;
                                                    z3 = z;
                                                    f2 = BitmapDescriptorFactory.HUE_RED;
                                                    bitmapDecodeByteArray = null;
                                                    z4 = false;
                                                    z5 = false;
                                                    i = 1;
                                                    FileLog.e(th, !(th instanceof FileNotFoundException));
                                                    f3 = f;
                                                    f4 = f2;
                                                    r6 = z4;
                                                    z6 = z5;
                                                    if (this.cacheImage.type == i) {
                                                    }
                                                    onPostExecute(themePreviewDrawable);
                                                }
                                            } else {
                                                f4 = BitmapDescriptorFactory.HUE_RED;
                                                f7 = BitmapDescriptorFactory.HUE_RED;
                                            }
                                            try {
                                                ?? r8 = this.cacheImage.filter.contains("b2r") ? 4 : this.cacheImage.filter.contains("b2") ? 3 : this.cacheImage.filter.contains("b1") ? 2 : this.cacheImage.filter.contains("b") ? 1 : 0;
                                                try {
                                                    boolean zContains3 = this.cacheImage.filter.contains("i");
                                                    try {
                                                        if (this.cacheImage.filter.contains("f")) {
                                                            z36 = true;
                                                        } else if (this.cacheImage.filter.contains("F")) {
                                                            z36 = false;
                                                        }
                                                        if (f7 == BitmapDescriptorFactory.HUE_RED || f4 == BitmapDescriptorFactory.HUE_RED) {
                                                            z4 = r8;
                                                            z5 = zContains3;
                                                            l = lValueOf;
                                                            z3 = z;
                                                        } else {
                                                            options.inJustDecodeBounds = true;
                                                            try {
                                                                try {
                                                                    if (lValueOf == null || str != null) {
                                                                        z4 = r8;
                                                                        z5 = zContains3;
                                                                        if (secureDocumentKey != null) {
                                                                            try {
                                                                                RandomAccessFile randomAccessFile3 = new RandomAccessFile(file3, "r");
                                                                                int length = (int) randomAccessFile3.length();
                                                                                byte[] bArr3 = (byte[]) ImageLoader.bytesLocal.get();
                                                                                if (bArr3 == null || bArr3.length < length) {
                                                                                    bArr3 = null;
                                                                                }
                                                                                if (bArr3 == null) {
                                                                                    bArr3 = new byte[length];
                                                                                    ImageLoader.bytesLocal.set(bArr3);
                                                                                }
                                                                                randomAccessFile3.readFully(bArr3, 0, length);
                                                                                randomAccessFile3.close();
                                                                                EncryptedFileInputStream.decryptBytesWithKeyFile(bArr3, 0, length, secureDocumentKey);
                                                                                l = lValueOf;
                                                                                z3 = z;
                                                                                boolean z37 = bArr == null || !Arrays.equals(Utilities.computeSHA256(bArr3, 0, (long) length), bArr);
                                                                                int i25 = bArr3[0] & 255;
                                                                                int i26 = length - i25;
                                                                                if (!z37) {
                                                                                    BitmapFactory.decodeByteArray(bArr3, i25, i26, options);
                                                                                }
                                                                            } catch (Throwable th8) {
                                                                                th = th8;
                                                                                l = lValueOf;
                                                                                z3 = z;
                                                                                f2 = f4;
                                                                                f = f7;
                                                                                bitmapDecodeByteArray = null;
                                                                                i = 1;
                                                                                FileLog.e(th, !(th instanceof FileNotFoundException));
                                                                                f3 = f;
                                                                                f4 = f2;
                                                                                r6 = z4;
                                                                                z6 = z5;
                                                                                if (this.cacheImage.type == i) {
                                                                                }
                                                                                onPostExecute(themePreviewDrawable);
                                                                            }
                                                                        } else {
                                                                            l = lValueOf;
                                                                            z3 = z;
                                                                            FileInputStream encryptedFileInputStream = z35 ? new EncryptedFileInputStream(file3, this.cacheImage.encryptionKeyPath) : new FileInputStream(file3);
                                                                            BitmapFactory.decodeStream(encryptedFileInputStream, null, options);
                                                                            encryptedFileInputStream.close();
                                                                        }
                                                                    } else {
                                                                        if (z) {
                                                                            try {
                                                                                z4 = r8;
                                                                                z5 = zContains3;
                                                                                MediaStore.Video.Thumbnails.getThumbnail(ApplicationLoader.applicationContext.getContentResolver(), lValueOf.longValue(), 1, options);
                                                                            } catch (Throwable th9) {
                                                                                th = th9;
                                                                                z4 = r8;
                                                                                z5 = zContains3;
                                                                                f2 = f4;
                                                                                l = lValueOf;
                                                                                z3 = z;
                                                                                f = f7;
                                                                                bitmapDecodeByteArray = null;
                                                                                i = 1;
                                                                                FileLog.e(th, !(th instanceof FileNotFoundException));
                                                                                f3 = f;
                                                                                f4 = f2;
                                                                                r6 = z4;
                                                                                z6 = z5;
                                                                                if (this.cacheImage.type == i) {
                                                                                }
                                                                                onPostExecute(themePreviewDrawable);
                                                                            }
                                                                        } else {
                                                                            z4 = r8;
                                                                            z5 = zContains3;
                                                                            MediaStore.Images.Thumbnails.getThumbnail(ApplicationLoader.applicationContext.getContentResolver(), lValueOf.longValue(), 1, options);
                                                                        }
                                                                        l = lValueOf;
                                                                        z3 = z;
                                                                    }
                                                                    float f13 = options.outWidth;
                                                                    float f14 = options.outHeight;
                                                                    float fMin = (f7 < f4 || f13 <= f14) ? Math.min(f13 / f7, f14 / f4) : Math.max(f13 / f7, f14 / f4);
                                                                    if (fMin < 1.2f) {
                                                                        fMin = 1.0f;
                                                                    }
                                                                    options.inJustDecodeBounds = false;
                                                                    if (fMin <= 1.0f || (f13 <= f7 && f14 <= f4)) {
                                                                        i8 = (int) fMin;
                                                                        z18 = z36;
                                                                        bitmapDecodeByteArray = null;
                                                                        f6 = f4;
                                                                        f = f7;
                                                                    } else {
                                                                        int i27 = 1;
                                                                        while (true) {
                                                                            i10 = i27 * 2;
                                                                            if (i27 * 4 >= fMin) {
                                                                                break;
                                                                            } else {
                                                                                i27 = i10;
                                                                            }
                                                                        }
                                                                        options.inSampleSize = i10;
                                                                    }
                                                                } catch (Throwable th10) {
                                                                    th = th10;
                                                                    f2 = f4;
                                                                    f = f7;
                                                                    bitmapDecodeByteArray = null;
                                                                    i = 1;
                                                                    FileLog.e(th, !(th instanceof FileNotFoundException));
                                                                    f3 = f;
                                                                    f4 = f2;
                                                                    r6 = z4;
                                                                    z6 = z5;
                                                                    if (this.cacheImage.type == i) {
                                                                    }
                                                                    onPostExecute(themePreviewDrawable);
                                                                }
                                                            } catch (Throwable th11) {
                                                                th = th11;
                                                            }
                                                        }
                                                        f3 = f7;
                                                        z19 = z4;
                                                        z6 = z5;
                                                        bitmapDecodeByteArray = null;
                                                        i = 1;
                                                        r6 = z19;
                                                    } catch (Throwable th12) {
                                                        th = th12;
                                                        z4 = r8;
                                                        z5 = zContains3;
                                                    }
                                                } catch (Throwable th13) {
                                                    th = th13;
                                                    z4 = r8;
                                                    l = lValueOf;
                                                    z3 = z;
                                                    f2 = f4;
                                                    f = f7;
                                                    bitmapDecodeByteArray = null;
                                                    z5 = false;
                                                    i = 1;
                                                    FileLog.e(th, !(th instanceof FileNotFoundException));
                                                    f3 = f;
                                                    f4 = f2;
                                                    r6 = z4;
                                                    z6 = z5;
                                                    if (this.cacheImage.type == i) {
                                                    }
                                                    onPostExecute(themePreviewDrawable);
                                                }
                                            } catch (Throwable th14) {
                                                th = th14;
                                                l = lValueOf;
                                                z3 = z;
                                                f2 = f4;
                                                f = f7;
                                                bitmapDecodeByteArray = null;
                                                z4 = false;
                                                z5 = false;
                                                i = 1;
                                                FileLog.e(th, !(th instanceof FileNotFoundException));
                                                f3 = f;
                                                f4 = f2;
                                                r6 = z4;
                                                z6 = z5;
                                                if (this.cacheImage.type == i) {
                                                }
                                                onPostExecute(themePreviewDrawable);
                                            }
                                            if (this.cacheImage.type == i) {
                                                try {
                                                    ImageLoader.this.lastCacheOutTime = SystemClock.elapsedRealtime();
                                                } catch (Throwable th15) {
                                                    th = th15;
                                                }
                                                synchronized (this.sync) {
                                                    try {
                                                        try {
                                                        } catch (Throwable th16) {
                                                            th = th16;
                                                        }
                                                        if (this.isCancelled) {
                                                            return;
                                                        }
                                                        try {
                                                            if (options.inPurgeable || secureDocumentKey != null) {
                                                                RandomAccessFile randomAccessFile4 = new RandomAccessFile(file3, "r");
                                                                int length2 = (int) randomAccessFile4.length();
                                                                byte[] bArr4 = (byte[]) ImageLoader.bytesThumbLocal.get();
                                                                if (bArr4 == null || bArr4.length < length2) {
                                                                    bArr4 = null;
                                                                }
                                                                if (bArr4 == null) {
                                                                    bArr4 = new byte[length2];
                                                                    ImageLoader.bytesThumbLocal.set(bArr4);
                                                                }
                                                                randomAccessFile4.readFully(bArr4, 0, length2);
                                                                randomAccessFile4.close();
                                                                if (secureDocumentKey != null) {
                                                                    EncryptedFileInputStream.decryptBytesWithKeyFile(bArr4, 0, length2, secureDocumentKey);
                                                                    bitmap = bitmapDecodeByteArray;
                                                                    z10 = z6;
                                                                    z11 = bArr == null || !Arrays.equals(Utilities.computeSHA256(bArr4, 0, (long) length2), bArr);
                                                                    i3 = bArr4[0] & 255;
                                                                    length2 -= i3;
                                                                } else {
                                                                    bitmap = bitmapDecodeByteArray;
                                                                    z10 = z6;
                                                                    if (z35) {
                                                                        EncryptedFileInputStream.decryptBytesWithKeyFile(bArr4, 0, length2, this.cacheImage.encryptionKeyPath);
                                                                    }
                                                                    z11 = false;
                                                                    i3 = 0;
                                                                }
                                                                bitmapDecodeByteArray = !z11 ? BitmapFactory.decodeByteArray(bArr4, i3, length2, options) : bitmap;
                                                            } else {
                                                                FileInputStream encryptedFileInputStream2 = z35 ? new EncryptedFileInputStream(file3, this.cacheImage.encryptionKeyPath) : new FileInputStream(file3);
                                                                bitmapDecodeByteArray = BitmapFactory.decodeStream(encryptedFileInputStream2, null, options);
                                                                encryptedFileInputStream2.close();
                                                                z10 = z6;
                                                            }
                                                        } catch (Throwable th17) {
                                                            th = th17;
                                                            z7 = false;
                                                            z8 = th instanceof FileNotFoundException;
                                                            secureDocumentKey2 = null;
                                                            z9 = true;
                                                            i2 = 0;
                                                            FileLog.e(th, z8 ^ z9);
                                                            secureDocumentKey4 = secureDocumentKey2;
                                                            i5 = i2;
                                                            r0 = secureDocumentKey4;
                                                            Thread.interrupted();
                                                            if (BuildVars.LOGS_ENABLED) {
                                                            }
                                                            if (bitmapDecodeByteArray != null) {
                                                            }
                                                            cacheImage = this.cacheImage;
                                                            if (cacheImage == null) {
                                                            }
                                                            onPostExecute(themePreviewDrawable);
                                                        }
                                                        if (bitmapDecodeByteArray == null) {
                                                            if (file3.length() != 0 && this.cacheImage.filter != null) {
                                                                z12 = false;
                                                                z7 = false;
                                                                i5 = 0;
                                                                r0 = z12;
                                                                Thread.interrupted();
                                                                if (BuildVars.LOGS_ENABLED && z35) {
                                                                    StringBuilder sb = new StringBuilder();
                                                                    sb.append("Image Loader image is empty = ");
                                                                    sb.append(bitmapDecodeByteArray != null);
                                                                    sb.append(" ");
                                                                    sb.append(file3);
                                                                    FileLog.e(sb.toString());
                                                                }
                                                                if (bitmapDecodeByteArray != null && !TextUtils.isEmpty(this.cacheImage.filter) && this.cacheImage.filter.contains("wallpaper")) {
                                                                    obj = this.cacheImage.parentObject;
                                                                    if (obj instanceof TLRPC.WallPaper) {
                                                                        bitmapDecodeByteArray = applyWallpaperSetting(bitmapDecodeByteArray, (TLRPC.WallPaper) obj);
                                                                    }
                                                                }
                                                                cacheImage = this.cacheImage;
                                                                if ((cacheImage == null || (str2 = cacheImage.filter) == null || !str2.contains("ignoreOrientation")) && !(!z7 && i5 == 0 && r0 == 0)) {
                                                                    if (bitmapDecodeByteArray != null) {
                                                                        themePreviewDrawable = new ExtendedBitmapDrawable(bitmapDecodeByteArray, i5, r0);
                                                                    }
                                                                } else if (bitmapDecodeByteArray != null) {
                                                                    themePreviewDrawable = new BitmapDrawable(bitmapDecodeByteArray);
                                                                }
                                                            }
                                                            file3.delete();
                                                            secureDocumentKey3 = null;
                                                            z7 = false;
                                                            i2 = 0;
                                                            secureDocumentKey4 = secureDocumentKey3;
                                                            i5 = i2;
                                                            r0 = secureDocumentKey4;
                                                            Thread.interrupted();
                                                            if (BuildVars.LOGS_ENABLED) {
                                                                StringBuilder sb2 = new StringBuilder();
                                                                sb2.append("Image Loader image is empty = ");
                                                                sb2.append(bitmapDecodeByteArray != null);
                                                                sb2.append(" ");
                                                                sb2.append(file3);
                                                                FileLog.e(sb2.toString());
                                                            }
                                                            if (bitmapDecodeByteArray != null) {
                                                                obj = this.cacheImage.parentObject;
                                                                if (obj instanceof TLRPC.WallPaper) {
                                                                }
                                                            }
                                                            cacheImage = this.cacheImage;
                                                            if (cacheImage == null) {
                                                                if (bitmapDecodeByteArray != null) {
                                                                }
                                                            } else if (bitmapDecodeByteArray != null) {
                                                            }
                                                        } else {
                                                            if (this.cacheImage.filter != null) {
                                                                float width2 = bitmapDecodeByteArray.getWidth();
                                                                float height2 = bitmapDecodeByteArray.getHeight();
                                                                if (!options.inPurgeable && f3 != BitmapDescriptorFactory.HUE_RED && width2 != f3 && width2 > 20.0f + f3 && bitmapDecodeByteArray != (bitmapCreateScaledBitmap = Bitmaps.createScaledBitmap(bitmapDecodeByteArray, (int) f3, (int) (height2 / (width2 / f3)), true))) {
                                                                    bitmapDecodeByteArray.recycle();
                                                                    bitmapDecodeByteArray = bitmapCreateScaledBitmap;
                                                                }
                                                            }
                                                            z7 = z10 && Utilities.needInvert(bitmapDecodeByteArray, !options.inPurgeable ? 1 : 0, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), bitmapDecodeByteArray.getRowBytes()) != 0;
                                                            try {
                                                            } catch (Throwable th18) {
                                                                th = th18;
                                                                z8 = th instanceof FileNotFoundException;
                                                                secureDocumentKey2 = null;
                                                                z9 = true;
                                                                i2 = 0;
                                                                FileLog.e(th, z8 ^ z9);
                                                                secureDocumentKey4 = secureDocumentKey2;
                                                                i5 = i2;
                                                                r0 = secureDocumentKey4;
                                                                Thread.interrupted();
                                                                if (BuildVars.LOGS_ENABLED) {
                                                                }
                                                                if (bitmapDecodeByteArray != null) {
                                                                }
                                                                cacheImage = this.cacheImage;
                                                                if (cacheImage == null) {
                                                                }
                                                                onPostExecute(themePreviewDrawable);
                                                            }
                                                            if (r6 == 1) {
                                                                if (bitmapDecodeByteArray.getConfig() == Bitmap.Config.ARGB_8888) {
                                                                    r25 = !options.inPurgeable;
                                                                    width = bitmapDecodeByteArray.getWidth();
                                                                    height = bitmapDecodeByteArray.getHeight();
                                                                    rowBytes = bitmapDecodeByteArray.getRowBytes();
                                                                    i4 = 3;
                                                                    Utilities.blurBitmap(bitmapDecodeByteArray, i4, r25, width, height, rowBytes);
                                                                }
                                                                z12 = false;
                                                                i5 = 0;
                                                                r0 = z12;
                                                                Thread.interrupted();
                                                                if (BuildVars.LOGS_ENABLED) {
                                                                }
                                                                if (bitmapDecodeByteArray != null) {
                                                                }
                                                                cacheImage = this.cacheImage;
                                                                if (cacheImage == null) {
                                                                }
                                                            } else {
                                                                if (r6 == 2) {
                                                                    if (bitmapDecodeByteArray.getConfig() == Bitmap.Config.ARGB_8888) {
                                                                        r25 = !options.inPurgeable;
                                                                        width = bitmapDecodeByteArray.getWidth();
                                                                        height = bitmapDecodeByteArray.getHeight();
                                                                        rowBytes = bitmapDecodeByteArray.getRowBytes();
                                                                        i4 = 1;
                                                                        Utilities.blurBitmap(bitmapDecodeByteArray, i4, r25, width, height, rowBytes);
                                                                    }
                                                                } else if (r6 == 3 || r6 == 4) {
                                                                    if (bitmapDecodeByteArray.getConfig() == Bitmap.Config.ARGB_8888) {
                                                                        if (r6 == 4) {
                                                                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), bitmapDecodeByteArray.getConfig());
                                                                            Canvas canvas = new Canvas(bitmapCreateBitmap);
                                                                            canvas.save();
                                                                            canvas.scale(1.2f, 1.2f, bitmapDecodeByteArray.getWidth() / 2.0f, bitmapDecodeByteArray.getHeight() / 2.0f);
                                                                            canvas.drawBitmap(bitmapDecodeByteArray, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
                                                                            canvas.restore();
                                                                            Path path = new Path();
                                                                            path.addCircle(bitmapDecodeByteArray.getWidth() / 2.0f, bitmapDecodeByteArray.getHeight() / 2.0f, Math.min(bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight()) / 2.0f, Path.Direction.CW);
                                                                            canvas.clipPath(path);
                                                                            canvas.drawBitmap(bitmapDecodeByteArray, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
                                                                            bitmapDecodeByteArray.recycle();
                                                                            bitmapDecodeByteArray = bitmapCreateBitmap;
                                                                        }
                                                                        Utilities.blurBitmap(bitmapDecodeByteArray, 7, !options.inPurgeable ? 1 : 0, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), bitmapDecodeByteArray.getRowBytes());
                                                                        Utilities.blurBitmap(bitmapDecodeByteArray, 7, !options.inPurgeable ? 1 : 0, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), bitmapDecodeByteArray.getRowBytes());
                                                                        Utilities.blurBitmap(bitmapDecodeByteArray, 7, !options.inPurgeable ? 1 : 0, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), bitmapDecodeByteArray.getRowBytes());
                                                                    }
                                                                } else if (r6 == 0 && options.inPurgeable) {
                                                                    Utilities.pinBitmap(bitmapDecodeByteArray);
                                                                    secureDocumentKey3 = null;
                                                                    i2 = 0;
                                                                    secureDocumentKey4 = secureDocumentKey3;
                                                                    i5 = i2;
                                                                    r0 = secureDocumentKey4;
                                                                    Thread.interrupted();
                                                                    if (BuildVars.LOGS_ENABLED) {
                                                                    }
                                                                    if (bitmapDecodeByteArray != null) {
                                                                    }
                                                                    cacheImage = this.cacheImage;
                                                                    if (cacheImage == null) {
                                                                    }
                                                                }
                                                                z12 = false;
                                                                i5 = 0;
                                                                r0 = z12;
                                                                Thread.interrupted();
                                                                if (BuildVars.LOGS_ENABLED) {
                                                                }
                                                                if (bitmapDecodeByteArray != null) {
                                                                }
                                                                cacheImage = this.cacheImage;
                                                                if (cacheImage == null) {
                                                                }
                                                            }
                                                        }
                                                    } finally {
                                                        th = th;
                                                        Bitmap bitmap2 = bitmapDecodeByteArray;
                                                        while (true) {
                                                            try {
                                                            } catch (Throwable th19) {
                                                                th = th19;
                                                            }
                                                        }
                                                    }
                                                }
                                            } else {
                                                Bitmap bitmap3 = bitmapDecodeByteArray;
                                                boolean z38 = z6;
                                                int i28 = l != null ? 0 : 20;
                                                if (i28 != 0) {
                                                    try {
                                                        if (ImageLoader.this.lastCacheOutTime != 0) {
                                                            z13 = z38;
                                                            f5 = f3;
                                                            long j3 = i28;
                                                            if (ImageLoader.this.lastCacheOutTime > SystemClock.elapsedRealtime() - j3 && Build.VERSION.SDK_INT < 21) {
                                                                Thread.sleep(j3);
                                                            }
                                                        } else {
                                                            z13 = z38;
                                                            f5 = f3;
                                                        }
                                                        ImageLoader.this.lastCacheOutTime = SystemClock.elapsedRealtime();
                                                    } catch (Throwable th20) {
                                                        th = th20;
                                                        bitmapDecodeByteArray = bitmap3;
                                                    }
                                                    synchronized (this.sync) {
                                                        try {
                                                            if (this.isCancelled) {
                                                                return;
                                                            }
                                                            if (!z36) {
                                                                CacheImage cacheImage8 = this.cacheImage;
                                                                Bitmap.Config config = (cacheImage8.filter != null && r6 == 0 && cacheImage8.imageLocation.path == null) ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                                                                options.inPreferredConfig = config;
                                                                options.inDither = false;
                                                                if (l == null || str != null) {
                                                                    bitmapDecodeByteArray = bitmap3;
                                                                } else {
                                                                    if (!z3) {
                                                                        thumbnail = MediaStore.Images.Thumbnails.getThumbnail(ApplicationLoader.applicationContext.getContentResolver(), l.longValue(), 1, options);
                                                                    } else if (l.longValue() == 0) {
                                                                        AnimatedFileDrawable animatedFileDrawable5 = new AnimatedFileDrawable(file3, true, 0L, 0, null, null, null, 0L, 0, true, null);
                                                                        Bitmap frameAtTime3 = animatedFileDrawable5.getFrameAtTime(0L, true);
                                                                        try {
                                                                            animatedFileDrawable5.recycle();
                                                                            bitmapDecodeByteArray = frameAtTime3;
                                                                        } catch (Throwable th21) {
                                                                            th = th21;
                                                                            bitmapDecodeByteArray = frameAtTime3;
                                                                            secureDocumentKey = null;
                                                                            z14 = false;
                                                                            i2 = 0;
                                                                            z8 = th instanceof FileNotFoundException;
                                                                            secureDocumentKey2 = secureDocumentKey;
                                                                            z7 = z14;
                                                                            z9 = true;
                                                                            FileLog.e(th, z8 ^ z9);
                                                                            secureDocumentKey4 = secureDocumentKey2;
                                                                            i5 = i2;
                                                                            r0 = secureDocumentKey4;
                                                                            Thread.interrupted();
                                                                            if (BuildVars.LOGS_ENABLED) {
                                                                            }
                                                                            if (bitmapDecodeByteArray != null) {
                                                                            }
                                                                            cacheImage = this.cacheImage;
                                                                            if (cacheImage == null) {
                                                                            }
                                                                            onPostExecute(themePreviewDrawable);
                                                                        }
                                                                    } else {
                                                                        thumbnail = MediaStore.Video.Thumbnails.getThumbnail(ApplicationLoader.applicationContext.getContentResolver(), l.longValue(), 1, options);
                                                                    }
                                                                    bitmapDecodeByteArray = thumbnail;
                                                                }
                                                                if (bitmapDecodeByteArray == null) {
                                                                    if (bitmapDecodeByteArray == null) {
                                                                        try {
                                                                            if (secureDocumentKey != null) {
                                                                                fileInputStream = new EncryptedFileInputStream(file3, secureDocumentKey);
                                                                            } else if (z35) {
                                                                                fileInputStream = new EncryptedFileInputStream(file3, this.cacheImage.encryptionKeyPath);
                                                                            } else {
                                                                                try {
                                                                                    fileInputStream = new FileInputStream(file3);
                                                                                } catch (Throwable th22) {
                                                                                    th = th22;
                                                                                    secureDocumentKey = null;
                                                                                    z14 = false;
                                                                                    i2 = 0;
                                                                                    z8 = th instanceof FileNotFoundException;
                                                                                    secureDocumentKey2 = secureDocumentKey;
                                                                                    z7 = z14;
                                                                                    z9 = true;
                                                                                    FileLog.e(th, z8 ^ z9);
                                                                                    secureDocumentKey4 = secureDocumentKey2;
                                                                                    i5 = i2;
                                                                                    r0 = secureDocumentKey4;
                                                                                    Thread.interrupted();
                                                                                    if (BuildVars.LOGS_ENABLED) {
                                                                                    }
                                                                                    if (bitmapDecodeByteArray != null) {
                                                                                    }
                                                                                    cacheImage = this.cacheImage;
                                                                                    if (cacheImage == null) {
                                                                                    }
                                                                                    onPostExecute(themePreviewDrawable);
                                                                                }
                                                                            }
                                                                            CacheImage cacheImage9 = this.cacheImage;
                                                                            if (cacheImage9.imageLocation.document instanceof TLRPC.TL_document) {
                                                                                Pair<Integer, Integer> imageOrientation = AndroidUtilities.getImageOrientation(fileInputStream);
                                                                                iIntValue = ((Integer) imageOrientation.first).intValue();
                                                                                try {
                                                                                    IntValue = ((Integer) imageOrientation.second).intValue();
                                                                                    if (secureDocumentKey == null) {
                                                                                        try {
                                                                                            if (this.cacheImage.encryptionKeyPath != null) {
                                                                                                try {
                                                                                                    fileInputStream.close();
                                                                                                    IntValue = IntValue;
                                                                                                    if (secureDocumentKey == null) {
                                                                                                        fileInputStream = new EncryptedFileInputStream(file3, secureDocumentKey);
                                                                                                        IntValue = IntValue;
                                                                                                    } else if (z35) {
                                                                                                        fileInputStream = new EncryptedFileInputStream(file3, this.cacheImage.encryptionKeyPath);
                                                                                                        IntValue = IntValue;
                                                                                                    }
                                                                                                    bitmapDecodeByteArray = BitmapFactory.decodeStream(fileInputStream, null, options);
                                                                                                    fileInputStream.close();
                                                                                                    secureDocumentKey5 = IntValue;
                                                                                                } catch (Throwable th23) {
                                                                                                    th = th23;
                                                                                                    secureDocumentKey = IntValue;
                                                                                                    i2 = iIntValue;
                                                                                                    z14 = false;
                                                                                                    z8 = th instanceof FileNotFoundException;
                                                                                                    secureDocumentKey2 = secureDocumentKey;
                                                                                                    z7 = z14;
                                                                                                    z9 = true;
                                                                                                    FileLog.e(th, z8 ^ z9);
                                                                                                    secureDocumentKey4 = secureDocumentKey2;
                                                                                                    i5 = i2;
                                                                                                    r0 = secureDocumentKey4;
                                                                                                    Thread.interrupted();
                                                                                                    if (BuildVars.LOGS_ENABLED) {
                                                                                                    }
                                                                                                    if (bitmapDecodeByteArray != null) {
                                                                                                    }
                                                                                                    cacheImage = this.cacheImage;
                                                                                                    if (cacheImage == null) {
                                                                                                    }
                                                                                                    onPostExecute(themePreviewDrawable);
                                                                                                }
                                                                                            } else {
                                                                                                fileInputStream.getChannel().position(0L);
                                                                                                IntValue = IntValue;
                                                                                                bitmapDecodeByteArray = BitmapFactory.decodeStream(fileInputStream, null, options);
                                                                                                fileInputStream.close();
                                                                                                secureDocumentKey5 = IntValue;
                                                                                            }
                                                                                        } catch (Throwable th24) {
                                                                                            th = th24;
                                                                                            secureDocumentKey = IntValue;
                                                                                            i2 = iIntValue;
                                                                                            z14 = false;
                                                                                            z8 = th instanceof FileNotFoundException;
                                                                                            secureDocumentKey2 = secureDocumentKey;
                                                                                            z7 = z14;
                                                                                            z9 = true;
                                                                                            FileLog.e(th, z8 ^ z9);
                                                                                            secureDocumentKey4 = secureDocumentKey2;
                                                                                            i5 = i2;
                                                                                            r0 = secureDocumentKey4;
                                                                                            Thread.interrupted();
                                                                                            if (BuildVars.LOGS_ENABLED) {
                                                                                            }
                                                                                            if (bitmapDecodeByteArray != null) {
                                                                                            }
                                                                                            cacheImage = this.cacheImage;
                                                                                            if (cacheImage == null) {
                                                                                            }
                                                                                            onPostExecute(themePreviewDrawable);
                                                                                        }
                                                                                    } else {
                                                                                        fileInputStream.close();
                                                                                        IntValue = IntValue;
                                                                                        if (secureDocumentKey == null) {
                                                                                        }
                                                                                        bitmapDecodeByteArray = BitmapFactory.decodeStream(fileInputStream, null, options);
                                                                                        fileInputStream.close();
                                                                                        secureDocumentKey5 = IntValue;
                                                                                    }
                                                                                } catch (Throwable th25) {
                                                                                    th = th25;
                                                                                    i2 = iIntValue;
                                                                                    secureDocumentKey = null;
                                                                                    z14 = false;
                                                                                    z8 = th instanceof FileNotFoundException;
                                                                                    secureDocumentKey2 = secureDocumentKey;
                                                                                    z7 = z14;
                                                                                    z9 = true;
                                                                                    FileLog.e(th, z8 ^ z9);
                                                                                    secureDocumentKey4 = secureDocumentKey2;
                                                                                    i5 = i2;
                                                                                    r0 = secureDocumentKey4;
                                                                                    Thread.interrupted();
                                                                                    if (BuildVars.LOGS_ENABLED) {
                                                                                    }
                                                                                    if (bitmapDecodeByteArray != null) {
                                                                                    }
                                                                                    cacheImage = this.cacheImage;
                                                                                    if (cacheImage == null) {
                                                                                    }
                                                                                    onPostExecute(themePreviewDrawable);
                                                                                }
                                                                            } else {
                                                                                String str13 = cacheImage9.filter;
                                                                                if (str13 != null) {
                                                                                    if (str13.contains("exif")) {
                                                                                    }
                                                                                    bitmapDecodeByteArray = BitmapFactory.decodeStream(fileInputStream, null, options);
                                                                                    fileInputStream.close();
                                                                                    secureDocumentKey5 = IntValue;
                                                                                }
                                                                                IntValue = 0;
                                                                                iIntValue = 0;
                                                                                bitmapDecodeByteArray = BitmapFactory.decodeStream(fileInputStream, null, options);
                                                                                fileInputStream.close();
                                                                                secureDocumentKey5 = IntValue;
                                                                            }
                                                                        } catch (Throwable th26) {
                                                                            th = th26;
                                                                        }
                                                                    } else {
                                                                        secureDocumentKey5 = null;
                                                                        iIntValue = 0;
                                                                    }
                                                                    if (bitmapDecodeByteArray == null) {
                                                                        try {
                                                                            RandomAccessFile randomAccessFile5 = new RandomAccessFile(file3, "r");
                                                                            int length3 = (int) randomAccessFile5.length();
                                                                            byte[] bArr5 = (byte[]) ImageLoader.bytesLocal.get();
                                                                            if (bArr5 == null || bArr5.length < length3) {
                                                                                bArr5 = null;
                                                                            }
                                                                            if (bArr5 == null) {
                                                                                bArr5 = new byte[length3];
                                                                                ImageLoader.bytesLocal.set(bArr5);
                                                                            }
                                                                            randomAccessFile5.readFully(bArr5, 0, length3);
                                                                            randomAccessFile5.close();
                                                                            try {
                                                                                if (secureDocumentKey != null) {
                                                                                    EncryptedFileInputStream.decryptBytesWithKeyFile(bArr5, 0, length3, secureDocumentKey);
                                                                                    secureDocumentKey = secureDocumentKey5;
                                                                                    i2 = iIntValue;
                                                                                    z16 = bArr == null || !Arrays.equals(Utilities.computeSHA256(bArr5, 0, (long) length3), bArr);
                                                                                    i7 = bArr5[0] & 255;
                                                                                    length3 -= i7;
                                                                                } else {
                                                                                    secureDocumentKey = secureDocumentKey5;
                                                                                    i2 = iIntValue;
                                                                                    if (z35) {
                                                                                        EncryptedFileInputStream.decryptBytesWithKeyFile(bArr5, 0, length3, this.cacheImage.encryptionKeyPath);
                                                                                    }
                                                                                    z16 = false;
                                                                                    i7 = 0;
                                                                                }
                                                                                if (!z16) {
                                                                                    bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr5, i7, length3, options);
                                                                                }
                                                                            } catch (Throwable th27) {
                                                                                th = th27;
                                                                                try {
                                                                                    FileLog.e(th);
                                                                                    if (bitmapDecodeByteArray != null) {
                                                                                    }
                                                                                } catch (Throwable th28) {
                                                                                    th = th28;
                                                                                    z14 = false;
                                                                                    z8 = th instanceof FileNotFoundException;
                                                                                    secureDocumentKey2 = secureDocumentKey;
                                                                                    z7 = z14;
                                                                                    z9 = true;
                                                                                    FileLog.e(th, z8 ^ z9);
                                                                                    secureDocumentKey4 = secureDocumentKey2;
                                                                                    i5 = i2;
                                                                                    r0 = secureDocumentKey4;
                                                                                    Thread.interrupted();
                                                                                    if (BuildVars.LOGS_ENABLED) {
                                                                                    }
                                                                                    if (bitmapDecodeByteArray != null) {
                                                                                    }
                                                                                    cacheImage = this.cacheImage;
                                                                                    if (cacheImage == null) {
                                                                                    }
                                                                                    onPostExecute(themePreviewDrawable);
                                                                                }
                                                                                i5 = i2;
                                                                                r0 = secureDocumentKey4;
                                                                                Thread.interrupted();
                                                                                if (BuildVars.LOGS_ENABLED) {
                                                                                }
                                                                                if (bitmapDecodeByteArray != null) {
                                                                                }
                                                                                cacheImage = this.cacheImage;
                                                                                if (cacheImage == null) {
                                                                                }
                                                                                onPostExecute(themePreviewDrawable);
                                                                            }
                                                                        } catch (Throwable th29) {
                                                                            th = th29;
                                                                            secureDocumentKey = secureDocumentKey5;
                                                                            i2 = iIntValue;
                                                                        }
                                                                    } else {
                                                                        secureDocumentKey = secureDocumentKey5;
                                                                        i2 = iIntValue;
                                                                    }
                                                                } else {
                                                                    secureDocumentKey = null;
                                                                    i2 = 0;
                                                                }
                                                                if (bitmapDecodeByteArray != null) {
                                                                    if (z2 && (file3.length() == 0 || this.cacheImage.filter == null)) {
                                                                        file3.delete();
                                                                        secureDocumentKey4 = secureDocumentKey;
                                                                        z7 = false;
                                                                    } else {
                                                                        r0 = secureDocumentKey;
                                                                        i5 = i2;
                                                                        z7 = false;
                                                                        Thread.interrupted();
                                                                        if (BuildVars.LOGS_ENABLED) {
                                                                        }
                                                                        if (bitmapDecodeByteArray != null) {
                                                                        }
                                                                        cacheImage = this.cacheImage;
                                                                        if (cacheImage == null) {
                                                                        }
                                                                    }
                                                                } else if (this.cacheImage.filter != null) {
                                                                    float width3 = bitmapDecodeByteArray.getWidth();
                                                                    float height3 = bitmapDecodeByteArray.getHeight();
                                                                    if (!options.inPurgeable && f5 != BitmapDescriptorFactory.HUE_RED && width3 != f5 && width3 > f5 + 20.0f) {
                                                                        if (width3 <= height3 || f5 <= f4) {
                                                                            float f15 = height3 / f4;
                                                                            if (f15 > 1.0f) {
                                                                                i6 = (int) (width3 / f15);
                                                                                bitmapCreateScaledBitmap2 = Bitmaps.createScaledBitmap(bitmapDecodeByteArray, i6, (int) f4, true);
                                                                            }
                                                                            bitmapCreateScaledBitmap2 = bitmapDecodeByteArray;
                                                                        } else {
                                                                            float f16 = width3 / f5;
                                                                            if (f16 > 1.0f) {
                                                                                i6 = (int) f5;
                                                                                f4 = height3 / f16;
                                                                                bitmapCreateScaledBitmap2 = Bitmaps.createScaledBitmap(bitmapDecodeByteArray, i6, (int) f4, true);
                                                                            }
                                                                            bitmapCreateScaledBitmap2 = bitmapDecodeByteArray;
                                                                        }
                                                                        if (bitmapDecodeByteArray != bitmapCreateScaledBitmap2) {
                                                                            bitmapDecodeByteArray.recycle();
                                                                            bitmapDecodeByteArray = bitmapCreateScaledBitmap2;
                                                                        }
                                                                    }
                                                                    if (bitmapDecodeByteArray != null) {
                                                                        if (z13) {
                                                                            Bitmap bitmapCreateScaledBitmap3 = bitmapDecodeByteArray.getWidth() * bitmapDecodeByteArray.getHeight() > 22500 ? Bitmaps.createScaledBitmap(bitmapDecodeByteArray, 100, 100, false) : bitmapDecodeByteArray;
                                                                            z14 = Utilities.needInvert(bitmapCreateScaledBitmap3, !options.inPurgeable ? 1 : 0, bitmapCreateScaledBitmap3.getWidth(), bitmapCreateScaledBitmap3.getHeight(), bitmapCreateScaledBitmap3.getRowBytes()) != 0;
                                                                            if (bitmapCreateScaledBitmap3 != bitmapDecodeByteArray) {
                                                                                try {
                                                                                    bitmapCreateScaledBitmap3.recycle();
                                                                                } catch (Throwable th30) {
                                                                                    th = th30;
                                                                                    z8 = th instanceof FileNotFoundException;
                                                                                    secureDocumentKey2 = secureDocumentKey;
                                                                                    z7 = z14;
                                                                                    z9 = true;
                                                                                    FileLog.e(th, z8 ^ z9);
                                                                                    secureDocumentKey4 = secureDocumentKey2;
                                                                                    i5 = i2;
                                                                                    r0 = secureDocumentKey4;
                                                                                    Thread.interrupted();
                                                                                    if (BuildVars.LOGS_ENABLED) {
                                                                                    }
                                                                                    if (bitmapDecodeByteArray != null) {
                                                                                    }
                                                                                    cacheImage = this.cacheImage;
                                                                                    if (cacheImage == null) {
                                                                                    }
                                                                                    onPostExecute(themePreviewDrawable);
                                                                                }
                                                                            }
                                                                        } else {
                                                                            z14 = false;
                                                                        }
                                                                        if (r6 != 0 && (height3 > 100.0f || width3 > 100.0f)) {
                                                                            height3 = 80.0f;
                                                                            bitmapDecodeByteArray = Bitmaps.createScaledBitmap(bitmapDecodeByteArray, 80, 80, false);
                                                                            width3 = 80.0f;
                                                                        }
                                                                        if (r6 == 0 || height3 >= 100.0f || width3 >= 100.0f) {
                                                                            z15 = false;
                                                                        } else {
                                                                            if (bitmapDecodeByteArray.getConfig() == Bitmap.Config.ARGB_8888) {
                                                                                Utilities.blurBitmap(bitmapDecodeByteArray, 3, !options.inPurgeable ? 1 : 0, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), bitmapDecodeByteArray.getRowBytes());
                                                                            }
                                                                            z15 = true;
                                                                        }
                                                                    } else {
                                                                        z15 = false;
                                                                        z14 = false;
                                                                    }
                                                                    if (!z15 && options.inPurgeable) {
                                                                        Utilities.pinBitmap(bitmapDecodeByteArray);
                                                                    }
                                                                    secureDocumentKey4 = secureDocumentKey;
                                                                    z7 = z14;
                                                                }
                                                                i5 = i2;
                                                                r0 = secureDocumentKey4;
                                                                Thread.interrupted();
                                                                if (BuildVars.LOGS_ENABLED) {
                                                                }
                                                                if (bitmapDecodeByteArray != null) {
                                                                }
                                                                cacheImage = this.cacheImage;
                                                                if (cacheImage == null) {
                                                                }
                                                            }
                                                        } finally {
                                                        }
                                                    }
                                                }
                                            }
                                        } else {
                                            l = lValueOf;
                                            z3 = z;
                                            if (str != null) {
                                                try {
                                                    options.inJustDecodeBounds = true;
                                                    options.inPreferredConfig = z36 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
                                                    fileInputStream2 = new FileInputStream(file3);
                                                    bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStream2, null, options);
                                                } catch (Throwable th31) {
                                                    th = th31;
                                                    f = BitmapDescriptorFactory.HUE_RED;
                                                    f2 = BitmapDescriptorFactory.HUE_RED;
                                                    bitmapDecodeByteArray = null;
                                                    z4 = false;
                                                    z5 = false;
                                                    i = 1;
                                                    FileLog.e(th, !(th instanceof FileNotFoundException));
                                                    f3 = f;
                                                    f4 = f2;
                                                    r6 = z4;
                                                    z6 = z5;
                                                    if (this.cacheImage.type == i) {
                                                    }
                                                    onPostExecute(themePreviewDrawable);
                                                }
                                                try {
                                                    fileInputStream2.close();
                                                    int i29 = options.outWidth;
                                                    int i30 = options.outHeight;
                                                    options.inJustDecodeBounds = false;
                                                    float fMin2 = (Math.min(i30, i29) / Math.max(66, Math.min(AndroidUtilities.getRealScreenSize().x, AndroidUtilities.getRealScreenSize().y))) * 6.0f;
                                                    if (fMin2 < 1.0f) {
                                                        fMin2 = 1.0f;
                                                    }
                                                    if (fMin2 > 1.0f) {
                                                        int i31 = 1;
                                                        while (true) {
                                                            i9 = i31 * 2;
                                                            if (i31 * 4 > fMin2) {
                                                                break;
                                                            } else {
                                                                i31 = i9;
                                                            }
                                                        }
                                                        options.inSampleSize = i9;
                                                        bitmapDecodeByteArray = bitmapDecodeStream;
                                                        f4 = BitmapDescriptorFactory.HUE_RED;
                                                        z17 = false;
                                                    } else {
                                                        i8 = (int) fMin2;
                                                        bitmapDecodeByteArray = bitmapDecodeStream;
                                                        f = BitmapDescriptorFactory.HUE_RED;
                                                        z4 = false;
                                                        z5 = false;
                                                        z18 = z36;
                                                        f6 = BitmapDescriptorFactory.HUE_RED;
                                                    }
                                                } catch (Throwable th32) {
                                                    th = th32;
                                                    bitmapDecodeByteArray = bitmapDecodeStream;
                                                    f = BitmapDescriptorFactory.HUE_RED;
                                                    f2 = BitmapDescriptorFactory.HUE_RED;
                                                    z4 = false;
                                                    z5 = false;
                                                    i = 1;
                                                    FileLog.e(th, !(th instanceof FileNotFoundException));
                                                    f3 = f;
                                                    f4 = f2;
                                                    r6 = z4;
                                                    z6 = z5;
                                                    if (this.cacheImage.type == i) {
                                                    }
                                                    onPostExecute(themePreviewDrawable);
                                                }
                                            } else {
                                                f4 = BitmapDescriptorFactory.HUE_RED;
                                                z17 = false;
                                                bitmapDecodeByteArray = null;
                                            }
                                            z6 = false;
                                            i = 1;
                                            f3 = BitmapDescriptorFactory.HUE_RED;
                                            r6 = z17;
                                            if (this.cacheImage.type == i) {
                                            }
                                        }
                                        options.inSampleSize = i8;
                                        f3 = f;
                                        f4 = f6;
                                        z36 = z18;
                                        z19 = z4;
                                        z6 = z5;
                                        i = 1;
                                        r6 = z19;
                                        if (this.cacheImage.type == i) {
                                        }
                                    } else {
                                        if (str12.startsWith("thumb://")) {
                                            int iIndexOf = str12.indexOf(":", 8);
                                            if (iIndexOf >= 0) {
                                                lValueOf = Long.valueOf(Long.parseLong(str12.substring(8, iIndexOf)));
                                                strSubstring = str12.substring(iIndexOf + 1);
                                            } else {
                                                strSubstring = null;
                                                lValueOf = null;
                                            }
                                            str = strSubstring;
                                            z = false;
                                        } else {
                                            if (str12.startsWith("vthumb://")) {
                                                int iIndexOf2 = str12.indexOf(":", 9);
                                                if (iIndexOf2 >= 0) {
                                                    lValueOf2 = Long.valueOf(Long.parseLong(str12.substring(9, iIndexOf2)));
                                                    z20 = true;
                                                }
                                                lValueOf = lValueOf2;
                                                z = z20;
                                                str = null;
                                            }
                                            lValueOf2 = null;
                                            z20 = false;
                                            lValueOf = lValueOf2;
                                            z = z20;
                                            str = null;
                                        }
                                        z2 = false;
                                        BitmapFactory.Options options2 = new BitmapFactory.Options();
                                        options2.inSampleSize = 1;
                                        if (Build.VERSION.SDK_INT < 21) {
                                        }
                                        boolean z362 = ImageLoader.this.canForce8888;
                                        str3 = this.cacheImage.filter;
                                        if (str3 == null) {
                                        }
                                        options2.inSampleSize = i8;
                                        f3 = f;
                                        f4 = f6;
                                        z362 = z18;
                                        z19 = z4;
                                        z6 = z5;
                                        i = 1;
                                        r6 = z19;
                                        if (this.cacheImage.type == i) {
                                        }
                                    }
                                }
                                onPostExecute(rLottieDrawable);
                                return;
                            }
                            Point point = AndroidUtilities.displaySize;
                            int i32 = point.x;
                            int i33 = point.y;
                            String str14 = cacheImage2.filter;
                            if (str14 != null) {
                                String[] strArrSplit5 = str14.split("_");
                                if (strArrSplit5.length >= 2) {
                                    float f17 = Float.parseFloat(strArrSplit5[0]);
                                    float f18 = Float.parseFloat(strArrSplit5[1]);
                                    float f19 = AndroidUtilities.density;
                                    int i34 = (int) (f18 * f19);
                                    i32 = (int) (f17 * f19);
                                    i33 = i34;
                                }
                                try {
                                    CacheImage cacheImage10 = this.cacheImage;
                                    bitmapApplyWallpaperSetting = SvgHelper.getBitmap(cacheImage10.finalFilePath, i32, i33, cacheImage10.imageType == 4);
                                } catch (Throwable th33) {
                                    FileLog.e(th33);
                                    bitmapApplyWallpaperSetting = null;
                                }
                                if (bitmapApplyWallpaperSetting != null && !TextUtils.isEmpty(this.cacheImage.filter) && this.cacheImage.filter.contains("wallpaper")) {
                                    Object obj2 = this.cacheImage.parentObject;
                                    if (obj2 instanceof TLRPC.WallPaper) {
                                        bitmapApplyWallpaperSetting = applyWallpaperSetting(bitmapApplyWallpaperSetting, (TLRPC.WallPaper) obj2);
                                    }
                                }
                                if (bitmapApplyWallpaperSetting != null) {
                                    themePreviewDrawable = new BitmapDrawable(bitmapApplyWallpaperSetting);
                                }
                            }
                        }
                    }
                    onPostExecute(themePreviewDrawable);
                } finally {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class HttpFileTask extends AsyncTask<Void, Void, Boolean> {
        private int currentAccount;
        private String ext;
        private int fileSize;
        private long lastProgressTime;
        private File tempFile;
        private String url;
        private RandomAccessFile fileOutputStream = null;
        private boolean canRetry = true;

        public HttpFileTask(String str, File file, String str2, int i) {
            this.url = str;
            this.tempFile = file;
            this.ext = str2;
            this.currentAccount = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$reportProgress$0(long j, long j2) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadProgressChanged, this.url, Long.valueOf(j), Long.valueOf(j2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$reportProgress$1(final long j, final long j2) {
            ImageLoader.this.fileProgresses.put(this.url, new long[]{j, j2});
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpFileTask$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$reportProgress$0(j, j2);
                }
            });
        }

        private void reportProgress(final long j, final long j2) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (j != j2) {
                long j3 = this.lastProgressTime;
                if (j3 != 0 && j3 >= jElapsedRealtime - 100) {
                    return;
                }
            }
            this.lastProgressTime = jElapsedRealtime;
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpFileTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$reportProgress$1(j, j2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code restructure failed: missing block: B:85:0x0121, code lost:
        
            if (r5 != (-1)) goto L96;
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x0123, code lost:
        
            r0 = r11.fileSize;
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x0125, code lost:
        
            if (r0 == 0) goto L113;
         */
        /* JADX WARN: Code restructure failed: missing block: B:88:0x0127, code lost:
        
            r3 = r0;
            reportProgress(r3, r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:90:0x012c, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x012e, code lost:
        
            r0 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x012f, code lost:
        
            org.telegram.messenger.FileLog.e(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x0133, code lost:
        
            org.telegram.messenger.FileLog.e(r0);
         */
        /* JADX WARN: Removed duplicated region for block: B:125:0x0148 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:128:0x00a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:99:0x013c A[Catch: all -> 0x0142, TRY_LEAVE, TryCatch #1 {all -> 0x0142, blocks: (B:97:0x0138, B:99:0x013c), top: B:113:0x0138 }] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Boolean doInBackground(Void... voidArr) {
            InputStream inputStream;
            URLConnection uRLConnectionOpenConnection;
            InputStream inputStream2;
            List<String> list;
            String str;
            RandomAccessFile randomAccessFile;
            int responseCode;
            boolean z = true;
            boolean z2 = false;
            try {
                uRLConnectionOpenConnection = new URL(this.url).openConnection();
                try {
                    uRLConnectionOpenConnection.addRequestProperty("User-Agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1");
                    uRLConnectionOpenConnection.setConnectTimeout(5000);
                    uRLConnectionOpenConnection.setReadTimeout(5000);
                    if (uRLConnectionOpenConnection instanceof HttpURLConnection) {
                        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                        httpURLConnection.setInstanceFollowRedirects(true);
                        int responseCode2 = httpURLConnection.getResponseCode();
                        if (responseCode2 == 302 || responseCode2 == 301 || responseCode2 == 303) {
                            String headerField = httpURLConnection.getHeaderField(ActivityRecognitionConstants.LOCATION_MODULE);
                            String headerField2 = httpURLConnection.getHeaderField("Set-Cookie");
                            uRLConnectionOpenConnection = new URL(headerField).openConnection();
                            uRLConnectionOpenConnection.setRequestProperty("Cookie", headerField2);
                            uRLConnectionOpenConnection.addRequestProperty("User-Agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1");
                        }
                    }
                    uRLConnectionOpenConnection.connect();
                    inputStream2 = uRLConnectionOpenConnection.getInputStream();
                } catch (Throwable th) {
                    th = th;
                    inputStream = null;
                }
            } catch (Throwable th2) {
                th = th2;
                inputStream = null;
                uRLConnectionOpenConnection = null;
            }
            try {
                this.fileOutputStream = new RandomAccessFile(this.tempFile, "rws");
            } catch (Throwable th3) {
                inputStream = inputStream2;
                th = th3;
                if (!(th instanceof SocketTimeoutException) ? !(!(th instanceof UnknownHostException) && (!(th instanceof SocketException) ? !(th instanceof FileNotFoundException) : th.getMessage() == null || !th.getMessage().contains("ECONNRESET"))) : ApplicationLoader.isNetworkOnline()) {
                    this.canRetry = false;
                }
                FileLog.e(th);
                inputStream2 = inputStream;
                if (this.canRetry) {
                }
                return Boolean.valueOf(z2);
            }
            if (this.canRetry) {
                try {
                    if ((uRLConnectionOpenConnection instanceof HttpURLConnection) && (responseCode = ((HttpURLConnection) uRLConnectionOpenConnection).getResponseCode()) != 200 && responseCode != 202 && responseCode != 304) {
                        this.canRetry = false;
                    }
                } catch (Exception e) {
                    FileLog.e(e);
                }
                if (uRLConnectionOpenConnection != null) {
                    try {
                        Map<String, List<String>> headerFields = uRLConnectionOpenConnection.getHeaderFields();
                        if (headerFields != null && (list = headerFields.get("content-Length")) != null && !list.isEmpty() && (str = list.get(0)) != null) {
                            this.fileSize = Utilities.parseInt((CharSequence) str).intValue();
                        }
                    } catch (Exception e2) {
                        FileLog.e(e2);
                    }
                }
                if (inputStream2 != null) {
                    try {
                        byte[] bArr = new byte[LiteMode.FLAG_CHAT_SCALE];
                        int i = 0;
                        while (true) {
                            if (isCancelled()) {
                                break;
                            }
                            try {
                                int i2 = inputStream2.read(bArr);
                                if (i2 <= 0) {
                                    break;
                                }
                                this.fileOutputStream.write(bArr, 0, i2);
                                i += i2;
                                int i3 = this.fileSize;
                                if (i3 > 0) {
                                    reportProgress(i, i3);
                                }
                            } catch (Exception e3) {
                                e = e3;
                                z = false;
                            }
                        }
                        z = false;
                    } catch (Throwable th4) {
                        th = th4;
                        z = false;
                    }
                    try {
                        randomAccessFile = this.fileOutputStream;
                        if (randomAccessFile != null) {
                            randomAccessFile.close();
                            this.fileOutputStream = null;
                        }
                    } catch (Throwable th5) {
                        FileLog.e(th5);
                    }
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (Throwable th6) {
                            FileLog.e(th6);
                        }
                    }
                    z2 = z;
                } else {
                    z = false;
                    randomAccessFile = this.fileOutputStream;
                    if (randomAccessFile != null) {
                    }
                    if (inputStream2 != null) {
                    }
                    z2 = z;
                }
            }
            return Boolean.valueOf(z2);
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            ImageLoader.this.runHttpFileLoadTasks(this, 2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            ImageLoader.this.runHttpFileLoadTasks(this, bool.booleanValue() ? 2 : 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class HttpImageTask extends AsyncTask<Void, Void, Boolean> {
        private CacheImage cacheImage;
        private boolean canRetry = true;
        private RandomAccessFile fileOutputStream;
        private HttpURLConnection httpConnection;
        private long imageSize;
        private long lastProgressTime;
        private String overrideUrl;

        public HttpImageTask(CacheImage cacheImage, int i, String str) {
            this.cacheImage = cacheImage;
            this.imageSize = i;
            this.overrideUrl = str;
        }

        public HttpImageTask(CacheImage cacheImage, long j) {
            this.cacheImage = cacheImage;
            this.imageSize = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$doInBackground$2(TLObject tLObject, TLRPC.TL_error tL_error) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCancelled$6() {
            ImageLoader.this.runHttpTasks(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCancelled$7() {
            NotificationCenter.getInstance(this.cacheImage.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadFailed, this.cacheImage.url, 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCancelled$8() {
            ImageLoader.this.fileProgresses.remove(this.cacheImage.url);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCancelled$7();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$3(Boolean bool) {
            if (!bool.booleanValue()) {
                NotificationCenter.getInstance(this.cacheImage.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadFailed, this.cacheImage.url, 2);
                return;
            }
            NotificationCenter notificationCenter = NotificationCenter.getInstance(this.cacheImage.currentAccount);
            int i = NotificationCenter.fileLoaded;
            CacheImage cacheImage = this.cacheImage;
            notificationCenter.lambda$postNotificationNameOnUIThread$1(i, cacheImage.url, cacheImage.finalFilePath);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$4(final Boolean bool) {
            ImageLoader.this.fileProgresses.remove(this.cacheImage.url);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPostExecute$3(bool);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$5() {
            ImageLoader.this.runHttpTasks(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$reportProgress$0(long j, long j2) {
            NotificationCenter.getInstance(this.cacheImage.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadProgressChanged, this.cacheImage.url, Long.valueOf(j), Long.valueOf(j2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$reportProgress$1(final long j, final long j2) {
            ImageLoader.this.fileProgresses.put(this.cacheImage.url, new long[]{j, j2});
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$reportProgress$0(j, j2);
                }
            });
        }

        private void reportProgress(final long j, final long j2) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (j != j2) {
                long j3 = this.lastProgressTime;
                if (j3 != 0 && j3 >= jElapsedRealtime - 100) {
                    return;
                }
            }
            this.lastProgressTime = jElapsedRealtime;
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$reportProgress$1(j, j2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code restructure failed: missing block: B:100:0x016e, code lost:
        
            if (r7 != (-1)) goto L112;
         */
        /* JADX WARN: Code restructure failed: missing block: B:101:0x0170, code lost:
        
            r2 = r12.imageSize;
         */
        /* JADX WARN: Code restructure failed: missing block: B:102:0x0174, code lost:
        
            if (r2 == 0) goto L143;
         */
        /* JADX WARN: Code restructure failed: missing block: B:103:0x0176, code lost:
        
            reportProgress(r2, r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:105:0x017a, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:106:0x017b, code lost:
        
            r0 = r2;
            r2 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:107:0x017e, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:108:0x017f, code lost:
        
            r0 = r2;
            r2 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:109:0x0181, code lost:
        
            org.telegram.messenger.FileLog.e(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:110:0x0184, code lost:
        
            r0 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:111:0x0186, code lost:
        
            org.telegram.messenger.FileLog.e(r0);
         */
        /* JADX WARN: Removed duplicated region for block: B:112:0x018a A[EDGE_INSN: B:157:0x018a->B:112:0x018a BREAK  A[LOOP:0: B:86:0x014b->B:160:0x014b]] */
        /* JADX WARN: Removed duplicated region for block: B:115:0x018f A[Catch: all -> 0x0195, TRY_LEAVE, TryCatch #4 {all -> 0x0195, blocks: (B:113:0x018b, B:115:0x018f), top: B:143:0x018b }] */
        /* JADX WARN: Removed duplicated region for block: B:121:0x019d A[Catch: all -> 0x01a1, TRY_LEAVE, TryCatch #2 {all -> 0x01a1, blocks: (B:119:0x0199, B:121:0x019d), top: B:141:0x0199 }] */
        /* JADX WARN: Removed duplicated region for block: B:130:0x01ae  */
        /* JADX WARN: Removed duplicated region for block: B:147:0x01a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:153:0x00ef A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00d2  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00d9  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x00e8  */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Boolean doInBackground(Void... voidArr) {
            InputStream inputStream;
            boolean z;
            InputStream inputStream2;
            WebFile webFile;
            HttpURLConnection httpURLConnection;
            List<String> list;
            String str;
            int responseCode;
            CacheImage cacheImage;
            File file;
            HttpURLConnection httpURLConnection2;
            RandomAccessFile randomAccessFile;
            boolean z2 = true;
            boolean z3 = false;
            if (!isCancelled()) {
                try {
                    String str2 = this.cacheImage.imageLocation.path;
                    if (str2.startsWith("https://static-maps") || str2.startsWith("https://maps.googleapis")) {
                        int i = MessagesController.getInstance(this.cacheImage.currentAccount).mapProvider;
                        if ((i == 3 || i == 4) && (webFile = (WebFile) ImageLoader.this.testWebFile.get(str2)) != null) {
                            TLRPC.TL_upload_getWebFile tL_upload_getWebFile = new TLRPC.TL_upload_getWebFile();
                            tL_upload_getWebFile.location = webFile.location;
                            tL_upload_getWebFile.offset = 0;
                            tL_upload_getWebFile.limit = 0;
                            ConnectionsManager.getInstance(this.cacheImage.currentAccount).sendRequest(tL_upload_getWebFile, new RequestDelegate() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda0
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    ImageLoader.HttpImageTask.lambda$doInBackground$2(tLObject, tL_error);
                                }
                            });
                        }
                    }
                    String str3 = this.overrideUrl;
                    if (str3 != null) {
                        str2 = str3;
                    }
                    HttpURLConnection httpURLConnection3 = (HttpURLConnection) new URL(str2).openConnection();
                    this.httpConnection = httpURLConnection3;
                    httpURLConnection3.addRequestProperty("User-Agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1");
                    this.httpConnection.setConnectTimeout(5000);
                    this.httpConnection.setReadTimeout(5000);
                    this.httpConnection.setInstanceFollowRedirects(true);
                    if (isCancelled()) {
                        inputStream2 = null;
                    } else {
                        this.httpConnection.connect();
                        inputStream2 = this.httpConnection.getInputStream();
                        try {
                            this.fileOutputStream = new RandomAccessFile(this.cacheImage.tempFilePath, "rws");
                        } catch (Throwable th) {
                            inputStream = inputStream2;
                            th = th;
                            if (th instanceof SocketTimeoutException) {
                                if (ApplicationLoader.isNetworkOnline()) {
                                    this.canRetry = false;
                                }
                                z = false;
                                FileLog.e(th, z);
                                inputStream2 = inputStream;
                            } else if (!(th instanceof UnknownHostException)) {
                                if (th instanceof SocketException) {
                                    if (th.getMessage() != null && th.getMessage().contains("ECONNRESET")) {
                                    }
                                } else if (th instanceof FileNotFoundException) {
                                    this.canRetry = false;
                                } else {
                                    if (!(th instanceof InterruptedIOException)) {
                                        z = true;
                                    }
                                    FileLog.e(th, z);
                                    inputStream2 = inputStream;
                                }
                                z = false;
                                FileLog.e(th, z);
                                inputStream2 = inputStream;
                            }
                            if (isCancelled()) {
                            }
                            randomAccessFile = this.fileOutputStream;
                            if (randomAccessFile != null) {
                            }
                            httpURLConnection2 = this.httpConnection;
                            if (httpURLConnection2 != null) {
                            }
                            if (inputStream2 != null) {
                            }
                            if (z2) {
                                CacheImage cacheImage2 = this.cacheImage;
                                cacheImage2.finalFilePath = cacheImage2.tempFilePath;
                            }
                            return Boolean.valueOf(z2);
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = null;
                }
            }
            if (isCancelled()) {
                try {
                    HttpURLConnection httpURLConnection4 = this.httpConnection;
                    if (httpURLConnection4 != null && (responseCode = httpURLConnection4.getResponseCode()) != 200 && responseCode != 202 && responseCode != 304) {
                        this.canRetry = false;
                    }
                } catch (Exception e) {
                    FileLog.e((Throwable) e, false);
                }
                if (this.imageSize == 0 && (httpURLConnection = this.httpConnection) != null) {
                    try {
                        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                        if (headerFields != null && (list = headerFields.get("content-Length")) != null && !list.isEmpty() && (str = list.get(0)) != null) {
                            this.imageSize = Utilities.parseInt((CharSequence) str).intValue();
                        }
                    } catch (Exception e2) {
                        FileLog.e(e2);
                    }
                }
                if (inputStream2 != null) {
                    try {
                        byte[] bArr = new byte[LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM];
                        int i2 = 0;
                        while (true) {
                            if (isCancelled()) {
                                break;
                            }
                            try {
                                int i3 = inputStream2.read(bArr);
                                if (i3 <= 0) {
                                    break;
                                }
                                i2 += i3;
                                this.fileOutputStream.write(bArr, 0, i3);
                                long j = this.imageSize;
                                if (j != 0) {
                                    reportProgress(i2, j);
                                }
                            } catch (Exception e3) {
                                e = e3;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } else {
                    z2 = false;
                }
            }
            try {
                randomAccessFile = this.fileOutputStream;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                    this.fileOutputStream = null;
                }
            } catch (Throwable th4) {
                FileLog.e(th4);
            }
            try {
                httpURLConnection2 = this.httpConnection;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            } catch (Throwable unused) {
            }
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (Throwable th5) {
                    FileLog.e(th5);
                }
            }
            if (z2 && (file = (cacheImage = this.cacheImage).tempFilePath) != null && !file.renameTo(cacheImage.finalFilePath)) {
                CacheImage cacheImage22 = this.cacheImage;
                cacheImage22.finalFilePath = cacheImage22.tempFilePath;
            }
            return Boolean.valueOf(z2);
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCancelled$6();
                }
            }, this.cacheImage.priority);
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCancelled$8();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(final Boolean bool) {
            if (bool.booleanValue() || !this.canRetry) {
                ImageLoader imageLoader = ImageLoader.this;
                CacheImage cacheImage = this.cacheImage;
                imageLoader.fileDidLoaded(cacheImage.url, cacheImage.finalFilePath, 0);
            } else {
                ImageLoader.this.httpFileLoadError(this.cacheImage.url);
            }
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPostExecute$4(bool);
                }
            });
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPostExecute$5();
                }
            }, this.cacheImage.priority);
        }
    }

    public static class MessageThumb {
        BitmapDrawable drawable;
        String key;

        public MessageThumb(String str, BitmapDrawable bitmapDrawable) {
            this.key = str;
            this.drawable = bitmapDrawable;
        }
    }

    public static class PhotoSizeFromPhoto extends TLRPC.PhotoSize {
        public final TLRPC.InputPhoto inputPhoto;
        public final TLRPC.Photo photo;

        public PhotoSizeFromPhoto(TLRPC.Photo photo) {
            this.photo = photo;
            TLRPC.TL_inputPhoto tL_inputPhoto = new TLRPC.TL_inputPhoto();
            tL_inputPhoto.id = photo.id;
            tL_inputPhoto.file_reference = photo.file_reference;
            tL_inputPhoto.access_hash = photo.access_hash;
            this.inputPhoto = tL_inputPhoto;
        }
    }

    private static class ThumbGenerateInfo {
        private boolean big;
        private String filter;
        private ArrayList<ImageReceiver> imageReceiverArray;
        private ArrayList<Integer> imageReceiverGuidsArray;
        private TLRPC.Document parentDocument;

        private ThumbGenerateInfo() {
            this.imageReceiverArray = new ArrayList<>();
            this.imageReceiverGuidsArray = new ArrayList<>();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ThumbGenerateTask implements Runnable {
        private ThumbGenerateInfo info;
        private int mediaType;
        private File originalPath;

        public ThumbGenerateTask(int i, File file, ThumbGenerateInfo thumbGenerateInfo) {
            this.mediaType = i;
            this.originalPath = file;
            this.info = thumbGenerateInfo;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$removeTask$0(String str) {
            ImageLoader.this.thumbGenerateTasks.remove(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(String str, ArrayList arrayList, BitmapDrawable bitmapDrawable, ArrayList arrayList2) {
            removeTask();
            if (this.info.filter != null) {
                str = str + "@" + this.info.filter;
            }
            for (int i = 0; i < arrayList.size(); i++) {
                ((ImageReceiver) arrayList.get(i)).setImageBitmapByKey(bitmapDrawable, str, 0, false, ((Integer) arrayList2.get(i)).intValue());
            }
            ImageLoader.this.memCache.put(str, bitmapDrawable);
        }

        private void removeTask() {
            ThumbGenerateInfo thumbGenerateInfo = this.info;
            if (thumbGenerateInfo == null) {
                return;
            }
            final String attachFileName = FileLoader.getAttachFileName(thumbGenerateInfo.parentDocument);
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$ThumbGenerateTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeTask$0(attachFileName);
                }
            });
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x00a3 A[PHI: r0
          0x00a3: PHI (r0v13 java.lang.String) = (r0v12 java.lang.String), (r0v17 java.lang.String) binds: [B:32:0x00c6, B:24:0x00a0] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00f8 A[Catch: all -> 0x000a, TryCatch #0 {all -> 0x000a, blocks: (B:3:0x0002, B:5:0x0006, B:9:0x000d, B:11:0x0055, B:14:0x005f, B:16:0x0067, B:18:0x0083, B:20:0x0089, B:44:0x00f0, B:46:0x00f8, B:48:0x00fc, B:52:0x0109, B:54:0x011a, B:56:0x0124, B:57:0x0128, B:61:0x013c, B:62:0x013f, B:66:0x0147, B:65:0x0144, B:67:0x016d, B:23:0x0094, B:33:0x00c8, B:29:0x00a8, B:31:0x00ba, B:35:0x00ce, B:37:0x00d4, B:39:0x00dc, B:41:0x00e4, B:43:0x00ec, B:17:0x0072, B:69:0x0171), top: B:73:0x0002, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x00fc A[Catch: all -> 0x000a, TryCatch #0 {all -> 0x000a, blocks: (B:3:0x0002, B:5:0x0006, B:9:0x000d, B:11:0x0055, B:14:0x005f, B:16:0x0067, B:18:0x0083, B:20:0x0089, B:44:0x00f0, B:46:0x00f8, B:48:0x00fc, B:52:0x0109, B:54:0x011a, B:56:0x0124, B:57:0x0128, B:61:0x013c, B:62:0x013f, B:66:0x0147, B:65:0x0144, B:67:0x016d, B:23:0x0094, B:33:0x00c8, B:29:0x00a8, B:31:0x00ba, B:35:0x00ce, B:37:0x00d4, B:39:0x00dc, B:41:0x00e4, B:43:0x00ec, B:17:0x0072, B:69:0x0171), top: B:73:0x0002, inners: #1 }] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            int iMin;
            float f;
            String string;
            String string2;
            Bitmap bitmapCreateVideoThumbnail;
            Bitmap bitmapCreateScaledBitmap;
            try {
                if (this.info == null) {
                    removeTask();
                    return;
                }
                final String str = "q_" + this.info.parentDocument.dc_id + "_" + this.info.parentDocument.id;
                File file = new File(FileLoader.getDirectory(4), str + ".jpg");
                if (!file.exists() && this.originalPath.exists()) {
                    if (this.info.big) {
                        Point point = AndroidUtilities.displaySize;
                        iMin = Math.max(point.x, point.y);
                    } else {
                        Point point2 = AndroidUtilities.displaySize;
                        iMin = Math.min(180, Math.min(point2.x, point2.y) / 4);
                    }
                    int i = this.mediaType;
                    Bitmap bitmap = null;
                    if (i != 0) {
                        int i2 = 2;
                        if (i == 2) {
                            string2 = this.originalPath.toString();
                            if (!this.info.big) {
                                i2 = 1;
                            }
                            bitmapCreateVideoThumbnail = SendMessagesHelper.createVideoThumbnail(string2, i2);
                            bitmap = bitmapCreateVideoThumbnail;
                        } else if (i == 3) {
                            String lowerCase = this.originalPath.toString().toLowerCase();
                            if (lowerCase.endsWith("mp4")) {
                                string2 = this.originalPath.toString();
                                if (!this.info.big) {
                                }
                                bitmapCreateVideoThumbnail = SendMessagesHelper.createVideoThumbnail(string2, i2);
                                bitmap = bitmapCreateVideoThumbnail;
                            } else if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg") || lowerCase.endsWith(".png") || lowerCase.endsWith(".gif")) {
                                f = iMin;
                                string = lowerCase;
                            }
                        }
                        if (bitmap != null) {
                            removeTask();
                            return;
                        }
                        int width = bitmap.getWidth();
                        int height = bitmap.getHeight();
                        if (width != 0 && height != 0) {
                            float f2 = width;
                            float f3 = iMin;
                            float f4 = height;
                            float fMin = Math.min(f2 / f3, f4 / f3);
                            if (fMin > 1.0f && (bitmapCreateScaledBitmap = Bitmaps.createScaledBitmap(bitmap, (int) (f2 / fMin), (int) (f4 / fMin), true)) != bitmap) {
                                bitmap.recycle();
                                bitmap = bitmapCreateScaledBitmap;
                            }
                            FileOutputStream fileOutputStream = new FileOutputStream(file);
                            bitmap.compress(Bitmap.CompressFormat.JPEG, this.info.big ? 83 : 60, fileOutputStream);
                            try {
                                fileOutputStream.close();
                            } catch (Exception e) {
                                FileLog.e(e);
                            }
                            final BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmap);
                            final ArrayList arrayList = new ArrayList(this.info.imageReceiverArray);
                            final ArrayList arrayList2 = new ArrayList(this.info.imageReceiverGuidsArray);
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$ThumbGenerateTask$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$run$1(str, arrayList, bitmapDrawable, arrayList2);
                                }
                            });
                            return;
                        }
                        removeTask();
                        return;
                    }
                    string = this.originalPath.toString();
                    f = iMin;
                    bitmapCreateVideoThumbnail = ImageLoader.loadBitmap(string, null, f, f, false);
                    bitmap = bitmapCreateVideoThumbnail;
                    if (bitmap != null) {
                    }
                }
                removeTask();
            } catch (Throwable th) {
                FileLog.e(th);
                removeTask();
            }
        }
    }

    public ImageLoader() {
        this.thumbGeneratingQueue.setPriority(1);
        int memoryClass = ((ActivityManager) ApplicationLoader.applicationContext.getSystemService("activity")).getMemoryClass();
        boolean z = memoryClass >= 192;
        this.canForce8888 = z;
        int iMin = Math.min(z ? 30 : 15, memoryClass / 7) * FileLoaderPriorityQueue.PRIORITY_VALUE_MAX;
        float f = iMin;
        this.memCache = new LruCache<BitmapDrawable>((int) (0.8f * f)) { // from class: org.telegram.messenger.ImageLoader.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public void entryRemoved(boolean z2, String str, BitmapDrawable bitmapDrawable, BitmapDrawable bitmapDrawable2) {
                if (ImageLoader.this.ignoreRemoval == null || !ImageLoader.this.ignoreRemoval.equals(str)) {
                    Integer num = (Integer) ImageLoader.this.bitmapUseCounts.get(str);
                    if (num == null || num.intValue() == 0) {
                        Bitmap bitmap = bitmapDrawable.getBitmap();
                        if (bitmap.isRecycled()) {
                            return;
                        }
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(bitmap);
                        AndroidUtilities.recycleBitmaps(arrayList);
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public int sizeOf(String str, BitmapDrawable bitmapDrawable) {
                return ImageLoader.this.sizeOfBitmapDrawable(bitmapDrawable);
            }
        };
        this.smallImagesMemCache = new LruCache<BitmapDrawable>((int) (f * 0.2f)) { // from class: org.telegram.messenger.ImageLoader.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public void entryRemoved(boolean z2, String str, BitmapDrawable bitmapDrawable, BitmapDrawable bitmapDrawable2) {
                if (ImageLoader.this.ignoreRemoval == null || !ImageLoader.this.ignoreRemoval.equals(str)) {
                    Integer num = (Integer) ImageLoader.this.bitmapUseCounts.get(str);
                    if (num == null || num.intValue() == 0) {
                        Bitmap bitmap = bitmapDrawable.getBitmap();
                        if (bitmap.isRecycled()) {
                            return;
                        }
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(bitmap);
                        AndroidUtilities.recycleBitmaps(arrayList);
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public int sizeOf(String str, BitmapDrawable bitmapDrawable) {
                return ImageLoader.this.sizeOfBitmapDrawable(bitmapDrawable);
            }
        };
        this.wallpaperMemCache = new LruCache<BitmapDrawable>(iMin / 4) { // from class: org.telegram.messenger.ImageLoader.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public int sizeOf(String str, BitmapDrawable bitmapDrawable) {
                return ImageLoader.this.sizeOfBitmapDrawable(bitmapDrawable);
            }
        };
        this.lottieMemCache = new LruCache<BitmapDrawable>(10485760) { // from class: org.telegram.messenger.ImageLoader.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public void entryRemoved(boolean z2, String str, BitmapDrawable bitmapDrawable, BitmapDrawable bitmapDrawable2) {
                Integer num = (Integer) ImageLoader.this.bitmapUseCounts.get(str);
                boolean z3 = bitmapDrawable instanceof AnimatedFileDrawable;
                if (z3) {
                    ImageLoader.this.cachedAnimatedFileDrawables.remove((AnimatedFileDrawable) bitmapDrawable);
                }
                if (num == null || num.intValue() == 0) {
                    if (z3) {
                        ((AnimatedFileDrawable) bitmapDrawable).recycle();
                    }
                    if (bitmapDrawable instanceof RLottieDrawable) {
                        ((RLottieDrawable) bitmapDrawable).recycle(false);
                    }
                }
            }

            @Override // org.telegram.messenger.LruCache
            public BitmapDrawable put(String str, BitmapDrawable bitmapDrawable) {
                if (bitmapDrawable instanceof AnimatedFileDrawable) {
                    ImageLoader.this.cachedAnimatedFileDrawables.add((AnimatedFileDrawable) bitmapDrawable);
                }
                return (BitmapDrawable) super.put(str, (String) bitmapDrawable);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public int sizeOf(String str, BitmapDrawable bitmapDrawable) {
                return ImageLoader.this.sizeOfBitmapDrawable(bitmapDrawable);
            }
        };
        SparseArray sparseArray = new SparseArray();
        File cacheDir = AndroidUtilities.getCacheDir();
        if (!cacheDir.isDirectory()) {
            try {
                cacheDir.mkdirs();
            } catch (Exception e) {
                FileLog.e(e);
            }
        }
        AndroidUtilities.createEmptyFile(new File(cacheDir, ".nomedia"));
        sparseArray.put(4, cacheDir);
        for (int i = 0; i < 4; i++) {
            FileLoader.getInstance(i).setDelegate(new AnonymousClass5(i));
        }
        FileLoader.setMediaDirs(sparseArray);
        AnonymousClass6 anonymousClass6 = new AnonymousClass6();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
        intentFilter.addAction("android.intent.action.MEDIA_CHECKING");
        intentFilter.addAction("android.intent.action.MEDIA_EJECT");
        intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_NOFS");
        intentFilter.addAction("android.intent.action.MEDIA_REMOVED");
        intentFilter.addAction("android.intent.action.MEDIA_SHARED");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTABLE");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter.addDataScheme("file");
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                ApplicationLoader.applicationContext.registerReceiver(anonymousClass6, intentFilter, 4);
            } else {
                ApplicationLoader.applicationContext.registerReceiver(anonymousClass6, intentFilter);
            }
        } catch (Throwable unused) {
        }
        checkMediaPaths();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void artworkLoadError(final String str) {
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$artworkLoadError$10(str);
            }
        });
    }

    private boolean canMoveFiles(File file, File file2, int i) throws Throwable {
        RandomAccessFile randomAccessFile;
        File file3;
        File file4;
        byte[] bArr;
        RandomAccessFile randomAccessFile2 = null;
        try {
            try {
                if (i == 0 || i == 3 || i == 5 || i == 6 || i == 1 || i == 2) {
                    file3 = new File(file, "000000000_999999_temp.f");
                    file4 = new File(file2, "000000000_999999.f");
                } else {
                    file4 = null;
                    file3 = null;
                }
                bArr = new byte[1024];
                file3.createNewFile();
                randomAccessFile = new RandomAccessFile(file3, "rws");
            } catch (Throwable th) {
                th = th;
                randomAccessFile = null;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            randomAccessFile.write(bArr);
            randomAccessFile.close();
            boolean zRenameTo = file3.renameTo(file4);
            file3.delete();
            file4.delete();
            return zRenameTo;
        } catch (Exception e2) {
            e = e2;
            randomAccessFile2 = randomAccessFile;
            FileLog.e(e);
            if (randomAccessFile2 == null) {
                return false;
            }
            try {
                randomAccessFile2.close();
                return false;
            } catch (Exception e3) {
                FileLog.e(e3);
                return false;
            }
        } catch (Throwable th2) {
            th = th2;
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (Exception e4) {
                    FileLog.e(e4);
                }
            }
            throw th;
        }
    }

    private void createLoadOperationForImageReceiver(final ImageReceiver imageReceiver, final String str, final String str2, final String str3, final ImageLocation imageLocation, final String str4, final long j, final int i, final int i2, final int i3, final int i4) {
        if (imageReceiver == null || str2 == null || str == null || imageLocation == null) {
            return;
        }
        int tag = imageReceiver.getTag(i2);
        if (tag == 0) {
            tag = this.lastImageNum;
            imageReceiver.setTag(tag, i2);
            int i5 = this.lastImageNum + 1;
            this.lastImageNum = i5;
            if (i5 == Integer.MAX_VALUE) {
                this.lastImageNum = 0;
            }
        }
        final int i6 = tag;
        final boolean zIsNeedsQualityThumb = imageReceiver.isNeedsQualityThumb();
        final Object parentObject = imageReceiver.getParentObject();
        final TLRPC.Document qualityThumbDocument = imageReceiver.getQualityThumbDocument();
        final boolean zIsShouldGenerateQualityThumb = imageReceiver.isShouldGenerateQualityThumb();
        final int currentAccount = imageReceiver.getCurrentAccount();
        final boolean z = i2 == 0 && imageReceiver.isCurrentKeyQuality();
        Runnable runnable = new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createLoadOperationForImageReceiver$7(i3, str2, str, i6, imageReceiver, i4, str4, i2, imageLocation, z, parentObject, currentAccount, qualityThumbDocument, zIsNeedsQualityThumb, zIsShouldGenerateQualityThumb, str3, i, j);
            }
        };
        this.imageLoadQueue.postRunnable(runnable, imageReceiver.getFileLoadingPriority() == 0 ? 0L : 1L);
        imageReceiver.addLoadingImageRunnable(runnable);
    }

    public static Drawable createStripedBitmap(ArrayList<TLRPC.PhotoSize> arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            if (arrayList.get(i) instanceof TLRPC.TL_photoStrippedSize) {
                return new BitmapDrawable(ApplicationLoader.applicationContext.getResources(), getStrippedPhotoBitmap(((TLRPC.TL_photoStrippedSize) arrayList.get(i)).bytes, "b"));
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String cutFilter(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(64);
        return iIndexOf >= 0 ? str.substring(0, iIndexOf) : str;
    }

    public static String decompressGzip(File file) throws IOException {
        StringBuilder sb = new StringBuilder();
        if (file == null) {
            return "";
        }
        try {
            GZIPInputStream gZIPInputStream = new GZIPInputStream(new FileInputStream(file));
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(gZIPInputStream, "UTF-8"));
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            String string = sb.toString();
                            bufferedReader.close();
                            gZIPInputStream.close();
                            return string;
                        }
                        sb.append(line);
                    } finally {
                    }
                }
            } finally {
            }
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fileDidFailedLoad(final String str, int i) {
        if (i == 1) {
            return;
        }
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fileDidFailedLoad$12(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fileDidLoaded(final String str, final File file, final int i) {
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fileDidLoaded$11(str, i, file);
            }
        });
    }

    public static TLRPC.PhotoSize fileToSize(String str, boolean z) {
        if (str == null) {
            return null;
        }
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            int i = options.outWidth;
            int i2 = options.outHeight;
            TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated = new TLRPC.TL_fileLocationToBeDeprecated();
            tL_fileLocationToBeDeprecated.volume_id = -2147483648L;
            tL_fileLocationToBeDeprecated.dc_id = Integer.MIN_VALUE;
            tL_fileLocationToBeDeprecated.local_id = SharedConfig.getLastLocalId();
            tL_fileLocationToBeDeprecated.file_reference = new byte[0];
            TLRPC.TL_photoSize_layer127 tL_photoSize_layer127 = new TLRPC.TL_photoSize_layer127();
            tL_photoSize_layer127.location = tL_fileLocationToBeDeprecated;
            tL_photoSize_layer127.w = i;
            tL_photoSize_layer127.h = i2;
            tL_photoSize_layer127.type = (i > 100 || i2 > 100) ? (i > 320 || i2 > 320) ? (i > 800 || i2 > 800) ? (i > 1280 || i2 > 1280) ? "w" : "y" : "x" : "m" : "s";
            File file = new File((z || tL_fileLocationToBeDeprecated.volume_id == -2147483648L) ? FileLoader.getDirectory(4) : FileLoader.getDirectory(0), tL_fileLocationToBeDeprecated.volume_id + "_" + tL_fileLocationToBeDeprecated.local_id + ".jpg");
            new File(str).renameTo(file);
            tL_photoSize_layer127.size = (int) file.length();
            return tL_photoSize_layer127;
        } catch (Exception e) {
            FileLog.e(e);
            return null;
        }
    }

    public static void fillPhotoSizeWithBytes(TLRPC.PhotoSize photoSize) {
        if (photoSize != null) {
            byte[] bArr = photoSize.bytes;
            if (bArr == null || bArr.length == 0) {
                try {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(photoSize, true), "r");
                    if (((int) randomAccessFile.length()) < 20000) {
                        int length = (int) randomAccessFile.length();
                        byte[] bArr2 = new byte[length];
                        photoSize.bytes = bArr2;
                        randomAccessFile.readFully(bArr2, 0, length);
                    }
                } catch (Throwable th) {
                    FileLog.e(th);
                }
            }
        }
    }

    private Drawable findInPreloadImageReceivers(String str, List<ImageReceiver> list) {
        if (list == null) {
            return null;
        }
        for (int i = 0; i < list.size(); i++) {
            ImageReceiver imageReceiver = list.get(i);
            if (str.equals(imageReceiver.getImageKey())) {
                return imageReceiver.getImageDrawable();
            }
            if (str.equals(imageReceiver.getMediaKey())) {
                return imageReceiver.getMediaDrawable();
            }
        }
        return null;
    }

    private static TLRPC.PhotoSize findPhotoCachedSize(TLRPC.Message message) {
        TLRPC.MessageMedia messageMedia = message.media;
        int i = 0;
        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
            int size = messageMedia.photo.sizes.size();
            while (i < size) {
                TLRPC.PhotoSize photoSize = (TLRPC.PhotoSize) message.media.photo.sizes.get(i);
                if (photoSize instanceof TLRPC.TL_photoCachedSize) {
                    return photoSize;
                }
                i++;
            }
        } else if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
            TLRPC.Document document = messageMedia.document;
            if (document != null) {
                int size2 = document.thumbs.size();
                while (i < size2) {
                    TLRPC.PhotoSize photoSize2 = message.media.document.thumbs.get(i);
                    if (photoSize2 instanceof TLRPC.TL_photoCachedSize) {
                        return photoSize2;
                    }
                    i++;
                }
            }
        } else if (messageMedia instanceof TLRPC.TL_messageMediaWebPage) {
            TLRPC.Photo photo = messageMedia.webpage.photo;
            if (photo != null) {
                int size3 = photo.sizes.size();
                while (i < size3) {
                    TLRPC.PhotoSize photoSize3 = (TLRPC.PhotoSize) message.media.webpage.photo.sizes.get(i);
                    if (photoSize3 instanceof TLRPC.TL_photoCachedSize) {
                        return photoSize3;
                    }
                    i++;
                }
            }
        } else if ((messageMedia instanceof TLRPC.TL_messageMediaInvoice) && !messageMedia.extended_media.isEmpty() && (message.media.extended_media.get(0) instanceof TLRPC.TL_messageExtendedMediaPreview)) {
            return ((TLRPC.TL_messageExtendedMediaPreview) message.media.extended_media.get(0)).thumb;
        }
        return null;
    }

    private static TLRPC.PhotoSize findPhotoCachedSize(TLRPC.MessageMedia messageMedia) {
        int i = 0;
        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
            int size = messageMedia.photo.sizes.size();
            while (i < size) {
                TLRPC.PhotoSize photoSize = (TLRPC.PhotoSize) messageMedia.photo.sizes.get(i);
                if (photoSize instanceof TLRPC.TL_photoCachedSize) {
                    return photoSize;
                }
                i++;
            }
        } else if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
            TLRPC.Document document = messageMedia.document;
            if (document != null) {
                int size2 = document.thumbs.size();
                while (i < size2) {
                    TLRPC.PhotoSize photoSize2 = messageMedia.document.thumbs.get(i);
                    if (photoSize2 instanceof TLRPC.TL_photoCachedSize) {
                        return photoSize2;
                    }
                    i++;
                }
            }
        } else if (messageMedia instanceof TLRPC.TL_messageMediaWebPage) {
            TLRPC.Photo photo = messageMedia.webpage.photo;
            if (photo != null) {
                int size3 = photo.sizes.size();
                while (i < size3) {
                    TLRPC.PhotoSize photoSize3 = (TLRPC.PhotoSize) messageMedia.webpage.photo.sizes.get(i);
                    if (photoSize3 instanceof TLRPC.TL_photoCachedSize) {
                        return photoSize3;
                    }
                    i++;
                }
            }
        } else if ((messageMedia instanceof TLRPC.TL_messageMediaInvoice) && !messageMedia.extended_media.isEmpty() && (messageMedia.extended_media.get(0) instanceof TLRPC.TL_messageExtendedMediaPreview)) {
            return ((TLRPC.TL_messageExtendedMediaPreview) messageMedia.extended_media.get(0)).thumb;
        }
        return null;
    }

    public static MessageThumb generateMessageThumb(TLRPC.Message message) {
        int i;
        int i2;
        Bitmap strippedPhotoBitmap;
        byte[] bArr;
        TLRPC.PhotoSize photoSizeFindPhotoCachedSize = findPhotoCachedSize(message);
        if (photoSizeFindPhotoCachedSize == null || (bArr = photoSizeFindPhotoCachedSize.bytes) == null || bArr.length == 0) {
            TLRPC.MessageMedia messageMedia = message.media;
            if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
                int size = messageMedia.document.thumbs.size();
                for (int i3 = 0; i3 < size; i3++) {
                    TLRPC.PhotoSize photoSize = message.media.document.thumbs.get(i3);
                    if (photoSize instanceof TLRPC.TL_photoStrippedSize) {
                        TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(message.media.document.thumbs, 320);
                        if (closestPhotoSizeWithSize == null) {
                            int i4 = 0;
                            while (true) {
                                if (i4 >= message.media.document.attributes.size()) {
                                    i = 0;
                                    i2 = 0;
                                    break;
                                }
                                if (message.media.document.attributes.get(i4) instanceof TLRPC.TL_documentAttributeVideo) {
                                    TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo = (TLRPC.TL_documentAttributeVideo) message.media.document.attributes.get(i4);
                                    i2 = tL_documentAttributeVideo.h;
                                    i = tL_documentAttributeVideo.w;
                                    break;
                                }
                                i4++;
                            }
                        } else {
                            i2 = closestPhotoSizeWithSize.h;
                            i = closestPhotoSizeWithSize.w;
                        }
                        org.telegram.ui.Components.Point messageSize = ChatMessageCell.getMessageSize(i, i2);
                        String str = String.format(Locale.US, "%s_false@%d_%d_b", ImageLocation.getStrippedKey(message, message, photoSize), Integer.valueOf((int) (messageSize.x / AndroidUtilities.density)), Integer.valueOf((int) (messageSize.y / AndroidUtilities.density)));
                        if (!getInstance().isInMemCache(str, false) && (strippedPhotoBitmap = getStrippedPhotoBitmap(photoSize.bytes, null)) != null) {
                            Utilities.blurBitmap(strippedPhotoBitmap, 3, 1, strippedPhotoBitmap.getWidth(), strippedPhotoBitmap.getHeight(), strippedPhotoBitmap.getRowBytes());
                            float f = messageSize.x;
                            float f2 = AndroidUtilities.density;
                            Bitmap bitmapCreateScaledBitmap = Bitmaps.createScaledBitmap(strippedPhotoBitmap, (int) (f / f2), (int) (messageSize.y / f2), true);
                            if (bitmapCreateScaledBitmap != strippedPhotoBitmap) {
                                strippedPhotoBitmap.recycle();
                                strippedPhotoBitmap = bitmapCreateScaledBitmap;
                            }
                            return new MessageThumb(str, new BitmapDrawable(strippedPhotoBitmap));
                        }
                    }
                }
            }
        } else {
            File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(photoSizeFindPhotoCachedSize, true);
            TLRPC.TL_photoSize_layer127 tL_photoSize_layer127 = new TLRPC.TL_photoSize_layer127();
            tL_photoSize_layer127.w = photoSizeFindPhotoCachedSize.w;
            tL_photoSize_layer127.h = photoSizeFindPhotoCachedSize.h;
            tL_photoSize_layer127.location = photoSizeFindPhotoCachedSize.location;
            tL_photoSize_layer127.size = photoSizeFindPhotoCachedSize.size;
            tL_photoSize_layer127.type = photoSizeFindPhotoCachedSize.type;
            if (pathToAttach.exists() && message.grouped_id == 0) {
                org.telegram.ui.Components.Point messageSize2 = ChatMessageCell.getMessageSize(photoSizeFindPhotoCachedSize.w, photoSizeFindPhotoCachedSize.h);
                String str2 = String.format(Locale.US, "%d_%d@%d_%d_b", Long.valueOf(photoSizeFindPhotoCachedSize.location.volume_id), Integer.valueOf(photoSizeFindPhotoCachedSize.location.local_id), Integer.valueOf((int) (messageSize2.x / AndroidUtilities.density)), Integer.valueOf((int) (messageSize2.y / AndroidUtilities.density)));
                if (!getInstance().isInMemCache(str2, false)) {
                    String path = pathToAttach.getPath();
                    float f3 = messageSize2.x;
                    float f4 = AndroidUtilities.density;
                    Bitmap bitmapLoadBitmap = loadBitmap(path, null, (int) (f3 / f4), (int) (messageSize2.y / f4), false);
                    if (bitmapLoadBitmap != null) {
                        Utilities.blurBitmap(bitmapLoadBitmap, 3, 1, bitmapLoadBitmap.getWidth(), bitmapLoadBitmap.getHeight(), bitmapLoadBitmap.getRowBytes());
                        float f5 = messageSize2.x;
                        float f6 = AndroidUtilities.density;
                        Bitmap bitmapCreateScaledBitmap2 = Bitmaps.createScaledBitmap(bitmapLoadBitmap, (int) (f5 / f6), (int) (messageSize2.y / f6), true);
                        if (bitmapCreateScaledBitmap2 != bitmapLoadBitmap) {
                            bitmapLoadBitmap.recycle();
                            bitmapLoadBitmap = bitmapCreateScaledBitmap2;
                        }
                        return new MessageThumb(str2, new BitmapDrawable(bitmapLoadBitmap));
                    }
                }
            }
        }
        return null;
    }

    private void generateThumb(int i, File file, ThumbGenerateInfo thumbGenerateInfo) {
        if ((i != 0 && i != 2 && i != 3) || file == null || thumbGenerateInfo == null) {
            return;
        }
        if (this.thumbGenerateTasks.get(FileLoader.getAttachFileName(thumbGenerateInfo.parentDocument)) == null) {
            this.thumbGeneratingQueue.postRunnable(new ThumbGenerateTask(i, file, thumbGenerateInfo));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BitmapDrawable getFromLottieCache(String str) {
        BitmapDrawable bitmapDrawable = this.lottieMemCache.get(str);
        if (!(bitmapDrawable instanceof AnimatedFileDrawable) || !((AnimatedFileDrawable) bitmapDrawable).isRecycled()) {
            return bitmapDrawable;
        }
        this.lottieMemCache.remove(str);
        return null;
    }

    public static String getHttpFileName(String str) {
        return Utilities.MD5(str);
    }

    public static File getHttpFilePath(String str, String str2) {
        String httpUrlExtension = getHttpUrlExtension(str, str2);
        return new File(FileLoader.getDirectory(4), Utilities.MD5(str) + "." + httpUrlExtension);
    }

    public static String getHttpUrlExtension(String str, String str2) {
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        if (!TextUtils.isEmpty(lastPathSegment) && lastPathSegment.length() > 1) {
            str = lastPathSegment;
        }
        int iLastIndexOf = str.lastIndexOf(46);
        String strSubstring = iLastIndexOf != -1 ? str.substring(iLastIndexOf + 1) : null;
        return (strSubstring == null || strSubstring.length() == 0 || strSubstring.length() > 4) ? str2 : strSubstring;
    }

    public static ImageLoader getInstance() {
        ImageLoader imageLoader = Instance;
        if (imageLoader == null) {
            synchronized (ImageLoader.class) {
                try {
                    imageLoader = Instance;
                    if (imageLoader == null) {
                        imageLoader = new ImageLoader();
                        Instance = imageLoader;
                    }
                } finally {
                }
            }
        }
        return imageLoader;
    }

    private File getPublicStorageDir() {
        File file = ApplicationLoader.applicationContext.getExternalMediaDirs()[0];
        if (!TextUtils.isEmpty(SharedConfig.storageCacheDir)) {
            for (int i = 0; i < ApplicationLoader.applicationContext.getExternalMediaDirs().length; i++) {
                File file2 = ApplicationLoader.applicationContext.getExternalMediaDirs()[i];
                if (file2 != null && file2.getPath().startsWith(SharedConfig.storageCacheDir)) {
                    file = ApplicationLoader.applicationContext.getExternalMediaDirs()[i];
                }
            }
        }
        return file;
    }

    public static Bitmap getStrippedPhotoBitmap(byte[] bArr, String str) {
        int length = (bArr.length - 3) + Bitmaps.header.length + Bitmaps.footer.length;
        byte[] bArr2 = bytesLocal.get();
        if (bArr2 == null || bArr2.length < length) {
            bArr2 = null;
        }
        if (bArr2 == null) {
            bArr2 = new byte[length];
            bytesLocal.set(bArr2);
        }
        byte[] bArr3 = Bitmaps.header;
        System.arraycopy(bArr3, 0, bArr2, 0, bArr3.length);
        System.arraycopy(bArr, 3, bArr2, Bitmaps.header.length, bArr.length - 3);
        System.arraycopy(Bitmaps.footer, 0, bArr2, (Bitmaps.header.length + bArr.length) - 3, Bitmaps.footer.length);
        bArr2[164] = bArr[1];
        bArr2[166] = bArr[2];
        BitmapFactory.Options options = new BitmapFactory.Options();
        boolean z = !TextUtils.isEmpty(str) && str.contains("r");
        options.inPreferredConfig = (SharedConfig.deviceIsHigh() || z) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr2, 0, length, options);
        if (z) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), bitmapDecodeByteArray.getConfig());
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.save();
            canvas.scale(1.2f, 1.2f, bitmapDecodeByteArray.getWidth() / 2.0f, bitmapDecodeByteArray.getHeight() / 2.0f);
            canvas.drawBitmap(bitmapDecodeByteArray, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
            canvas.restore();
            Path path = new Path();
            path.addCircle(bitmapDecodeByteArray.getWidth() / 2.0f, bitmapDecodeByteArray.getHeight() / 2.0f, Math.min(bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight()) / 2.0f, Path.Direction.CW);
            canvas.clipPath(path);
            canvas.drawBitmap(bitmapDecodeByteArray, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
            bitmapDecodeByteArray.recycle();
            bitmapDecodeByteArray = bitmapCreateBitmap;
        }
        if (bitmapDecodeByteArray != null && !TextUtils.isEmpty(str) && str.contains("b")) {
            Utilities.blurBitmap(bitmapDecodeByteArray, 3, 1, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), bitmapDecodeByteArray.getRowBytes());
        }
        return bitmapDecodeByteArray;
    }

    public static boolean hasAutoplayFilter(String str) {
        if (str == null) {
            return false;
        }
        String[] strArrSplit = str.split("_");
        for (int i = 0; i < strArrSplit.length; i++) {
            if (AUTOPLAY_FILTER.equals(strArrSplit[i]) || "pframe".equals(strArrSplit[i])) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void httpFileLoadError(final String str) {
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$httpFileLoadError$9(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAnimatedAvatar(String str) {
        return str != null && str.endsWith("avatar");
    }

    private boolean isPFrame(String str) {
        return str != null && str.endsWith("pframe");
    }

    public static boolean isSdCardPath(File file) {
        return !TextUtils.isEmpty(SharedConfig.storageCacheDir) && file.getAbsolutePath().startsWith(SharedConfig.storageCacheDir);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$artworkLoadError$10(String str) {
        CacheImage cacheImage = this.imageLoadingByUrl.get(str);
        if (cacheImage == null) {
            return;
        }
        ArtworkLoadTask artworkLoadTask = cacheImage.artworkTask;
        if (artworkLoadTask != null) {
            ArtworkLoadTask artworkLoadTask2 = new ArtworkLoadTask(artworkLoadTask.cacheImage);
            cacheImage.artworkTask = artworkLoadTask2;
            this.artworkTasks.add(artworkLoadTask2);
        }
        runArtworkTasks(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelForceLoadingForImageReceiver$6(String str) {
        this.forceLoadingImages.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelLoadingForImageReceiver$4(boolean z, ImageReceiver imageReceiver) {
        int i = 0;
        while (true) {
            int i2 = 3;
            if (i >= 3) {
                return;
            }
            if (i > 0 && !z) {
                return;
            }
            if (i == 0) {
                i2 = 1;
            } else if (i == 1) {
                i2 = 0;
            }
            int tag = imageReceiver.getTag(i2);
            if (tag != 0) {
                if (i == 0) {
                    removeFromWaitingForThumb(tag, imageReceiver);
                }
                CacheImage cacheImage = this.imageLoadingByTag.get(tag);
                if (cacheImage != null) {
                    cacheImage.removeImageReceiver(imageReceiver);
                }
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$changeFileLoadingPriorityForImageReceiver$3(ImageReceiver imageReceiver, int i) {
        CacheImage cacheImage;
        int i2 = 0;
        while (true) {
            int i3 = 3;
            if (i2 >= 3) {
                return;
            }
            if (i2 == 0) {
                i3 = 1;
            } else if (i2 == 1) {
                i3 = 0;
            }
            int tag = imageReceiver.getTag(i3);
            if (tag != 0 && (cacheImage = this.imageLoadingByTag.get(tag)) != null) {
                cacheImage.changePriority(i);
            }
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkMediaPaths$0(SparseArray sparseArray, Runnable runnable) {
        FileLoader.setMediaDirs(sparseArray);
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkMediaPaths$1(final Runnable runnable) {
        final SparseArray<File> sparseArrayCreateMediaPaths = createMediaPaths();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                ImageLoader.lambda$checkMediaPaths$0(sparseArrayCreateMediaPaths, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x03f5 A[PHI: r1
      0x03f5: PHI (r1v50 java.lang.String) = (r1v44 java.lang.String), (r1v51 java.lang.String) binds: [B:202:0x03fe, B:197:0x03f2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x043b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x052a  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0223  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$createLoadOperationForImageReceiver$7(int i, String str, String str2, int i2, ImageReceiver imageReceiver, int i3, String str3, int i4, ImageLocation imageLocation, boolean z, Object obj, int i5, TLRPC.Document document, boolean z2, boolean z3, String str4, int i6, long j) {
        String str5;
        boolean z4;
        int i7;
        boolean z5;
        int mediaType;
        boolean z6;
        String str6;
        File pathToAttach;
        String str7;
        String str8;
        int i8;
        boolean z7;
        File file;
        File file2;
        File file3;
        int i9;
        ImageLoader imageLoader;
        boolean z8;
        int i10;
        boolean z9;
        boolean z10;
        long j2;
        boolean z11;
        String str9;
        String str10;
        boolean z12;
        String str11;
        String str12;
        int i11;
        boolean z13;
        CacheImage cacheImage;
        CacheImage cacheImage2;
        TLRPC.Document document2 = document;
        if (i != 2) {
            CacheImage cacheImage3 = this.imageLoadingByUrl.get(str);
            CacheImage cacheImage4 = this.imageLoadingByKeys.get(str2);
            CacheImage cacheImage5 = this.imageLoadingByTag.get(i2);
            if (cacheImage5 != null) {
                if (cacheImage5 == cacheImage4) {
                    cacheImage5.setImageReceiverGuid(imageReceiver, i3);
                    cacheImage = cacheImage3;
                    cacheImage2 = cacheImage4;
                    str5 = str4;
                    z5 = true;
                    i7 = 0;
                } else {
                    cacheImage = cacheImage3;
                    if (cacheImage5 == cacheImage3) {
                        if (cacheImage4 == null) {
                            i7 = 0;
                            cacheImage2 = cacheImage4;
                            str5 = str4;
                            cacheImage5.replaceImageReceiver(imageReceiver, str2, str3, i4, i3);
                        } else {
                            cacheImage2 = cacheImage4;
                            str5 = str4;
                            i7 = 0;
                        }
                        z5 = true;
                    } else {
                        cacheImage2 = cacheImage4;
                        str5 = str4;
                        i7 = 0;
                        cacheImage5.removeImageReceiver(imageReceiver);
                    }
                }
                if (!z5 || cacheImage2 == null) {
                    z4 = true;
                } else {
                    z4 = true;
                    cacheImage2.addImageReceiver(imageReceiver, str2, str3, i4, i3);
                    z5 = true;
                }
                if (!z5 && cacheImage != null) {
                    cacheImage.addImageReceiver(imageReceiver, str2, str3, i4, i3);
                    z5 = true;
                }
            } else {
                cacheImage = cacheImage3;
                cacheImage2 = cacheImage4;
                str5 = str4;
                i7 = 0;
            }
            z5 = false;
            if (z5) {
                z4 = true;
                if (!z5) {
                    cacheImage.addImageReceiver(imageReceiver, str2, str3, i4, i3);
                    z5 = true;
                }
            }
        } else {
            str5 = str4;
            z4 = true;
            i7 = 0;
            z5 = false;
        }
        if (!z5) {
            String str13 = imageLocation.path;
            if (str13 != null) {
                if (str13.startsWith("http") || str13.startsWith("athumb")) {
                    str7 = str3;
                    str8 = "athumb";
                    i8 = 2;
                    z7 = false;
                    file = null;
                    z4 = false;
                } else if (str13.startsWith("thumb://")) {
                    int iIndexOf = str13.indexOf(":", 8);
                    if (iIndexOf >= 0) {
                        file = new File(str13.substring(iIndexOf + (z4 ? 1 : 0)));
                        str7 = str3;
                        str8 = "athumb";
                        i8 = 2;
                        z7 = false;
                    }
                    str7 = str3;
                    str8 = "athumb";
                    i8 = 2;
                    z7 = false;
                    file = null;
                } else {
                    if (str13.startsWith("vthumb://")) {
                        int iIndexOf2 = str13.indexOf(":", 9);
                        if (iIndexOf2 >= 0) {
                            file = new File(str13.substring(iIndexOf2 + (z4 ? 1 : 0)));
                        }
                        str7 = str3;
                        str8 = "athumb";
                        i8 = 2;
                        z7 = false;
                        file = null;
                    } else {
                        file = new File(str13);
                    }
                    str7 = str3;
                    str8 = "athumb";
                    i8 = 2;
                    z7 = false;
                }
                if (i != i8) {
                    boolean zIsEncrypted = imageLocation.isEncrypted();
                    CacheImage cacheImage6 = new CacheImage();
                    cacheImage6.priority = imageReceiver.getFileLoadingPriority() == 0 ? 0 : 1;
                    if (!z) {
                        if (imageLocation.imageType == i8 || MessageObject.isGifDocument(imageLocation.webFile) || MessageObject.isGifDocument(imageLocation.document) || MessageObject.isRoundVideoDocument(imageLocation.document) || MessageObject.isVideoSticker(imageLocation.document)) {
                            cacheImage6.imageType = i8;
                        } else {
                            String str14 = imageLocation.path;
                            if (str14 != null && !str14.startsWith("vthumb") && !str14.startsWith("thumb")) {
                                String httpUrlExtension = getHttpUrlExtension(str14, "jpg");
                                if (!httpUrlExtension.equalsIgnoreCase("webm") && !httpUrlExtension.equalsIgnoreCase("mp4") && !httpUrlExtension.equalsIgnoreCase("gif")) {
                                    if ("tgs".equals(str5)) {
                                        cacheImage6.imageType = 1;
                                    }
                                }
                            }
                        }
                    }
                    if (file == null) {
                        TLRPC.PhotoSize photoSize = imageLocation.photoSize;
                        boolean z14 = photoSize instanceof TLRPC.TL_photoStrippedSize;
                        String str15 = AUTOPLAY_FILTER;
                        if (z14 || (photoSize instanceof TLRPC.TL_photoPathSize)) {
                            i9 = i6;
                            imageLoader = this;
                            z10 = z7;
                            j2 = 0;
                            z11 = true;
                        } else {
                            SecureDocument secureDocument = imageLocation.secureDocument;
                            if (secureDocument != null) {
                                cacheImage6.secureDocument = secureDocument;
                                z11 = secureDocument.secureFile.dc_id == Integer.MIN_VALUE;
                                file = new File(FileLoader.getDirectory(4), str);
                                i9 = i6;
                                imageLoader = this;
                                z10 = z7;
                                j2 = 0;
                            } else {
                                boolean z15 = z7;
                                if (AUTOPLAY_FILTER.equals(str7) || isAnimatedAvatar(str7)) {
                                    i9 = i6;
                                    str9 = AUTOPLAY_FILTER;
                                    str10 = "_";
                                } else {
                                    i9 = i6;
                                    str9 = AUTOPLAY_FILTER;
                                    if (i9 == 0) {
                                        str10 = "_";
                                        if (j <= 0 || imageLocation.path != null || zIsEncrypted) {
                                        }
                                    }
                                    File file4 = new File(FileLoader.getDirectory(4), str);
                                    if (file4.exists()) {
                                        z12 = z4;
                                        z13 = true;
                                    } else {
                                        if (i9 == 2) {
                                            File directory = FileLoader.getDirectory(4);
                                            StringBuilder sb = new StringBuilder();
                                            sb.append(str);
                                            z12 = z4;
                                            sb.append(".enc");
                                            file4 = new File(directory, sb.toString());
                                        } else {
                                            z12 = z4;
                                        }
                                        z13 = z15;
                                    }
                                    TLRPC.Document document3 = imageLocation.document;
                                    if (document3 != null) {
                                        if (document3 instanceof DocumentObject.ThemeDocument) {
                                            boolean z16 = ((DocumentObject.ThemeDocument) document3).wallpaper == null ? true : z12;
                                            cacheImage6.imageType = 5;
                                            imageLoader = this;
                                            file = file4;
                                            z10 = z13;
                                            z11 = z16;
                                            j2 = 0;
                                        } else if ("application/x-tgsdice".equals(document3.mime_type)) {
                                            cacheImage6.imageType = 1;
                                            imageLoader = this;
                                            file = file4;
                                            z10 = z13;
                                            j2 = 0;
                                            z11 = true;
                                        } else {
                                            int i12 = 1;
                                            if ("application/x-tgsticker".equals(imageLocation.document.mime_type)) {
                                                cacheImage6.imageType = i12;
                                            } else if ("application/x-tgwallpattern".equals(imageLocation.document.mime_type) || FileLoader.getDocumentFileName(imageLocation.document).endsWith(".svg")) {
                                                i12 = 3;
                                                cacheImage6.imageType = i12;
                                            }
                                        }
                                        str15 = str9;
                                    }
                                    imageLoader = this;
                                    file = file4;
                                    z10 = z13;
                                    j2 = 0;
                                    str15 = str9;
                                    z11 = z12;
                                }
                                z12 = z4;
                                TLRPC.Document document4 = imageLocation.document;
                                if (document4 != null) {
                                    File file5 = document4 instanceof TLRPC.TL_documentEncrypted ? new File(FileLoader.getDirectory(4), str) : MessageObject.isVideoDocument(document4) ? new File(FileLoader.getDirectory(2), str) : new File(FileLoader.getDirectory(3), str);
                                    if (isAnimatedAvatar(str7)) {
                                        str11 = str9;
                                    } else {
                                        str11 = str9;
                                        if (!str11.equals(str7)) {
                                            str12 = str11;
                                            if (!(document4 instanceof DocumentObject.ThemeDocument)) {
                                                if (((DocumentObject.ThemeDocument) document4).wallpaper == null) {
                                                    i11 = 5;
                                                    z11 = true;
                                                } else {
                                                    z11 = z12;
                                                    i11 = 5;
                                                }
                                                cacheImage6.imageType = i11;
                                            } else if ("application/x-tgsdice".equals(imageLocation.document.mime_type)) {
                                                cacheImage6.imageType = 1;
                                                z11 = true;
                                            } else {
                                                if ("application/x-tgsticker".equals(document4.mime_type)) {
                                                    cacheImage6.imageType = 1;
                                                } else {
                                                    if ("application/x-tgwallpattern".equals(document4.mime_type) || FileLoader.getDocumentFileName(imageLocation.document).endsWith(".svg")) {
                                                        cacheImage6.imageType = 3;
                                                    }
                                                    z11 = z12;
                                                }
                                                z11 = z12;
                                            }
                                            j2 = document4.size;
                                            imageLoader = this;
                                            z10 = z15;
                                            str15 = str12;
                                            file = file5;
                                        }
                                    }
                                    if (!file5.exists()) {
                                        File directory2 = FileLoader.getDirectory(4);
                                        StringBuilder sb2 = new StringBuilder();
                                        str12 = str11;
                                        sb2.append(document4.dc_id);
                                        sb2.append(str10);
                                        sb2.append(document4.id);
                                        sb2.append(".temp");
                                        file5 = new File(directory2, sb2.toString());
                                    }
                                    if (!(document4 instanceof DocumentObject.ThemeDocument)) {
                                    }
                                    j2 = document4.size;
                                    imageLoader = this;
                                    z10 = z15;
                                    str15 = str12;
                                    file = file5;
                                } else {
                                    String str16 = str10;
                                    if (imageLocation.webFile != null) {
                                        file = new File(FileLoader.getDirectory(3), str);
                                        imageLoader = this;
                                        z10 = z15;
                                        str15 = str9;
                                    } else {
                                        imageLoader = this;
                                        file = i9 == 1 ? new File(FileLoader.getDirectory(4), str) : new File(FileLoader.getDirectory(i7), str);
                                        if (imageLoader.isAnimatedAvatar(str7)) {
                                            str15 = str9;
                                        } else {
                                            str15 = str9;
                                            if (!str15.equals(str7) || imageLocation.location == null || file.exists()) {
                                                z10 = z15;
                                            }
                                        }
                                        z10 = z15;
                                        file = new File(FileLoader.getDirectory(4), imageLocation.location.volume_id + str16 + imageLocation.location.local_id + ".temp");
                                        j2 = 0L;
                                        z11 = z12;
                                    }
                                    z11 = z12;
                                    j2 = 0;
                                }
                            }
                        }
                        if (hasAutoplayFilter(str3) || imageLoader.isAnimatedAvatar(str7)) {
                            cacheImage6.imageType = 2;
                            cacheImage6.size = j2;
                            cacheImage6.isPFrame = imageLoader.isPFrame(str7);
                            if (str15.equals(str7) || imageLoader.isAnimatedAvatar(str7)) {
                                i10 = i4;
                                z8 = z10;
                                z9 = true;
                            } else {
                                i10 = i4;
                                z8 = z10;
                                z9 = z11;
                            }
                        }
                    } else {
                        i9 = i6;
                        boolean z17 = z4;
                        imageLoader = this;
                        z8 = z7;
                        i10 = i4;
                        z9 = z17;
                    }
                    cacheImage6.type = i10;
                    cacheImage6.key = str2;
                    cacheImage6.cacheType = i9;
                    cacheImage6.filter = str7;
                    cacheImage6.imageLocation = imageLocation;
                    cacheImage6.ext = str4;
                    cacheImage6.currentAccount = i5;
                    cacheImage6.parentObject = obj;
                    int i13 = imageLocation.imageType;
                    if (i13 != 0) {
                        cacheImage6.imageType = i13;
                    }
                    if (i9 == 2) {
                        cacheImage6.encryptionKeyPath = new File(FileLoader.getInternalCacheDir(), str + ".enc.key");
                    }
                    String str17 = str8;
                    cacheImage6.addImageReceiver(imageReceiver, str2, str3, i4, i3);
                    if (z9 || z8 || file.exists()) {
                        cacheImage6.finalFilePath = file;
                        cacheImage6.imageLocation = imageLocation;
                        cacheImage6.cacheTask = imageLoader.new CacheOutTask(cacheImage6);
                        imageLoader.imageLoadingByKeys.put(str2, cacheImage6);
                        imageLoader.imageLoadingKeys.add(cutFilter(str2));
                        if (i != 0) {
                            imageLoader.cacheThumbOutQueue.postRunnable(cacheImage6.cacheTask);
                            return;
                        } else {
                            cacheImage6.runningTask = imageLoader.cacheOutQueue.postRunnable(cacheImage6.cacheTask, cacheImage6.priority);
                            return;
                        }
                    }
                    cacheImage6.url = str;
                    imageLoader.imageLoadingByUrl.put(str, cacheImage6);
                    if (cacheImage6.isPFrame) {
                        imageLoader.imageLoadingByUrlPframe.put(str, cacheImage6);
                    }
                    String str18 = imageLocation.path;
                    if (str18 == null) {
                        int fileLoadingPriority = i != 0 ? 3 : imageReceiver.getFileLoadingPriority();
                        if (imageLocation.location != null) {
                            FileLoader.getInstance(i5).loadFile(imageLocation, obj, str4, fileLoadingPriority, (i9 != 0 || (j > 0 && imageLocation.key == null)) ? i9 : 1);
                        } else if (imageLocation.document != null) {
                            FileLoader.getInstance(i5).loadFile(imageLocation.document, obj, fileLoadingPriority, i9);
                        } else if (imageLocation.secureDocument != null) {
                            FileLoader.getInstance(i5).loadFile(imageLocation.secureDocument, fileLoadingPriority);
                        } else if (imageLocation.webFile != null) {
                            FileLoader.getInstance(i5).loadFile(imageLocation.webFile, fileLoadingPriority, i9);
                        }
                        if (imageReceiver.isForceLoding()) {
                            imageLoader.forceLoadingImages.put(cacheImage6.key, 0);
                            return;
                        }
                        return;
                    }
                    String strMD5 = Utilities.MD5(str18);
                    cacheImage6.tempFilePath = new File(FileLoader.getDirectory(4), strMD5 + "_temp.jpg");
                    cacheImage6.finalFilePath = file;
                    if (imageLocation.path.startsWith(str17)) {
                        ArtworkLoadTask artworkLoadTask = imageLoader.new ArtworkLoadTask(cacheImage6);
                        cacheImage6.artworkTask = artworkLoadTask;
                        imageLoader.artworkTasks.add(artworkLoadTask);
                        imageLoader.runArtworkTasks(false);
                        return;
                    }
                    HttpImageTask httpImageTask = imageLoader.new HttpImageTask(cacheImage6, j);
                    cacheImage6.httpTask = httpImageTask;
                    imageLoader.httpTasks.add(httpImageTask);
                    imageLoader.runHttpTasks(false);
                }
            } else {
                if (i == 0 && z) {
                    if (obj instanceof MessageObject) {
                        MessageObject messageObject = (MessageObject) obj;
                        TLRPC.Document document5 = messageObject.getDocument();
                        String str19 = messageObject.messageOwner.attachPath;
                        File pathToMessage = FileLoader.getInstance(i5).getPathToMessage(messageObject.messageOwner);
                        mediaType = messageObject.getMediaType();
                        pathToAttach = pathToMessage;
                        z6 = false;
                        document2 = document5;
                        str6 = str19;
                    } else if (document2 != null) {
                        pathToAttach = FileLoader.getInstance(i5).getPathToAttach(document2, z4);
                        mediaType = MessageObject.isVideoDocument(document) ? 2 : 3;
                        z6 = true;
                        str6 = null;
                    } else {
                        mediaType = 0;
                        z6 = false;
                        str6 = null;
                        pathToAttach = null;
                        document2 = null;
                    }
                    if (document2 != null) {
                        if (z2) {
                            file2 = pathToAttach;
                            str8 = "athumb";
                            file3 = new File(FileLoader.getDirectory(4), "q_" + document2.dc_id + "_" + document2.id + ".jpg");
                            if (file3.exists()) {
                                z7 = true;
                            }
                            if (TextUtils.isEmpty(str6)) {
                                File file6 = new File(str6);
                                if (!file6.exists()) {
                                    file6 = null;
                                }
                                if (file6 == null) {
                                    file6 = file2;
                                }
                                if (file3 == null) {
                                    String attachFileName = FileLoader.getAttachFileName(document2);
                                    ThumbGenerateInfo thumbGenerateInfo = this.waitingForQualityThumb.get(attachFileName);
                                    if (thumbGenerateInfo == null) {
                                        thumbGenerateInfo = new ThumbGenerateInfo();
                                        thumbGenerateInfo.parentDocument = document2;
                                        thumbGenerateInfo.filter = str3;
                                        thumbGenerateInfo.big = z6;
                                        this.waitingForQualityThumb.put(attachFileName, thumbGenerateInfo);
                                    }
                                    if (!thumbGenerateInfo.imageReceiverArray.contains(imageReceiver)) {
                                        thumbGenerateInfo.imageReceiverArray.add(imageReceiver);
                                        thumbGenerateInfo.imageReceiverGuidsArray.add(Integer.valueOf(i3));
                                    }
                                    this.waitingForQualityThumbByTag.put(i2, attachFileName);
                                    if (file6.exists() && z3) {
                                        generateThumb(mediaType, file6, thumbGenerateInfo);
                                        return;
                                    }
                                    return;
                                }
                                str7 = str3;
                                i8 = 2;
                                file = file3;
                            }
                        } else {
                            file2 = pathToAttach;
                            str8 = "athumb";
                        }
                        z7 = false;
                        file3 = null;
                        if (TextUtils.isEmpty(str6)) {
                        }
                    } else {
                        str7 = str3;
                        str8 = "athumb";
                        i8 = 2;
                        z7 = false;
                        file = null;
                    }
                    z4 = true;
                }
                if (i != i8) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fileDidFailedLoad$12(String str) {
        CacheImage cacheImage = this.imageLoadingByUrl.get(str);
        if (cacheImage != null) {
            cacheImage.setImageAndClear(null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fileDidLoaded$11(String str, int i, File file) {
        ThumbGenerateInfo thumbGenerateInfo = this.waitingForQualityThumb.get(str);
        if (thumbGenerateInfo != null && thumbGenerateInfo.parentDocument != null) {
            generateThumb(i, file, thumbGenerateInfo);
            this.waitingForQualityThumb.remove(str);
        }
        CacheImage cacheImage = this.imageLoadingByUrl.get(str);
        if (cacheImage == null) {
            return;
        }
        this.imageLoadingByUrl.remove(str);
        this.imageLoadingByUrlPframe.remove(str);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < cacheImage.imageReceiverArray.size(); i2++) {
            String str2 = cacheImage.keys.get(i2);
            String str3 = cacheImage.filters.get(i2);
            int iIntValue = cacheImage.types.get(i2).intValue();
            ImageReceiver imageReceiver = cacheImage.imageReceiverArray.get(i2);
            int iIntValue2 = cacheImage.imageReceiverGuidsArray.get(i2).intValue();
            CacheImage cacheImage2 = this.imageLoadingByKeys.get(str2);
            if (cacheImage2 == null) {
                cacheImage2 = new CacheImage();
                cacheImage2.priority = cacheImage.priority;
                cacheImage2.secureDocument = cacheImage.secureDocument;
                cacheImage2.currentAccount = cacheImage.currentAccount;
                cacheImage2.finalFilePath = file;
                cacheImage2.parentObject = cacheImage.parentObject;
                cacheImage2.isPFrame = cacheImage.isPFrame;
                cacheImage2.key = str2;
                cacheImage2.cacheType = cacheImage.cacheType;
                cacheImage2.imageLocation = cacheImage.imageLocation;
                cacheImage2.type = iIntValue;
                cacheImage2.ext = cacheImage.ext;
                cacheImage2.encryptionKeyPath = cacheImage.encryptionKeyPath;
                cacheImage2.cacheTask = new CacheOutTask(cacheImage2);
                cacheImage2.filter = str3;
                cacheImage2.imageType = cacheImage.imageType;
                this.imageLoadingByKeys.put(str2, cacheImage2);
                this.imageLoadingKeys.add(cutFilter(str2));
                arrayList.add(cacheImage2.cacheTask);
            }
            cacheImage2.addImageReceiver(imageReceiver, str2, str3, iIntValue, iIntValue2);
        }
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            CacheOutTask cacheOutTask = (CacheOutTask) arrayList.get(i3);
            if (cacheOutTask.cacheImage.type == 1) {
                this.cacheThumbOutQueue.postRunnable(cacheOutTask);
            } else {
                this.cacheOutQueue.postRunnable(cacheOutTask, cacheOutTask.cacheImage.priority);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$httpFileLoadError$9(String str) {
        CacheImage cacheImage = this.imageLoadingByUrl.get(str);
        if (cacheImage == null) {
            return;
        }
        HttpImageTask httpImageTask = cacheImage.httpTask;
        if (httpImageTask != null) {
            HttpImageTask httpImageTask2 = new HttpImageTask(httpImageTask.cacheImage, httpImageTask.imageSize);
            cacheImage.httpTask = httpImageTask2;
            this.httpTasks.add(httpImageTask2);
        }
        runHttpTasks(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$moveDirectory$2(File file, java.nio.file.Path path) throws IOException {
        File file2 = new File(file, path.getFileName().toString());
        if (Files.isDirectory(path, new LinkOption[0])) {
            moveDirectory(path.toFile(), file2);
            return;
        }
        try {
            Files.move(path, file2.toPath(), new CopyOption[0]);
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$preloadArtwork$8(String str) {
        String httpUrlExtension = getHttpUrlExtension(str, "jpg");
        String str2 = Utilities.MD5(str) + "." + httpUrlExtension;
        File file = new File(FileLoader.getDirectory(4), str2);
        if (file.exists()) {
            return;
        }
        ImageLocation forPath = ImageLocation.getForPath(str);
        CacheImage cacheImage = new CacheImage();
        cacheImage.type = 1;
        cacheImage.key = Utilities.MD5(str);
        cacheImage.filter = null;
        cacheImage.imageLocation = forPath;
        cacheImage.ext = httpUrlExtension;
        cacheImage.parentObject = null;
        int i = forPath.imageType;
        if (i != 0) {
            cacheImage.imageType = i;
        }
        cacheImage.url = str2;
        this.imageLoadingByUrl.put(str2, cacheImage);
        String strMD5 = Utilities.MD5(forPath.path);
        cacheImage.tempFilePath = new File(FileLoader.getDirectory(4), strMD5 + "_temp.jpg");
        cacheImage.finalFilePath = file;
        ArtworkLoadTask artworkLoadTask = new ArtworkLoadTask(cacheImage);
        cacheImage.artworkTask = artworkLoadTask;
        this.artworkTasks.add(artworkLoadTask);
        runArtworkTasks(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runHttpFileLoadTasks$13(HttpFileTask httpFileTask) {
        this.httpFileLoadTasks.add(httpFileTask);
        runHttpFileLoadTasks(null, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runHttpFileLoadTasks$14(HttpFileTask httpFileTask, int i) {
        if (httpFileTask != null) {
            this.currentHttpFileLoadTasksCount--;
        }
        if (httpFileTask != null) {
            if (i == 1) {
                if (httpFileTask.canRetry) {
                    final HttpFileTask httpFileTask2 = new HttpFileTask(httpFileTask.url, httpFileTask.tempFile, httpFileTask.ext, httpFileTask.currentAccount);
                    Runnable runnable = new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$runHttpFileLoadTasks$13(httpFileTask2);
                        }
                    };
                    this.retryHttpsTasks.put(httpFileTask.url, runnable);
                    AndroidUtilities.runOnUIThread(runnable, 1000L);
                } else {
                    this.httpFileLoadTasksByKeys.remove(httpFileTask.url);
                    NotificationCenter.getInstance(httpFileTask.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.httpFileDidFailedLoad, httpFileTask.url, 0);
                }
            } else if (i == 2) {
                this.httpFileLoadTasksByKeys.remove(httpFileTask.url);
                File file = new File(FileLoader.getDirectory(4), Utilities.MD5(httpFileTask.url) + "." + httpFileTask.ext);
                if (!httpFileTask.tempFile.renameTo(file)) {
                    file = httpFileTask.tempFile;
                }
                NotificationCenter.getInstance(httpFileTask.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.httpFileDidLoad, httpFileTask.url, file.toString());
            }
        }
        while (this.currentHttpFileLoadTasksCount < 2 && !this.httpFileLoadTasks.isEmpty()) {
            this.httpFileLoadTasks.poll().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
            this.currentHttpFileLoadTasksCount++;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(29:0|2|(1:19)(3:7|(1:9)(3:11|(2:160|15)|19)|10)|20|(3:(1:22)(19:(3:155|24|25)|30|(1:32)(1:33)|34|(1:36)|37|(3:39|(2:40|(1:42)(1:166))|43)|44|(1:46)|47|162|48|(5:151|52|145|53|(1:59))|61|(6:65|147|66|(5:68|(1:70)(1:71)|72|(1:74)(1:75)|76)|78|(1:80))(1:82)|83|(2:(1:86)|87)|157|(3:143|89|(4:91|(1:93)|96|(3:98|99|169)(1:168))(1:142))(1:(5:158|120|(4:122|(1:124)|127|(2:129|130))|131|174)(1:173)))|157|(0)(0))|29|30|(0)(0)|34|(0)|37|(0)|44|(0)|47|162|48|(6:50|151|52|145|53|(0))|61|(1:63)|65|147|66|(0)|78|(0)|83|(0)|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(31:0|2|(1:19)(3:7|(1:9)(3:11|(2:160|15)|19)|10)|20|(1:22)(19:(3:155|24|25)|30|(1:32)(1:33)|34|(1:36)|37|(3:39|(2:40|(1:42)(1:166))|43)|44|(1:46)|47|162|48|(5:151|52|145|53|(1:59))|61|(6:65|147|66|(5:68|(1:70)(1:71)|72|(1:74)(1:75)|76)|78|(1:80))(1:82)|83|(2:(1:86)|87)|157|(3:143|89|(4:91|(1:93)|96|(3:98|99|169)(1:168))(1:142))(1:(5:158|120|(4:122|(1:124)|127|(2:129|130))|131|174)(1:173)))|29|30|(0)(0)|34|(0)|37|(0)|44|(0)|47|162|48|(6:50|151|52|145|53|(0))|61|(1:63)|65|147|66|(0)|78|(0)|83|(0)|157|(0)(0)|(1:(0))) */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0153 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00d9 A[Catch: all -> 0x00dd, PHI: r8 r9
      0x00d9: PHI (r8v6 android.util.Pair<java.lang.Integer, java.lang.Integer>) = 
      (r8v3 android.util.Pair<java.lang.Integer, java.lang.Integer>)
      (r8v8 android.util.Pair<java.lang.Integer, java.lang.Integer>)
     binds: [B:58:0x00d7, B:54:0x00d0] A[DONT_GENERATE, DONT_INLINE]
      0x00d9: PHI (r9v23 java.io.InputStream) = (r9v22 java.io.InputStream), (r9v26 java.io.InputStream) binds: [B:58:0x00d7, B:54:0x00d0] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #10 {all -> 0x00dd, blocks: (B:48:0x00aa, B:50:0x00b8, B:59:0x00d9, B:61:0x00df, B:63:0x00e9, B:65:0x00f3), top: B:162:0x00aa }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00e9 A[Catch: all -> 0x00dd, TryCatch #10 {all -> 0x00dd, blocks: (B:48:0x00aa, B:50:0x00b8, B:59:0x00d9, B:61:0x00df, B:63:0x00e9, B:65:0x00f3), top: B:162:0x00aa }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0102 A[Catch: all -> 0x0124, TryCatch #2 {all -> 0x0124, blocks: (B:66:0x00f8, B:68:0x0102, B:72:0x0113, B:76:0x0120, B:78:0x0126, B:80:0x0130), top: B:147:0x00f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0130 A[Catch: all -> 0x0124, TRY_LEAVE, TryCatch #2 {all -> 0x0124, blocks: (B:66:0x00f8, B:68:0x0102, B:72:0x0113, B:76:0x0120, B:78:0x0126, B:80:0x0130), top: B:147:0x00f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0146  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap loadBitmap(String str, Uri uri, float f, float f2, boolean z) {
        String str2;
        InputStream inputStreamOpenInputStream;
        float fMax;
        int i;
        Matrix matrix;
        float f3;
        Bitmap bitmapCreateBitmap;
        Pair<Integer, Integer> imageOrientation;
        InputStream inputStreamOpenInputStream2;
        String path;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        if (str != null || uri == null || uri.getScheme() == null) {
            str2 = str;
        } else {
            if (uri.getScheme().contains("file")) {
                path = uri.getPath();
            } else {
                if (Build.VERSION.SDK_INT < 30 || !RemoteMessageConst.Notification.CONTENT.equals(uri.getScheme())) {
                    try {
                        path = AndroidUtilities.getPath(uri);
                    } catch (Throwable th) {
                        FileLog.e(th);
                    }
                }
                str2 = str;
            }
            str2 = path;
        }
        Bitmap bitmapDecodeFile = null;
        try {
            if (str2 == null) {
                if (uri != null) {
                    try {
                        InputStream inputStreamOpenInputStream3 = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
                        BitmapFactory.decodeStream(inputStreamOpenInputStream3, null, options);
                        inputStreamOpenInputStream3.close();
                        inputStreamOpenInputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
                    } catch (Throwable th2) {
                        FileLog.e(th2);
                        return null;
                    }
                }
                float f4 = options.outWidth / f;
                float f5 = options.outHeight / f2;
                fMax = !z ? Math.max(f4, f5) : Math.min(f4, f5);
                if (fMax < 1.0f) {
                    fMax = 1.0f;
                }
                options.inJustDecodeBounds = false;
                i = (int) fMax;
                options.inSampleSize = i;
                if (i % 2 != 0) {
                    int i2 = 1;
                    while (true) {
                        int i3 = i2 * 2;
                        if (i3 >= options.inSampleSize) {
                            break;
                        }
                        i2 = i3;
                    }
                    options.inSampleSize = i2;
                }
                options.inPurgeable = Build.VERSION.SDK_INT < 21;
                imageOrientation = AndroidUtilities.getImageOrientation(str2);
                if (((Integer) imageOrientation.first).intValue() == 0 && ((Integer) imageOrientation.second).intValue() == 0) {
                    try {
                        inputStreamOpenInputStream2 = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
                        try {
                            imageOrientation = AndroidUtilities.getImageOrientation(inputStreamOpenInputStream2);
                        } catch (Throwable unused) {
                            if (inputStreamOpenInputStream2 != null) {
                            }
                            if (((Integer) imageOrientation.first).intValue() == 0) {
                            }
                            matrix = new Matrix();
                            if (((Integer) imageOrientation.second).intValue() != 0) {
                            }
                            if (((Integer) imageOrientation.first).intValue() != 0) {
                            }
                            f3 = fMax / options.inSampleSize;
                            if (f3 > 1.0f) {
                            }
                            if (str2 == null) {
                            }
                        }
                    } catch (Throwable unused2) {
                        inputStreamOpenInputStream2 = null;
                    }
                    if (inputStreamOpenInputStream2 != null) {
                        inputStreamOpenInputStream2.close();
                    }
                }
                if (((Integer) imageOrientation.first).intValue() == 0 || ((Integer) imageOrientation.second).intValue() != 0) {
                    matrix = new Matrix();
                    if (((Integer) imageOrientation.second).intValue() != 0) {
                        float f6 = -1.0f;
                        float f7 = ((Integer) imageOrientation.second).intValue() == 1 ? -1.0f : 1.0f;
                        if (((Integer) imageOrientation.second).intValue() != 2) {
                            f6 = 1.0f;
                        }
                        matrix.postScale(f7, f6);
                    }
                    if (((Integer) imageOrientation.first).intValue() != 0) {
                        matrix.postRotate(((Integer) imageOrientation.first).intValue());
                    }
                } else {
                    matrix = null;
                }
                f3 = fMax / options.inSampleSize;
                if (f3 > 1.0f) {
                    if (matrix == null) {
                        matrix = new Matrix();
                    }
                    float f8 = 1.0f / f3;
                    matrix.postScale(f8, f8);
                }
                if (str2 == null) {
                    if (uri == null) {
                        return null;
                    }
                    try {
                        bitmapDecodeFile = BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                        if (bitmapDecodeFile != null) {
                            if (options.inPurgeable) {
                                Utilities.pinBitmap(bitmapDecodeFile);
                            }
                            Bitmap bitmapCreateBitmap2 = Bitmaps.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                            if (bitmapCreateBitmap2 != bitmapDecodeFile) {
                                bitmapDecodeFile.recycle();
                                bitmapDecodeFile = bitmapCreateBitmap2;
                            }
                        }
                    } finally {
                        try {
                            inputStreamOpenInputStream.close();
                            return bitmapDecodeFile;
                        } finally {
                        }
                    }
                    inputStreamOpenInputStream.close();
                    return bitmapDecodeFile;
                }
                try {
                    bitmapDecodeFile = BitmapFactory.decodeFile(str2, options);
                } catch (Throwable th3) {
                    FileLog.e(th3);
                    getInstance().clearMemory();
                    if (bitmapDecodeFile == null) {
                        Bitmap bitmapDecodeFile2 = BitmapFactory.decodeFile(str2, options);
                        if (bitmapDecodeFile2 != null) {
                            try {
                                if (options.inPurgeable) {
                                    Utilities.pinBitmap(bitmapDecodeFile2);
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                bitmapDecodeFile = bitmapDecodeFile2;
                                FileLog.e(th);
                                return bitmapDecodeFile;
                            }
                        }
                        bitmapDecodeFile = bitmapDecodeFile2;
                    }
                    if (bitmapDecodeFile == null) {
                        return bitmapDecodeFile;
                    }
                    bitmapCreateBitmap = Bitmaps.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                    if (bitmapCreateBitmap == bitmapDecodeFile) {
                        return bitmapDecodeFile;
                    }
                    bitmapDecodeFile.recycle();
                }
                if (bitmapDecodeFile == null) {
                    return bitmapDecodeFile;
                }
                if (options.inPurgeable) {
                    Utilities.pinBitmap(bitmapDecodeFile);
                }
                bitmapCreateBitmap = Bitmaps.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                if (bitmapCreateBitmap == bitmapDecodeFile) {
                    return bitmapDecodeFile;
                }
                bitmapDecodeFile.recycle();
                return bitmapCreateBitmap;
            }
            BitmapFactory.decodeFile(str2, options);
            if (str2 == null) {
            }
        } catch (Throwable th5) {
            th = th5;
            FileLog.e(th);
            return bitmapDecodeFile;
        }
        inputStreamOpenInputStream = null;
        float f42 = options.outWidth / f;
        float f52 = options.outHeight / f2;
        if (!z) {
        }
        if (fMax < 1.0f) {
        }
        options.inJustDecodeBounds = false;
        i = (int) fMax;
        options.inSampleSize = i;
        if (i % 2 != 0) {
        }
        options.inPurgeable = Build.VERSION.SDK_INT < 21;
        imageOrientation = AndroidUtilities.getImageOrientation(str2);
        if (((Integer) imageOrientation.first).intValue() == 0) {
            inputStreamOpenInputStream2 = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
            imageOrientation = AndroidUtilities.getImageOrientation(inputStreamOpenInputStream2);
            if (inputStreamOpenInputStream2 != null) {
            }
        }
        if (((Integer) imageOrientation.first).intValue() == 0) {
        }
        matrix = new Matrix();
        if (((Integer) imageOrientation.second).intValue() != 0) {
        }
        if (((Integer) imageOrientation.first).intValue() != 0) {
        }
        f3 = fMax / options.inSampleSize;
        if (f3 > 1.0f) {
        }
    }

    private static void moveDirectory(File file, final File file2) {
        if (file.exists()) {
            if (file2.exists() || file2.mkdir()) {
                try {
                    Stream streamConvert = Stream.VivifiedWrapper.convert(Files.list(file.toPath()));
                    try {
                        streamConvert.forEach(new Consumer() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda12
                            @Override // j$.util.function.Consumer
                            /* renamed from: accept */
                            public final void r(Object obj) throws IOException {
                                ImageLoader.lambda$moveDirectory$2(file2, (java.nio.file.Path) obj);
                            }

                            @Override // j$.util.function.Consumer
                            public /* synthetic */ Consumer andThen(Consumer consumer) {
                                return Consumer.CC.$default$andThen(this, consumer);
                            }
                        });
                        streamConvert.close();
                    } finally {
                    }
                } catch (Exception e) {
                    FileLog.e(e);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void performReplace(String str, String str2) {
        LruCache<BitmapDrawable> lruCache = this.memCache;
        BitmapDrawable bitmapDrawable = lruCache.get(str);
        if (bitmapDrawable == null) {
            lruCache = this.smallImagesMemCache;
            bitmapDrawable = lruCache.get(str);
        }
        this.replacedBitmaps.put(str, str2);
        if (bitmapDrawable != null) {
            BitmapDrawable bitmapDrawable2 = lruCache.get(str2);
            if (bitmapDrawable2 == null || bitmapDrawable2.getBitmap() == null || bitmapDrawable.getBitmap() == null) {
                this.ignoreRemoval = str;
                lruCache.remove(str);
                lruCache.put(str2, bitmapDrawable);
                this.ignoreRemoval = null;
            } else {
                Bitmap bitmap = bitmapDrawable2.getBitmap();
                Bitmap bitmap2 = bitmapDrawable.getBitmap();
                if (bitmap.getWidth() > bitmap2.getWidth() || bitmap.getHeight() > bitmap2.getHeight()) {
                    lruCache.remove(str);
                }
            }
        }
        Integer num = this.bitmapUseCounts.get(str);
        if (num != null) {
            this.bitmapUseCounts.put(str2, num);
            this.bitmapUseCounts.remove(str);
        }
    }

    private void removeFromWaitingForThumb(int i, ImageReceiver imageReceiver) {
        String str = this.waitingForQualityThumbByTag.get(i);
        if (str != null) {
            ThumbGenerateInfo thumbGenerateInfo = this.waitingForQualityThumb.get(str);
            if (thumbGenerateInfo != null) {
                int iIndexOf = thumbGenerateInfo.imageReceiverArray.indexOf(imageReceiver);
                if (iIndexOf >= 0) {
                    thumbGenerateInfo.imageReceiverArray.remove(iIndexOf);
                    thumbGenerateInfo.imageReceiverGuidsArray.remove(iIndexOf);
                }
                if (thumbGenerateInfo.imageReceiverArray.isEmpty()) {
                    this.waitingForQualityThumb.remove(str);
                }
            }
            this.waitingForQualityThumbByTag.remove(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: replaceImageInCacheInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$replaceImageInCache$5(String str, String str2, ImageLocation imageLocation) {
        int i = 0;
        while (i < 2) {
            ArrayList<String> filterKeys = (i == 0 ? this.memCache : this.smallImagesMemCache).getFilterKeys(str);
            if (filterKeys != null) {
                for (int i2 = 0; i2 < filterKeys.size(); i2++) {
                    String str3 = filterKeys.get(i2);
                    String str4 = str + "@" + str3;
                    String str5 = str2 + "@" + str3;
                    performReplace(str4, str5);
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didReplacedPhotoInMemCache, str4, str5, imageLocation);
                }
            } else {
                performReplace(str, str2);
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didReplacedPhotoInMemCache, str, str2, imageLocation);
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runArtworkTasks(boolean z) {
        if (z) {
            this.currentArtworkTasksCount--;
        }
        while (this.currentArtworkTasksCount < 4 && !this.artworkTasks.isEmpty()) {
            try {
                this.artworkTasks.poll().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
                this.currentArtworkTasksCount++;
            } catch (Throwable unused) {
                runArtworkTasks(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runHttpFileLoadTasks(final HttpFileTask httpFileTask, final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$runHttpFileLoadTasks$14(httpFileTask, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runHttpTasks(boolean z) {
        if (z) {
            this.currentHttpTasksCount--;
        }
        while (this.currentHttpTasksCount < 4 && !this.httpTasks.isEmpty()) {
            HttpImageTask httpImageTaskPoll = this.httpTasks.poll();
            if (httpImageTaskPoll != null) {
                httpImageTaskPoll.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
                this.currentHttpTasksCount++;
            }
        }
    }

    public static void saveMessageThumbs(TLRPC.Message message) {
        byte[] bArr;
        TLRPC.PhotoSize tL_photoSize_layer127;
        TLRPC.Photo photo;
        ArrayList<TLRPC.PhotoSize> arrayList;
        TLRPC.MessageMedia messageMedia = message.media;
        if (messageMedia == null) {
            return;
        }
        int i = 0;
        if (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) {
            TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) messageMedia;
            while (i < tL_messageMediaPaidMedia.extended_media.size()) {
                TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia.extended_media.get(i);
                if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                    saveMessageThumbs(message, ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media);
                }
                i++;
            }
            return;
        }
        TLRPC.PhotoSize photoSizeFindPhotoCachedSize = findPhotoCachedSize(message);
        if (photoSizeFindPhotoCachedSize == null || (bArr = photoSizeFindPhotoCachedSize.bytes) == null || bArr.length == 0) {
            return;
        }
        TLRPC.FileLocation fileLocation = photoSizeFindPhotoCachedSize.location;
        if (fileLocation == null || (fileLocation instanceof TLRPC.TL_fileLocationUnavailable)) {
            TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated = new TLRPC.TL_fileLocationToBeDeprecated();
            photoSizeFindPhotoCachedSize.location = tL_fileLocationToBeDeprecated;
            tL_fileLocationToBeDeprecated.volume_id = -2147483648L;
            tL_fileLocationToBeDeprecated.local_id = SharedConfig.getLastLocalId();
        }
        if (photoSizeFindPhotoCachedSize.h > 50 || photoSizeFindPhotoCachedSize.w > 50) {
            boolean z = true;
            File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(photoSizeFindPhotoCachedSize, true);
            if (MessageObject.shouldEncryptPhotoOrVideo(UserConfig.selectedAccount, message)) {
                pathToAttach = new File(pathToAttach.getAbsolutePath() + ".enc");
            } else {
                z = false;
            }
            if (!pathToAttach.exists()) {
                if (z) {
                    try {
                        RandomAccessFile randomAccessFile = new RandomAccessFile(new File(FileLoader.getInternalCacheDir(), pathToAttach.getName() + ".key"), "rws");
                        long length = randomAccessFile.length();
                        byte[] bArr2 = new byte[32];
                        byte[] bArr3 = new byte[16];
                        if (length <= 0 || length % 48 != 0) {
                            Utilities.random.nextBytes(bArr2);
                            Utilities.random.nextBytes(bArr3);
                            randomAccessFile.write(bArr2);
                            randomAccessFile.write(bArr3);
                        } else {
                            randomAccessFile.read(bArr2, 0, 32);
                            randomAccessFile.read(bArr3, 0, 16);
                        }
                        randomAccessFile.close();
                        Utilities.aesCtrDecryptionByteArray(photoSizeFindPhotoCachedSize.bytes, bArr2, bArr3, 0, r8.length, 0);
                    } catch (Exception e) {
                        FileLog.e(e);
                    }
                }
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(pathToAttach, "rws");
                randomAccessFile2.write(photoSizeFindPhotoCachedSize.bytes);
                randomAccessFile2.close();
            }
            tL_photoSize_layer127 = new TLRPC.TL_photoSize_layer127();
            tL_photoSize_layer127.w = photoSizeFindPhotoCachedSize.w;
            tL_photoSize_layer127.h = photoSizeFindPhotoCachedSize.h;
            tL_photoSize_layer127.location = photoSizeFindPhotoCachedSize.location;
            tL_photoSize_layer127.size = photoSizeFindPhotoCachedSize.size;
            tL_photoSize_layer127.type = photoSizeFindPhotoCachedSize.type;
        } else {
            tL_photoSize_layer127 = new TLRPC.TL_photoStrippedSize();
            tL_photoSize_layer127.location = photoSizeFindPhotoCachedSize.location;
            tL_photoSize_layer127.bytes = photoSizeFindPhotoCachedSize.bytes;
            tL_photoSize_layer127.h = photoSizeFindPhotoCachedSize.h;
            tL_photoSize_layer127.w = photoSizeFindPhotoCachedSize.w;
        }
        TLRPC.MessageMedia messageMedia2 = message.media;
        if (messageMedia2 instanceof TLRPC.TL_messageMediaPhoto) {
            int size = messageMedia2.photo.sizes.size();
            while (i < size) {
                if (((TLRPC.PhotoSize) message.media.photo.sizes.get(i)) instanceof TLRPC.TL_photoCachedSize) {
                    photo = message.media.photo;
                } else {
                    i++;
                }
            }
            return;
        }
        if (messageMedia2 instanceof TLRPC.TL_messageMediaDocument) {
            int size2 = messageMedia2.document.thumbs.size();
            while (i < size2) {
                if (message.media.document.thumbs.get(i) instanceof TLRPC.TL_photoCachedSize) {
                    arrayList = message.media.document.thumbs;
                    arrayList.set(i, tL_photoSize_layer127);
                }
                i++;
            }
            return;
        }
        if (messageMedia2 instanceof TLRPC.TL_messageMediaWebPage) {
            int size3 = messageMedia2.webpage.photo.sizes.size();
            while (i < size3) {
                if (((TLRPC.PhotoSize) message.media.webpage.photo.sizes.get(i)) instanceof TLRPC.TL_photoCachedSize) {
                    photo = message.media.webpage.photo;
                } else {
                    i++;
                }
            }
            return;
        }
        return;
        arrayList = photo.sizes;
        arrayList.set(i, tL_photoSize_layer127);
    }

    public static void saveMessageThumbs(TLRPC.Message message, TLRPC.MessageMedia messageMedia) throws IOException {
        TLRPC.PhotoSize photoSizeFindPhotoCachedSize;
        byte[] bArr;
        TLRPC.PhotoSize tL_photoSize_layer127;
        TLRPC.Photo photo;
        ArrayList<TLRPC.PhotoSize> arrayList;
        if (message == null || messageMedia == null || (photoSizeFindPhotoCachedSize = findPhotoCachedSize(messageMedia)) == null || (bArr = photoSizeFindPhotoCachedSize.bytes) == null || bArr.length == 0) {
            return;
        }
        TLRPC.FileLocation fileLocation = photoSizeFindPhotoCachedSize.location;
        if (fileLocation == null || (fileLocation instanceof TLRPC.TL_fileLocationUnavailable)) {
            TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated = new TLRPC.TL_fileLocationToBeDeprecated();
            photoSizeFindPhotoCachedSize.location = tL_fileLocationToBeDeprecated;
            tL_fileLocationToBeDeprecated.volume_id = -2147483648L;
            tL_fileLocationToBeDeprecated.local_id = SharedConfig.getLastLocalId();
        }
        int i = 0;
        if (photoSizeFindPhotoCachedSize.h > 50 || photoSizeFindPhotoCachedSize.w > 50) {
            boolean z = true;
            File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(photoSizeFindPhotoCachedSize, true);
            if (MessageObject.shouldEncryptPhotoOrVideo(UserConfig.selectedAccount, message)) {
                pathToAttach = new File(pathToAttach.getAbsolutePath() + ".enc");
            } else {
                z = false;
            }
            if (!pathToAttach.exists()) {
                if (z) {
                    try {
                        RandomAccessFile randomAccessFile = new RandomAccessFile(new File(FileLoader.getInternalCacheDir(), pathToAttach.getName() + ".key"), "rws");
                        long length = randomAccessFile.length();
                        byte[] bArr2 = new byte[32];
                        byte[] bArr3 = new byte[16];
                        if (length <= 0 || length % 48 != 0) {
                            Utilities.random.nextBytes(bArr2);
                            Utilities.random.nextBytes(bArr3);
                            randomAccessFile.write(bArr2);
                            randomAccessFile.write(bArr3);
                        } else {
                            randomAccessFile.read(bArr2, 0, 32);
                            randomAccessFile.read(bArr3, 0, 16);
                        }
                        randomAccessFile.close();
                        Utilities.aesCtrDecryptionByteArray(photoSizeFindPhotoCachedSize.bytes, bArr2, bArr3, 0, r7.length, 0);
                    } catch (Exception e) {
                        FileLog.e(e);
                    }
                }
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(pathToAttach, "rws");
                randomAccessFile2.write(photoSizeFindPhotoCachedSize.bytes);
                randomAccessFile2.close();
            }
            tL_photoSize_layer127 = new TLRPC.TL_photoSize_layer127();
            tL_photoSize_layer127.w = photoSizeFindPhotoCachedSize.w;
            tL_photoSize_layer127.h = photoSizeFindPhotoCachedSize.h;
            tL_photoSize_layer127.location = photoSizeFindPhotoCachedSize.location;
            tL_photoSize_layer127.size = photoSizeFindPhotoCachedSize.size;
            tL_photoSize_layer127.type = photoSizeFindPhotoCachedSize.type;
        } else {
            tL_photoSize_layer127 = new TLRPC.TL_photoStrippedSize();
            tL_photoSize_layer127.location = photoSizeFindPhotoCachedSize.location;
            tL_photoSize_layer127.bytes = photoSizeFindPhotoCachedSize.bytes;
            tL_photoSize_layer127.h = photoSizeFindPhotoCachedSize.h;
            tL_photoSize_layer127.w = photoSizeFindPhotoCachedSize.w;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
            int size = messageMedia.photo.sizes.size();
            while (i < size) {
                if (((TLRPC.PhotoSize) messageMedia.photo.sizes.get(i)) instanceof TLRPC.TL_photoCachedSize) {
                    photo = messageMedia.photo;
                } else {
                    i++;
                }
            }
            return;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
            int size2 = messageMedia.document.thumbs.size();
            while (i < size2) {
                if (messageMedia.document.thumbs.get(i) instanceof TLRPC.TL_photoCachedSize) {
                    arrayList = messageMedia.document.thumbs;
                    arrayList.set(i, tL_photoSize_layer127);
                }
                i++;
            }
            return;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaWebPage) {
            int size3 = messageMedia.webpage.photo.sizes.size();
            while (i < size3) {
                if (((TLRPC.PhotoSize) messageMedia.webpage.photo.sizes.get(i)) instanceof TLRPC.TL_photoCachedSize) {
                    photo = messageMedia.webpage.photo;
                } else {
                    i++;
                }
            }
            return;
        }
        return;
        arrayList = photo.sizes;
        arrayList.set(i, tL_photoSize_layer127);
    }

    public static void saveMessagesThumbs(ArrayList<TLRPC.Message> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            saveMessageThumbs(arrayList.get(i));
        }
    }

    public static TLRPC.PhotoSize scaleAndSaveImage(Bitmap bitmap, float f, float f2, int i, boolean z) {
        return scaleAndSaveImage(null, bitmap, Bitmap.CompressFormat.JPEG, false, f, f2, i, z, 0, 0, false);
    }

    public static TLRPC.PhotoSize scaleAndSaveImage(Bitmap bitmap, float f, float f2, int i, boolean z, int i2, int i3) {
        return scaleAndSaveImage(null, bitmap, Bitmap.CompressFormat.JPEG, false, f, f2, i, z, i2, i3, false);
    }

    public static TLRPC.PhotoSize scaleAndSaveImage(Bitmap bitmap, float f, float f2, boolean z, int i, boolean z2, int i2, int i3) {
        return scaleAndSaveImage(null, bitmap, Bitmap.CompressFormat.JPEG, z, f, f2, i, z2, i2, i3, false);
    }

    public static TLRPC.PhotoSize scaleAndSaveImage(Bitmap bitmap, Bitmap.CompressFormat compressFormat, float f, float f2, int i, boolean z, int i2, int i3) {
        return scaleAndSaveImage(null, bitmap, compressFormat, false, f, f2, i, z, i2, i3, false);
    }

    public static TLRPC.PhotoSize scaleAndSaveImage(TLRPC.PhotoSize photoSize, Bitmap bitmap, float f, float f2, int i, boolean z, boolean z2) {
        return scaleAndSaveImage(photoSize, bitmap, Bitmap.CompressFormat.JPEG, false, f, f2, i, z, 0, 0, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static TLRPC.PhotoSize scaleAndSaveImage(TLRPC.PhotoSize photoSize, Bitmap bitmap, Bitmap.CompressFormat compressFormat, boolean z, float f, float f2, int i, boolean z2, int i2, int i3, boolean z3) {
        float f3;
        boolean z4;
        int i4;
        int i5;
        float fMax;
        if (bitmap == null) {
            return null;
        }
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        if (width != BitmapDescriptorFactory.HUE_RED && height != BitmapDescriptorFactory.HUE_RED) {
            float fMax2 = Math.max(width / f, height / f2);
            if (i2 == 0 || i3 == 0) {
                f3 = fMax2;
                z4 = false;
                i4 = (int) (width / f3);
                i5 = (int) (height / f3);
                if (i5 != 0 && i4 != 0) {
                    try {
                        return scaleAndSaveImageInternal(photoSize, bitmap, compressFormat, z, i4, i5, width, height, f3, i, z2, z4, z3);
                    } catch (Throwable th) {
                        FileLog.e(th);
                        getInstance().clearMemory();
                        System.gc();
                        try {
                            return scaleAndSaveImageInternal(photoSize, bitmap, compressFormat, z, i4, i5, width, height, f3, i, z2, z4, z3);
                        } catch (Throwable th2) {
                            FileLog.e(th2);
                        }
                    }
                }
            } else {
                float f4 = i2;
                if (width < f4 || height < i3) {
                    if (width < f4 && height > i3) {
                        fMax = width / f4;
                    } else if (width > f4) {
                        float f5 = i3;
                        fMax = height < f5 ? height / f5 : Math.max(width / f4, height / i3);
                    }
                    f3 = fMax;
                    z4 = true;
                }
                i4 = (int) (width / f3);
                i5 = (int) (height / f3);
                if (i5 != 0) {
                    return scaleAndSaveImageInternal(photoSize, bitmap, compressFormat, z, i4, i5, width, height, f3, i, z2, z4, z3);
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static TLRPC.PhotoSize scaleAndSaveImageInternal(TLRPC.PhotoSize photoSize, Bitmap bitmap, Bitmap.CompressFormat compressFormat, boolean z, int i, int i2, float f, float f2, float f3, int i3, boolean z2, boolean z3, boolean z4) throws IOException {
        TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated;
        Bitmap bitmapCreateScaledBitmap = (f3 > 1.0f || z3) ? Bitmaps.createScaledBitmap(bitmap, i, i2, true) : bitmap;
        if (photoSize != null) {
            TLRPC.FileLocation fileLocation = photoSize.location;
            if (fileLocation instanceof TLRPC.TL_fileLocationToBeDeprecated) {
                tL_fileLocationToBeDeprecated = (TLRPC.TL_fileLocationToBeDeprecated) fileLocation;
            } else {
                tL_fileLocationToBeDeprecated = new TLRPC.TL_fileLocationToBeDeprecated();
                tL_fileLocationToBeDeprecated.volume_id = -2147483648L;
                tL_fileLocationToBeDeprecated.dc_id = Integer.MIN_VALUE;
                tL_fileLocationToBeDeprecated.local_id = SharedConfig.getLastLocalId();
                tL_fileLocationToBeDeprecated.file_reference = new byte[0];
                photoSize = new TLRPC.TL_photoSize_layer127();
                photoSize.location = tL_fileLocationToBeDeprecated;
                photoSize.w = bitmapCreateScaledBitmap.getWidth();
                int height = bitmapCreateScaledBitmap.getHeight();
                photoSize.h = height;
                int i4 = photoSize.w;
                photoSize.type = (i4 > 100 || height > 100) ? (i4 > 320 || height > 320) ? (i4 > 800 || height > 800) ? (i4 > 1280 || height > 1280) ? "w" : "y" : "x" : "m" : "s";
            }
        }
        int i5 = AnonymousClass7.$SwitchMap$android$graphics$Bitmap$CompressFormat[compressFormat.ordinal()];
        FileOutputStream fileOutputStream = new FileOutputStream(new File(FileLoader.getDirectory((z4 || tL_fileLocationToBeDeprecated.volume_id == -2147483648L) ? 4 : 0), tL_fileLocationToBeDeprecated.volume_id + "_" + tL_fileLocationToBeDeprecated.local_id + ((i5 == 1 || i5 == 2 || i5 == 3) ? ".webp" : ".jpg")));
        bitmapCreateScaledBitmap.compress(compressFormat, i3, fileOutputStream);
        if (!z2) {
            photoSize.size = (int) fileOutputStream.getChannel().size();
        }
        fileOutputStream.close();
        if (z2) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmapCreateScaledBitmap.compress(compressFormat, i3, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            photoSize.bytes = byteArray;
            photoSize.size = byteArray.length;
            byteArrayOutputStream.close();
        }
        if (bitmapCreateScaledBitmap != bitmap) {
            bitmapCreateScaledBitmap.recycle();
        }
        return photoSize;
    }

    public static boolean shouldSendImageAsDocument(String str, Uri uri) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        if (str == null && uri != null && uri.getScheme() != null) {
            if (uri.getScheme().contains("file")) {
                str = uri.getPath();
            } else {
                try {
                    str = AndroidUtilities.getPath(uri);
                } catch (Throwable th) {
                    FileLog.e(th);
                }
            }
        }
        if (str != null) {
            BitmapFactory.decodeFile(str, options);
        } else if (uri != null) {
            try {
                InputStream inputStreamOpenInputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
                BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                inputStreamOpenInputStream.close();
            } catch (Throwable th2) {
                FileLog.e(th2);
                return false;
            }
        }
        float f = options.outWidth;
        float f2 = options.outHeight;
        return f / f2 > 10.0f || f2 / f > 10.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int sizeOfBitmapDrawable(BitmapDrawable bitmapDrawable) {
        if (!(bitmapDrawable instanceof AnimatedFileDrawable)) {
            return bitmapDrawable instanceof RLottieDrawable ? bitmapDrawable.getIntrinsicWidth() * bitmapDrawable.getIntrinsicHeight() * 8 : bitmapDrawable.getBitmap().getByteCount();
        }
        AnimatedFileDrawable animatedFileDrawable = (AnimatedFileDrawable) bitmapDrawable;
        return Math.max(animatedFileDrawable.getIntrinsicHeight() * bitmapDrawable.getIntrinsicWidth() * 12, animatedFileDrawable.getRenderingHeight() * animatedFileDrawable.getRenderingWidth() * 12);
    }

    private boolean useLottieMemCache(ImageLocation imageLocation, String str) {
        if (str.endsWith("_firstframe") || str.endsWith("_lastframe")) {
            return false;
        }
        return (imageLocation != null && (MessageObject.isAnimatedStickerDocument(imageLocation.document, true) || imageLocation.imageType == 1 || MessageObject.isVideoSticker(imageLocation.document))) || isAnimatedAvatar(str);
    }

    public void addTestWebFile(String str, WebFile webFile) {
        if (str == null || webFile == null) {
            return;
        }
        this.testWebFile.put(str, webFile);
    }

    public void cancelForceLoadingForImageReceiver(ImageReceiver imageReceiver) {
        final String imageKey;
        if (imageReceiver == null || (imageKey = imageReceiver.getImageKey()) == null) {
            return;
        }
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cancelForceLoadingForImageReceiver$6(imageKey);
            }
        });
    }

    public void cancelLoadHttpFile(String str) {
        HttpFileTask httpFileTask = this.httpFileLoadTasksByKeys.get(str);
        if (httpFileTask != null) {
            httpFileTask.cancel(true);
            this.httpFileLoadTasksByKeys.remove(str);
            this.httpFileLoadTasks.remove(httpFileTask);
        }
        Runnable runnable = this.retryHttpsTasks.get(str);
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        runHttpFileLoadTasks(null, 0);
    }

    public void cancelLoadingForImageReceiver(final ImageReceiver imageReceiver, final boolean z) {
        if (imageReceiver == null) {
            return;
        }
        WebInstantView.cancelLoadPhoto(imageReceiver);
        ArrayList<Runnable> loadingOperations = imageReceiver.getLoadingOperations();
        if (!loadingOperations.isEmpty()) {
            for (int i = 0; i < loadingOperations.size(); i++) {
                this.imageLoadQueue.cancelRunnable(loadingOperations.get(i));
            }
            loadingOperations.clear();
        }
        imageReceiver.addLoadingImageRunnable(null);
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cancelLoadingForImageReceiver$4(z, imageReceiver);
            }
        });
    }

    public void changeFileLoadingPriorityForImageReceiver(final ImageReceiver imageReceiver) {
        if (imageReceiver == null) {
            return;
        }
        final int fileLoadingPriority = imageReceiver.getFileLoadingPriority();
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$changeFileLoadingPriorityForImageReceiver$3(imageReceiver, fileLoadingPriority);
            }
        });
    }

    public void checkMediaPaths() {
        checkMediaPaths(null);
    }

    public void checkMediaPaths(final Runnable runnable) {
        this.cacheOutQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkMediaPaths$1(runnable);
            }
        });
    }

    public void clearMemory() {
        this.smallImagesMemCache.evictAll();
        this.memCache.evictAll();
        this.lottieMemCache.evictAll();
    }

    /* JADX WARN: Removed duplicated region for block: B:157:0x0372 A[Catch: Exception -> 0x0385, TRY_LEAVE, TryCatch #10 {Exception -> 0x0385, blocks: (B:151:0x0355, B:153:0x0363, B:155:0x0369, B:157:0x0372), top: B:198:0x0355, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03a6 A[Catch: Exception -> 0x03b9, TRY_LEAVE, TryCatch #6 {Exception -> 0x03b9, blocks: (B:161:0x0389, B:163:0x0397, B:165:0x039d, B:167:0x03a6), top: B:190:0x0389, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x01e1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0167 A[Catch: Exception -> 0x00ad, TryCatch #0 {Exception -> 0x00ad, blocks: (B:12:0x0053, B:14:0x005f, B:16:0x006d, B:19:0x0075, B:21:0x007c, B:24:0x00aa, B:27:0x00b0, B:29:0x00bc, B:32:0x00c5, B:34:0x00c8, B:38:0x00e9, B:37:0x00cd, B:39:0x00ec, B:56:0x012d, B:73:0x018e, B:75:0x019b, B:77:0x01a6, B:79:0x01ae, B:81:0x01b6, B:83:0x01c2, B:84:0x01cd, B:85:0x01d0, B:147:0x034a, B:137:0x0309, B:127:0x02c8, B:117:0x0287, B:107:0x0246, B:149:0x034f, B:170:0x03ba, B:160:0x0386, B:174:0x03c7, B:97:0x0212, B:55:0x012a, B:57:0x0139, B:59:0x0141, B:72:0x0186, B:62:0x014e, B:64:0x0154, B:69:0x0161, B:71:0x0167, B:67:0x015b, B:171:0x03be, B:173:0x03c2, B:138:0x030c, B:140:0x031e, B:142:0x0325, B:144:0x0334, B:88:0x01e1, B:90:0x01f1, B:92:0x01f7, B:94:0x01fe, B:161:0x0389, B:163:0x0397, B:165:0x039d, B:167:0x03a6, B:128:0x02cb, B:130:0x02dd, B:132:0x02e4, B:134:0x02f3, B:118:0x028a, B:120:0x029c, B:122:0x02a3, B:124:0x02b2, B:108:0x0249, B:110:0x025b, B:112:0x0262, B:114:0x0271, B:151:0x0355, B:153:0x0363, B:155:0x0369, B:157:0x0372, B:98:0x0215, B:100:0x0225, B:102:0x022b, B:104:0x0232), top: B:178:0x0053, inners: #1, #3, #6, #7, #8, #9, #10, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x019b A[Catch: Exception -> 0x00ad, TryCatch #0 {Exception -> 0x00ad, blocks: (B:12:0x0053, B:14:0x005f, B:16:0x006d, B:19:0x0075, B:21:0x007c, B:24:0x00aa, B:27:0x00b0, B:29:0x00bc, B:32:0x00c5, B:34:0x00c8, B:38:0x00e9, B:37:0x00cd, B:39:0x00ec, B:56:0x012d, B:73:0x018e, B:75:0x019b, B:77:0x01a6, B:79:0x01ae, B:81:0x01b6, B:83:0x01c2, B:84:0x01cd, B:85:0x01d0, B:147:0x034a, B:137:0x0309, B:127:0x02c8, B:117:0x0287, B:107:0x0246, B:149:0x034f, B:170:0x03ba, B:160:0x0386, B:174:0x03c7, B:97:0x0212, B:55:0x012a, B:57:0x0139, B:59:0x0141, B:72:0x0186, B:62:0x014e, B:64:0x0154, B:69:0x0161, B:71:0x0167, B:67:0x015b, B:171:0x03be, B:173:0x03c2, B:138:0x030c, B:140:0x031e, B:142:0x0325, B:144:0x0334, B:88:0x01e1, B:90:0x01f1, B:92:0x01f7, B:94:0x01fe, B:161:0x0389, B:163:0x0397, B:165:0x039d, B:167:0x03a6, B:128:0x02cb, B:130:0x02dd, B:132:0x02e4, B:134:0x02f3, B:118:0x028a, B:120:0x029c, B:122:0x02a3, B:124:0x02b2, B:108:0x0249, B:110:0x025b, B:112:0x0262, B:114:0x0271, B:151:0x0355, B:153:0x0363, B:155:0x0369, B:157:0x0372, B:98:0x0215, B:100:0x0225, B:102:0x022b, B:104:0x0232), top: B:178:0x0053, inners: #1, #3, #6, #7, #8, #9, #10, #11 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public SparseArray<File> createMediaPaths() {
        File file;
        File file2;
        File file3;
        File file4;
        File[] externalFilesDirs;
        SparseArray<File> sparseArray = new SparseArray<>();
        File cacheDir = AndroidUtilities.getCacheDir();
        if (!cacheDir.isDirectory()) {
            try {
                cacheDir.mkdirs();
            } catch (Exception e) {
                FileLog.e(e);
            }
        }
        AndroidUtilities.createEmptyFile(new File(cacheDir, ".nomedia"));
        sparseArray.put(4, cacheDir);
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("cache path = " + cacheDir);
        }
        FileLog.d("selected SD card = " + SharedConfig.storageCacheDir);
        try {
        } catch (Exception e2) {
            FileLog.e(e2);
        }
        if ("mounted".equals(Environment.getExternalStorageState())) {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (!TextUtils.isEmpty(SharedConfig.storageCacheDir)) {
                ArrayList<File> rootDirs = AndroidUtilities.getRootDirs();
                if (rootDirs != null) {
                    int size = rootDirs.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        File file5 = rootDirs.get(i);
                        FileLog.d("root dir " + i + " " + file5);
                        if (file5.getAbsolutePath().startsWith(SharedConfig.storageCacheDir)) {
                            externalStorageDirectory = file5;
                            break;
                        }
                        i++;
                    }
                }
                if (!externalStorageDirectory.getAbsolutePath().startsWith(SharedConfig.storageCacheDir) && (externalFilesDirs = ApplicationLoader.applicationContext.getExternalFilesDirs(null)) != null) {
                    for (int i2 = 0; i2 < externalFilesDirs.length; i2++) {
                        if (externalFilesDirs[i2] != null) {
                            FileLog.d("dirsDebug " + i2 + " " + externalFilesDirs[i2]);
                        }
                    }
                }
            }
            FileLog.d("external storage = " + externalStorageDirectory);
            if (Build.VERSION.SDK_INT >= 30) {
                try {
                    if (ApplicationLoader.applicationContext.getExternalMediaDirs().length > 0) {
                        File publicStorageDir = getPublicStorageDir();
                        try {
                            file = new File(publicStorageDir, "Telegram");
                        } catch (Exception e3) {
                            file = publicStorageDir;
                            e = e3;
                        }
                        try {
                            file.mkdirs();
                        } catch (Exception e4) {
                            e = e4;
                            FileLog.e(e);
                            file2 = new File(ApplicationLoader.applicationContext.getExternalFilesDir(null), "Telegram");
                            this.telegramPath = file2;
                            file2.mkdirs();
                            if (!this.telegramPath.isDirectory()) {
                            }
                            if (this.telegramPath.isDirectory()) {
                            }
                            if (file != null) {
                                try {
                                    file4 = new File(file, "Telegram Images");
                                    file4.mkdir();
                                    if (file4.isDirectory()) {
                                        sparseArray.put(100, file4);
                                        if (BuildVars.LOGS_ENABLED) {
                                        }
                                    }
                                } catch (Exception e5) {
                                    FileLog.e(e5);
                                }
                                try {
                                    file3 = new File(file, "Telegram Video");
                                    file3.mkdir();
                                    if (file3.isDirectory()) {
                                        sparseArray.put(101, file3);
                                        if (BuildVars.LOGS_ENABLED) {
                                        }
                                    }
                                } catch (Exception e6) {
                                    FileLog.e(e6);
                                }
                            }
                            SharedConfig.checkSaveToGalleryFiles();
                            return sparseArray;
                        }
                    } else {
                        file = null;
                    }
                } catch (Exception e7) {
                    e = e7;
                    file = null;
                }
                file2 = new File(ApplicationLoader.applicationContext.getExternalFilesDir(null), "Telegram");
            } else {
                if (TextUtils.isEmpty(SharedConfig.storageCacheDir) || !externalStorageDirectory.getAbsolutePath().startsWith(SharedConfig.storageCacheDir)) {
                    if (externalStorageDirectory.exists()) {
                        if (externalStorageDirectory.isDirectory()) {
                            if (!externalStorageDirectory.canWrite()) {
                            }
                        }
                        FileLog.d("can't write to this directory = " + externalStorageDirectory + " use files dir");
                        externalStorageDirectory = ApplicationLoader.applicationContext.getExternalFilesDir(null);
                    } else if (externalStorageDirectory.mkdirs()) {
                        if (!externalStorageDirectory.canWrite()) {
                            FileLog.d("can't write to this directory = " + externalStorageDirectory + " use files dir");
                            externalStorageDirectory = ApplicationLoader.applicationContext.getExternalFilesDir(null);
                        }
                    }
                    return sparseArray;
                }
                file2 = new File(externalStorageDirectory, "Telegram");
                file = null;
            }
            this.telegramPath = file2;
            file2.mkdirs();
            if (!this.telegramPath.isDirectory()) {
                ArrayList<File> dataDirs = AndroidUtilities.getDataDirs();
                int size2 = dataDirs.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size2) {
                        break;
                    }
                    File file6 = dataDirs.get(i3);
                    if (file6 != null && !TextUtils.isEmpty(SharedConfig.storageCacheDir) && file6.getAbsolutePath().startsWith(SharedConfig.storageCacheDir)) {
                        File file7 = new File(file6, "Telegram");
                        this.telegramPath = file7;
                        file7.mkdirs();
                        break;
                    }
                    i3++;
                }
            }
            if (this.telegramPath.isDirectory()) {
                try {
                    File file8 = new File(this.telegramPath, "Telegram Images");
                    file8.mkdir();
                    if (file8.isDirectory() && canMoveFiles(cacheDir, file8, 0)) {
                        sparseArray.put(0, file8);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.d("image path = " + file8);
                        }
                    }
                } catch (Exception e8) {
                    FileLog.e(e8);
                }
                try {
                    File file9 = new File(this.telegramPath, "Telegram Video");
                    file9.mkdir();
                    if (file9.isDirectory() && canMoveFiles(cacheDir, file9, 2)) {
                        sparseArray.put(2, file9);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.d("video path = " + file9);
                        }
                    }
                } catch (Exception e9) {
                    FileLog.e(e9);
                }
                try {
                    File file10 = new File(this.telegramPath, "Telegram Audio");
                    file10.mkdir();
                    if (file10.isDirectory() && canMoveFiles(cacheDir, file10, 1)) {
                        AndroidUtilities.createEmptyFile(new File(file10, ".nomedia"));
                        sparseArray.put(1, file10);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.d("audio path = " + file10);
                        }
                    }
                } catch (Exception e10) {
                    FileLog.e(e10);
                }
                try {
                    File file11 = new File(this.telegramPath, "Telegram Documents");
                    file11.mkdir();
                    if (file11.isDirectory() && canMoveFiles(cacheDir, file11, 3)) {
                        AndroidUtilities.createEmptyFile(new File(file11, ".nomedia"));
                        sparseArray.put(3, file11);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.d("documents path = " + file11);
                        }
                    }
                } catch (Exception e11) {
                    FileLog.e(e11);
                }
                try {
                    File file12 = new File(this.telegramPath, "Telegram Files");
                    file12.mkdir();
                    if (file12.isDirectory() && canMoveFiles(cacheDir, file12, 5)) {
                        AndroidUtilities.createEmptyFile(new File(file12, ".nomedia"));
                        sparseArray.put(5, file12);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.d("files path = " + file12);
                        }
                    }
                } catch (Exception e12) {
                    FileLog.e(e12);
                }
                try {
                    File file13 = new File(this.telegramPath, "Telegram Stories");
                    file13.mkdir();
                    if (file13.isDirectory() && canMoveFiles(cacheDir, file13, 6)) {
                        AndroidUtilities.createEmptyFile(new File(file13, ".nomedia"));
                        sparseArray.put(6, file13);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.d("stories path = " + file13);
                        }
                    }
                } catch (Exception e13) {
                    FileLog.e(e13);
                }
            }
            if (file != null && file.isDirectory()) {
                file4 = new File(file, "Telegram Images");
                file4.mkdir();
                if (file4.isDirectory() && canMoveFiles(cacheDir, file4, 0)) {
                    sparseArray.put(100, file4);
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.d("image path = " + file4);
                    }
                }
                file3 = new File(file, "Telegram Video");
                file3.mkdir();
                if (file3.isDirectory() && canMoveFiles(cacheDir, file3, 2)) {
                    sparseArray.put(101, file3);
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.d("video path = " + file3);
                    }
                }
            }
        } else if (BuildVars.LOGS_ENABLED) {
            FileLog.d("this Android can't rename files");
        }
        SharedConfig.checkSaveToGalleryFiles();
        return sparseArray;
    }

    public boolean decrementUseCount(String str) {
        Integer num = this.bitmapUseCounts.get(str);
        if (num == null) {
            return true;
        }
        if (num.intValue() == 1) {
            this.bitmapUseCounts.remove(str);
            return true;
        }
        this.bitmapUseCounts.put(str, Integer.valueOf(num.intValue() - 1));
        return false;
    }

    public DispatchQueuePriority getCacheOutQueue() {
        return this.cacheOutQueue;
    }

    public Float getFileProgress(String str) {
        long[] jArr;
        if (str == null || (jArr = this.fileProgresses.get(str)) == null) {
            return null;
        }
        long j = jArr[1];
        return Float.valueOf(j == 0 ? BitmapDescriptorFactory.HUE_RED : Math.min(1.0f, jArr[0] / j));
    }

    public long[] getFileProgressSizes(String str) {
        if (str == null) {
            return null;
        }
        return this.fileProgresses.get(str);
    }

    public BitmapDrawable getFromMemCache(String str) {
        BitmapDrawable bitmapDrawable = this.memCache.get(str);
        if (bitmapDrawable == null) {
            bitmapDrawable = this.smallImagesMemCache.get(str);
        }
        if (bitmapDrawable == null) {
            bitmapDrawable = this.wallpaperMemCache.get(str);
        }
        return bitmapDrawable == null ? getFromLottieCache(str) : bitmapDrawable;
    }

    public BitmapDrawable getImageFromMemory(TLObject tLObject, String str, String str2) {
        StringBuilder sb;
        long j;
        String strMD5 = null;
        if (tLObject == null && str == null) {
            return null;
        }
        if (str != null) {
            strMD5 = Utilities.MD5(str);
        } else {
            if (tLObject instanceof TLRPC.FileLocation) {
                TLRPC.FileLocation fileLocation = (TLRPC.FileLocation) tLObject;
                sb = new StringBuilder();
                sb.append(fileLocation.volume_id);
                sb.append("_");
                sb.append(fileLocation.local_id);
            } else {
                if (tLObject instanceof TLRPC.Document) {
                    TLRPC.Document document = (TLRPC.Document) tLObject;
                    sb = new StringBuilder();
                    sb.append(document.dc_id);
                    sb.append("_");
                    j = document.id;
                } else if (tLObject instanceof SecureDocument) {
                    SecureDocument secureDocument = (SecureDocument) tLObject;
                    sb = new StringBuilder();
                    sb.append(secureDocument.secureFile.dc_id);
                    sb.append("_");
                    j = secureDocument.secureFile.id;
                } else if (tLObject instanceof WebFile) {
                    strMD5 = Utilities.MD5(((WebFile) tLObject).url);
                }
                sb.append(j);
            }
            strMD5 = sb.toString();
        }
        if (str2 != null) {
            strMD5 = strMD5 + "@" + str2;
        }
        return getFromMemCache(strMD5);
    }

    public LruCache<BitmapDrawable> getLottieMemCahce() {
        return this.lottieMemCache;
    }

    public String getReplacedKey(String str) {
        if (str == null) {
            return null;
        }
        return this.replacedBitmaps.get(str);
    }

    public boolean hasLottieMemCache(String str) {
        LruCache<BitmapDrawable> lruCache = this.lottieMemCache;
        return lruCache != null && lruCache.contains(str);
    }

    public void incrementUseCount(String str) {
        Integer num = this.bitmapUseCounts.get(str);
        if (num == null) {
            this.bitmapUseCounts.put(str, 1);
        } else {
            this.bitmapUseCounts.put(str, Integer.valueOf(num.intValue() + 1));
        }
    }

    public boolean isInMemCache(String str, boolean z) {
        return z ? getFromLottieCache(str) != null : getFromMemCache(str) != null;
    }

    public boolean isLoadingHttpFile(String str) {
        return this.httpFileLoadTasksByKeys.containsKey(str);
    }

    public void loadHttpFile(String str, String str2, int i) {
        if (str == null || str.length() == 0 || this.httpFileLoadTasksByKeys.containsKey(str)) {
            return;
        }
        String httpUrlExtension = getHttpUrlExtension(str, str2);
        File file = new File(FileLoader.getDirectory(4), Utilities.MD5(str) + "_temp." + httpUrlExtension);
        file.delete();
        HttpFileTask httpFileTask = new HttpFileTask(str, file, httpUrlExtension, i);
        this.httpFileLoadTasks.add(httpFileTask);
        this.httpFileLoadTasksByKeys.put(str, httpFileTask);
        runHttpFileLoadTasks(null, 0);
    }

    public void loadImageForImageReceiver(ImageReceiver imageReceiver) {
        loadImageForImageReceiver(imageReceiver, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0170  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void loadImageForImageReceiver(ImageReceiver imageReceiver, List<ImageReceiver> list) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        ImageLocation forDocument;
        boolean z5;
        String string;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        ImageLocation imageLocation;
        ImageLoader imageLoader;
        ImageReceiver imageReceiver2;
        int i;
        long size;
        int i2;
        int i3;
        String str8;
        String str9;
        String str10;
        ImageLocation imageLocation2;
        String str11;
        int i4;
        String str12;
        StringBuilder sb;
        int i5;
        String str13;
        ImageLocation imageLocation3;
        String str14;
        String str15;
        String str16;
        StringBuilder sb2;
        BitmapDrawable fromLottieCache;
        BitmapDrawable bitmapDrawable;
        BitmapDrawable fromLottieCache2;
        if (imageReceiver == null) {
            return;
        }
        String mediaKey = imageReceiver.getMediaKey();
        int newGuid = imageReceiver.getNewGuid();
        if (mediaKey != null) {
            ImageLocation mediaLocation = imageReceiver.getMediaLocation();
            Drawable drawableFindInPreloadImageReceivers = findInPreloadImageReceivers(mediaKey, list);
            if (drawableFindInPreloadImageReceivers == null) {
                if (useLottieMemCache(mediaLocation, mediaKey)) {
                    fromLottieCache2 = getFromLottieCache(mediaKey);
                } else {
                    fromLottieCache2 = this.memCache.get(mediaKey);
                    if (fromLottieCache2 != null) {
                        this.memCache.moveToFront(mediaKey);
                    }
                    if (fromLottieCache2 == null && (fromLottieCache2 = this.smallImagesMemCache.get(mediaKey)) != null) {
                        this.smallImagesMemCache.moveToFront(mediaKey);
                    }
                    if (fromLottieCache2 == null && (fromLottieCache2 = this.wallpaperMemCache.get(mediaKey)) != null) {
                        this.wallpaperMemCache.moveToFront(mediaKey);
                    }
                }
                drawableFindInPreloadImageReceivers = fromLottieCache2;
            }
            if (!(drawableFindInPreloadImageReceivers instanceof RLottieDrawable ? ((RLottieDrawable) drawableFindInPreloadImageReceivers).hasBitmap() : drawableFindInPreloadImageReceivers instanceof AnimatedFileDrawable ? ((AnimatedFileDrawable) drawableFindInPreloadImageReceivers).hasBitmap() : true) || drawableFindInPreloadImageReceivers == null) {
                if (drawableFindInPreloadImageReceivers != null) {
                    imageReceiver.setImageBitmapByKey(drawableFindInPreloadImageReceivers, mediaKey, 3, true, newGuid);
                    z = false;
                    z2 = true;
                }
                z = false;
                z2 = false;
            } else {
                cancelLoadingForImageReceiver(imageReceiver, true);
                imageReceiver.setImageBitmapByKey(drawableFindInPreloadImageReceivers, mediaKey, 3, true, newGuid);
                if (!imageReceiver.isForcePreview()) {
                    return;
                }
                z = true;
                z2 = false;
            }
        } else {
            z = false;
            z2 = false;
        }
        String imageKey = imageReceiver.getImageKey();
        if (z || imageKey == null) {
            z3 = z;
        } else {
            ImageLocation imageLocation4 = imageReceiver.getImageLocation();
            Drawable drawableFindInPreloadImageReceivers2 = findInPreloadImageReceivers(imageKey, list);
            if (drawableFindInPreloadImageReceivers2 == null && useLottieMemCache(imageLocation4, imageKey)) {
                drawableFindInPreloadImageReceivers2 = getFromLottieCache(imageKey);
            }
            if (drawableFindInPreloadImageReceivers2 == null) {
                bitmapDrawable = this.memCache.get(imageKey);
                if (bitmapDrawable != null) {
                    this.memCache.moveToFront(imageKey);
                }
                if (bitmapDrawable == null && (bitmapDrawable = this.smallImagesMemCache.get(imageKey)) != null) {
                    this.smallImagesMemCache.moveToFront(imageKey);
                }
                if (bitmapDrawable == null && (bitmapDrawable = this.wallpaperMemCache.get(imageKey)) != null) {
                    this.wallpaperMemCache.moveToFront(imageKey);
                }
            } else {
                bitmapDrawable = drawableFindInPreloadImageReceivers2;
            }
            if (bitmapDrawable != null) {
                cancelLoadingForImageReceiver(imageReceiver, true);
                imageReceiver.setImageBitmapByKey(bitmapDrawable, imageKey, 0, true, newGuid);
                if (!imageReceiver.isForcePreview() && (mediaKey == null || z2)) {
                    return;
                } else {
                    z3 = true;
                }
            }
        }
        String thumbKey = imageReceiver.getThumbKey();
        if (thumbKey == null) {
            z4 = false;
        } else {
            if (useLottieMemCache(imageReceiver.getThumbLocation(), thumbKey)) {
                fromLottieCache = getFromLottieCache(thumbKey);
            } else {
                fromLottieCache = this.memCache.get(thumbKey);
                if (fromLottieCache != null) {
                    this.memCache.moveToFront(thumbKey);
                }
                if (fromLottieCache == null && (fromLottieCache = this.smallImagesMemCache.get(thumbKey)) != null) {
                    this.smallImagesMemCache.moveToFront(thumbKey);
                }
                if (fromLottieCache == null && (fromLottieCache = this.wallpaperMemCache.get(thumbKey)) != null) {
                    this.wallpaperMemCache.moveToFront(thumbKey);
                }
            }
            BitmapDrawable bitmapDrawable2 = fromLottieCache;
            if (bitmapDrawable2 != null) {
                imageReceiver.setImageBitmapByKey(bitmapDrawable2, thumbKey, 1, true, newGuid);
                cancelLoadingForImageReceiver(imageReceiver, false);
                if (z3 && imageReceiver.isForcePreview()) {
                    return;
                } else {
                    z4 = true;
                }
            }
        }
        Object parentObject = imageReceiver.getParentObject();
        TLRPC.Document qualityThumbDocument = imageReceiver.getQualityThumbDocument();
        ImageLocation thumbLocation = imageReceiver.getThumbLocation();
        String thumbFilter = imageReceiver.getThumbFilter();
        ImageLocation mediaLocation2 = imageReceiver.getMediaLocation();
        String mediaFilter = imageReceiver.getMediaFilter();
        ImageLocation imageLocation5 = imageReceiver.getImageLocation();
        String imageFilter = imageReceiver.getImageFilter();
        if (imageLocation5 == null && imageReceiver.isNeedsQualityThumb() && imageReceiver.isCurrentKeyQuality()) {
            if (parentObject instanceof MessageObject) {
                qualityThumbDocument = ((MessageObject) parentObject).getDocument();
            } else if (qualityThumbDocument != null) {
            }
            forDocument = ImageLocation.getForDocument(qualityThumbDocument);
            z5 = true;
        } else {
            forDocument = imageLocation5;
            z5 = false;
        }
        String str17 = null;
        String str18 = (forDocument == null || forDocument.imageType != 2) ? null : "mp4";
        ImageLocation imageLocation6 = forDocument;
        String str19 = (mediaLocation2 == null || mediaLocation2.imageType != 2) ? null : "mp4";
        String ext = imageReceiver.getExt();
        if (ext == null) {
            ext = "jpg";
        }
        String str20 = str18 == null ? ext : str18;
        String str21 = str19 == null ? ext : str19;
        ImageLocation imageLocation7 = imageLocation6;
        ImageLocation imageLocation8 = mediaLocation2;
        String string2 = null;
        String string3 = null;
        String str22 = null;
        String str23 = null;
        int i6 = 0;
        boolean z6 = false;
        while (i6 < 2) {
            if (i6 == 0) {
                imageLocation3 = imageLocation7;
                i5 = newGuid;
                str13 = str20;
            } else {
                i5 = newGuid;
                str13 = str21;
                imageLocation3 = imageLocation8;
            }
            boolean z7 = z4;
            ImageLocation imageLocation9 = imageLocation7;
            if (imageLocation3 != null) {
                if (imageLocation8 != null) {
                    imageLocation7 = imageLocation8;
                }
                String key = imageLocation3.getKey(parentObject, imageLocation7, false);
                if (key == null) {
                    str14 = thumbFilter;
                    str15 = imageFilter;
                    str16 = mediaFilter;
                } else {
                    str14 = thumbFilter;
                    String key2 = imageLocation3.getKey(parentObject, imageLocation8 != null ? imageLocation8 : imageLocation9, true);
                    if (imageLocation3.path != null) {
                        key2 = key2 + "." + getHttpUrlExtension(imageLocation3.path, "jpg");
                        str15 = imageFilter;
                        str16 = mediaFilter;
                    } else {
                        TLRPC.PhotoSize photoSize = imageLocation3.photoSize;
                        str15 = imageFilter;
                        if ((photoSize instanceof TLRPC.TL_photoStrippedSize) || (photoSize instanceof TLRPC.TL_photoPathSize)) {
                            str16 = mediaFilter;
                            sb2 = new StringBuilder();
                        } else if (imageLocation3.location != null) {
                            key2 = key2 + "." + str13;
                            if (imageReceiver.getExt() == null) {
                                TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated = imageLocation3.location;
                                if (tL_fileLocationToBeDeprecated.key == null) {
                                    str16 = mediaFilter;
                                    if (tL_fileLocationToBeDeprecated.volume_id == -2147483648L && tL_fileLocationToBeDeprecated.local_id < 0) {
                                    }
                                } else {
                                    str16 = mediaFilter;
                                }
                            }
                        } else {
                            str16 = mediaFilter;
                            WebFile webFile = imageLocation3.webFile;
                            if (webFile != null) {
                                key2 = key2 + "." + getHttpUrlExtension(imageLocation3.webFile.url, FileLoader.getMimeTypePart(webFile.mime_type));
                            } else if (imageLocation3.secureDocument != null) {
                                sb2 = new StringBuilder();
                            } else if (imageLocation3.document != null) {
                                if (i6 == 0 && z5) {
                                    key = "q_" + key;
                                }
                                String documentFileName = FileLoader.getDocumentFileName(imageLocation3.document);
                                int iLastIndexOf = documentFileName.lastIndexOf(46);
                                String str24 = "";
                                String strSubstring = iLastIndexOf == -1 ? "" : documentFileName.substring(iLastIndexOf);
                                if (strSubstring.length() > 1) {
                                    str24 = strSubstring;
                                } else if ("video/mp4".equals(imageLocation3.document.mime_type)) {
                                    str24 = ".mp4";
                                } else if ("video/x-matroska".equals(imageLocation3.document.mime_type)) {
                                    str24 = ".mkv";
                                }
                                key2 = key2 + str24;
                                z6 = (MessageObject.isVideoDocument(imageLocation3.document) || MessageObject.isGifDocument(imageLocation3.document) || MessageObject.isRoundVideoDocument(imageLocation3.document) || MessageObject.canPreviewDocument(imageLocation3.document)) ? false : true;
                            } else if (parentObject instanceof TLRPC.StickerSet) {
                                sb2 = new StringBuilder();
                            }
                        }
                        sb2.append(key2);
                        sb2.append(".");
                        sb2.append(str13);
                        key2 = sb2.toString();
                    }
                    if (i6 == 0) {
                        str22 = key2;
                        string3 = key;
                    } else {
                        str23 = key2;
                        string2 = key;
                    }
                    if (imageLocation3 == thumbLocation) {
                        if (i6 == 0) {
                            string3 = null;
                            imageLocation7 = null;
                            str22 = null;
                        } else {
                            string2 = null;
                            str23 = null;
                            imageLocation8 = null;
                        }
                    }
                }
                imageLocation7 = imageLocation9;
            }
            i6++;
            newGuid = i5;
            z4 = z7;
            thumbFilter = str14;
            imageFilter = str15;
            mediaFilter = str16;
        }
        boolean z8 = z4;
        String str25 = thumbFilter;
        ImageLocation imageLocation10 = imageLocation7;
        String str26 = imageFilter;
        String str27 = mediaFilter;
        int i7 = newGuid;
        if (thumbLocation != null) {
            ImageLocation strippedLocation = imageReceiver.getStrippedLocation();
            if (strippedLocation == null) {
                strippedLocation = imageLocation8 != null ? imageLocation8 : imageLocation5;
            }
            String key3 = thumbLocation.getKey(parentObject, strippedLocation, false);
            String key4 = thumbLocation.getKey(parentObject, strippedLocation, true);
            if (thumbLocation.path != null) {
                sb = new StringBuilder();
                sb.append(key4);
                sb.append(".");
                sb.append(getHttpUrlExtension(thumbLocation.path, "jpg"));
            } else {
                TLRPC.PhotoSize photoSize2 = thumbLocation.photoSize;
                if ((photoSize2 instanceof TLRPC.TL_photoStrippedSize) || (photoSize2 instanceof TLRPC.TL_photoPathSize) || thumbLocation.location != null) {
                    sb = new StringBuilder();
                    sb.append(key4);
                    sb.append(".");
                    sb.append(ext);
                }
                str17 = key4;
                string = key3;
            }
            key4 = sb.toString();
            str17 = key4;
            string = key3;
        } else {
            string = null;
        }
        if (string2 == null || str27 == null) {
            str = str27;
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(string2);
            sb3.append("@");
            str = str27;
            sb3.append(str);
            string2 = sb3.toString();
        }
        if (string3 == null || str26 == null) {
            str2 = str26;
        } else {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(string3);
            sb4.append("@");
            str2 = str26;
            sb4.append(str2);
            string3 = sb4.toString();
        }
        if (string == null || str25 == null) {
            str3 = str25;
        } else {
            StringBuilder sb5 = new StringBuilder();
            sb5.append(string);
            sb5.append("@");
            str3 = str25;
            sb5.append(str3);
            string = sb5.toString();
        }
        String str28 = string;
        if (imageReceiver.getUniqKeyPrefix() == null || string3 == null) {
            str4 = string3;
        } else {
            str4 = imageReceiver.getUniqKeyPrefix() + string3;
        }
        if (imageReceiver.getUniqKeyPrefix() == null || string2 == null) {
            str5 = string2;
        } else {
            str5 = imageReceiver.getUniqKeyPrefix() + string2;
        }
        if (imageLocation10 == null) {
            str6 = ext;
            str7 = str2;
            imageLocation = imageLocation10;
        } else {
            if (imageLocation10.path != null) {
                imageLoader = this;
                imageReceiver2 = imageReceiver;
                String str29 = str2;
                i = i7;
                imageLoader.createLoadOperationForImageReceiver(imageReceiver2, str28, str17, ext, thumbLocation, str3, 0L, 1, 1, z8 ? 2 : 1, i);
                size = imageReceiver.getSize();
                i2 = 0;
                i3 = 0;
                i4 = 1;
                str8 = str4;
                str9 = str22;
                str10 = str20;
                imageLocation2 = imageLocation10;
                str11 = str29;
                imageLoader.createLoadOperationForImageReceiver(imageReceiver2, str8, str9, str10, imageLocation2, str11, size, i4, i2, i3, i);
            }
            str6 = ext;
            imageLocation = imageLocation10;
            str7 = str2;
        }
        int cacheType = imageReceiver.getCacheType();
        if (imageLocation8 != null) {
            int i8 = (cacheType == 0 && z6) ? 1 : cacheType;
            int i9 = i8 == 0 ? 1 : i8;
            if (z8) {
                str12 = str;
            } else {
                str12 = str;
                createLoadOperationForImageReceiver(imageReceiver, str28, str17, str6, thumbLocation, str3, 0L, i9, 1, 1, i7);
            }
            if (!z3) {
                createLoadOperationForImageReceiver(imageReceiver, str4, str22, str20, imageLocation, str7, 0L, 1, 0, 0, i7);
            }
            if (z2) {
                return;
            }
            size = imageReceiver.getSize();
            i2 = 3;
            i3 = 0;
            imageLoader = this;
            imageReceiver2 = imageReceiver;
            str8 = str5;
            str9 = str23;
            str10 = str21;
            imageLocation2 = imageLocation8;
            str11 = str12;
            i4 = i8;
            i = i7;
        } else {
            int i10 = (cacheType == 0 && z6) ? 1 : cacheType;
            imageLoader = this;
            imageReceiver2 = imageReceiver;
            i = i7;
            imageLoader.createLoadOperationForImageReceiver(imageReceiver2, str28, str17, str6, thumbLocation, str3, 0L, i10 == 0 ? 1 : i10, 1, z8 ? 2 : 1, i);
            size = imageReceiver.getSize();
            i2 = 0;
            i3 = 0;
            str8 = str4;
            str9 = str22;
            str10 = str20;
            imageLocation2 = imageLocation;
            str11 = str7;
            i4 = i10;
        }
        imageLoader.createLoadOperationForImageReceiver(imageReceiver2, str8, str9, str10, imageLocation2, str11, size, i4, i2, i3, i);
    }

    public void moveToFront(String str) {
        if (str == null) {
            return;
        }
        if (this.lottieMemCache.get(str) != null) {
            this.lottieMemCache.moveToFront(str);
        }
        if (this.memCache.get(str) != null) {
            this.memCache.moveToFront(str);
        }
        if (this.smallImagesMemCache.get(str) != null) {
            this.smallImagesMemCache.moveToFront(str);
        }
    }

    public void onFragmentStackChanged() {
        for (int i = 0; i < this.cachedAnimatedFileDrawables.size(); i++) {
            this.cachedAnimatedFileDrawables.get(i).repeatCount = 0;
        }
    }

    public void preloadArtwork(final String str) {
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$preloadArtwork$8(str);
            }
        });
    }

    public void putImageToCache(BitmapDrawable bitmapDrawable, String str, boolean z) {
        (z ? this.smallImagesMemCache : this.memCache).put(str, bitmapDrawable);
    }

    public void putThumbsToCache(ArrayList<MessageThumb> arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            putImageToCache(arrayList.get(i).drawable, arrayList.get(i).key, true);
        }
    }

    public void removeImage(String str) {
        this.bitmapUseCounts.remove(str);
        this.memCache.remove(str);
        this.smallImagesMemCache.remove(str);
    }

    public void removeTestWebFile(String str) {
        if (str == null) {
            return;
        }
        this.testWebFile.remove(str);
    }

    public void replaceImageInCache(final String str, final String str2, final ImageLocation imageLocation, boolean z) {
        if (z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$replaceImageInCache$5(str, str2, imageLocation);
                }
            });
        } else {
            lambda$replaceImageInCache$5(str, str2, imageLocation);
        }
    }
}
