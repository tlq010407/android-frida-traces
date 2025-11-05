package org.telegram.ui.web;

import android.os.AsyncTask;
import android.os.Build;
import android.webkit.MimeTypeMap;
import com.huawei.location.lite.common.http.request.BaseRequest;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.ui.Stories.recorder.StoryEntry;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class HttpGetFileTask extends AsyncTask {
    private Utilities.Callback doneCallback;
    private Exception exception;
    private File file;
    private long max_size = -1;
    private String overrideExt;
    private Utilities.Callback progressCallback;

    public HttpGetFileTask(Utilities.Callback callback, Utilities.Callback callback2) {
        this.doneCallback = callback;
        this.progressCallback = callback2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doInBackground$0(float f) {
        this.progressCallback.run(Float.valueOf(f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doInBackground$1() {
        this.progressCallback.run(Float.valueOf(1.0f));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0159, code lost:
    
        return r17.file;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:?, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00e6, code lost:
    
        r17.file.delete();
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0133, code lost:
    
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0137, code lost:
    
        if (r17.progressCallback == null) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0139, code lost:
    
        org.telegram.messenger.AndroidUtilities.runOnUIThread(new org.telegram.ui.web.HttpGetFileTask$$ExternalSyntheticLambda1(r17));
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0141, code lost:
    
        if (r10 == null) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0143, code lost:
    
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x014a, code lost:
    
        r15.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x014d, code lost:
    
        r11.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0154, code lost:
    
        if (isCancelled() == false) goto L100;
     */
    /* JADX WARN: Removed duplicated region for block: B:131:0x015f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x00d7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0168 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0133 A[EDGE_INSN: B:167:0x0133->B:88:0x0133 BREAK  A[LOOP:1: B:56:0x00d0->B:85:0x012d], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0081 A[Catch: Exception -> 0x0041, TryCatch #14 {Exception -> 0x0041, blocks: (B:9:0x0013, B:11:0x0025, B:14:0x0044, B:18:0x0053, B:20:0x005c, B:24:0x0066, B:33:0x007b, B:35:0x0081, B:37:0x008b, B:41:0x0095, B:43:0x009c, B:45:0x009f, B:47:0x00a3, B:51:0x00b4, B:50:0x00a8, B:52:0x00bc, B:122:0x017c, B:121:0x0179, B:97:0x014d, B:100:0x0157, B:36:0x0086, B:19:0x0058, B:117:0x0173), top: B:156:0x0013, inners: #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0086 A[Catch: Exception -> 0x0041, TryCatch #14 {Exception -> 0x0041, blocks: (B:9:0x0013, B:11:0x0025, B:14:0x0044, B:18:0x0053, B:20:0x005c, B:24:0x0066, B:33:0x007b, B:35:0x0081, B:37:0x008b, B:41:0x0095, B:43:0x009c, B:45:0x009f, B:47:0x00a3, B:51:0x00b4, B:50:0x00a8, B:52:0x00bc, B:122:0x017c, B:121:0x0179, B:97:0x014d, B:100:0x0157, B:36:0x0086, B:19:0x0058, B:117:0x0173), top: B:156:0x0013, inners: #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a3 A[Catch: Exception -> 0x0041, TryCatch #14 {Exception -> 0x0041, blocks: (B:9:0x0013, B:11:0x0025, B:14:0x0044, B:18:0x0053, B:20:0x005c, B:24:0x0066, B:33:0x007b, B:35:0x0081, B:37:0x008b, B:41:0x0095, B:43:0x009c, B:45:0x009f, B:47:0x00a3, B:51:0x00b4, B:50:0x00a8, B:52:0x00bc, B:122:0x017c, B:121:0x0179, B:97:0x014d, B:100:0x0157, B:36:0x0086, B:19:0x0058, B:117:0x0173), top: B:156:0x0013, inners: #12 }] */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public File doInBackground(String... strArr) throws Throwable {
        long j;
        BufferedInputStream bufferedInputStream;
        Throwable th;
        FileOutputStream fileOutputStream;
        Throwable th2;
        FileChannel channel;
        Throwable th3;
        byte[] bArr;
        int i;
        int i2 = 0;
        String str = strArr[0];
        long j2 = 0;
        long j3 = 0;
        int i3 = 0;
        while (i3 < 5) {
            boolean z = i3 > 0;
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                httpURLConnection.setRequestMethod(BaseRequest.METHOD_GET);
                if (z) {
                    httpURLConnection.setRequestProperty("Range", "bytes=" + j3 + "-");
                }
                httpURLConnection.setDoInput(true);
                int responseCode = httpURLConnection.getResponseCode();
                InputStream errorStream = (responseCode < 200 || responseCode >= 300) ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream();
                int responseCode2 = httpURLConnection.getResponseCode();
                if (!z || responseCode2 == 206) {
                    long contentLengthLong = Build.VERSION.SDK_INT < 24 ? httpURLConnection.getContentLengthLong() : httpURLConnection.getContentLength();
                    j = this.max_size;
                    if (j <= j2 && contentLengthLong > j) {
                        errorStream.close();
                        if (this.file != null) {
                            this.file = null;
                        }
                        return null;
                    }
                    if (this.file == null) {
                        String extensionFromMimeType = this.overrideExt;
                        if (extensionFromMimeType == null) {
                            extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(httpURLConnection.getContentType());
                        }
                        this.file = StoryEntry.makeCacheFile(UserConfig.selectedAccount, extensionFromMimeType);
                    }
                    bufferedInputStream = new BufferedInputStream(errorStream, LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM);
                    try {
                        fileOutputStream = new FileOutputStream(this.file, z);
                        try {
                            channel = fileOutputStream.getChannel();
                            try {
                                bArr = new byte[LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM];
                                while (true) {
                                    i = bufferedInputStream.read(bArr);
                                    if (i != -1) {
                                        break;
                                    }
                                    try {
                                        channel.write(ByteBuffer.wrap(bArr, i2, i));
                                        j3 += i;
                                        try {
                                            if (isCancelled()) {
                                                try {
                                                    break;
                                                } catch (Exception e) {
                                                    FileLog.e(e);
                                                }
                                            } else {
                                                if (contentLengthLong > 0) {
                                                    final float fClamp01 = Utilities.clamp01(j3 / contentLengthLong);
                                                    if (this.progressCallback != null) {
                                                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.HttpGetFileTask$$ExternalSyntheticLambda0
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                this.f$0.lambda$doInBackground$0(fClamp01);
                                                            }
                                                        });
                                                    }
                                                }
                                                i2 = 0;
                                            }
                                        } catch (Throwable th4) {
                                            th3 = th4;
                                            j2 = 0;
                                            if (channel != null) {
                                                throw th3;
                                            }
                                            try {
                                                channel.close();
                                                throw th3;
                                            } catch (Throwable th5) {
                                                th3.addSuppressed(th5);
                                                throw th3;
                                            }
                                        }
                                    } catch (Throwable th6) {
                                        th = th6;
                                        j2 = 0;
                                        th3 = th;
                                        if (channel != null) {
                                        }
                                    }
                                }
                            } catch (Throwable th7) {
                                th = th7;
                            }
                        } catch (Throwable th8) {
                            th2 = th8;
                            try {
                                fileOutputStream.close();
                                throw th2;
                            } catch (Throwable th9) {
                                th2.addSuppressed(th9);
                                throw th2;
                            }
                        }
                    } catch (Throwable th10) {
                        th = th10;
                        try {
                            bufferedInputStream.close();
                            throw th;
                        } catch (Throwable th11) {
                            th.addSuppressed(th11);
                            throw th;
                        }
                    }
                } else {
                    FileLog.d("failed to resume, server doesn't support partial content. downloading from the beginning");
                    try {
                        File file = this.file;
                        if (file != null) {
                            try {
                                file.delete();
                            } catch (Exception unused) {
                            }
                            this.file = null;
                        }
                        j3 = j2;
                        z = false;
                        if (Build.VERSION.SDK_INT < 24) {
                        }
                        j = this.max_size;
                        if (j <= j2) {
                        }
                        if (this.file == null) {
                        }
                        bufferedInputStream = new BufferedInputStream(errorStream, LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM);
                        fileOutputStream = new FileOutputStream(this.file, z);
                        channel = fileOutputStream.getChannel();
                        bArr = new byte[LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM];
                        while (true) {
                            i = bufferedInputStream.read(bArr);
                            if (i != -1) {
                            }
                            i2 = 0;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        j3 = j2;
                    }
                }
            } catch (Exception e3) {
                e = e3;
            }
            if (!(e instanceof ProtocolException)) {
                this.exception = e;
                FileLog.e(e);
                return null;
            }
            FileLog.d("got unexpected end of stream, lets try to resume");
            i3++;
            i2 = 0;
        }
        this.exception = new RuntimeException("too many retries");
        return null;
        try {
            channel.close();
            try {
                fileOutputStream.close();
                try {
                    bufferedInputStream.close();
                    return null;
                } catch (Exception e4) {
                    e = e4;
                    j2 = 0;
                }
            } catch (Throwable th12) {
                th = th12;
                j2 = 0;
                bufferedInputStream.close();
                throw th;
            }
        } catch (Throwable th13) {
            th2 = th13;
            j2 = 0;
            fileOutputStream.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(File file) {
        Utilities.Callback callback = this.doneCallback;
        if (callback != null) {
            if (this.exception != null) {
                file = null;
            }
            callback.run(file);
        }
    }

    public HttpGetFileTask setDestFile(File file) {
        this.file = file;
        return this;
    }

    public HttpGetFileTask setMaxSize(long j) {
        this.max_size = j;
        return this;
    }
}
