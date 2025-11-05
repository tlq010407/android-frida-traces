package org.telegram.tgnet;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.exoplayer2.upstream.DefaultBandwidthMeter;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.play.core.integrity.IntegrityManagerFactory;
import com.google.android.play.core.integrity.IntegrityTokenRequest;
import com.google.android.play.core.integrity.IntegrityTokenResponse;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.huawei.hms.push.constant.RemoteMessageConst;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.SSLException;
import org.json.JSONArray;
import org.json.JSONObject;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.CaptchaController;
import org.telegram.messenger.EmuDetector;
import org.telegram.messenger.FileLoadOperation;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FileUploadOperation;
import org.telegram.messenger.KeepAliveJob;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.StatsController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Components.VideoPlayer;
import org.telegram.ui.LoginActivity;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class ConnectionsManager extends BaseController {
    private static final int CORE_POOL_SIZE;
    public static final int CPU_COUNT;
    public static final int ConnectionStateConnected = 3;
    public static final int ConnectionStateConnecting = 1;
    public static final int ConnectionStateConnectingToProxy = 4;
    public static final int ConnectionStateUpdating = 5;
    public static final int ConnectionStateWaitingForNetwork = 2;
    public static final int ConnectionTypeDownload = 2;
    public static final int ConnectionTypeDownload2 = 65538;
    public static final int ConnectionTypeGeneric = 1;
    public static final int ConnectionTypePush = 8;
    public static final int ConnectionTypeUpload = 4;
    public static final int DEFAULT_DATACENTER_ID = Integer.MAX_VALUE;
    public static final Executor DNS_THREAD_POOL_EXECUTOR;
    public static final int FileTypeAudio = 50331648;
    public static final int FileTypeFile = 67108864;
    public static final int FileTypePhoto = 16777216;
    public static final int FileTypeVideo = 33554432;
    private static final ConnectionsManager[] Instance;
    private static final int KEEP_ALIVE_SECONDS = 30;
    private static final int MAXIMUM_POOL_SIZE;
    public static final int RequestFlagCanCompress = 4;
    public static final int RequestFlagDoNotWaitFloodWait = 1024;
    public static final int RequestFlagEnableUnauthorized = 1;
    public static final int RequestFlagFailOnServerErrors = 2;
    public static final int RequestFlagFailOnServerErrorsExceptFloodWait = 65536;
    public static final int RequestFlagForceDownload = 32;
    public static final int RequestFlagInvokeAfter = 64;
    public static final int RequestFlagListenAfterCancel = 2048;
    public static final int RequestFlagNeedQuickAck = 128;
    public static final int RequestFlagTryDifferentDc = 16;
    public static final int RequestFlagWithoutLogin = 8;
    public static final byte USE_IPV4_IPV6_RANDOM = 2;
    public static final byte USE_IPV4_ONLY = 0;
    public static final byte USE_IPV6_ONLY = 1;
    private static AsyncTask currentTask;
    private static HashMap<String, ResolvedDomain> dnsCache;
    private static int lastClassGuid;
    private static long lastDnsRequestTime;
    public static long lastPremiumFloodWaitShown;
    private static HashMap<String, ResolveHostByNameTask> resolvingHostnameTasks = new HashMap<>();
    private static final BlockingQueue<Runnable> sPoolWorkQueue;
    private static final ThreadFactory sThreadFactory;
    private boolean appPaused;
    private int appResumeCount;
    private int connectionState;
    private boolean forceTryIpV6;
    private boolean isUpdating;
    private long lastPauseTime;
    private AtomicInteger lastRequestToken;
    private final ConcurrentHashMap<Integer, RequestCallbacks> requestCallbacks;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    static class FirebaseTask extends AsyncTask {
        private int currentAccount;
        private FirebaseRemoteConfig firebaseRemoteConfig;

        public FirebaseTask(int i) {
            this.currentAccount = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$doInBackground$0(Task task) {
            FileLog.d("6. currentTask = null");
            AsyncTask unused = ConnectionsManager.currentTask = null;
            String string = this.firebaseRemoteConfig.getString("ipconfigv3");
            if (TextUtils.isEmpty(string)) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.d("failed to get firebase result");
                    FileLog.d("start dns txt task");
                }
                GoogleDnsLoadTask googleDnsLoadTask = new GoogleDnsLoadTask(this.currentAccount);
                googleDnsLoadTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
                FileLog.d("7. currentTask = GoogleDnsLoadTask");
                AsyncTask unused2 = ConnectionsManager.currentTask = googleDnsLoadTask;
                return;
            }
            byte[] bArrDecode = Base64.decode(string, 0);
            try {
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(bArrDecode.length);
                nativeByteBuffer.writeBytes(bArrDecode);
                int fetchTimeMillis = (int) (this.firebaseRemoteConfig.getInfo().getFetchTimeMillis() / 1000);
                int i = this.currentAccount;
                ConnectionsManager.native_applyDnsConfig(i, nativeByteBuffer.address, AccountInstance.getInstance(i).getUserConfig().getClientPhone(), fetchTimeMillis);
            } catch (Exception e) {
                FileLog.e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$doInBackground$1(boolean z) {
            if (z) {
                this.firebaseRemoteConfig.activate().addOnCompleteListener(new OnCompleteListener() { // from class: org.telegram.tgnet.ConnectionsManager$FirebaseTask$$ExternalSyntheticLambda3
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        this.f$0.lambda$doInBackground$0(task);
                    }
                });
                return;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("failed to get firebase result 2");
                FileLog.d("start dns txt task");
            }
            GoogleDnsLoadTask googleDnsLoadTask = new GoogleDnsLoadTask(this.currentAccount);
            googleDnsLoadTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
            FileLog.d("7. currentTask = GoogleDnsLoadTask");
            AsyncTask unused = ConnectionsManager.currentTask = googleDnsLoadTask;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$doInBackground$2(Task task) {
            final boolean zIsSuccessful = task.isSuccessful();
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$FirebaseTask$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$doInBackground$1(zIsSuccessful);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$doInBackground$3() {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("failed to get firebase result");
                FileLog.d("start dns txt task");
            }
            GoogleDnsLoadTask googleDnsLoadTask = new GoogleDnsLoadTask(this.currentAccount);
            googleDnsLoadTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
            FileLog.d("8. currentTask = GoogleDnsLoadTask");
            AsyncTask unused = ConnectionsManager.currentTask = googleDnsLoadTask;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public NativeByteBuffer doInBackground(Void... voidArr) {
            try {
                if (ConnectionsManager.native_isTestBackend(this.currentAccount) != 0) {
                    throw new Exception("test backend");
                }
                FirebaseRemoteConfig firebaseRemoteConfig = FirebaseRemoteConfig.getInstance();
                this.firebaseRemoteConfig = firebaseRemoteConfig;
                String string = firebaseRemoteConfig.getString("ipconfigv3");
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.d("current firebase value = " + string);
                }
                this.firebaseRemoteConfig.fetch(0L).addOnCompleteListener(new OnCompleteListener() { // from class: org.telegram.tgnet.ConnectionsManager$FirebaseTask$$ExternalSyntheticLambda0
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        this.f$0.lambda$doInBackground$2(task);
                    }
                });
                return null;
            } catch (Throwable th) {
                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$FirebaseTask$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$doInBackground$3();
                    }
                });
                FileLog.e(th, false);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(NativeByteBuffer nativeByteBuffer) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    static class GoogleDnsLoadTask extends AsyncTask {
        private int currentAccount;
        private int responseDate;

        public GoogleDnsLoadTask(int i) {
            this.currentAccount = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int lambda$doInBackground$0(String str, String str2) {
            int length = str.length();
            int length2 = str2.length();
            if (length > length2) {
                return -1;
            }
            return length < length2 ? 1 : 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$1(NativeByteBuffer nativeByteBuffer) {
            FileLog.d("3. currentTask = null, result = " + nativeByteBuffer);
            AsyncTask unused = ConnectionsManager.currentTask = null;
            if (nativeByteBuffer != null) {
                int i = this.currentAccount;
                ConnectionsManager.native_applyDnsConfig(i, nativeByteBuffer.address, AccountInstance.getInstance(i).getUserConfig().getClientPhone(), this.responseDate);
                return;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("failed to get google result");
                FileLog.d("start mozilla task");
            }
            MozillaDnsLoadTask mozillaDnsLoadTask = new MozillaDnsLoadTask(this.currentAccount);
            mozillaDnsLoadTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
            FileLog.d("4. currentTask = mozilla");
            AsyncTask unused2 = ConnectionsManager.currentTask = mozillaDnsLoadTask;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:82:0x0143 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:88:0x0139 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public NativeByteBuffer doInBackground(Void... voidArr) throws IOException {
            InputStream inputStream;
            Throwable th;
            ByteArrayOutputStream byteArrayOutputStream;
            int i;
            boolean z = false;
            try {
                String str = ConnectionsManager.native_isTestBackend(this.currentAccount) != 0 ? "tapv3.stel.com" : AccountInstance.getInstance(this.currentAccount).getMessagesController().dcDomainName;
                int iNextInt = Utilities.random.nextInt(R.styleable.AppCompatTheme_viewInflaterClass) + 13;
                StringBuilder sb = new StringBuilder(iNextInt);
                for (int i2 = 0; i2 < iNextInt; i2++) {
                    sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".charAt(Utilities.random.nextInt(62)));
                }
                URLConnection uRLConnectionOpenConnection = new URL("https://dns.google.com/resolve?name=" + str + "&type=ANY&random_padding=" + ((Object) sb)).openConnection();
                uRLConnectionOpenConnection.addRequestProperty("User-Agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1");
                uRLConnectionOpenConnection.setConnectTimeout(5000);
                uRLConnectionOpenConnection.setReadTimeout(5000);
                uRLConnectionOpenConnection.connect();
                inputStream = uRLConnectionOpenConnection.getInputStream();
                try {
                    this.responseDate = (int) (uRLConnectionOpenConnection.getDate() / 1000);
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        byte[] bArr = new byte[LiteMode.FLAG_CHAT_SCALE];
                        while (!isCancelled() && (i = inputStream.read(bArr)) > 0) {
                            byteArrayOutputStream.write(bArr, 0, i);
                        }
                        JSONArray jSONArray = new JSONObject(new String(byteArrayOutputStream.toByteArray())).getJSONArray("Answer");
                        int length = jSONArray.length();
                        ArrayList arrayList = new ArrayList(length);
                        for (int i3 = 0; i3 < length; i3++) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i3);
                            if (jSONObject.getInt("type") == 16) {
                                arrayList.add(jSONObject.getString(RemoteMessageConst.DATA));
                            }
                        }
                        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.tgnet.ConnectionsManager$GoogleDnsLoadTask$$ExternalSyntheticLambda0
                            @Override // java.util.Comparator
                            public final int compare(Object obj, Object obj2) {
                                return ConnectionsManager.GoogleDnsLoadTask.lambda$doInBackground$0((String) obj, (String) obj2);
                            }
                        });
                        StringBuilder sb2 = new StringBuilder();
                        for (int i4 = 0; i4 < arrayList.size(); i4++) {
                            sb2.append(((String) arrayList.get(i4)).replace("\"", ""));
                        }
                        byte[] bArrDecode = Base64.decode(sb2.toString(), 0);
                        NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(bArrDecode.length);
                        nativeByteBuffer.writeBytes(bArrDecode);
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th2) {
                                FileLog.e(th2);
                            }
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception unused) {
                        }
                        return nativeByteBuffer;
                    } catch (Throwable th3) {
                        th = th3;
                        try {
                            if (!(th instanceof SocketTimeoutException) && !(th instanceof SSLException)) {
                                z = true;
                            }
                            FileLog.e(th, z);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
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
                            return null;
                        } finally {
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Throwable th5) {
                                    FileLog.e(th5);
                                }
                            }
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Exception unused3) {
                                }
                            }
                        }
                    }
                } catch (Throwable th6) {
                    th = th6;
                    th = th;
                    byteArrayOutputStream = null;
                    if (!(th instanceof SocketTimeoutException)) {
                        z = true;
                    }
                    FileLog.e(th, z);
                    if (inputStream != null) {
                    }
                    if (byteArrayOutputStream != null) {
                    }
                    return null;
                }
            } catch (Throwable th7) {
                th = th7;
                inputStream = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(final NativeByteBuffer nativeByteBuffer) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$GoogleDnsLoadTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPostExecute$1(nativeByteBuffer);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    static class MozillaDnsLoadTask extends AsyncTask {
        private int currentAccount;
        private int responseDate;

        public MozillaDnsLoadTask(int i) {
            this.currentAccount = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int lambda$doInBackground$0(String str, String str2) {
            int length = str.length();
            int length2 = str2.length();
            if (length > length2) {
                return -1;
            }
            return length < length2 ? 1 : 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$1(NativeByteBuffer nativeByteBuffer) {
            FileLog.d("5. currentTask = null");
            AsyncTask unused = ConnectionsManager.currentTask = null;
            if (nativeByteBuffer != null) {
                int i = this.currentAccount;
                ConnectionsManager.native_applyDnsConfig(i, nativeByteBuffer.address, AccountInstance.getInstance(i).getUserConfig().getClientPhone(), this.responseDate);
            } else if (BuildVars.LOGS_ENABLED) {
                FileLog.d("failed to get mozilla txt result");
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0134 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:86:0x013e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public NativeByteBuffer doInBackground(Void... voidArr) throws IOException {
            InputStream inputStream;
            Throwable th;
            ByteArrayOutputStream byteArrayOutputStream;
            int i;
            try {
                String str = ConnectionsManager.native_isTestBackend(this.currentAccount) != 0 ? "tapv3.stel.com" : AccountInstance.getInstance(this.currentAccount).getMessagesController().dcDomainName;
                int iNextInt = Utilities.random.nextInt(R.styleable.AppCompatTheme_viewInflaterClass) + 13;
                StringBuilder sb = new StringBuilder(iNextInt);
                for (int i2 = 0; i2 < iNextInt; i2++) {
                    sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".charAt(Utilities.random.nextInt(62)));
                }
                URLConnection uRLConnectionOpenConnection = new URL("https://mozilla.cloudflare-dns.com/dns-query?name=" + str + "&type=TXT&random_padding=" + ((Object) sb)).openConnection();
                uRLConnectionOpenConnection.addRequestProperty("User-Agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1");
                uRLConnectionOpenConnection.addRequestProperty("accept", "application/dns-json");
                uRLConnectionOpenConnection.setConnectTimeout(5000);
                uRLConnectionOpenConnection.setReadTimeout(5000);
                uRLConnectionOpenConnection.connect();
                inputStream = uRLConnectionOpenConnection.getInputStream();
                try {
                    this.responseDate = (int) (uRLConnectionOpenConnection.getDate() / 1000);
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        byte[] bArr = new byte[LiteMode.FLAG_CHAT_SCALE];
                        while (!isCancelled() && (i = inputStream.read(bArr)) > 0) {
                            byteArrayOutputStream.write(bArr, 0, i);
                        }
                        JSONArray jSONArray = new JSONObject(new String(byteArrayOutputStream.toByteArray())).getJSONArray("Answer");
                        int length = jSONArray.length();
                        ArrayList arrayList = new ArrayList(length);
                        for (int i3 = 0; i3 < length; i3++) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i3);
                            if (jSONObject.getInt("type") == 16) {
                                arrayList.add(jSONObject.getString(RemoteMessageConst.DATA));
                            }
                        }
                        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.tgnet.ConnectionsManager$MozillaDnsLoadTask$$ExternalSyntheticLambda0
                            @Override // java.util.Comparator
                            public final int compare(Object obj, Object obj2) {
                                return ConnectionsManager.MozillaDnsLoadTask.lambda$doInBackground$0((String) obj, (String) obj2);
                            }
                        });
                        StringBuilder sb2 = new StringBuilder();
                        for (int i4 = 0; i4 < arrayList.size(); i4++) {
                            sb2.append(((String) arrayList.get(i4)).replace("\"", ""));
                        }
                        byte[] bArrDecode = Base64.decode(sb2.toString(), 0);
                        NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(bArrDecode.length);
                        nativeByteBuffer.writeBytes(bArrDecode);
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th2) {
                                FileLog.e(th2);
                            }
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception unused) {
                        }
                        return nativeByteBuffer;
                    } catch (Throwable th3) {
                        th = th3;
                        try {
                            FileLog.e(th, false);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
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
                            return null;
                        } catch (Throwable th5) {
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Throwable th6) {
                                    FileLog.e(th6);
                                }
                            }
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Exception unused3) {
                                }
                            }
                            throw th5;
                        }
                    }
                } catch (Throwable th7) {
                    th = th7;
                    th = th;
                    byteArrayOutputStream = null;
                    FileLog.e(th, false);
                    if (inputStream != null) {
                    }
                    if (byteArrayOutputStream != null) {
                    }
                    return null;
                }
            } catch (Throwable th8) {
                th = th8;
                inputStream = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(final NativeByteBuffer nativeByteBuffer) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$MozillaDnsLoadTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPostExecute$1(nativeByteBuffer);
                }
            });
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    private static class RequestCallbacks {
        public Runnable onCancelled;
        public RequestDelegateInternal onComplete;
        public QuickAckDelegate onQuickAck;
        public WriteToSocketDelegate onWriteToSocket;

        public RequestCallbacks(RequestDelegateInternal requestDelegateInternal, QuickAckDelegate quickAckDelegate, WriteToSocketDelegate writeToSocketDelegate) {
            this.onComplete = requestDelegateInternal;
            this.onQuickAck = quickAckDelegate;
            this.onWriteToSocket = writeToSocketDelegate;
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    private static class ResolveHostByNameTask extends AsyncTask {
        private ArrayList addresses = new ArrayList();
        private String currentHostName;

        public ResolveHostByNameTask(String str) {
            this.currentHostName = str;
        }

        public void addAddress(long j) {
            if (this.addresses.contains(Long.valueOf(j))) {
                return;
            }
            this.addresses.add(Long.valueOf(j));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public ResolvedDomain doInBackground(Void... voidArr) throws IOException {
            InputStream inputStream;
            ByteArrayOutputStream byteArrayOutputStream;
            JSONArray jSONArray;
            int length;
            try {
                URLConnection uRLConnectionOpenConnection = new URL("https://www.google.com/resolve?name=" + this.currentHostName + "&type=A").openConnection();
                uRLConnectionOpenConnection.addRequestProperty("User-Agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1");
                uRLConnectionOpenConnection.addRequestProperty("Host", "dns.google.com");
                uRLConnectionOpenConnection.setConnectTimeout(1000);
                uRLConnectionOpenConnection.setReadTimeout(2000);
                uRLConnectionOpenConnection.connect();
                inputStream = uRLConnectionOpenConnection.getInputStream();
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                } catch (Throwable th) {
                    th = th;
                    byteArrayOutputStream = null;
                }
            } catch (Throwable th2) {
                th = th2;
                inputStream = null;
                byteArrayOutputStream = null;
            }
            try {
                byte[] bArr = new byte[LiteMode.FLAG_CHAT_SCALE];
                while (true) {
                    int i = inputStream.read(bArr);
                    if (i <= 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                }
                JSONObject jSONObject = new JSONObject(new String(byteArrayOutputStream.toByteArray()));
                if (!jSONObject.has("Answer") || (length = (jSONArray = jSONObject.getJSONArray("Answer")).length()) <= 0) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        FileLog.e(th3, false);
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (Exception unused) {
                    }
                    return null;
                }
                ArrayList arrayList = new ArrayList(length);
                for (int i2 = 0; i2 < length; i2++) {
                    arrayList.add(jSONArray.getJSONObject(i2).getString(RemoteMessageConst.DATA));
                }
                ResolvedDomain resolvedDomain = new ResolvedDomain(arrayList, SystemClock.elapsedRealtime());
                try {
                    inputStream.close();
                } catch (Throwable th4) {
                    FileLog.e(th4, false);
                }
                try {
                    byteArrayOutputStream.close();
                } catch (Exception unused2) {
                }
                return resolvedDomain;
            } catch (Throwable th5) {
                th = th5;
                try {
                    FileLog.e(th, false);
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th6) {
                            FileLog.e(th6, false);
                        }
                    }
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception unused3) {
                        }
                    }
                    try {
                        InetAddress byName = InetAddress.getByName(this.currentHostName);
                        ArrayList arrayList2 = new ArrayList(1);
                        arrayList2.add(byName.getHostAddress());
                        return new ResolvedDomain(arrayList2, SystemClock.elapsedRealtime());
                    } catch (Exception e) {
                        FileLog.e((Throwable) e, false);
                    }
                } catch (Throwable th7) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th8) {
                            FileLog.e(th8, false);
                        }
                    }
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception unused4) {
                        }
                    }
                    throw th7;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(ResolvedDomain resolvedDomain) {
            int i = 0;
            if (resolvedDomain != null) {
                ConnectionsManager.dnsCache.put(this.currentHostName, resolvedDomain);
                int size = this.addresses.size();
                while (i < size) {
                    ConnectionsManager.native_onHostNameResolved(this.currentHostName, ((Long) this.addresses.get(i)).longValue(), resolvedDomain.getAddress());
                    i++;
                }
            } else {
                int size2 = this.addresses.size();
                while (i < size2) {
                    ConnectionsManager.native_onHostNameResolved(this.currentHostName, ((Long) this.addresses.get(i)).longValue(), "");
                    i++;
                }
            }
            ConnectionsManager.resolvingHostnameTasks.remove(this.currentHostName);
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    private static class ResolvedDomain {
        public ArrayList addresses;
        long ttl;

        public ResolvedDomain(ArrayList arrayList, long j) {
            this.addresses = arrayList;
            this.ttl = j;
        }

        public String getAddress() {
            ArrayList arrayList = this.addresses;
            return (String) arrayList.get(Utilities.random.nextInt(arrayList.size()));
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        CPU_COUNT = iAvailableProcessors;
        int iMax = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
        CORE_POOL_SIZE = iMax;
        int i = (iAvailableProcessors * 2) + 1;
        MAXIMUM_POOL_SIZE = i;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(128);
        sPoolWorkQueue = linkedBlockingQueue;
        ThreadFactory threadFactory = new ThreadFactory() { // from class: org.telegram.tgnet.ConnectionsManager.1
            private final AtomicInteger mCount = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "DnsAsyncTask #" + this.mCount.getAndIncrement());
            }
        };
        sThreadFactory = threadFactory;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(iMax, i, 30L, TimeUnit.SECONDS, linkedBlockingQueue, threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        DNS_THREAD_POOL_EXECUTOR = threadPoolExecutor;
        dnsCache = new HashMap<>();
        lastClassGuid = 1;
        Instance = new ConnectionsManager[4];
        lastPremiumFloodWaitShown = 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x018e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ConnectionsManager(int i) throws PackageManager.NameNotFoundException {
        String str;
        String str2;
        String str3;
        String str4;
        String lowerCase;
        Context context;
        String lowerCase2;
        String string;
        StringBuilder sb;
        String str5;
        super(i);
        this.lastPauseTime = System.currentTimeMillis();
        this.appPaused = true;
        this.lastRequestToken = new AtomicInteger(1);
        this.requestCallbacks = new ConcurrentHashMap<>();
        this.connectionState = native_getConnectionState(this.currentAccount);
        File filesDirFixed = ApplicationLoader.getFilesDirFixed();
        if (i != 0) {
            File file = new File(filesDirFixed, "account" + i);
            file.mkdirs();
            filesDirFixed = file;
        }
        String string2 = filesDirFixed.toString();
        boolean zIsPushConnectionEnabled = isPushConnectionEnabled();
        try {
            lowerCase = LocaleController.getSystemLocaleStringIso639().toLowerCase();
            lowerCase2 = LocaleController.getLocaleStringIso639().toLowerCase();
            str3 = Build.MANUFACTURER + Build.MODEL;
            PackageInfo packageInfo = ApplicationLoader.applicationContext.getPackageManager().getPackageInfo(ApplicationLoader.applicationContext.getPackageName(), 0);
            string = packageInfo.versionName + " (" + packageInfo.versionCode + ")";
        } catch (Exception unused) {
            str = "SDK " + Build.VERSION.SDK_INT;
            str2 = "App version unknown";
            str3 = "Android unknown";
            str4 = "";
            lowerCase = "en";
        }
        if (!BuildVars.DEBUG_PRIVATE_VERSION) {
            if (BuildVars.DEBUG_VERSION) {
                sb = new StringBuilder();
                sb.append(string);
                str5 = " beta";
            }
            str = "SDK " + Build.VERSION.SDK_INT;
            String str6 = string;
            str4 = lowerCase2;
            str2 = str6;
            String str7 = lowerCase.trim().length() != 0 ? "en" : lowerCase;
            str3 = str3.trim().length() == 0 ? "Android unknown" : str3;
            str2 = str2.trim().length() == 0 ? "App version unknown" : str2;
            String str8 = str.trim().length() != 0 ? "SDK Unknown" : str;
            getUserConfig().loadConfig();
            String regId = getRegId();
            String certificateSHA256Fingerprint = AndroidUtilities.getCertificateSHA256Fingerprint();
            int rawOffset = (TimeZone.getDefault().getRawOffset() + TimeZone.getDefault().getDSTSavings()) / 1000;
            String str9 = "mainconfig";
            if (this.currentAccount != 0) {
                context = ApplicationLoader.applicationContext;
            } else {
                context = ApplicationLoader.applicationContext;
                str9 = "mainconfig" + this.currentAccount;
            }
            this.forceTryIpV6 = context.getSharedPreferences(str9, 0).getBoolean("forceTryIpV6", false);
            init(SharedConfig.buildVersion(), 208, BuildVars.APP_ID, str3, str8, str2, str4, str7, string2, FileLog.getNetworkLogPath(), regId, certificateSHA256Fingerprint, rawOffset, getUserConfig().getClientUserId(), getUserConfig().getCurrentUser() == null ? getUserConfig().getCurrentUser().premium : false, zIsPushConnectionEnabled);
        }
        sb = new StringBuilder();
        sb.append(string);
        str5 = " pbeta";
        sb.append(str5);
        string = sb.toString();
        str = "SDK " + Build.VERSION.SDK_INT;
        String str62 = string;
        str4 = lowerCase2;
        str2 = str62;
        if (lowerCase.trim().length() != 0) {
        }
        if (str3.trim().length() == 0) {
        }
        if (str2.trim().length() == 0) {
        }
        if (str.trim().length() != 0) {
        }
        getUserConfig().loadConfig();
        String regId2 = getRegId();
        String certificateSHA256Fingerprint2 = AndroidUtilities.getCertificateSHA256Fingerprint();
        int rawOffset2 = (TimeZone.getDefault().getRawOffset() + TimeZone.getDefault().getDSTSavings()) / 1000;
        String str92 = "mainconfig";
        if (this.currentAccount != 0) {
        }
        this.forceTryIpV6 = context.getSharedPreferences(str92, 0).getBoolean("forceTryIpV6", false);
        init(SharedConfig.buildVersion(), 208, BuildVars.APP_ID, str3, str8, str2, str4, str7, string2, FileLog.getNetworkLogPath(), regId2, certificateSHA256Fingerprint2, rawOffset2, getUserConfig().getClientUserId(), getUserConfig().getCurrentUser() == null ? getUserConfig().getCurrentUser().premium : false, zIsPushConnectionEnabled);
    }

    public static int generateClassGuid() {
        int i = lastClassGuid;
        lastClassGuid = i + 1;
        return i;
    }

    public static void getHostByName(final String str, final long j) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                ConnectionsManager.lambda$getHostByName$16(str, j);
            }
        });
    }

    public static int getInitFlags() {
        if (!EmuDetector.with(ApplicationLoader.applicationContext).detect()) {
            return 0;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("detected emu");
        }
        return 1024;
    }

    public static ConnectionsManager getInstance(int i) {
        ConnectionsManager[] connectionsManagerArr = Instance;
        ConnectionsManager connectionsManager = connectionsManagerArr[i];
        if (connectionsManager == null) {
            synchronized (ConnectionsManager.class) {
                try {
                    connectionsManager = connectionsManagerArr[i];
                    if (connectionsManager == null) {
                        connectionsManager = new ConnectionsManager(i);
                        connectionsManagerArr[i] = connectionsManager;
                    }
                } finally {
                }
            }
        }
        return connectionsManager;
    }

    private String getRegId() {
        String str = SharedConfig.pushString;
        if (!TextUtils.isEmpty(str) && SharedConfig.pushType == 13) {
            str = "huawei://" + str;
        }
        if (TextUtils.isEmpty(str) && !TextUtils.isEmpty(SharedConfig.pushStringStatus)) {
            str = SharedConfig.pushStringStatus;
        }
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String str2 = "__" + (SharedConfig.pushType == 2 ? "FIREBASE" : "HUAWEI") + "_GENERATING_SINCE_" + getCurrentTime() + "__";
        SharedConfig.pushStringStatus = str2;
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$cancelRequest$5(Runnable runnable) {
        Utilities.stageQueue.postRunnable(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelRequest$6(final Runnable runnable, int i, boolean z) {
        if (runnable != null) {
            listenCancel(i, new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    ConnectionsManager.lambda$cancelRequest$5(runnable);
                }
            });
        }
        native_cancelRequest(this.currentAccount, i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelRequestsForGuid$7(int i) {
        native_cancelRequestsForGuid(this.currentAccount, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$discardConnection$0(int i, int i2) {
        native_discardConnection(this.currentAccount, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$failNotRunningRequest$1(int i) {
        native_failNotRunningRequest(this.currentAccount, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getHostByName$16(String str, long j) {
        ResolvedDomain resolvedDomain = dnsCache.get(str);
        if (resolvedDomain != null && SystemClock.elapsedRealtime() - resolvedDomain.ttl < 300000) {
            native_onHostNameResolved(str, j, resolvedDomain.getAddress());
            return;
        }
        ResolveHostByNameTask resolveHostByNameTask = resolvingHostnameTasks.get(str);
        if (resolveHostByNameTask == null) {
            resolveHostByNameTask = new ResolveHostByNameTask(str);
            try {
                resolveHostByNameTask.executeOnExecutor(DNS_THREAD_POOL_EXECUTOR, null, null, null);
                resolvingHostnameTasks.put(str, resolveHostByNameTask);
            } catch (Throwable th) {
                FileLog.e(th);
                native_onHostNameResolved(str, j, "");
                return;
            }
        }
        resolveHostByNameTask.addAddress(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onConnectionStateChanged$11(int i, int i2) {
        getInstance(i).connectionState = i2;
        AccountInstance.getInstance(i).getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didUpdateConnectionState, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onIntegrityCheckClassic$21(int i, long j, int i2, String str, IntegrityTokenResponse integrityTokenResponse) {
        String str2 = integrityTokenResponse.token();
        if (str2 == null) {
            FileLog.e("account" + i + ": integrity check gave null token in " + (System.currentTimeMillis() - j) + "ms");
            native_receivedIntegrityCheckClassic(i, i2, str, "PLAYINTEGRITY_FAILED_EXCEPTION_NULL");
            return;
        }
        FileLog.d("account" + i + ": integrity check successfully gave token: " + str2 + " in " + (System.currentTimeMillis() - j) + "ms");
        try {
            native_receivedIntegrityCheckClassic(i, i2, str, str2);
        } catch (Exception e) {
            FileLog.e("receivedIntegrityCheckClassic failed", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onIntegrityCheckClassic$22(int i, long j, int i2, String str, Exception exc) {
        FileLog.e("account" + i + ": integrity check failed to give a token in " + (System.currentTimeMillis() - j) + "ms", exc);
        StringBuilder sb = new StringBuilder();
        sb.append("PLAYINTEGRITY_FAILED_EXCEPTION_");
        sb.append(LoginActivity.errorString(exc));
        native_receivedIntegrityCheckClassic(i, i2, str, sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onIntegrityCheckClassic$23(final int i, String str, final String str2, final int i2) throws NumberFormatException {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        FileLog.d("account" + i + ": server requests integrity classic check with project = " + str + " nonce = " + str2);
        try {
            IntegrityManagerFactory.create(ApplicationLoader.applicationContext).requestIntegrityToken(IntegrityTokenRequest.builder().setNonce(str2).setCloudProjectNumber(Long.parseLong(str)).build()).addOnSuccessListener(new OnSuccessListener() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda12
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    ConnectionsManager.lambda$onIntegrityCheckClassic$21(i, jCurrentTimeMillis, i2, str2, (IntegrityTokenResponse) obj);
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda13
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exc) {
                    ConnectionsManager.lambda$onIntegrityCheckClassic$22(i, jCurrentTimeMillis, i2, str2, exc);
                }
            });
        } catch (Exception unused) {
            FileLog.d("account" + i + ": integrity check failes to parse project id");
            native_receivedIntegrityCheckClassic(i, i2, str2, "PLAYINTEGRITY_FAILED_EXCEPTION_NOPROJECT");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onLogout$12(int i) {
        AccountInstance accountInstance = AccountInstance.getInstance(i);
        if (accountInstance.getUserConfig().getClientUserId() != 0) {
            accountInstance.getUserConfig().clearConfig();
            accountInstance.getMessagesController().performLogout(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void lambda$onPremiumFloodWait$19(boolean z, int i, int i2) {
        boolean z2;
        if (z) {
            FileUploadOperation fileUploadOperationFindUploadOperationByRequestToken = FileLoader.getInstance(i).findUploadOperationByRequestToken(i2);
            if (fileUploadOperationFindUploadOperationByRequestToken != null) {
                z2 = !fileUploadOperationFindUploadOperationByRequestToken.caughtPremiumFloodWait;
                fileUploadOperationFindUploadOperationByRequestToken.caughtPremiumFloodWait = true;
            } else {
                z2 = false;
            }
        } else {
            FileLoadOperation fileLoadOperationFindLoadOperationByRequestToken = FileLoader.getInstance(i).findLoadOperationByRequestToken(i2);
            if (fileLoadOperationFindLoadOperationByRequestToken != null) {
                z2 = !fileLoadOperationFindLoadOperationByRequestToken.caughtPremiumFloodWait;
                fileLoadOperationFindLoadOperationByRequestToken.caughtPremiumFloodWait = true;
            }
        }
        if (z2) {
            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.premiumFloodWaitReceived, new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onPremiumFloodWait$20(final int i, final boolean z, final int i2) {
        if (UserConfig.selectedAccount != i) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ConnectionsManager.lambda$onPremiumFloodWait$19(z, i, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onProxyError$15() {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needShowAlert, 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onRequestNewServerIpAndPort$13(int i, boolean z, int i2) {
        AsyncTask firebaseTask;
        String str;
        FileLog.d("13. currentTask == " + currentTask);
        if (currentTask != null || ((i == 0 && Math.abs(lastDnsRequestTime - System.currentTimeMillis()) < 10000) || !z)) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("don't start task, current task = " + currentTask + " next task = " + i + " time diff = " + Math.abs(lastDnsRequestTime - System.currentTimeMillis()) + " network = " + ApplicationLoader.isNetworkOnline());
                return;
            }
            return;
        }
        lastDnsRequestTime = System.currentTimeMillis();
        if (i == 2) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("start mozilla txt task");
            }
            firebaseTask = new MozillaDnsLoadTask(i2);
            firebaseTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
            str = "9. currentTask = mozilla";
        } else if (i == 1) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("start google txt task");
            }
            firebaseTask = new GoogleDnsLoadTask(i2);
            firebaseTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
            str = "11. currentTask = dnstxt";
        } else {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("start firebase task");
            }
            firebaseTask = new FirebaseTask(i2);
            firebaseTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
            str = "12. currentTask = firebase";
        }
        FileLog.d(str);
        currentTask = firebaseTask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onRequestNewServerIpAndPort$14(final int i, final int i2) {
        final boolean zIsNetworkOnline = ApplicationLoader.isNetworkOnline();
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                ConnectionsManager.lambda$onRequestNewServerIpAndPort$13(i, zIsNetworkOnline, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onSessionCreated$10(int i) {
        AccountInstance.getInstance(i).getMessagesController().getDifference();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onUnparsedMessageReceived$8(int i, TLObject tLObject) {
        AccountInstance.getInstance(i).getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onUpdate$9(int i) {
        AccountInstance.getInstance(i).getMessagesController().updateTimerProc();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onUpdateConfig$17(int i, TLRPC.TL_config tL_config) {
        AccountInstance.getInstance(i).getMessagesController().updateConfig(tL_config);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendRequestInternal$3(RequestDelegate requestDelegate, TLObject tLObject, TLRPC.TL_error tL_error, RequestDelegateTimestamp requestDelegateTimestamp, long j) {
        if (requestDelegate != null) {
            requestDelegate.run(tLObject, tL_error);
        } else if (requestDelegateTimestamp != null) {
            requestDelegateTimestamp.run(tLObject, tL_error, j);
        } else if (tLObject instanceof TLRPC.Updates) {
            KeepAliveJob.finishJob();
            AccountInstance.getInstance(this.currentAccount).getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
        }
        if (tLObject != null) {
            tLObject.freeResources();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendRequestInternal$4(TLObject tLObject, int i, long j, final RequestDelegate requestDelegate, final RequestDelegateTimestamp requestDelegateTimestamp, QuickAckDelegate quickAckDelegate, WriteToSocketDelegate writeToSocketDelegate, int i2, int i3, boolean z, int i4, long j2, int i5, String str, int i6, final long j3, long j4, int i7) throws Exception {
        TLObject tLObjectDeserializeResponse;
        TLRPC.TL_error tL_error;
        int iLimit;
        String str2;
        try {
            if (j2 != 0) {
                NativeByteBuffer nativeByteBufferWrap = NativeByteBuffer.wrap(j2);
                nativeByteBufferWrap.reused = true;
                iLimit = nativeByteBufferWrap.limit();
                try {
                    tLObjectDeserializeResponse = tLObject.deserializeResponse(nativeByteBufferWrap, nativeByteBufferWrap.readInt32(true), true);
                    tL_error = null;
                } catch (Exception e) {
                    if (BuildVars.DEBUG_PRIVATE_VERSION) {
                        throw e;
                    }
                    FileLog.fatal(e);
                    return;
                }
            } else {
                if (str != null) {
                    TLRPC.TL_error tL_error2 = new TLRPC.TL_error();
                    tL_error2.code = i5;
                    tL_error2.text = str;
                    if (BuildVars.LOGS_ENABLED && i5 != -2000) {
                        FileLog.e(tLObject + " got error " + tL_error2.code + " " + tL_error2.text);
                    }
                    tLObjectDeserializeResponse = null;
                    tL_error = tL_error2;
                } else {
                    tLObjectDeserializeResponse = null;
                    tL_error = null;
                }
                iLimit = 0;
            }
            if ((i & 2) != 0 && VideoPlayer.activePlayers.isEmpty()) {
                DefaultBandwidthMeter.getSingletonInstance(ApplicationLoader.applicationContext).onTransfer(iLimit, Math.max(0L, (System.currentTimeMillis() - j) - native_getCurrentPingTime(this.currentAccount)));
            }
            if (BuildVars.DEBUG_PRIVATE_VERSION && !getUserConfig().isClientActivated() && tL_error != null && tL_error.code == 400 && Objects.equals(tL_error.text, "CONNECTION_NOT_INITED")) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.d("Cleanup keys for " + this.currentAccount + " because of CONNECTION_NOT_INITED");
                }
                cleanup(true);
                sendRequest(tLObject, requestDelegate, requestDelegateTimestamp, quickAckDelegate, writeToSocketDelegate, i2, i3, i, z);
                return;
            }
            if (tLObjectDeserializeResponse != null) {
                tLObjectDeserializeResponse.networkType = i6;
            }
            if (BuildVars.LOGS_ENABLED) {
                StringBuilder sb = new StringBuilder();
                sb.append("java received ");
                sb.append(tLObjectDeserializeResponse);
                if (tL_error != null) {
                    str2 = " error = " + tL_error;
                } else {
                    str2 = "";
                }
                sb.append(str2);
                sb.append(" messageId = 0x");
                sb.append(Long.toHexString(j4));
                FileLog.d(sb.toString());
                FileLog.dumpResponseAndRequest(this.currentAccount, tLObject, tLObjectDeserializeResponse, tL_error, j4, j, i4);
            }
            final TLObject tLObject2 = tLObjectDeserializeResponse;
            final TLRPC.TL_error tL_error3 = tL_error;
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendRequestInternal$3(requestDelegate, tLObject2, tL_error3, requestDelegateTimestamp, j3);
                }
            });
        } catch (Exception e2) {
            FileLog.e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setIsUpdating$18(boolean z) {
        if (this.isUpdating == z) {
            return;
        }
        this.isUpdating = z;
        if (this.connectionState == 3) {
            AccountInstance.getInstance(this.currentAccount).getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didUpdateConnectionState, new Object[0]);
        }
    }

    private void listen(int i, RequestDelegateInternal requestDelegateInternal, QuickAckDelegate quickAckDelegate, WriteToSocketDelegate writeToSocketDelegate) {
        this.requestCallbacks.put(Integer.valueOf(i), new RequestCallbacks(requestDelegateInternal, quickAckDelegate, writeToSocketDelegate));
    }

    private void listenCancel(int i, Runnable runnable) {
        RequestCallbacks requestCallbacks = this.requestCallbacks.get(Integer.valueOf(i));
        if (requestCallbacks != null) {
            requestCallbacks.onCancelled = runnable;
        }
    }

    public static native void native_applyDatacenterAddress(int i, int i2, String str, int i3);

    public static native void native_applyDnsConfig(int i, long j, String str, int i2);

    public static native void native_bindRequestToGuid(int i, int i2, int i3);

    public static native void native_cancelRequest(int i, int i2, boolean z);

    public static native void native_cancelRequestsForGuid(int i, int i2);

    public static native long native_checkProxy(int i, String str, int i2, String str2, String str3, String str4, RequestTimeDelegate requestTimeDelegate);

    public static native void native_cleanUp(int i, boolean z);

    public static native void native_discardConnection(int i, int i2, int i3);

    public static native void native_failNotRunningRequest(int i, int i2);

    public static native int native_getConnectionState(int i);

    public static native int native_getCurrentDatacenterId(int i);

    public static native int native_getCurrentPingTime(int i);

    public static native int native_getCurrentTime(int i);

    public static native long native_getCurrentTimeMillis(int i);

    public static native int native_getTimeDifference(int i);

    public static native void native_init(int i, int i2, int i3, int i4, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, int i5, long j, boolean z, boolean z2, boolean z3, int i6, int i7);

    public static native boolean native_isGoodPrime(byte[] bArr, int i);

    public static native int native_isTestBackend(int i);

    public static native void native_onHostNameResolved(String str, long j, String str2);

    public static native void native_pauseNetwork(int i);

    public static native void native_receivedCaptchaResult(int i, int[] iArr, String str);

    public static native void native_receivedIntegrityCheckClassic(int i, int i2, String str, String str2);

    public static native void native_resumeNetwork(int i, boolean z);

    public static native void native_sendRequest(int i, long j, int i2, int i3, int i4, boolean z, int i5);

    public static native void native_setIpStrategy(int i, byte b);

    public static native void native_setJava(boolean z);

    public static native void native_setLangCode(int i, String str);

    public static native void native_setNetworkAvailable(int i, boolean z, int i2, boolean z2);

    public static native void native_setProxySettings(int i, String str, int i2, String str2, String str3, String str4);

    public static native void native_setPushConnectionEnabled(int i, boolean z);

    public static native void native_setRegId(int i, String str);

    public static native void native_setSystemLangCode(int i, String str);

    public static native void native_setUserId(int i, long j);

    public static native void native_switchBackend(int i, boolean z);

    public static native void native_updateDcSettings(int i);

    public static void onBytesReceived(int i, int i2, int i3) {
        try {
            StatsController.getInstance(i3).incrementReceivedBytesCount(i2, 6, i);
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    public static void onBytesSent(int i, int i2, int i3) {
        try {
            AccountInstance.getInstance(i3).getStatsController().incrementSentBytesCount(i2, 6, i);
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    public static void onCaptchaCheck(int i, int i2, String str, String str2) {
        CaptchaController.request(i, i2, str, str2);
    }

    public static void onConnectionStateChanged(final int i, final int i2) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                ConnectionsManager.lambda$onConnectionStateChanged$11(i2, i);
            }
        });
    }

    public static void onIntegrityCheckClassic(final int i, final int i2, final String str, final String str2) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() throws NumberFormatException {
                ConnectionsManager.lambda$onIntegrityCheckClassic$23(i, str, str2, i2);
            }
        });
    }

    public static void onInternalPushReceived(int i) {
        KeepAliveJob.startJob();
    }

    public static void onLogout(final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                ConnectionsManager.lambda$onLogout$12(i);
            }
        });
    }

    public static void onPremiumFloodWait(final int i, final int i2, final boolean z) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                ConnectionsManager.lambda$onPremiumFloodWait$20(i, z, i2);
            }
        });
    }

    public static void onProxyError() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                ConnectionsManager.lambda$onProxyError$15();
            }
        });
    }

    public static void onRequestClear(int i, int i2, boolean z) {
        ConnectionsManager connectionsManager = getInstance(i);
        if (connectionsManager == null) {
            return;
        }
        RequestCallbacks requestCallbacks = connectionsManager.requestCallbacks.get(Integer.valueOf(i2));
        if (z) {
            if (requestCallbacks == null) {
                return;
            }
            Runnable runnable = requestCallbacks.onCancelled;
            if (runnable != null) {
                runnable.run();
            }
        } else if (requestCallbacks == null) {
            return;
        }
        connectionsManager.requestCallbacks.remove(Integer.valueOf(i2));
    }

    public static void onRequestComplete(int i, int i2, long j, int i3, String str, int i4, long j2, long j3, int i5) {
        RequestDelegateInternal requestDelegateInternal;
        ConnectionsManager connectionsManager = getInstance(i);
        if (connectionsManager == null) {
            return;
        }
        RequestCallbacks requestCallbacks = connectionsManager.requestCallbacks.get(Integer.valueOf(i2));
        connectionsManager.requestCallbacks.remove(Integer.valueOf(i2));
        if (requestCallbacks == null || (requestDelegateInternal = requestCallbacks.onComplete) == null) {
            return;
        }
        requestDelegateInternal.run(j, i3, str, i4, j2, j3, i5);
    }

    public static void onRequestNewServerIpAndPort(final int i, final int i2) {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                ConnectionsManager.lambda$onRequestNewServerIpAndPort$14(i, i2);
            }
        });
    }

    public static void onRequestQuickAck(int i, int i2) {
        RequestCallbacks requestCallbacks;
        QuickAckDelegate quickAckDelegate;
        ConnectionsManager connectionsManager = getInstance(i);
        if (connectionsManager == null || (requestCallbacks = connectionsManager.requestCallbacks.get(Integer.valueOf(i2))) == null || (quickAckDelegate = requestCallbacks.onQuickAck) == null) {
            return;
        }
        quickAckDelegate.run();
    }

    public static void onRequestWriteToSocket(int i, int i2) {
        RequestCallbacks requestCallbacks;
        WriteToSocketDelegate writeToSocketDelegate;
        ConnectionsManager connectionsManager = getInstance(i);
        if (connectionsManager == null || (requestCallbacks = connectionsManager.requestCallbacks.get(Integer.valueOf(i2))) == null || (writeToSocketDelegate = requestCallbacks.onWriteToSocket) == null) {
            return;
        }
        writeToSocketDelegate.run();
    }

    public static void onSessionCreated(final int i) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                ConnectionsManager.lambda$onSessionCreated$10(i);
            }
        });
    }

    public static void onUnparsedMessageReceived(long j, final int i, long j2) {
        try {
            NativeByteBuffer nativeByteBufferWrap = NativeByteBuffer.wrap(j);
            nativeByteBufferWrap.reused = true;
            int int32 = nativeByteBufferWrap.readInt32(true);
            final TLObject tLObjectTLdeserialize = TLClassStore.Instance().TLdeserialize(nativeByteBufferWrap, int32, true);
            FileLog.dumpUnparsedMessage(tLObjectTLdeserialize, j2, i);
            if (!(tLObjectTLdeserialize instanceof TLRPC.Updates)) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.d(String.format("java received unknown constructor 0x%x", Integer.valueOf(int32)));
                    return;
                }
                return;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("java received " + tLObjectTLdeserialize);
            }
            KeepAliveJob.finishJob();
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    ConnectionsManager.lambda$onUnparsedMessageReceived$8(i, tLObjectTLdeserialize);
                }
            });
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    public static void onUpdate(final int i) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ConnectionsManager.lambda$onUpdate$9(i);
            }
        });
    }

    public static void onUpdateConfig(long j, final int i) {
        try {
            NativeByteBuffer nativeByteBufferWrap = NativeByteBuffer.wrap(j);
            nativeByteBufferWrap.reused = true;
            final TLRPC.TL_config tL_configTLdeserialize = TLRPC.TL_config.TLdeserialize(nativeByteBufferWrap, nativeByteBufferWrap.readInt32(true), true);
            if (tL_configTLdeserialize != null) {
                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda19
                    @Override // java.lang.Runnable
                    public final void run() {
                        ConnectionsManager.lambda$onUpdateConfig$17(i, tL_configTLdeserialize);
                    }
                });
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0044 A[Catch: Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:5:0x0026, B:7:0x0039, B:14:0x0044, B:17:0x004d, B:12:0x0040), top: B:21:0x0026 }] */
    /* renamed from: sendRequestInternal, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void lambda$sendRequest$2(final TLObject tLObject, final RequestDelegate requestDelegate, final RequestDelegateTimestamp requestDelegateTimestamp, final QuickAckDelegate quickAckDelegate, final WriteToSocketDelegate writeToSocketDelegate, final int i, final int i2, final int i3, final boolean z, final int i4) {
        long jCurrentTimeMillis;
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("send request " + tLObject + " with token = " + i4);
        }
        try {
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLObject.getObjectSize());
            tLObject.serializeToStream(nativeByteBuffer);
            tLObject.freeResources();
            if (!BuildVars.DEBUG_PRIVATE_VERSION || !BuildVars.LOGS_ENABLED) {
                jCurrentTimeMillis = (i3 & 2) != 0 ? System.currentTimeMillis() : 0L;
            }
            final long j = jCurrentTimeMillis;
            listen(i4, new RequestDelegateInternal() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda16
                @Override // org.telegram.tgnet.RequestDelegateInternal
                public final void run(long j2, int i5, String str, int i6, long j3, long j4, int i7) throws Exception {
                    this.f$0.lambda$sendRequestInternal$4(tLObject, i3, j, requestDelegate, requestDelegateTimestamp, quickAckDelegate, writeToSocketDelegate, i, i2, z, i4, j2, i5, str, i6, j3, j4, i7);
                }
            }, quickAckDelegate, writeToSocketDelegate);
            native_sendRequest(this.currentAccount, nativeByteBuffer.address, i, i2, i3, z, i4);
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    public static void setLangCode(String str) {
        String lowerCase = str.replace('_', '-').toLowerCase();
        for (int i = 0; i < 4; i++) {
            native_setLangCode(i, lowerCase);
        }
    }

    public static void setProxySettings(boolean z, String str, int i, String str2, String str3, String str4) {
        String str5;
        String str6;
        String str7;
        int i2;
        String str8;
        int i3;
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        if (str3 == null) {
            str3 = "";
        }
        if (str4 == null) {
            str4 = "";
        }
        for (int i4 = 0; i4 < 4; i4++) {
            if (!z || TextUtils.isEmpty(str)) {
                str5 = "";
                str6 = "";
                str7 = "";
                i2 = 1080;
                str8 = "";
                i3 = i4;
            } else {
                i3 = i4;
                str7 = str;
                i2 = i;
                str8 = str2;
                str5 = str3;
                str6 = str4;
            }
            native_setProxySettings(i3, str7, i2, str8, str5, str6);
            AccountInstance accountInstance = AccountInstance.getInstance(i4);
            if (accountInstance.getUserConfig().isClientActivated()) {
                accountInstance.getMessagesController().checkPromoInfo(true);
            }
        }
    }

    public static void setRegId(String str, int i, String str2) {
        if (!TextUtils.isEmpty(str) && i == 13) {
            str = "huawei://" + str;
        }
        if (!TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            str2 = str;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = "__" + (i == 2 ? "FIREBASE" : "HUAWEI") + "_GENERATING_SINCE_" + getInstance(0).getCurrentTime() + "__";
            SharedConfig.pushStringStatus = str2;
        }
        for (int i2 = 0; i2 < 4; i2++) {
            native_setRegId(i2, str2);
        }
    }

    public static void setSystemLangCode(String str) {
        String lowerCase = str.replace('_', '-').toLowerCase();
        for (int i = 0; i < 4; i++) {
            native_setSystemLangCode(i, lowerCase);
        }
    }

    public void applyDatacenterAddress(int i, String str, int i2) {
        native_applyDatacenterAddress(this.currentAccount, i, str, i2);
    }

    public void bindRequestToGuid(int i, int i2) {
        if (i2 == 0) {
            return;
        }
        native_bindRequestToGuid(this.currentAccount, i, i2);
    }

    public void cancelRequest(int i, boolean z) {
        cancelRequest(i, z, null);
    }

    public void cancelRequest(final int i, final boolean z, final Runnable runnable) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cancelRequest$6(runnable, i, z);
            }
        });
    }

    public void cancelRequestsForGuid(final int i) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cancelRequestsForGuid$7(i);
            }
        });
    }

    public void checkConnection() {
        byte ipStrategy = getIpStrategy();
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("selected ip strategy " + ((int) ipStrategy));
        }
        native_setIpStrategy(this.currentAccount, ipStrategy);
        native_setNetworkAvailable(this.currentAccount, ApplicationLoader.isNetworkOnline(), ApplicationLoader.getCurrentNetworkType(), ApplicationLoader.isConnectionSlow());
    }

    public long checkProxy(String str, int i, String str2, String str3, String str4, RequestTimeDelegate requestTimeDelegate) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        return native_checkProxy(this.currentAccount, str == null ? "" : str, i, str2 == null ? "" : str2, str3 == null ? "" : str3, str4 == null ? "" : str4, requestTimeDelegate);
    }

    public void cleanup(boolean z) {
        native_cleanUp(this.currentAccount, z);
    }

    public void discardConnection(final int i, final int i2) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$discardConnection$0(i, i2);
            }
        });
    }

    public void failNotRunningRequest(final int i) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$failNotRunningRequest$1(i);
            }
        });
    }

    public int getConnectionState() {
        int i = this.connectionState;
        if (i == 3 && this.isUpdating) {
            return 5;
        }
        return i;
    }

    public int getCurrentDatacenterId() {
        return native_getCurrentDatacenterId(this.currentAccount);
    }

    public int getCurrentTime() {
        return native_getCurrentTime(this.currentAccount);
    }

    public long getCurrentTimeMillis() {
        return native_getCurrentTimeMillis(this.currentAccount);
    }

    protected byte getIpStrategy() {
        if (BuildVars.LOGS_ENABLED) {
            try {
                Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                while (networkInterfaces.hasMoreElements()) {
                    NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                    if (networkInterfaceNextElement.isUp() && !networkInterfaceNextElement.isLoopback() && !networkInterfaceNextElement.getInterfaceAddresses().isEmpty()) {
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.d("valid interface: " + networkInterfaceNextElement);
                        }
                        List<InterfaceAddress> interfaceAddresses = networkInterfaceNextElement.getInterfaceAddresses();
                        for (int i = 0; i < interfaceAddresses.size(); i++) {
                            InetAddress address = interfaceAddresses.get(i).getAddress();
                            if (BuildVars.LOGS_ENABLED) {
                                FileLog.d("address: " + address.getHostAddress());
                            }
                            if (!address.isLinkLocalAddress() && !address.isLoopbackAddress() && !address.isMulticastAddress() && BuildVars.LOGS_ENABLED) {
                                FileLog.d("address is good");
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                FileLog.e(th);
            }
        }
        try {
            Enumeration<NetworkInterface> networkInterfaces2 = NetworkInterface.getNetworkInterfaces();
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            while (networkInterfaces2.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement2 = networkInterfaces2.nextElement();
                if (networkInterfaceNextElement2.isUp() && !networkInterfaceNextElement2.isLoopback()) {
                    List<InterfaceAddress> interfaceAddresses2 = networkInterfaceNextElement2.getInterfaceAddresses();
                    for (int i2 = 0; i2 < interfaceAddresses2.size(); i2++) {
                        InetAddress address2 = interfaceAddresses2.get(i2).getAddress();
                        if (!address2.isLinkLocalAddress() && !address2.isLoopbackAddress() && !address2.isMulticastAddress()) {
                            if (address2 instanceof Inet6Address) {
                                z = true;
                            } else if (address2 instanceof Inet4Address) {
                                if (address2.getHostAddress().startsWith("192.0.0.")) {
                                    z2 = true;
                                } else {
                                    z3 = true;
                                }
                            }
                        }
                    }
                }
            }
            if (z) {
                if (this.forceTryIpV6) {
                    return (byte) 1;
                }
                if (z2) {
                    return (byte) 2;
                }
                if (!z3) {
                    return (byte) 1;
                }
            }
        } catch (Throwable th2) {
            FileLog.e(th2);
        }
        return (byte) 0;
    }

    public long getPauseTime() {
        return this.lastPauseTime;
    }

    public int getTimeDifference() {
        return native_getTimeDifference(this.currentAccount);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:0|2|(1:6)|(2:35|7)|(8:9|(2:11|(2:33|13))(1:17)|(1:21)(1:22)|31|23|(1:27)(1:28)|29|30)(1:18)|14|(0)(0)|31|23|(0)(0)|29|30) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0082, code lost:
    
        r1 = "";
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void init(int i, int i2, int i3, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i4, long j, boolean z, boolean z2) {
        String initiatingPackageName;
        Context context;
        String installerPackageName;
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0);
        String string = sharedPreferences.getString("proxy_ip", "");
        String string2 = sharedPreferences.getString("proxy_user", "");
        String string3 = sharedPreferences.getString("proxy_pass", "");
        String string4 = sharedPreferences.getString("proxy_secret", "");
        int i5 = sharedPreferences.getInt("proxy_port", 1080);
        if (sharedPreferences.getBoolean("proxy_enabled", false) && !TextUtils.isEmpty(string)) {
            native_setProxySettings(this.currentAccount, string, i5, string2, string3, string4);
        }
        try {
            context = ApplicationLoader.applicationContext;
        } catch (Throwable unused) {
        }
        if (Build.VERSION.SDK_INT >= 30) {
            InstallSourceInfo installSourceInfo = context.getPackageManager().getInstallSourceInfo(context.getPackageName());
            if (installSourceInfo != null) {
                initiatingPackageName = installSourceInfo.getInitiatingPackageName();
                if (initiatingPackageName == null) {
                    try {
                        installerPackageName = installSourceInfo.getInstallingPackageName();
                    } catch (Throwable unused2) {
                    }
                }
            } else {
                initiatingPackageName = "";
            }
            String str10 = initiatingPackageName != null ? "" : initiatingPackageName;
            String packageName = ApplicationLoader.applicationContext.getPackageName();
            native_init(this.currentAccount, i, i2, i3, str, str2, str3, str4, str5, str6, str7, str8, str9, str10, packageName != null ? "" : packageName, i4, j, z, z2, ApplicationLoader.isNetworkOnline(), ApplicationLoader.getCurrentNetworkType(), SharedConfig.measureDevicePerformanceClass());
            checkConnection();
        }
        installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        initiatingPackageName = installerPackageName;
        if (initiatingPackageName != null) {
        }
        String packageName2 = ApplicationLoader.applicationContext.getPackageName();
        native_init(this.currentAccount, i, i2, i3, str, str2, str3, str4, str5, str6, str7, str8, str9, str10, packageName2 != null ? "" : packageName2, i4, j, z, z2, ApplicationLoader.isNetworkOnline(), ApplicationLoader.getCurrentNetworkType(), SharedConfig.measureDevicePerformanceClass());
        checkConnection();
    }

    public boolean isPushConnectionEnabled() {
        boolean z;
        SharedPreferences globalNotificationsSettings = MessagesController.getGlobalNotificationsSettings();
        String str = "pushConnection";
        if (globalNotificationsSettings.contains("pushConnection")) {
            z = true;
        } else {
            globalNotificationsSettings = MessagesController.getMainSettings(UserConfig.selectedAccount);
            str = "backgroundConnection";
            z = false;
        }
        return globalNotificationsSettings.getBoolean(str, z);
    }

    public boolean isTestBackend() {
        return native_isTestBackend(this.currentAccount) != 0;
    }

    public void resumeNetworkMaybe() {
        native_resumeNetwork(this.currentAccount, true);
    }

    public int sendRequest(TLObject tLObject, RequestDelegate requestDelegate) {
        return sendRequest(tLObject, requestDelegate, (QuickAckDelegate) null, 0);
    }

    public int sendRequest(TLObject tLObject, RequestDelegate requestDelegate, int i) {
        return sendRequest(tLObject, requestDelegate, null, null, null, i, Integer.MAX_VALUE, 1, true);
    }

    public int sendRequest(TLObject tLObject, RequestDelegate requestDelegate, int i, int i2) {
        return sendRequest(tLObject, requestDelegate, null, null, null, i, Integer.MAX_VALUE, i2, true);
    }

    public int sendRequest(TLObject tLObject, RequestDelegate requestDelegate, QuickAckDelegate quickAckDelegate, int i) {
        return sendRequest(tLObject, requestDelegate, null, quickAckDelegate, null, i, Integer.MAX_VALUE, 1, true);
    }

    public int sendRequest(TLObject tLObject, RequestDelegate requestDelegate, QuickAckDelegate quickAckDelegate, WriteToSocketDelegate writeToSocketDelegate, int i, int i2, int i3, boolean z) {
        return sendRequest(tLObject, requestDelegate, null, quickAckDelegate, writeToSocketDelegate, i, i2, i3, z);
    }

    public int sendRequest(final TLObject tLObject, final RequestDelegate requestDelegate, final RequestDelegateTimestamp requestDelegateTimestamp, final QuickAckDelegate quickAckDelegate, final WriteToSocketDelegate writeToSocketDelegate, final int i, final int i2, final int i3, final boolean z) {
        final int andIncrement = this.lastRequestToken.getAndIncrement();
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendRequest$2(tLObject, requestDelegate, requestDelegateTimestamp, quickAckDelegate, writeToSocketDelegate, i, i2, i3, z, andIncrement);
            }
        });
        return andIncrement;
    }

    public int sendRequest(TLObject tLObject, RequestDelegateTimestamp requestDelegateTimestamp, int i, int i2, int i3) {
        return sendRequest(tLObject, null, requestDelegateTimestamp, null, null, i, i3, i2, true);
    }

    public int sendRequestSync(TLObject tLObject, RequestDelegate requestDelegate, QuickAckDelegate quickAckDelegate, WriteToSocketDelegate writeToSocketDelegate, int i, int i2, int i3, boolean z) {
        int andIncrement = this.lastRequestToken.getAndIncrement();
        lambda$sendRequest$2(tLObject, requestDelegate, null, quickAckDelegate, writeToSocketDelegate, i, i2, i3, z, andIncrement);
        return andIncrement;
    }

    public void setAppPaused(boolean z, boolean z2) {
        if (!z2) {
            this.appPaused = z;
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("app paused = " + z);
            }
            this.appResumeCount = z ? this.appResumeCount - 1 : this.appResumeCount + 1;
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("app resume count " + this.appResumeCount);
            }
            if (this.appResumeCount < 0) {
                this.appResumeCount = 0;
            }
        }
        if (this.appResumeCount == 0) {
            if (this.lastPauseTime == 0) {
                this.lastPauseTime = System.currentTimeMillis();
            }
            native_pauseNetwork(this.currentAccount);
        } else {
            if (this.appPaused) {
                return;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("reset app pause time");
            }
            if (this.lastPauseTime != 0 && System.currentTimeMillis() - this.lastPauseTime > 5000) {
                getContactsController().checkContacts();
            }
            this.lastPauseTime = 0L;
            native_resumeNetwork(this.currentAccount, false);
        }
    }

    public void setForceTryIpV6(boolean z) {
        if (this.forceTryIpV6 != z) {
            this.forceTryIpV6 = z;
            checkConnection();
        }
    }

    public void setIsUpdating(final boolean z) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setIsUpdating$18(z);
            }
        });
    }

    public void setPushConnectionEnabled(boolean z) {
        native_setPushConnectionEnabled(this.currentAccount, z);
    }

    public void setUserId(long j) {
        native_setUserId(this.currentAccount, j);
    }

    public void switchBackend(boolean z) {
        MessagesController.getGlobalMainSettings().edit().remove("language_showed2").commit();
        native_switchBackend(this.currentAccount, z);
    }

    public void updateDcSettings() {
        native_updateDcSettings(this.currentAccount);
    }
}
