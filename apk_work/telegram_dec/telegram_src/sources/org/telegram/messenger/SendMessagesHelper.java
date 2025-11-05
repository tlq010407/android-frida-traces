package org.telegram.messenger;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.Spannable;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseArray;
import android.webkit.MimeTypeMap;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.collection.LongSparseArray;
import androidx.core.view.inputmethod.InputContentInfoCompat;
import com.huawei.hms.actions.SearchIntents;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.json.JSONObject;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.audioinfo.AudioInfo;
import org.telegram.messenger.support.SparseLongArray;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.QuickAckDelegate;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account$Password;
import org.telegram.tgnet.tl.TL_account$getPassword;
import org.telegram.tgnet.tl.TL_stories$StoryItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Business.QuickRepliesController;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AnimatedFileDrawable;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Point;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.Components.Reactions.ReactionsUtils;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PaymentFormActivity;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.TwoStepVerificationActivity;
import org.telegram.ui.TwoStepVerificationSetupActivity;
import org.telegram.ui.bots.BotWebViewSheet;
import org.webrtc.MediaStreamTrack;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class SendMessagesHelper extends BaseController implements NotificationCenter.NotificationCenterDelegate {
    private static final int ERROR_TYPE_FILE_TOO_LARGE = 2;
    private static final int ERROR_TYPE_UNSUPPORTED = 1;
    private static volatile SendMessagesHelper[] Instance = null;
    public static final int MEDIA_TYPE_DICE = 11;
    public static final int MEDIA_TYPE_STORY = 12;
    private static DispatchQueue mediaSendQueue = new DispatchQueue("mediaSendQueue");
    private static ThreadPoolExecutor mediaSendThreadPool;
    private final HashMap<String, ArrayList<DelayedMessage>> delayedMessages;
    private final SparseArray<TLRPC.Message> editingMessages;
    private final HashMap<String, ImportingHistory> importingHistoryFiles;
    private final LongSparseArray importingHistoryMap;
    private final HashMap<String, ImportingStickers> importingStickersFiles;
    private final HashMap<String, ImportingStickers> importingStickersMap;
    private LocationProvider locationProvider;
    private final SparseArray<TLRPC.Message> sendingMessages;
    private final LongSparseArray sendingMessagesIdDialogs;
    private final SparseArray<MessageObject> unsentMessages;
    private final SparseArray<TLRPC.Message> uploadMessages;
    private final LongSparseArray uploadingMessagesIdDialogs;
    private final LongSparseArray voteSendTime;
    private final HashMap<String, Boolean> waitingForCallback;
    private final HashMap<String, List<String>> waitingForCallbackMap;
    private final HashMap<String, MessageObject> waitingForLocation;
    private final HashMap<Integer, Boolean> waitingForTodoUpdate;
    private final HashMap<String, byte[]> waitingForVote;

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    protected class DelayedMessage {
        public TLRPC.InputFile coverFile;
        public TLRPC.PhotoSize coverPhotoSize;
        public TLRPC.EncryptedChat encryptedChat;
        public HashMap<Object, Object> extraHashMap;
        public int finalGroupMessage;
        public boolean forceReupload;
        public long groupId;
        public String httpLocation;
        public ArrayList<String> httpLocations;
        public ArrayList<TLRPC.InputMedia> inputMedias;
        public TLRPC.InputMedia inputUploadMedia;
        public TLObject locationParent;
        public ArrayList<TLRPC.PhotoSize> locations;
        public ArrayList<MessageObject> messageObjects;
        public ArrayList<TLRPC.Message> messages;
        public MessageObject obj;
        public String originalPath;
        public ArrayList<String> originalPaths;
        public boolean paidMedia;
        public Object parentObject;
        public ArrayList<Object> parentObjects;
        public long peer;
        public boolean performCoverUpload;
        public boolean performMediaUpload;
        public TLRPC.PhotoSize photoSize;
        ArrayList<DelayedMessageSendAfterRequest> requests;
        private boolean retriedToSend;
        public boolean[] retriedToSendArray;
        public boolean scheduled;
        public TLObject sendEncryptedRequest;
        public TLObject sendRequest;
        public int topMessageId;
        public int type;
        public VideoEditedInfo videoEditedInfo;
        public ArrayList<VideoEditedInfo> videoEditedInfos;

        public DelayedMessage(long j) {
            this.peer = j;
        }

        public void addDelayedRequest(TLObject tLObject, ArrayList<MessageObject> arrayList, ArrayList<String> arrayList2, ArrayList<Object> arrayList3, DelayedMessage delayedMessage, boolean z) {
            DelayedMessageSendAfterRequest delayedMessageSendAfterRequest = SendMessagesHelper.this.new DelayedMessageSendAfterRequest();
            delayedMessageSendAfterRequest.request = tLObject;
            delayedMessageSendAfterRequest.msgObjs = arrayList;
            delayedMessageSendAfterRequest.originalPaths = arrayList2;
            delayedMessageSendAfterRequest.delayedMessage = delayedMessage;
            delayedMessageSendAfterRequest.parentObjects = arrayList3;
            delayedMessageSendAfterRequest.scheduled = z;
            if (this.requests == null) {
                this.requests = new ArrayList<>();
            }
            this.requests.add(delayedMessageSendAfterRequest);
        }

        public void addDelayedRequest(TLObject tLObject, MessageObject messageObject, String str, Object obj, DelayedMessage delayedMessage, boolean z) {
            DelayedMessageSendAfterRequest delayedMessageSendAfterRequest = SendMessagesHelper.this.new DelayedMessageSendAfterRequest();
            delayedMessageSendAfterRequest.request = tLObject;
            delayedMessageSendAfterRequest.msgObj = messageObject;
            delayedMessageSendAfterRequest.originalPath = str;
            delayedMessageSendAfterRequest.delayedMessage = delayedMessage;
            delayedMessageSendAfterRequest.parentObject = obj;
            delayedMessageSendAfterRequest.scheduled = z;
            if (this.requests == null) {
                this.requests = new ArrayList<>();
            }
            this.requests.add(delayedMessageSendAfterRequest);
        }

        public boolean getRetriedToSend(int i) {
            boolean[] zArr;
            return (i < 0 || (zArr = this.retriedToSendArray) == null || i >= zArr.length) ? this.retriedToSend : zArr[i];
        }

        public void initForGroup(long j) {
            this.type = 4;
            this.groupId = j;
            this.messageObjects = new ArrayList<>();
            this.messages = new ArrayList<>();
            this.inputMedias = new ArrayList<>();
            this.originalPaths = new ArrayList<>();
            this.parentObjects = new ArrayList<>();
            this.extraHashMap = new HashMap<>();
            this.locations = new ArrayList<>();
            this.httpLocations = new ArrayList<>();
            this.videoEditedInfos = new ArrayList<>();
        }

        public void markAsError() {
            if (this.type == 4) {
                for (int i = 0; i < this.messageObjects.size(); i++) {
                    MessageObject messageObject = this.messageObjects.get(i);
                    SendMessagesHelper.this.getMessagesStorage().markMessageAsSendError(messageObject.messageOwner, messageObject.scheduled ? 1 : 0);
                    TLRPC.Message message = messageObject.messageOwner;
                    message.send_state = 2;
                    message.errorAllowedPriceStars = 0L;
                    message.errorNewPriceStars = 0L;
                    SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageSendError, Integer.valueOf(messageObject.getId()));
                    SendMessagesHelper.this.processSentMessage(messageObject.getId());
                    SendMessagesHelper.this.removeFromUploadingMessages(messageObject.getId(), this.scheduled);
                }
                SendMessagesHelper.this.delayedMessages.remove("group_" + this.groupId);
            } else {
                MessagesStorage messagesStorage = SendMessagesHelper.this.getMessagesStorage();
                MessageObject messageObject2 = this.obj;
                messagesStorage.markMessageAsSendError(messageObject2.messageOwner, messageObject2.scheduled ? 1 : 0);
                TLRPC.Message message2 = this.obj.messageOwner;
                message2.send_state = 2;
                message2.errorAllowedPriceStars = 0L;
                message2.errorNewPriceStars = 0L;
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageSendError, Integer.valueOf(this.obj.getId()));
                SendMessagesHelper.this.processSentMessage(this.obj.getId());
                SendMessagesHelper.this.removeFromUploadingMessages(this.obj.getId(), this.scheduled);
            }
            sendDelayedRequests();
        }

        public void sendDelayedRequests() {
            TLObject tLObject;
            SendMessagesHelper sendMessagesHelper;
            ArrayList<DelayedMessageSendAfterRequest> arrayList = this.requests;
            if (arrayList != null) {
                int i = this.type;
                if (i == 4 || i == 0) {
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        DelayedMessageSendAfterRequest delayedMessageSendAfterRequest = this.requests.get(i2);
                        TLObject tLObject2 = delayedMessageSendAfterRequest.request;
                        if (tLObject2 instanceof TLRPC.TL_messages_sendEncryptedMultiMedia) {
                            SendMessagesHelper.this.getSecretChatHelper().performSendEncryptedRequest((TLRPC.TL_messages_sendEncryptedMultiMedia) delayedMessageSendAfterRequest.request, this);
                        } else {
                            if (tLObject2 instanceof TLRPC.TL_messages_sendMultiMedia) {
                                sendMessagesHelper = SendMessagesHelper.this;
                                tLObject = (TLRPC.TL_messages_sendMultiMedia) tLObject2;
                            } else {
                                if (tLObject2 instanceof TLRPC.TL_messages_sendMedia) {
                                    TLRPC.TL_messages_sendMedia tL_messages_sendMedia = (TLRPC.TL_messages_sendMedia) tLObject2;
                                    if (tL_messages_sendMedia.media instanceof TLRPC.TL_inputMediaPaidMedia) {
                                        sendMessagesHelper = SendMessagesHelper.this;
                                        tLObject = tL_messages_sendMedia;
                                    }
                                }
                                SendMessagesHelper.this.performSendMessageRequest(tLObject2, delayedMessageSendAfterRequest.msgObj, delayedMessageSendAfterRequest.originalPath, delayedMessageSendAfterRequest.delayedMessage, delayedMessageSendAfterRequest.parentObject, null, delayedMessageSendAfterRequest.scheduled);
                            }
                            sendMessagesHelper.lambda$performSendMessageRequestMulti$50(tLObject, delayedMessageSendAfterRequest.msgObjs, delayedMessageSendAfterRequest.originalPaths, delayedMessageSendAfterRequest.parentObjects, delayedMessageSendAfterRequest.delayedMessage, delayedMessageSendAfterRequest.scheduled);
                        }
                    }
                    this.requests = null;
                }
            }
        }

        public void setRetriedToSend(int i, boolean z) {
            if (i < 0) {
                this.retriedToSend = z;
                return;
            }
            if (this.retriedToSendArray == null) {
                this.retriedToSendArray = new boolean[this.messageObjects.size()];
            }
            this.retriedToSendArray[i] = z;
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    protected class DelayedMessageSendAfterRequest {
        public DelayedMessage delayedMessage;
        public MessageObject msgObj;
        public ArrayList<MessageObject> msgObjs;
        public String originalPath;
        public ArrayList<String> originalPaths;
        public Object parentObject;
        public ArrayList<Object> parentObjects;
        public TLObject request;
        public boolean scheduled;

        protected DelayedMessageSendAfterRequest() {
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public class ImportingHistory {
        public long dialogId;
        public double estimatedUploadSpeed;
        public String historyPath;
        public long importId;
        private long lastUploadSize;
        private long lastUploadTime;
        public TLRPC.InputPeer peer;
        public long totalSize;
        public int uploadProgress;
        public long uploadedSize;
        public ArrayList<Uri> mediaPaths = new ArrayList<>();
        public HashSet<String> uploadSet = new HashSet<>();
        public HashMap<String, Float> uploadProgresses = new HashMap<>();
        public HashMap<String, Long> uploadSize = new HashMap<>();
        public ArrayList<String> uploadMedia = new ArrayList<>();
        public int timeUntilFinish = Integer.MAX_VALUE;

        /* renamed from: org.telegram.messenger.SendMessagesHelper$ImportingHistory$1, reason: invalid class name */
        class AnonymousClass1 implements RequestDelegate {
            final /* synthetic */ TLRPC.TL_messages_initHistoryImport val$req;

            AnonymousClass1(TLRPC.TL_messages_initHistoryImport tL_messages_initHistoryImport) {
                this.val$req = tL_messages_initHistoryImport;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(TLObject tLObject, TLRPC.TL_messages_initHistoryImport tL_messages_initHistoryImport, TLRPC.TL_error tL_error) {
                if (!(tLObject instanceof TLRPC.TL_messages_historyImport)) {
                    SendMessagesHelper.this.importingHistoryMap.remove(ImportingHistory.this.dialogId);
                    SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId), tL_messages_initHistoryImport, tL_error);
                    return;
                }
                ImportingHistory importingHistory = ImportingHistory.this;
                importingHistory.importId = ((TLRPC.TL_messages_historyImport) tLObject).id;
                importingHistory.uploadSet.remove(importingHistory.historyPath);
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId));
                if (ImportingHistory.this.uploadSet.isEmpty()) {
                    ImportingHistory.this.startImport();
                }
                ImportingHistory.this.lastUploadTime = SystemClock.elapsedRealtime();
                int size = ImportingHistory.this.uploadMedia.size();
                for (int i = 0; i < size; i++) {
                    SendMessagesHelper.this.getFileLoader().uploadFile(ImportingHistory.this.uploadMedia.get(i), false, true, ConnectionsManager.FileTypeFile);
                }
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(final TLObject tLObject, final TLRPC.TL_error tL_error) {
                final TLRPC.TL_messages_initHistoryImport tL_messages_initHistoryImport = this.val$req;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingHistory$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$0(tLObject, tL_messages_initHistoryImport, tL_error);
                    }
                });
            }
        }

        /* renamed from: org.telegram.messenger.SendMessagesHelper$ImportingHistory$2, reason: invalid class name */
        class AnonymousClass2 implements RequestDelegate {
            final /* synthetic */ String val$path;

            AnonymousClass2(String str) {
                this.val$path = str;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(String str) {
                ImportingHistory.this.uploadSet.remove(str);
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId));
                if (ImportingHistory.this.uploadSet.isEmpty()) {
                    ImportingHistory.this.startImport();
                }
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                final String str = this.val$path;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingHistory$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$0(str);
                    }
                });
            }
        }

        /* renamed from: org.telegram.messenger.SendMessagesHelper$ImportingHistory$3, reason: invalid class name */
        class AnonymousClass3 implements RequestDelegate {
            final /* synthetic */ TLRPC.TL_messages_startHistoryImport val$req;

            AnonymousClass3(TLRPC.TL_messages_startHistoryImport tL_messages_startHistoryImport) {
                this.val$req = tL_messages_startHistoryImport;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(TLRPC.TL_error tL_error, TLRPC.TL_messages_startHistoryImport tL_messages_startHistoryImport) {
                SendMessagesHelper.this.importingHistoryMap.remove(ImportingHistory.this.dialogId);
                if (tL_error == null) {
                    SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId));
                } else {
                    SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId), tL_messages_startHistoryImport, tL_error);
                }
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(TLObject tLObject, final TLRPC.TL_error tL_error) {
                final TLRPC.TL_messages_startHistoryImport tL_messages_startHistoryImport = this.val$req;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingHistory$3$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$0(tL_error, tL_messages_startHistoryImport);
                    }
                });
            }
        }

        public ImportingHistory() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addUploadProgress(String str, long j, float f) {
            this.uploadProgresses.put(str, Float.valueOf(f));
            this.uploadSize.put(str, Long.valueOf(j));
            this.uploadedSize = 0L;
            Iterator<Map.Entry<String, Long>> it = this.uploadSize.entrySet().iterator();
            while (it.hasNext()) {
                this.uploadedSize += it.next().getValue().longValue();
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (!str.equals(this.historyPath)) {
                long j2 = this.uploadedSize;
                long j3 = this.lastUploadSize;
                if (j2 != j3) {
                    long j4 = this.lastUploadTime;
                    if (jElapsedRealtime != j4) {
                        double d = jElapsedRealtime - j4;
                        Double.isNaN(d);
                        double d2 = j2 - j3;
                        Double.isNaN(d2);
                        double d3 = d2 / (d / 1000.0d);
                        double d4 = this.estimatedUploadSpeed;
                        if (d4 != 0.0d) {
                            d3 = (d3 * 0.01d) + (d4 * 0.99d);
                        }
                        this.estimatedUploadSpeed = d3;
                        double d5 = (this.totalSize - j2) * 1000;
                        double d6 = this.estimatedUploadSpeed;
                        Double.isNaN(d5);
                        this.timeUntilFinish = (int) (d5 / d6);
                        this.lastUploadSize = j2;
                        this.lastUploadTime = jElapsedRealtime;
                    }
                }
            }
            int uploadedCount = (int) ((getUploadedCount() / getTotalCount()) * 100.0f);
            if (this.uploadProgress != uploadedCount) {
                this.uploadProgress = uploadedCount;
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(this.dialogId));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initImport(TLRPC.InputFile inputFile) {
            TLRPC.TL_messages_initHistoryImport tL_messages_initHistoryImport = new TLRPC.TL_messages_initHistoryImport();
            tL_messages_initHistoryImport.file = inputFile;
            tL_messages_initHistoryImport.media_count = this.mediaPaths.size();
            tL_messages_initHistoryImport.peer = this.peer;
            SendMessagesHelper.this.getConnectionsManager().sendRequest(tL_messages_initHistoryImport, new AnonymousClass1(tL_messages_initHistoryImport), 2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onFileFailedToUpload(String str) {
            if (!str.equals(this.historyPath)) {
                this.uploadSet.remove(str);
                return;
            }
            SendMessagesHelper.this.importingHistoryMap.remove(this.dialogId);
            TLRPC.TL_error tL_error = new TLRPC.TL_error();
            tL_error.code = 400;
            tL_error.text = "IMPORT_UPLOAD_FAILED";
            SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(this.dialogId), new TLRPC.TL_messages_initHistoryImport(), tL_error);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onMediaImport(String str, long j, TLRPC.InputFile inputFile) {
            addUploadProgress(str, j, 1.0f);
            TLRPC.TL_messages_uploadImportedMedia tL_messages_uploadImportedMedia = new TLRPC.TL_messages_uploadImportedMedia();
            tL_messages_uploadImportedMedia.peer = this.peer;
            tL_messages_uploadImportedMedia.import_id = this.importId;
            tL_messages_uploadImportedMedia.file_name = new File(str).getName();
            MimeTypeMap singleton = MimeTypeMap.getSingleton();
            int iLastIndexOf = tL_messages_uploadImportedMedia.file_name.lastIndexOf(46);
            String lowerCase = iLastIndexOf != -1 ? tL_messages_uploadImportedMedia.file_name.substring(iLastIndexOf + 1).toLowerCase() : "txt";
            String mimeTypeFromExtension = singleton.getMimeTypeFromExtension(lowerCase);
            if (mimeTypeFromExtension == null) {
                mimeTypeFromExtension = "opus".equals(lowerCase) ? "audio/opus" : "webp".equals(lowerCase) ? "image/webp" : "text/plain";
            }
            if (mimeTypeFromExtension.equals("image/jpg") || mimeTypeFromExtension.equals("image/jpeg")) {
                TLRPC.TL_inputMediaUploadedPhoto tL_inputMediaUploadedPhoto = new TLRPC.TL_inputMediaUploadedPhoto();
                tL_inputMediaUploadedPhoto.file = inputFile;
                tL_messages_uploadImportedMedia.media = tL_inputMediaUploadedPhoto;
            } else {
                TLRPC.TL_inputMediaUploadedDocument tL_inputMediaUploadedDocument = new TLRPC.TL_inputMediaUploadedDocument();
                tL_inputMediaUploadedDocument.file = inputFile;
                tL_inputMediaUploadedDocument.mime_type = mimeTypeFromExtension;
                tL_messages_uploadImportedMedia.media = tL_inputMediaUploadedDocument;
            }
            SendMessagesHelper.this.getConnectionsManager().sendRequest(tL_messages_uploadImportedMedia, new AnonymousClass2(str), 2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void startImport() {
            TLRPC.TL_messages_startHistoryImport tL_messages_startHistoryImport = new TLRPC.TL_messages_startHistoryImport();
            tL_messages_startHistoryImport.peer = this.peer;
            tL_messages_startHistoryImport.import_id = this.importId;
            SendMessagesHelper.this.getConnectionsManager().sendRequest(tL_messages_startHistoryImport, new AnonymousClass3(tL_messages_startHistoryImport));
        }

        public long getTotalCount() {
            return this.totalSize;
        }

        public long getUploadedCount() {
            return this.uploadedSize;
        }

        public void setImportProgress(int i) {
            if (i == 100) {
                SendMessagesHelper.this.importingHistoryMap.remove(this.dialogId);
            }
            SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(this.dialogId));
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static class ImportingSticker {
        public boolean animated;
        public String emoji;
        public TLRPC.TL_inputStickerSetItem item;
        public String mimeType;
        public String path;
        public boolean validated;
        public VideoEditedInfo videoEditedInfo;

        /* renamed from: org.telegram.messenger.SendMessagesHelper$ImportingSticker$1, reason: invalid class name */
        class AnonymousClass1 implements RequestDelegate {
            final /* synthetic */ Runnable val$onFinish;

            AnonymousClass1(Runnable runnable) {
                this.val$onFinish = runnable;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(TLObject tLObject, Runnable runnable) {
                if (tLObject instanceof TLRPC.TL_messageMediaDocument) {
                    ImportingSticker.this.item = new TLRPC.TL_inputStickerSetItem();
                    ImportingSticker.this.item.document = new TLRPC.TL_inputDocument();
                    ImportingSticker importingSticker = ImportingSticker.this;
                    TLRPC.TL_inputStickerSetItem tL_inputStickerSetItem = importingSticker.item;
                    TLRPC.InputDocument inputDocument = tL_inputStickerSetItem.document;
                    TLRPC.Document document = ((TLRPC.TL_messageMediaDocument) tLObject).document;
                    inputDocument.id = document.id;
                    inputDocument.access_hash = document.access_hash;
                    inputDocument.file_reference = document.file_reference;
                    String str = importingSticker.emoji;
                    if (str == null) {
                        str = "";
                    }
                    tL_inputStickerSetItem.emoji = str;
                    importingSticker.mimeType = document.mime_type;
                } else {
                    ImportingSticker importingSticker2 = ImportingSticker.this;
                    if (importingSticker2.animated) {
                        importingSticker2.mimeType = "application/x-bad-tgsticker";
                    }
                }
                runnable.run();
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(final TLObject tLObject, TLRPC.TL_error tL_error) {
                final Runnable runnable = this.val$onFinish;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingSticker$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$0(tLObject, runnable);
                    }
                });
            }
        }

        public void uploadMedia(int i, TLRPC.InputFile inputFile, Runnable runnable) {
            TLRPC.TL_messages_uploadMedia tL_messages_uploadMedia = new TLRPC.TL_messages_uploadMedia();
            tL_messages_uploadMedia.peer = new TLRPC.TL_inputPeerSelf();
            TLRPC.TL_inputMediaUploadedDocument tL_inputMediaUploadedDocument = new TLRPC.TL_inputMediaUploadedDocument();
            tL_messages_uploadMedia.media = tL_inputMediaUploadedDocument;
            tL_inputMediaUploadedDocument.file = inputFile;
            tL_inputMediaUploadedDocument.mime_type = this.mimeType;
            ConnectionsManager.getInstance(i).sendRequest(tL_messages_uploadMedia, new AnonymousClass1(runnable), 2);
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public class ImportingStickers {
        public double estimatedUploadSpeed;
        private long lastUploadSize;
        private long lastUploadTime;
        public String shortName;
        public String software;
        public String title;
        public long totalSize;
        public int uploadProgress;
        public long uploadedSize;
        public HashMap<String, ImportingSticker> uploadSet = new HashMap<>();
        public HashMap<String, Float> uploadProgresses = new HashMap<>();
        public HashMap<String, Long> uploadSize = new HashMap<>();
        public ArrayList<ImportingSticker> uploadMedia = new ArrayList<>();
        public int timeUntilFinish = Integer.MAX_VALUE;

        /* renamed from: org.telegram.messenger.SendMessagesHelper$ImportingStickers$1, reason: invalid class name */
        class AnonymousClass1 implements RequestDelegate {
            final /* synthetic */ TLRPC.TL_stickers_createStickerSet val$req;

            AnonymousClass1(TLRPC.TL_stickers_createStickerSet tL_stickers_createStickerSet) {
                this.val$req = tL_stickers_createStickerSet;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(TLRPC.TL_error tL_error, TLRPC.TL_stickers_createStickerSet tL_stickers_createStickerSet, TLObject tLObject) {
                SendMessagesHelper.this.importingStickersMap.remove(ImportingStickers.this.shortName);
                if (tL_error == null) {
                    SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersImportProgressChanged, ImportingStickers.this.shortName);
                } else {
                    SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersImportProgressChanged, ImportingStickers.this.shortName, tL_stickers_createStickerSet, tL_error);
                }
                if (tLObject instanceof TLRPC.TL_messages_stickerSet) {
                    NotificationCenter notificationCenter = SendMessagesHelper.this.getNotificationCenter();
                    int i = NotificationCenter.stickersImportComplete;
                    if (notificationCenter.hasObservers(i)) {
                        SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(i, tLObject);
                    } else {
                        SendMessagesHelper.this.getMediaDataController().toggleStickerSet(null, tLObject, 2, null, false, false);
                    }
                }
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(final TLObject tLObject, final TLRPC.TL_error tL_error) {
                final TLRPC.TL_stickers_createStickerSet tL_stickers_createStickerSet = this.val$req;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingStickers$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$0(tL_error, tL_stickers_createStickerSet, tLObject);
                    }
                });
            }
        }

        public ImportingStickers() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addUploadProgress(String str, long j, float f) {
            this.uploadProgresses.put(str, Float.valueOf(f));
            this.uploadSize.put(str, Long.valueOf(j));
            this.uploadedSize = 0L;
            Iterator<Map.Entry<String, Long>> it = this.uploadSize.entrySet().iterator();
            while (it.hasNext()) {
                this.uploadedSize += it.next().getValue().longValue();
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = this.uploadedSize;
            long j3 = this.lastUploadSize;
            if (j2 != j3) {
                long j4 = this.lastUploadTime;
                if (jElapsedRealtime != j4) {
                    double d = jElapsedRealtime - j4;
                    Double.isNaN(d);
                    double d2 = j2 - j3;
                    Double.isNaN(d2);
                    double d3 = d2 / (d / 1000.0d);
                    double d4 = this.estimatedUploadSpeed;
                    if (d4 != 0.0d) {
                        d3 = (d3 * 0.01d) + (d4 * 0.99d);
                    }
                    this.estimatedUploadSpeed = d3;
                    double d5 = (this.totalSize - j2) * 1000;
                    double d6 = this.estimatedUploadSpeed;
                    Double.isNaN(d5);
                    this.timeUntilFinish = (int) (d5 / d6);
                    this.lastUploadSize = j2;
                    this.lastUploadTime = jElapsedRealtime;
                }
            }
            int uploadedCount = (int) ((getUploadedCount() / getTotalCount()) * 100.0f);
            if (this.uploadProgress != uploadedCount) {
                this.uploadProgress = uploadedCount;
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersImportProgressChanged, this.shortName);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initImport() {
            SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersImportProgressChanged, this.shortName);
            this.lastUploadTime = SystemClock.elapsedRealtime();
            int size = this.uploadMedia.size();
            for (int i = 0; i < size; i++) {
                SendMessagesHelper.this.getFileLoader().uploadFile(this.uploadMedia.get(i).path, false, true, ConnectionsManager.FileTypeFile);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMediaImport$0(String str) {
            this.uploadSet.remove(str);
            SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersImportProgressChanged, this.shortName);
            if (this.uploadSet.isEmpty()) {
                startImport();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onFileFailedToUpload(String str) {
            ImportingSticker importingStickerRemove = this.uploadSet.remove(str);
            if (importingStickerRemove != null) {
                this.uploadMedia.remove(importingStickerRemove);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onMediaImport(final String str, long j, TLRPC.InputFile inputFile) {
            addUploadProgress(str, j, 1.0f);
            ImportingSticker importingSticker = this.uploadSet.get(str);
            if (importingSticker == null) {
                return;
            }
            importingSticker.uploadMedia(SendMessagesHelper.this.currentAccount, inputFile, new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingStickers$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onMediaImport$0(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void startImport() {
            TLRPC.TL_stickers_createStickerSet tL_stickers_createStickerSet = new TLRPC.TL_stickers_createStickerSet();
            tL_stickers_createStickerSet.user_id = new TLRPC.TL_inputUserSelf();
            tL_stickers_createStickerSet.title = this.title;
            tL_stickers_createStickerSet.short_name = this.shortName;
            String str = this.software;
            if (str != null) {
                tL_stickers_createStickerSet.software = str;
                tL_stickers_createStickerSet.flags |= 8;
            }
            int size = this.uploadMedia.size();
            for (int i = 0; i < size; i++) {
                TLRPC.TL_inputStickerSetItem tL_inputStickerSetItem = this.uploadMedia.get(i).item;
                if (tL_inputStickerSetItem != null) {
                    tL_stickers_createStickerSet.stickers.add(tL_inputStickerSetItem);
                }
            }
            SendMessagesHelper.this.getConnectionsManager().sendRequest(tL_stickers_createStickerSet, new AnonymousClass1(tL_stickers_createStickerSet));
        }

        public long getTotalCount() {
            return this.totalSize;
        }

        public long getUploadedCount() {
            return this.uploadedSize;
        }

        public void setImportProgress(int i) {
            if (i == 100) {
                SendMessagesHelper.this.importingStickersMap.remove(this.shortName);
            }
            SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersImportProgressChanged, this.shortName);
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static class LocationProvider {
        private LocationProviderDelegate delegate;
        private GpsLocationListener gpsLocationListener;
        private Location lastKnownLocation;
        private LocationManager locationManager;
        private Runnable locationQueryCancelRunnable;
        private GpsLocationListener networkLocationListener;

        private class GpsLocationListener implements LocationListener {
            private GpsLocationListener() {
            }

            @Override // android.location.LocationListener
            public void onLocationChanged(Location location) {
                if (location == null || LocationProvider.this.locationQueryCancelRunnable == null) {
                    return;
                }
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.d("found location " + location);
                }
                LocationProvider.this.lastKnownLocation = location;
                if (location.getAccuracy() < 100.0f) {
                    if (LocationProvider.this.delegate != null) {
                        LocationProvider.this.delegate.onLocationAcquired(location);
                    }
                    if (LocationProvider.this.locationQueryCancelRunnable != null) {
                        AndroidUtilities.cancelRunOnUIThread(LocationProvider.this.locationQueryCancelRunnable);
                    }
                    LocationProvider.this.cleanup();
                }
            }

            @Override // android.location.LocationListener
            public void onProviderDisabled(String str) {
            }

            @Override // android.location.LocationListener
            public void onProviderEnabled(String str) {
            }

            @Override // android.location.LocationListener
            public void onStatusChanged(String str, int i, Bundle bundle) {
            }
        }

        public interface LocationProviderDelegate {
            void onLocationAcquired(Location location);

            void onUnableLocationAcquire();
        }

        public LocationProvider() {
            this.gpsLocationListener = new GpsLocationListener();
            this.networkLocationListener = new GpsLocationListener();
        }

        public LocationProvider(LocationProviderDelegate locationProviderDelegate) {
            this.gpsLocationListener = new GpsLocationListener();
            this.networkLocationListener = new GpsLocationListener();
            this.delegate = locationProviderDelegate;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cleanup() {
            this.locationManager.removeUpdates(this.gpsLocationListener);
            this.locationManager.removeUpdates(this.networkLocationListener);
            this.lastKnownLocation = null;
            this.locationQueryCancelRunnable = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$0() {
            LocationProviderDelegate locationProviderDelegate = this.delegate;
            if (locationProviderDelegate != null) {
                Location location = this.lastKnownLocation;
                if (location != null) {
                    locationProviderDelegate.onLocationAcquired(location);
                } else {
                    locationProviderDelegate.onUnableLocationAcquire();
                }
            }
            cleanup();
        }

        public void setDelegate(LocationProviderDelegate locationProviderDelegate) {
            this.delegate = locationProviderDelegate;
        }

        public void start() {
            if (this.locationManager == null) {
                this.locationManager = (LocationManager) ApplicationLoader.applicationContext.getSystemService("location");
            }
            try {
                this.locationManager.requestLocationUpdates("gps", 1L, BitmapDescriptorFactory.HUE_RED, this.gpsLocationListener);
            } catch (Exception e) {
                FileLog.e(e);
            }
            try {
                this.locationManager.requestLocationUpdates("network", 1L, BitmapDescriptorFactory.HUE_RED, this.networkLocationListener);
            } catch (Exception e2) {
                FileLog.e(e2);
            }
            try {
                Location lastKnownLocation = this.locationManager.getLastKnownLocation("gps");
                this.lastKnownLocation = lastKnownLocation;
                if (lastKnownLocation == null) {
                    this.lastKnownLocation = this.locationManager.getLastKnownLocation("network");
                }
            } catch (Exception e3) {
                FileLog.e(e3);
            }
            Runnable runnable = this.locationQueryCancelRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$LocationProvider$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$start$0();
                }
            };
            this.locationQueryCancelRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 5000L);
        }

        public void stop() {
            if (this.locationManager == null) {
                return;
            }
            Runnable runnable = this.locationQueryCancelRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            cleanup();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    static class MediaSendPrepareWorker {
        public volatile String parentObject;
        public volatile TLRPC.TL_photo photo;
        public CountDownLatch sync;

        private MediaSendPrepareWorker() {
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static class SendMessageParams {
        public String caption;
        public TLRPC.PhotoSize cover;
        public TLRPC.TL_document document;
        public long effect_id;
        public ArrayList<TLRPC.MessageEntity> entities;
        public TLRPC.TL_game game;
        public boolean hasMediaSpoilers;
        public boolean invert_media;
        public TLRPC.TL_messageMediaInvoice invoice;
        public TLRPC.MessageMedia location;
        public TLRPC.TL_messageMediaWebPage mediaWebPage;
        public String message;
        public long monoForumPeer;
        public boolean notify;
        public HashMap<String, String> params;
        public Object parentObject;
        public String path;
        public long payStars;
        public long peer;
        public TLRPC.TL_photo photo;
        public TLRPC.TL_messageMediaPoll poll;
        public String quick_reply_shortcut;
        public int quick_reply_shortcut_id;
        public TLRPC.ReplyMarkup replyMarkup;
        public ChatActivity.ReplyQuote replyQuote;
        public MessageObject replyToMsg;
        public TL_stories$StoryItem replyToStoryItem;
        public MessageObject replyToTopMsg;
        public MessageObject retryMessageObject;
        public int scheduleDate;
        public boolean searchLinks = true;
        public MessageObject.SendAnimationData sendAnimationData;
        public boolean sendingHighQuality;
        public TL_stories$StoryItem sendingStory;
        public long stars;
        public MessageSuggestionParams suggestionParams;
        public TLRPC.TL_messageMediaToDo todo;
        public int ttl;
        public boolean updateStickersOrder;
        public TLRPC.User user;
        public VideoEditedInfo videoEditedInfo;
        public TLRPC.WebPage webPage;

        public static SendMessageParams of(String str, long j) {
            return of(str, null, null, null, null, null, null, null, null, null, j, null, null, null, null, true, null, null, null, null, false, 0, 0, null, null, false);
        }

        public static SendMessageParams of(String str, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC.WebPage webPage, boolean z, ArrayList<TLRPC.MessageEntity> arrayList, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z2, int i, MessageObject.SendAnimationData sendAnimationData, boolean z3) {
            return of(str, null, null, null, null, null, null, null, null, null, j, null, messageObject, messageObject2, webPage, z, null, arrayList, replyMarkup, map, z2, i, 0, null, sendAnimationData, z3);
        }

        private static SendMessageParams of(String str, String str2, TLRPC.MessageMedia messageMedia, TLRPC.TL_photo tL_photo, VideoEditedInfo videoEditedInfo, TLRPC.User user, TLRPC.TL_document tL_document, TLRPC.TL_game tL_game, TLRPC.TL_messageMediaPoll tL_messageMediaPoll, TLRPC.TL_messageMediaInvoice tL_messageMediaInvoice, long j, String str3, MessageObject messageObject, MessageObject messageObject2, TLRPC.WebPage webPage, boolean z, MessageObject messageObject3, ArrayList<TLRPC.MessageEntity> arrayList, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z2, int i, int i2, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z3) {
            return of(str, str2, messageMedia, tL_photo, videoEditedInfo, user, tL_document, tL_game, tL_messageMediaPoll, tL_messageMediaInvoice, j, str3, messageObject, messageObject2, webPage, z, messageObject3, arrayList, replyMarkup, map, z2, i, i2, obj, sendAnimationData, z3, false);
        }

        public static SendMessageParams of(String str, String str2, TLRPC.MessageMedia messageMedia, TLRPC.TL_photo tL_photo, VideoEditedInfo videoEditedInfo, TLRPC.User user, TLRPC.TL_document tL_document, TLRPC.TL_game tL_game, TLRPC.TL_messageMediaPoll tL_messageMediaPoll, TLRPC.TL_messageMediaInvoice tL_messageMediaInvoice, long j, String str3, MessageObject messageObject, MessageObject messageObject2, TLRPC.WebPage webPage, boolean z, MessageObject messageObject3, ArrayList<TLRPC.MessageEntity> arrayList, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z2, int i, int i2, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z3, boolean z4) {
            SendMessageParams sendMessageParams = new SendMessageParams();
            sendMessageParams.message = str;
            sendMessageParams.caption = str2;
            sendMessageParams.location = messageMedia;
            sendMessageParams.photo = tL_photo;
            sendMessageParams.videoEditedInfo = videoEditedInfo;
            sendMessageParams.user = user;
            sendMessageParams.document = tL_document;
            sendMessageParams.game = tL_game;
            sendMessageParams.poll = tL_messageMediaPoll;
            sendMessageParams.invoice = tL_messageMediaInvoice;
            sendMessageParams.peer = j;
            sendMessageParams.path = str3;
            sendMessageParams.replyToMsg = messageObject;
            sendMessageParams.replyToTopMsg = messageObject2;
            sendMessageParams.webPage = webPage;
            sendMessageParams.searchLinks = z;
            sendMessageParams.retryMessageObject = messageObject3;
            sendMessageParams.entities = arrayList;
            sendMessageParams.replyMarkup = replyMarkup;
            sendMessageParams.params = map;
            sendMessageParams.notify = z2;
            sendMessageParams.scheduleDate = i;
            sendMessageParams.ttl = i2;
            sendMessageParams.parentObject = obj;
            sendMessageParams.sendAnimationData = sendAnimationData;
            sendMessageParams.updateStickersOrder = z3;
            sendMessageParams.hasMediaSpoilers = z4;
            return sendMessageParams;
        }

        public static SendMessageParams of(MessageObject messageObject) {
            long dialogId = messageObject.getDialogId();
            TLRPC.Message message = messageObject.messageOwner;
            SendMessageParams sendMessageParamsOf = of(null, null, null, null, null, null, null, null, null, null, dialogId, message.attachPath, null, null, null, true, messageObject, null, message.reply_markup, message.params, !message.silent, messageObject.scheduled ? message.date : 0, 0, null, null, false);
            TLRPC.Message message2 = messageObject.messageOwner;
            if (message2 != null) {
                TLRPC.InputQuickReplyShortcut inputQuickReplyShortcut = message2.quick_reply_shortcut;
                if (inputQuickReplyShortcut instanceof TLRPC.TL_inputQuickReplyShortcut) {
                    sendMessageParamsOf.quick_reply_shortcut = ((TLRPC.TL_inputQuickReplyShortcut) inputQuickReplyShortcut).shortcut;
                }
                sendMessageParamsOf.quick_reply_shortcut_id = messageObject.getQuickReplyId();
                sendMessageParamsOf.payStars = messageObject.messageOwner.paid_message_stars;
            }
            return sendMessageParamsOf;
        }

        public static SendMessageParams of(TLRPC.MessageMedia messageMedia, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z, int i) {
            return of(null, null, messageMedia, null, null, null, null, null, null, null, j, null, messageObject, messageObject2, null, true, null, null, replyMarkup, map, z, i, 0, null, null, false);
        }

        public static SendMessageParams of(TLRPC.TL_document tL_document, VideoEditedInfo videoEditedInfo, String str, long j, MessageObject messageObject, MessageObject messageObject2, String str2, ArrayList<TLRPC.MessageEntity> arrayList, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z, int i, int i2, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z2) {
            return of(null, str2, null, null, videoEditedInfo, null, tL_document, null, null, null, j, str, messageObject, messageObject2, null, true, null, arrayList, replyMarkup, map, z, i, i2, obj, sendAnimationData, z2);
        }

        public static SendMessageParams of(TLRPC.TL_document tL_document, VideoEditedInfo videoEditedInfo, String str, long j, MessageObject messageObject, MessageObject messageObject2, String str2, ArrayList<TLRPC.MessageEntity> arrayList, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z, int i, int i2, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z2, boolean z3) {
            return of(null, str2, null, null, videoEditedInfo, null, tL_document, null, null, null, j, str, messageObject, messageObject2, null, true, null, arrayList, replyMarkup, map, z, i, i2, obj, sendAnimationData, z2, z3);
        }

        public static SendMessageParams of(TLRPC.TL_game tL_game, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z, int i) {
            return of(null, null, null, null, null, null, null, tL_game, null, null, j, null, messageObject, messageObject2, null, true, null, null, replyMarkup, map, z, i, 0, null, null, false);
        }

        public static SendMessageParams of(TLRPC.TL_messageMediaInvoice tL_messageMediaInvoice, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z, int i) {
            return of(null, null, null, null, null, null, null, null, null, tL_messageMediaInvoice, j, null, messageObject, messageObject2, null, true, null, null, replyMarkup, map, z, i, 0, null, null, false);
        }

        public static SendMessageParams of(TLRPC.TL_messageMediaPoll tL_messageMediaPoll, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z, int i) {
            return of(null, null, null, null, null, null, null, null, tL_messageMediaPoll, null, j, null, messageObject, messageObject2, null, true, null, null, replyMarkup, map, z, i, 0, null, null, false);
        }

        public static SendMessageParams of(TLRPC.TL_photo tL_photo, String str, long j, MessageObject messageObject, MessageObject messageObject2, String str2, ArrayList<TLRPC.MessageEntity> arrayList, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z, int i, int i2, Object obj, boolean z2) {
            return of(null, str2, null, tL_photo, null, null, null, null, null, null, j, str, messageObject, messageObject2, null, true, null, arrayList, replyMarkup, map, z, i, i2, obj, null, z2);
        }

        public static SendMessageParams of(TLRPC.TL_photo tL_photo, String str, long j, MessageObject messageObject, MessageObject messageObject2, String str2, ArrayList<TLRPC.MessageEntity> arrayList, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z, int i, int i2, Object obj, boolean z2, boolean z3) {
            return of(null, str2, null, tL_photo, null, null, null, null, null, null, j, str, messageObject, messageObject2, null, true, null, arrayList, replyMarkup, map, z, i, i2, obj, null, z2, z3);
        }

        public static SendMessageParams of(TLRPC.User user, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC.ReplyMarkup replyMarkup, HashMap<String, String> map, boolean z, int i) {
            return of(null, null, null, null, null, user, null, null, null, null, j, null, messageObject, messageObject2, null, true, null, null, replyMarkup, map, z, i, 0, null, null, false);
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static class SendingMediaInfo {
        public boolean canDeleteAfter;
        public String caption;
        public String coverPath;
        public TLRPC.Photo coverPhoto;
        public TLRPC.VideoSize emojiMarkup;
        public ArrayList<TLRPC.MessageEntity> entities;
        public boolean forceImage;
        public boolean hasMediaSpoilers;
        public boolean highQuality;
        public TLRPC.BotInlineResult inlineResult;
        public boolean isVideo;
        public ArrayList<TLRPC.InputDocument> masks;
        public MediaController.PhotoEntry originalPhotoEntry;
        public String paintPath;
        public HashMap<String, String> params;
        public String path;
        public MediaController.SearchImage searchImage;
        public long stars;
        public String thumbPath;
        public int ttl;
        public boolean updateStickersOrder;
        public Uri uri;
        public VideoEditedInfo videoEditedInfo;
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        mediaSendThreadPool = new ThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        Instance = new SendMessagesHelper[4];
    }

    public SendMessagesHelper(int i) {
        super(i);
        this.delayedMessages = new HashMap<>();
        this.unsentMessages = new SparseArray<>();
        this.sendingMessages = new SparseArray<>();
        this.editingMessages = new SparseArray<>();
        this.uploadMessages = new SparseArray<>();
        this.sendingMessagesIdDialogs = new LongSparseArray();
        this.uploadingMessagesIdDialogs = new LongSparseArray();
        this.waitingForLocation = new HashMap<>();
        this.waitingForCallback = new HashMap<>();
        this.waitingForCallbackMap = new HashMap<>();
        this.waitingForVote = new HashMap<>();
        this.voteSendTime = new LongSparseArray();
        this.importingHistoryFiles = new HashMap<>();
        this.importingHistoryMap = new LongSparseArray();
        this.importingStickersFiles = new HashMap<>();
        this.importingStickersMap = new HashMap<>();
        this.locationProvider = new LocationProvider(new LocationProvider.LocationProviderDelegate() { // from class: org.telegram.messenger.SendMessagesHelper.1
            @Override // org.telegram.messenger.SendMessagesHelper.LocationProvider.LocationProviderDelegate
            public void onLocationAcquired(Location location) {
                SendMessagesHelper.this.sendLocation(location);
                SendMessagesHelper.this.waitingForLocation.clear();
            }

            @Override // org.telegram.messenger.SendMessagesHelper.LocationProvider.LocationProviderDelegate
            public void onUnableLocationAcquire() {
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.wasUnableToFindCurrentLocation, new HashMap(SendMessagesHelper.this.waitingForLocation));
                SendMessagesHelper.this.waitingForLocation.clear();
            }
        });
        this.waitingForTodoUpdate = new HashMap<>();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        });
    }

    private void applyMonoForumPeerId(TLRPC.TL_messages_forwardMessages tL_messages_forwardMessages, long j) {
        if (j != 0) {
            TLRPC.InputPeer inputPeer = getMessagesController().getInputPeer(j);
            TLRPC.InputReplyTo inputReplyTo = tL_messages_forwardMessages.reply_to;
            if (inputReplyTo == null) {
                TLRPC.TL_inputReplyToMonoForum tL_inputReplyToMonoForum = new TLRPC.TL_inputReplyToMonoForum();
                tL_messages_forwardMessages.reply_to = tL_inputReplyToMonoForum;
                tL_inputReplyToMonoForum.monoforum_peer_id = inputPeer;
            } else if (inputReplyTo instanceof TLRPC.TL_inputReplyToMessage) {
                inputReplyTo.monoforum_peer_id = inputPeer;
                inputReplyTo.flags |= 32;
            }
        }
    }

    private void applyMonoForumPeerId(TLRPC.TL_messages_sendMedia tL_messages_sendMedia, long j) {
        if (j != 0) {
            TLRPC.InputPeer inputPeer = getMessagesController().getInputPeer(j);
            TLRPC.InputReplyTo inputReplyTo = tL_messages_sendMedia.reply_to;
            if (inputReplyTo != null) {
                if (inputReplyTo instanceof TLRPC.TL_inputReplyToMessage) {
                    inputReplyTo.monoforum_peer_id = inputPeer;
                    inputReplyTo.flags |= 32;
                    return;
                }
                return;
            }
            TLRPC.TL_inputReplyToMonoForum tL_inputReplyToMonoForum = new TLRPC.TL_inputReplyToMonoForum();
            tL_messages_sendMedia.reply_to = tL_inputReplyToMonoForum;
            tL_inputReplyToMonoForum.monoforum_peer_id = inputPeer;
            tL_messages_sendMedia.flags |= 1;
        }
    }

    private void applyMonoForumPeerId(TLRPC.TL_messages_sendMessage tL_messages_sendMessage, long j) {
        if (j != 0) {
            TLRPC.InputPeer inputPeer = getMessagesController().getInputPeer(j);
            TLRPC.InputReplyTo inputReplyTo = tL_messages_sendMessage.reply_to;
            if (inputReplyTo != null) {
                if (inputReplyTo instanceof TLRPC.TL_inputReplyToMessage) {
                    inputReplyTo.monoforum_peer_id = inputPeer;
                    inputReplyTo.flags |= 32;
                    return;
                }
                return;
            }
            TLRPC.TL_inputReplyToMonoForum tL_inputReplyToMonoForum = new TLRPC.TL_inputReplyToMonoForum();
            tL_messages_sendMessage.reply_to = tL_inputReplyToMonoForum;
            tL_inputReplyToMonoForum.monoforum_peer_id = inputPeer;
            tL_messages_sendMessage.flags |= 1;
        }
    }

    private void applyMonoForumPeerId(TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia, long j) {
        if (j != 0) {
            TLRPC.InputPeer inputPeer = getMessagesController().getInputPeer(j);
            TLRPC.InputReplyTo inputReplyTo = tL_messages_sendMultiMedia.reply_to;
            if (inputReplyTo != null) {
                if (inputReplyTo instanceof TLRPC.TL_inputReplyToMessage) {
                    inputReplyTo.monoforum_peer_id = inputPeer;
                    inputReplyTo.flags |= 32;
                    return;
                }
                return;
            }
            TLRPC.TL_inputReplyToMonoForum tL_inputReplyToMonoForum = new TLRPC.TL_inputReplyToMonoForum();
            tL_messages_sendMultiMedia.reply_to = tL_inputReplyToMonoForum;
            tL_inputReplyToMonoForum.monoforum_peer_id = inputPeer;
            tL_messages_sendMultiMedia.flags |= 1;
        }
    }

    public static int canSendMessageToChat(TLRPC.Chat chat, MessageObject messageObject) {
        boolean zCanSendStickers = ChatObject.canSendStickers(chat);
        boolean zCanSendPhoto = ChatObject.canSendPhoto(chat);
        boolean zCanSendVideo = ChatObject.canSendVideo(chat);
        boolean zCanSendDocument = ChatObject.canSendDocument(chat);
        ChatObject.canSendEmbed(chat);
        boolean zCanSendPolls = ChatObject.canSendPolls(chat);
        boolean zCanSendRoundVideo = ChatObject.canSendRoundVideo(chat);
        boolean zCanSendVoice = ChatObject.canSendVoice(chat);
        boolean zCanSendMusic = ChatObject.canSendMusic(chat);
        boolean z = messageObject.isSticker() || messageObject.isAnimatedSticker() || messageObject.isGif() || messageObject.isGame();
        if (!zCanSendStickers && z) {
            return ChatObject.isActionBannedByDefault(chat, 8) ? 4 : 1;
        }
        if (!zCanSendPhoto && (messageObject.messageOwner.media instanceof TLRPC.TL_messageMediaPhoto) && !messageObject.isVideo() && !z) {
            return ChatObject.isActionBannedByDefault(chat, 16) ? 10 : 12;
        }
        if (!zCanSendMusic && messageObject.isMusic()) {
            return ChatObject.isActionBannedByDefault(chat, 18) ? 19 : 20;
        }
        if (!zCanSendVideo && messageObject.isVideo() && !z) {
            return ChatObject.isActionBannedByDefault(chat, 17) ? 9 : 11;
        }
        if (!zCanSendPolls && (messageObject.messageOwner.media instanceof TLRPC.TL_messageMediaPoll)) {
            return ChatObject.isActionBannedByDefault(chat, 10) ? 6 : 3;
        }
        if (!zCanSendPolls && (messageObject.messageOwner.media instanceof TLRPC.TL_messageMediaToDo)) {
            return ChatObject.isActionBannedByDefault(chat, 10) ? 21 : 22;
        }
        if (!zCanSendVoice && MessageObject.isVoiceMessage(messageObject.messageOwner)) {
            return ChatObject.isActionBannedByDefault(chat, 20) ? 13 : 14;
        }
        if (!zCanSendRoundVideo && MessageObject.isRoundVideoMessage(messageObject.messageOwner)) {
            return ChatObject.isActionBannedByDefault(chat, 21) ? 15 : 16;
        }
        if (zCanSendDocument || !(messageObject.messageOwner.media instanceof TLRPC.TL_messageMediaDocument) || z) {
            return 0;
        }
        return ChatObject.isActionBannedByDefault(chat, 19) ? 17 : 18;
    }

    private static boolean checkFileSize(AccountInstance accountInstance, Uri uri) throws FileNotFoundException {
        long j = 0;
        try {
            AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = ApplicationLoader.applicationContext.getContentResolver().openAssetFileDescriptor(uri, "r", null);
            if (assetFileDescriptorOpenAssetFileDescriptor != null) {
                assetFileDescriptorOpenAssetFileDescriptor.getLength();
            }
            Cursor cursorQuery = ApplicationLoader.applicationContext.getContentResolver().query(uri, new String[]{"_size"}, null, null, null);
            int columnIndex = cursorQuery.getColumnIndex("_size");
            cursorQuery.moveToFirst();
            j = cursorQuery.getLong(columnIndex);
            cursorQuery.close();
        } catch (Exception e) {
            FileLog.e(e);
        }
        return !FileLoader.checkUploadFileSize(accountInstance.getCurrentAccount(), j);
    }

    public static boolean checkUpdateStickersOrder(CharSequence charSequence) {
        if (charSequence instanceof Spannable) {
            for (AnimatedEmojiSpan animatedEmojiSpan : (AnimatedEmojiSpan[]) ((Spannable) charSequence).getSpans(0, charSequence.length(), AnimatedEmojiSpan.class)) {
                if (animatedEmojiSpan.fromEmojiKeyboard) {
                    return true;
                }
            }
        }
        return false;
    }

    private static VideoEditedInfo createCompressionSettings(String str) {
        int[] iArr = new int[11];
        AnimatedFileDrawable.getVideoInfo(str, iArr);
        if (iArr[0] == 0) {
            if (!BuildVars.LOGS_ENABLED) {
                return null;
            }
            FileLog.d("video hasn't avc1 atom");
            return null;
        }
        long length = new File(str).length();
        int videoBitrate = MediaController.getVideoBitrate(str);
        if (videoBitrate == -1) {
            videoBitrate = iArr[3];
        }
        float f = iArr[4];
        long j = iArr[5];
        int i = iArr[7];
        VideoEditedInfo videoEditedInfo = new VideoEditedInfo();
        videoEditedInfo.startTime = -1L;
        videoEditedInfo.endTime = -1L;
        videoEditedInfo.bitrate = videoBitrate;
        videoEditedInfo.originalPath = str;
        videoEditedInfo.framerate = i;
        videoEditedInfo.estimatedDuration = (long) Math.ceil(f);
        boolean z = true;
        int i2 = iArr[1];
        videoEditedInfo.originalWidth = i2;
        videoEditedInfo.resultWidth = i2;
        int i3 = iArr[2];
        videoEditedInfo.originalHeight = i3;
        videoEditedInfo.resultHeight = i3;
        videoEditedInfo.rotationValue = iArr[8];
        videoEditedInfo.originalDuration = (long) (f * 1000.0f);
        float fMax = Math.max(i2, i3);
        float f2 = 640.0f;
        int i4 = fMax > 1280.0f ? 4 : fMax > 854.0f ? 3 : fMax > 640.0f ? 2 : 1;
        int iRound = Math.round(DownloadController.getInstance(UserConfig.selectedAccount).getMaxVideoBitrate() / (100.0f / i4));
        if (iRound > i4) {
            iRound = i4;
        }
        if (new File(str).length() < 1048576000) {
            if (iRound != i4 || Math.max(videoEditedInfo.originalWidth, videoEditedInfo.originalHeight) > 1280) {
                if (iRound == 1) {
                    f2 = 432.0f;
                } else if (iRound != 2) {
                    f2 = iRound != 3 ? 1280.0f : 848.0f;
                }
                int i5 = videoEditedInfo.originalWidth;
                int i6 = videoEditedInfo.originalHeight;
                float f3 = f2 / (i5 > i6 ? i5 : i6);
                videoEditedInfo.resultWidth = Math.round((i5 * f3) / 2.0f) * 2;
                videoEditedInfo.resultHeight = Math.round((videoEditedInfo.originalHeight * f3) / 2.0f) * 2;
            } else {
                z = false;
            }
            videoBitrate = MediaController.makeVideoBitrate(videoEditedInfo.originalHeight, videoEditedInfo.originalWidth, videoBitrate, videoEditedInfo.resultHeight, videoEditedInfo.resultWidth);
        } else {
            z = false;
        }
        if (z) {
            videoEditedInfo.bitrate = videoBitrate;
            videoEditedInfo.estimatedSize = (long) (j + (((f / 1000.0f) * MediaController.extractRealEncoderBitrate(videoEditedInfo.resultWidth, videoEditedInfo.resultHeight, videoBitrate, false)) / 8.0f));
        } else {
            videoEditedInfo.resultWidth = videoEditedInfo.originalWidth;
            videoEditedInfo.resultHeight = videoEditedInfo.originalHeight;
            videoEditedInfo.bitrate = videoBitrate;
            videoEditedInfo.estimatedSize = length;
        }
        if (videoEditedInfo.estimatedSize == 0) {
            videoEditedInfo.estimatedSize = 1L;
        }
        return videoEditedInfo;
    }

    public static Bitmap createVideoThumbnail(String str, int i) {
        float f = i == 2 ? 1920.0f : i == 3 ? 96.0f : 512.0f;
        Bitmap bitmapCreateVideoThumbnailAtTime = createVideoThumbnailAtTime(str, 0L);
        if (bitmapCreateVideoThumbnailAtTime == null) {
            return bitmapCreateVideoThumbnailAtTime;
        }
        int width = bitmapCreateVideoThumbnailAtTime.getWidth();
        int height = bitmapCreateVideoThumbnailAtTime.getHeight();
        float f2 = width;
        if (f2 <= f && height <= f) {
            return bitmapCreateVideoThumbnailAtTime;
        }
        float fMax = Math.max(width, height) / f;
        return Bitmap.createScaledBitmap(bitmapCreateVideoThumbnailAtTime, (int) (f2 / fMax), (int) (height / fMax), true);
    }

    public static Bitmap createVideoThumbnailAtTime(String str, long j) {
        return createVideoThumbnailAtTime(str, j, null, false);
    }

    public static Bitmap createVideoThumbnailAtTime(String str, long j, int[] iArr, boolean z) {
        Bitmap frameAtTime;
        Bitmap frameAtTime2;
        if (z) {
            AnimatedFileDrawable animatedFileDrawable = new AnimatedFileDrawable(new File(str), true, 0L, 0, null, null, null, 0L, 0, true, null);
            frameAtTime2 = animatedFileDrawable.getFrameAtTime(j, z);
            if (iArr != null) {
                iArr[0] = animatedFileDrawable.getOrientation();
            }
            animatedFileDrawable.recycle();
            if (frameAtTime2 == null) {
                return createVideoThumbnailAtTime(str, j, iArr, false);
            }
        } else {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                try {
                    mediaMetadataRetriever.setDataSource(str);
                    frameAtTime = mediaMetadataRetriever.getFrameAtTime(j, 1);
                    if (frameAtTime == null) {
                        try {
                            frameAtTime = mediaMetadataRetriever.getFrameAtTime(j, 3);
                        } catch (Exception unused) {
                        }
                    }
                } catch (Exception unused2) {
                    frameAtTime = null;
                }
                frameAtTime2 = frameAtTime;
            } finally {
                try {
                    mediaMetadataRetriever.release();
                } catch (Throwable unused3) {
                }
            }
        }
        return frameAtTime2;
    }

    public static void ensureMediaThumbExists(AccountInstance accountInstance, boolean z, TLObject tLObject, String str, Uri uri, long j) {
        ensureMediaThumbExists(accountInstance, z, tLObject, str, uri, j, false);
    }

    public static void ensureMediaThumbExists(AccountInstance accountInstance, boolean z, TLObject tLObject, String str, Uri uri, long j, boolean z2) {
        TLRPC.PhotoSize photoSizeScaleAndSaveImage;
        TLRPC.PhotoSize photoSizeScaleAndSaveImage2;
        if (!(tLObject instanceof TLRPC.TL_photo)) {
            if (tLObject instanceof TLRPC.TL_document) {
                TLRPC.TL_document tL_document = (TLRPC.TL_document) tLObject;
                if ((MessageObject.isVideoDocument(tL_document) || MessageObject.isNewGifDocument(tL_document)) && MessageObject.isDocumentHasThumb(tL_document)) {
                    TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tL_document.thumbs, 320);
                    if ((closestPhotoSizeWithSize instanceof TLRPC.TL_photoStrippedSize) || (closestPhotoSizeWithSize instanceof TLRPC.TL_photoPathSize) || FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(closestPhotoSizeWithSize, true).exists()) {
                        return;
                    }
                    Bitmap bitmapCreateVideoThumbnailAtTime = createVideoThumbnailAtTime(str, j);
                    Bitmap bitmapCreateVideoThumbnail = bitmapCreateVideoThumbnailAtTime == null ? createVideoThumbnail(str, 1) : bitmapCreateVideoThumbnailAtTime;
                    int i = z ? 90 : 320;
                    float f = i;
                    tL_document.thumbs.set(0, ImageLoader.scaleAndSaveImage(closestPhotoSizeWithSize, bitmapCreateVideoThumbnail, f, f, i > 90 ? 80 : 55, false, true));
                    return;
                }
                return;
            }
            return;
        }
        TLRPC.TL_photo tL_photo = (TLRPC.TL_photo) tLObject;
        TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(tL_photo.sizes, 90);
        boolean zExists = ((closestPhotoSizeWithSize2 instanceof TLRPC.TL_photoStrippedSize) || (closestPhotoSizeWithSize2 instanceof TLRPC.TL_photoPathSize)) ? true : FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(closestPhotoSizeWithSize2, true).exists();
        TLRPC.PhotoSize closestPhotoSizeWithSize3 = FileLoader.getClosestPhotoSizeWithSize(tL_photo.sizes, AndroidUtilities.getPhotoSize(z2));
        boolean zExists2 = FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(closestPhotoSizeWithSize3, false).exists();
        if (zExists && zExists2) {
            return;
        }
        Bitmap bitmapLoadBitmap = ImageLoader.loadBitmap(str, uri, AndroidUtilities.getPhotoSize(), AndroidUtilities.getPhotoSize(), true);
        if (bitmapLoadBitmap == null) {
            bitmapLoadBitmap = ImageLoader.loadBitmap(str, uri, 800.0f, 800.0f, true);
        }
        Bitmap bitmap = bitmapLoadBitmap;
        if (!zExists2 && (photoSizeScaleAndSaveImage2 = ImageLoader.scaleAndSaveImage(closestPhotoSizeWithSize3, bitmap, Bitmap.CompressFormat.JPEG, true, AndroidUtilities.getPhotoSize(), AndroidUtilities.getPhotoSize(), 80, false, 101, 101, false)) != closestPhotoSizeWithSize3) {
            tL_photo.sizes.add(0, photoSizeScaleAndSaveImage2);
        }
        if (!zExists && (photoSizeScaleAndSaveImage = ImageLoader.scaleAndSaveImage(closestPhotoSizeWithSize2, bitmap, 90.0f, 90.0f, 55, true, false)) != closestPhotoSizeWithSize2) {
            tL_photo.sizes.add(0, photoSizeScaleAndSaveImage);
        }
        if (bitmap != null) {
            bitmap.recycle();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0060 A[Catch: all -> 0x001d, Exception -> 0x0020, TRY_LEAVE, TryCatch #7 {Exception -> 0x0020, all -> 0x001d, blocks: (B:4:0x000b, B:6:0x0016, B:11:0x0022, B:13:0x002a, B:14:0x0030, B:16:0x0038, B:18:0x0041, B:19:0x0043, B:21:0x004b, B:23:0x0055, B:28:0x0060), top: B:67:0x000b }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x006d -> B:58:0x00ae). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void fillVideoAttribute(String str, TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo, VideoEditedInfo videoEditedInfo) {
        MediaMetadataRetriever mediaMetadataRetriever;
        String strExtractMetadata;
        MediaMetadataRetriever mediaMetadataRetriever2;
        MediaMetadataRetriever mediaMetadataRetriever3 = null;
        MediaMetadataRetriever mediaMetadataRetriever4 = null;
        mediaMetadataRetriever3 = null;
        try {
            try {
                try {
                    mediaMetadataRetriever = new MediaMetadataRetriever();
                } catch (Throwable th) {
                    th = th;
                    mediaMetadataRetriever = mediaMetadataRetriever3;
                }
            } catch (Exception e) {
                e = e;
            }
        } catch (Exception e2) {
            FileLog.e(e2);
            mediaMetadataRetriever3 = mediaMetadataRetriever3;
        }
        try {
            mediaMetadataRetriever.setDataSource(str);
            String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(18);
            if (strExtractMetadata2 != null) {
                tL_documentAttributeVideo.w = Integer.parseInt(strExtractMetadata2);
            }
            String strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(19);
            if (strExtractMetadata3 != null) {
                tL_documentAttributeVideo.h = Integer.parseInt(strExtractMetadata3);
            }
            String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(9);
            if (strExtractMetadata4 != null) {
                double d = Long.parseLong(strExtractMetadata4);
                Double.isNaN(d);
                tL_documentAttributeVideo.duration = d / 1000.0d;
            }
            strExtractMetadata = mediaMetadataRetriever.extractMetadata(24);
            mediaMetadataRetriever2 = strExtractMetadata;
        } catch (Exception e3) {
            e = e3;
            mediaMetadataRetriever4 = mediaMetadataRetriever;
            FileLog.e(e);
            if (mediaMetadataRetriever4 != null) {
                try {
                    mediaMetadataRetriever4.release();
                } catch (Exception e4) {
                    FileLog.e(e4);
                }
            }
            Context context = ApplicationLoader.applicationContext;
            File file = new File(str);
            MediaPlayer mediaPlayerCreate = MediaPlayer.create(context, Uri.fromFile(file));
            mediaMetadataRetriever3 = file;
            if (mediaPlayerCreate != null) {
                double duration = mediaPlayerCreate.getDuration();
                Double.isNaN(duration);
                double d2 = duration / 1000.0d;
                tL_documentAttributeVideo.duration = d2;
                tL_documentAttributeVideo.w = mediaPlayerCreate.getVideoWidth();
                tL_documentAttributeVideo.h = mediaPlayerCreate.getVideoHeight();
                mediaPlayerCreate.release();
                mediaMetadataRetriever3 = d2;
            }
        } catch (Throwable th2) {
            th = th2;
            if (mediaMetadataRetriever != null) {
                try {
                    mediaMetadataRetriever.release();
                } catch (Exception e5) {
                    FileLog.e(e5);
                }
            }
            throw th;
        }
        if (strExtractMetadata != null) {
            int iIntValue = Utilities.parseInt((CharSequence) strExtractMetadata).intValue();
            if (videoEditedInfo == null) {
                if (iIntValue != 90) {
                    mediaMetadataRetriever2 = iIntValue;
                    if (iIntValue == 270) {
                        int i = tL_documentAttributeVideo.w;
                        int i2 = tL_documentAttributeVideo.h;
                        tL_documentAttributeVideo.w = i2;
                        tL_documentAttributeVideo.h = i;
                        mediaMetadataRetriever2 = i2;
                    }
                }
            }
            videoEditedInfo.rotationValue = iIntValue;
            mediaMetadataRetriever2 = iIntValue;
        }
        mediaMetadataRetriever.release();
        mediaMetadataRetriever3 = mediaMetadataRetriever2;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005f A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private DelayedMessage findMaxDelayedMessageForMessageId(int i, long j) {
        int id;
        Iterator<Map.Entry<String, ArrayList<DelayedMessage>>> it = this.delayedMessages.entrySet().iterator();
        DelayedMessage delayedMessage = null;
        int i2 = Integer.MIN_VALUE;
        while (it.hasNext()) {
            ArrayList<DelayedMessage> value = it.next().getValue();
            int size = value.size();
            for (int i3 = 0; i3 < size; i3++) {
                DelayedMessage delayedMessage2 = value.get(i3);
                int i4 = delayedMessage2.type;
                if ((i4 == 4 || i4 == 0) && delayedMessage2.peer == j) {
                    MessageObject messageObject = delayedMessage2.obj;
                    if (messageObject == null) {
                        ArrayList<MessageObject> arrayList = delayedMessage2.messageObjects;
                        if (arrayList == null || arrayList.isEmpty()) {
                            id = 0;
                            if (id != 0 && id > i && delayedMessage == null && i2 < id) {
                                delayedMessage = delayedMessage2;
                                i2 = id;
                            }
                        } else {
                            messageObject = delayedMessage2.messageObjects.get(r8.size() - 1);
                            id = messageObject.getId();
                            if (id != 0) {
                                delayedMessage = delayedMessage2;
                                i2 = id;
                            }
                        }
                    } else {
                        id = messageObject.getId();
                        if (id != 0) {
                        }
                    }
                }
            }
        }
        return delayedMessage;
    }

    private static void finishGroup(final AccountInstance accountInstance, final long j, final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.lambda$finishGroup$91(accountInstance, j, i);
            }
        });
    }

    public static SendMessagesHelper getInstance(int i) {
        SendMessagesHelper sendMessagesHelper = Instance[i];
        if (sendMessagesHelper == null) {
            synchronized (SendMessagesHelper.class) {
                try {
                    sendMessagesHelper = Instance[i];
                    if (sendMessagesHelper == null) {
                        SendMessagesHelper[] sendMessagesHelperArr = Instance;
                        SendMessagesHelper sendMessagesHelper2 = new SendMessagesHelper(i);
                        sendMessagesHelperArr[i] = sendMessagesHelper2;
                        sendMessagesHelper = sendMessagesHelper2;
                    }
                } finally {
                }
            }
        }
        return sendMessagesHelper;
    }

    public static String getKeyForPhotoSize(AccountInstance accountInstance, TLRPC.PhotoSize photoSize, Bitmap[] bitmapArr, boolean z, boolean z2) {
        if (photoSize == null || photoSize.location == null) {
            return null;
        }
        Point messageSize = ChatMessageCell.getMessageSize(photoSize.w, photoSize.h);
        if (bitmapArr != null) {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                File pathToAttach = FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(photoSize, z2);
                FileInputStream fileInputStream = new FileInputStream(pathToAttach);
                BitmapFactory.decodeStream(fileInputStream, null, options);
                fileInputStream.close();
                float fMax = Math.max(options.outWidth / messageSize.x, options.outHeight / messageSize.y);
                if (fMax < 1.0f) {
                    fMax = 1.0f;
                }
                options.inJustDecodeBounds = false;
                options.inSampleSize = (int) fMax;
                options.inPreferredConfig = Bitmap.Config.RGB_565;
                if (Build.VERSION.SDK_INT >= 21) {
                    FileInputStream fileInputStream2 = new FileInputStream(pathToAttach);
                    bitmapArr[0] = BitmapFactory.decodeStream(fileInputStream2, null, options);
                    fileInputStream2.close();
                }
            } catch (Throwable unused) {
            }
        }
        return String.format(Locale.US, z ? "%d_%d@%d_%d_b" : "%d_%d@%d_%d", Long.valueOf(photoSize.location.volume_id), Integer.valueOf(photoSize.location.local_id), Integer.valueOf((int) (messageSize.x / AndroidUtilities.density)), Integer.valueOf((int) (messageSize.y / AndroidUtilities.density)));
    }

    private TLRPC.PhotoSize getThumbForSecretChat(ArrayList<TLRPC.PhotoSize> arrayList) {
        if (arrayList != null && !arrayList.isEmpty()) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                TLRPC.PhotoSize photoSize = arrayList.get(i);
                if (photoSize != null && !(photoSize instanceof TLRPC.TL_photoPathSize) && !(photoSize instanceof TLRPC.TL_photoSizeEmpty) && photoSize.location != null) {
                    if (photoSize instanceof TLRPC.TL_photoStrippedSize) {
                        return photoSize;
                    }
                    TLRPC.TL_photoSize_layer127 tL_photoSize_layer127 = new TLRPC.TL_photoSize_layer127();
                    tL_photoSize_layer127.type = photoSize.type;
                    tL_photoSize_layer127.w = photoSize.w;
                    tL_photoSize_layer127.h = photoSize.h;
                    tL_photoSize_layer127.size = photoSize.size;
                    byte[] bArr = photoSize.bytes;
                    tL_photoSize_layer127.bytes = bArr;
                    if (bArr == null) {
                        tL_photoSize_layer127.bytes = new byte[0];
                    }
                    TLRPC.TL_fileLocation_layer82 tL_fileLocation_layer82 = new TLRPC.TL_fileLocation_layer82();
                    tL_photoSize_layer127.location = tL_fileLocation_layer82;
                    TLRPC.FileLocation fileLocation = photoSize.location;
                    tL_fileLocation_layer82.dc_id = fileLocation.dc_id;
                    tL_fileLocation_layer82.volume_id = fileLocation.volume_id;
                    tL_fileLocation_layer82.local_id = fileLocation.local_id;
                    tL_fileLocation_layer82.secret = fileLocation.secret;
                    return tL_photoSize_layer127;
                }
            }
        }
        return null;
    }

    public static String getTrimmedString(String str) {
        String strTrim = str.trim();
        if (strTrim.length() == 0) {
            return strTrim;
        }
        while (str.startsWith("\n")) {
            str = str.substring(1);
        }
        while (str.endsWith("\n")) {
            str = str.substring(0, str.length() - 1);
        }
        return str;
    }

    private static void handleError(final int i, final AccountInstance accountInstance) {
        if (i != 0) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda33
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.lambda$handleError$93(i, accountInstance);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$1(TLRPC.TL_photo tL_photo, MessageObject messageObject, File file, DelayedMessage delayedMessage, String str) {
        if (tL_photo == null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.e("can't load image " + str + " to file " + file.toString());
            }
            delayedMessage.markAsError();
            return;
        }
        TLRPC.Message message = messageObject.messageOwner;
        message.media.photo = tL_photo;
        message.attachPath = file.toString();
        ArrayList<TLRPC.Message> arrayList = new ArrayList<>();
        arrayList.add(messageObject.messageOwner);
        getMessagesStorage().putMessages(arrayList, false, true, false, 0, messageObject.scheduled ? 1 : 0, 0L);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateMessageMedia, messageObject.messageOwner);
        ArrayList arrayList2 = tL_photo.sizes;
        delayedMessage.photoSize = (TLRPC.PhotoSize) arrayList2.get(arrayList2.size() - 1);
        delayedMessage.locationParent = tL_photo;
        delayedMessage.httpLocation = null;
        if (delayedMessage.type != 4) {
            performSendDelayedMessage(delayedMessage);
        } else {
            delayedMessage.performMediaUpload = true;
            performSendDelayedMessage(delayedMessage, delayedMessage.messageObjects.indexOf(messageObject));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$2(final File file, final MessageObject messageObject, final DelayedMessage delayedMessage, final String str) {
        final TLRPC.TL_photo tL_photoGeneratePhotoSizes = generatePhotoSizes(file.toString(), null);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda51
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$didReceivedNotification$1(tL_photoGeneratePhotoSizes, messageObject, file, delayedMessage, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$3(DelayedMessage delayedMessage, File file, TLRPC.Document document, MessageObject messageObject) {
        delayedMessage.httpLocation = null;
        delayedMessage.obj.messageOwner.attachPath = file.toString();
        if (!document.thumbs.isEmpty()) {
            TLRPC.PhotoSize photoSize = document.thumbs.get(0);
            if (!(photoSize instanceof TLRPC.TL_photoStrippedSize)) {
                delayedMessage.photoSize = photoSize;
                delayedMessage.locationParent = document;
            }
        }
        ArrayList<TLRPC.Message> arrayList = new ArrayList<>();
        arrayList.add(messageObject.messageOwner);
        getMessagesStorage().putMessages(arrayList, false, true, false, 0, messageObject.scheduled ? 1 : 0, 0L);
        delayedMessage.performMediaUpload = true;
        performSendDelayedMessage(delayedMessage);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateMessageMedia, delayedMessage.obj.messageOwner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$4(final DelayedMessage delayedMessage, final File file, final MessageObject messageObject) {
        final TLRPC.Document document = delayedMessage.obj.getDocument();
        if (document.thumbs.isEmpty() || (document.thumbs.get(0).location instanceof TLRPC.TL_fileLocationUnavailable)) {
            try {
                Bitmap bitmapLoadBitmap = ImageLoader.loadBitmap(file.getAbsolutePath(), null, 90.0f, 90.0f, true);
                if (bitmapLoadBitmap != null) {
                    document.thumbs.clear();
                    document.thumbs.add(ImageLoader.scaleAndSaveImage(bitmapLoadBitmap, 90.0f, 90.0f, 55, delayedMessage.sendEncryptedRequest != null));
                    bitmapLoadBitmap.recycle();
                }
            } catch (Exception e) {
                document.thumbs.clear();
                FileLog.e(e);
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda67
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$didReceivedNotification$3(delayedMessage, file, document, messageObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editMessage$18(TLRPC.TL_error tL_error, BaseFragment baseFragment, TLRPC.TL_messages_editMessage tL_messages_editMessage) {
        AlertsCreator.processError(this.currentAccount, tL_error, baseFragment, tL_messages_editMessage, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editMessage$19(final BaseFragment baseFragment, final TLRPC.TL_messages_editMessage tL_messages_editMessage, TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$editMessage$18(tL_error, baseFragment, tL_messages_editMessage);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$finishGroup$91(AccountInstance accountInstance, long j, int i) {
        SendMessagesHelper sendMessagesHelper = accountInstance.getSendMessagesHelper();
        ArrayList<DelayedMessage> arrayList = sendMessagesHelper.delayedMessages.get("group_" + j);
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        DelayedMessage delayedMessage = arrayList.get(0);
        ArrayList<MessageObject> arrayList2 = delayedMessage.messageObjects;
        MessageObject messageObject = arrayList2.get(arrayList2.size() - 1);
        delayedMessage.finalGroupMessage = messageObject.getId();
        messageObject.messageOwner.params.put("final", "1");
        TLRPC.TL_messages_messages tL_messages_messages = new TLRPC.TL_messages_messages();
        tL_messages_messages.messages.add(messageObject.messageOwner);
        if (!delayedMessage.paidMedia) {
            accountInstance.getMessagesStorage().putMessages((TLRPC.messages_Messages) tL_messages_messages, delayedMessage.peer, -2, 0, false, i != 0 ? 1 : 0, 0L);
        }
        sendMessagesHelper.sendReadyToSendGroup(delayedMessage, true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handleError$93(int i, AccountInstance accountInstance) {
        try {
            if (i == 1) {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, LocaleController.getString(R.string.UnsupportedAttachment));
            } else if (i != 2) {
            } else {
                NotificationCenter.getInstance(accountInstance.getCurrentAccount()).lambda$postNotificationNameOnUIThread$1(NotificationCenter.currentUserShowLimitReachedDialog, 6);
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        getNotificationCenter().addObserver(this, NotificationCenter.fileUploaded);
        getNotificationCenter().addObserver(this, NotificationCenter.fileUploadProgressChanged);
        getNotificationCenter().addObserver(this, NotificationCenter.fileUploadFailed);
        getNotificationCenter().addObserver(this, NotificationCenter.filePreparingStarted);
        getNotificationCenter().addObserver(this, NotificationCenter.fileNewChunkAvailable);
        getNotificationCenter().addObserver(this, NotificationCenter.filePreparingFailed);
        getNotificationCenter().addObserver(this, NotificationCenter.httpFileDidFailedLoad);
        getNotificationCenter().addObserver(this, NotificationCenter.httpFileDidLoad);
        getNotificationCenter().addObserver(this, NotificationCenter.fileLoaded);
        getNotificationCenter().addObserver(this, NotificationCenter.fileLoadFailed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$performSendDelayedMessage$41(TLObject tLObject, TLRPC.InputMedia inputMedia, DelayedMessage delayedMessage) {
        int i;
        TLRPC.InputMedia inputMedia2;
        TLRPC.PhotoSize photoSize;
        MessageObject messageObject;
        VideoEditedInfo videoEditedInfo;
        if (!(tLObject instanceof TLRPC.TL_messageMediaPhoto)) {
            delayedMessage.markAsError();
            return;
        }
        TLRPC.Photo photo = ((TLRPC.TL_messageMediaPhoto) tLObject).photo;
        TLRPC.TL_inputPhoto tL_inputPhoto = new TLRPC.TL_inputPhoto();
        tL_inputPhoto.id = photo.id;
        tL_inputPhoto.access_hash = photo.access_hash;
        tL_inputPhoto.file_reference = photo.file_reference;
        if (!(inputMedia instanceof TLRPC.TL_inputMediaUploadedDocument)) {
            if (inputMedia instanceof TLRPC.TL_inputMediaDocument) {
                i = inputMedia.flags | 8;
            }
            inputMedia2 = delayedMessage.inputUploadMedia;
            if (inputMedia2 instanceof TLRPC.TL_inputMediaUploadedDocument) {
                inputMedia2.flags |= 64;
                inputMedia2.video_cover = tL_inputPhoto;
            }
            if (delayedMessage.performMediaUpload || inputMedia.thumb != null || (photoSize = delayedMessage.photoSize) == null || photoSize.location == null || !((messageObject = delayedMessage.obj) == null || (videoEditedInfo = messageObject.videoEditedInfo) == null || !videoEditedInfo.isSticker)) {
                performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, delayedMessage, delayedMessage.parentObject, null, delayedMessage.scheduled);
            } else {
                performSendDelayedMessage(delayedMessage);
                return;
            }
        }
        i = inputMedia.flags | 64;
        inputMedia.flags = i;
        inputMedia.video_cover = tL_inputPhoto;
        inputMedia2 = delayedMessage.inputUploadMedia;
        if (inputMedia2 instanceof TLRPC.TL_inputMediaUploadedDocument) {
        }
        if (delayedMessage.performMediaUpload) {
        }
        performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, delayedMessage, delayedMessage.parentObject, null, delayedMessage.scheduled);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendDelayedMessage$42(final TLRPC.InputMedia inputMedia, final DelayedMessage delayedMessage, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda99
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendDelayedMessage$41(tLObject, inputMedia, delayedMessage);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$performSendDelayedMessage$43(TLObject tLObject, TLRPC.InputMedia inputMedia, DelayedMessage delayedMessage, String str, MessageObject messageObject) {
        int i;
        HashMap<Object, Object> map;
        int iIndexOf;
        ArrayList<TLRPC.InputMedia> arrayList;
        HashMap<Object, Object> map2;
        TLRPC.InputMedia inputMedia2;
        if (!(tLObject instanceof TLRPC.TL_messageMediaPhoto)) {
            delayedMessage.markAsError();
            return;
        }
        TLRPC.Photo photo = ((TLRPC.TL_messageMediaPhoto) tLObject).photo;
        TLRPC.TL_inputPhoto tL_inputPhoto = new TLRPC.TL_inputPhoto();
        tL_inputPhoto.id = photo.id;
        tL_inputPhoto.access_hash = photo.access_hash;
        tL_inputPhoto.file_reference = photo.file_reference;
        if (!(inputMedia instanceof TLRPC.TL_inputMediaUploadedDocument)) {
            if (inputMedia instanceof TLRPC.TL_inputMediaDocument) {
                i = inputMedia.flags | 8;
            }
            TLRPC.PhotoSize photoSize = null;
            delayedMessage.coverFile = null;
            delayedMessage.coverPhotoSize = null;
            map = delayedMessage.extraHashMap;
            if (map != null) {
                map.remove(str + "_ct");
            }
            iIndexOf = delayedMessage.messageObjects.indexOf(messageObject);
            arrayList = delayedMessage.inputMedias;
            if (arrayList != null && iIndexOf >= 0 && iIndexOf < arrayList.size()) {
                inputMedia2 = delayedMessage.inputMedias.get(iIndexOf);
                if (inputMedia2 instanceof TLRPC.TL_inputMediaUploadedDocument) {
                    inputMedia2.flags |= 64;
                    inputMedia2.video_cover = tL_inputPhoto;
                }
            }
            map2 = delayedMessage.extraHashMap;
            if (map2 != null) {
                if (map2.containsKey(str + "_t")) {
                    photoSize = (TLRPC.PhotoSize) delayedMessage.extraHashMap.get(str + "_t");
                }
            }
            delayedMessage.photoSize = photoSize;
            if (inputMedia.thumb == null || photoSize == null || photoSize.location == null) {
                sendReadyToSendGroup(delayedMessage, false, true);
            } else {
                delayedMessage.performMediaUpload = true;
                performSendDelayedMessage(delayedMessage, iIndexOf);
                return;
            }
        }
        i = inputMedia.flags | 64;
        inputMedia.flags = i;
        inputMedia.video_cover = tL_inputPhoto;
        TLRPC.PhotoSize photoSize2 = null;
        delayedMessage.coverFile = null;
        delayedMessage.coverPhotoSize = null;
        map = delayedMessage.extraHashMap;
        if (map != null) {
        }
        iIndexOf = delayedMessage.messageObjects.indexOf(messageObject);
        arrayList = delayedMessage.inputMedias;
        if (arrayList != null) {
            inputMedia2 = delayedMessage.inputMedias.get(iIndexOf);
            if (inputMedia2 instanceof TLRPC.TL_inputMediaUploadedDocument) {
            }
        }
        map2 = delayedMessage.extraHashMap;
        if (map2 != null) {
        }
        delayedMessage.photoSize = photoSize2;
        if (inputMedia.thumb == null) {
        }
        sendReadyToSendGroup(delayedMessage, false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendDelayedMessage$44(final TLRPC.InputMedia inputMedia, final DelayedMessage delayedMessage, final String str, final MessageObject messageObject, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendDelayedMessage$43(tLObject, inputMedia, delayedMessage, str, messageObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendDelayedMessage$45(TLObject tLObject, DelayedMessage delayedMessage, String str) {
        boolean z;
        if (tLObject != null) {
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) tLObject;
            getMediaDataController().storeTempStickerSet(tL_messages_stickerSet);
            TLRPC.TL_documentAttributeSticker_layer55 tL_documentAttributeSticker_layer55 = (TLRPC.TL_documentAttributeSticker_layer55) delayedMessage.locationParent;
            TLRPC.TL_inputStickerSetShortName tL_inputStickerSetShortName = new TLRPC.TL_inputStickerSetShortName();
            tL_documentAttributeSticker_layer55.stickerset = tL_inputStickerSetShortName;
            tL_inputStickerSetShortName.short_name = tL_messages_stickerSet.set.short_name;
            z = true;
        } else {
            z = false;
        }
        ArrayList<DelayedMessage> arrayListRemove = this.delayedMessages.remove(str);
        if (arrayListRemove == null || arrayListRemove.isEmpty()) {
            return;
        }
        if (z) {
            getMessagesStorage().replaceMessageIfExists(arrayListRemove.get(0).obj.messageOwner, null, null, false);
        }
        SecretChatHelper secretChatHelper = getSecretChatHelper();
        TLRPC.DecryptedMessage decryptedMessage = (TLRPC.DecryptedMessage) delayedMessage.sendEncryptedRequest;
        MessageObject messageObject = delayedMessage.obj;
        secretChatHelper.performSendEncryptedRequest(decryptedMessage, messageObject.messageOwner, delayedMessage.encryptedChat, null, null, messageObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendDelayedMessage$46(final DelayedMessage delayedMessage, final String str, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendDelayedMessage$45(tLObject, delayedMessage, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$61(TLRPC.Message message, boolean z, TLObject tLObject, DelayedMessage delayedMessage) {
        removeFromSendingMessages(message.id, z);
        if (tLObject instanceof TLRPC.TL_messages_sendMedia) {
            TLRPC.TL_messages_sendMedia tL_messages_sendMedia = (TLRPC.TL_messages_sendMedia) tLObject;
            TLRPC.InputMedia inputMedia = tL_messages_sendMedia.media;
            if ((inputMedia instanceof TLRPC.TL_inputMediaPhoto) || (inputMedia instanceof TLRPC.TL_inputMediaDocument)) {
                tL_messages_sendMedia.media = delayedMessage.inputUploadMedia;
            }
        } else if (tLObject instanceof TLRPC.TL_messages_editMessage) {
            TLRPC.TL_messages_editMessage tL_messages_editMessage = (TLRPC.TL_messages_editMessage) tLObject;
            TLRPC.InputMedia inputMedia2 = tL_messages_editMessage.media;
            if ((inputMedia2 instanceof TLRPC.TL_inputMediaPhoto) || (inputMedia2 instanceof TLRPC.TL_inputMediaDocument)) {
                tL_messages_editMessage.media = delayedMessage.inputUploadMedia;
            }
        }
        delayedMessage.performMediaUpload = true;
        performSendDelayedMessage(delayedMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$62(TLRPC.Message message, boolean z) {
        processSentMessage(message.id);
        removeFromSendingMessages(message.id, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$63(TLRPC.Updates updates, final TLRPC.Message message, final boolean z) {
        getMessagesController().processUpdates(updates, false);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequest$62(message, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$64(TLRPC.TL_error tL_error, final TLRPC.Message message, TLObject tLObject, MessageObject messageObject, String str, final boolean z, TLObject tLObject2) {
        int i = 0;
        TLRPC.Message message2 = null;
        if (tL_error != null) {
            AlertsCreator.processError(this.currentAccount, tL_error, null, tLObject2, new Object[0]);
            removeFromSendingMessages(message.id, z);
            revertEditingMessageObject(messageObject);
            return;
        }
        String str2 = message.attachPath;
        final TLRPC.Updates updates = (TLRPC.Updates) tLObject;
        ArrayList<TLRPC.Update> arrayList = updates.updates;
        while (true) {
            if (i >= arrayList.size()) {
                break;
            }
            TLRPC.Update update = arrayList.get(i);
            if (update instanceof TLRPC.TL_updateEditMessage) {
                message2 = ((TLRPC.TL_updateEditMessage) update).message;
                break;
            }
            if (update instanceof TLRPC.TL_updateEditChannelMessage) {
                message2 = ((TLRPC.TL_updateEditChannelMessage) update).message;
                break;
            }
            if (update instanceof TLRPC.TL_updateNewScheduledMessage) {
                message2 = ((TLRPC.TL_updateNewScheduledMessage) update).message;
                break;
            } else {
                if (update instanceof TLRPC.TL_updateQuickReplyMessage) {
                    QuickRepliesController.getInstance(this.currentAccount).processUpdate(update, MessageObject.getQuickReplyName(message), MessageObject.getQuickReplyId(message));
                    message2 = ((TLRPC.TL_updateQuickReplyMessage) update).message;
                    break;
                }
                i++;
            }
        }
        TLRPC.Message message3 = message2;
        if (message3 != null) {
            ImageLoader.saveMessageThumbs(message3);
            updateMediaPaths(messageObject, message3, message3.id, str, false);
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda86
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequest$63(updates, message, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$65(TLRPC.TL_updateShortSentMessage tL_updateShortSentMessage) {
        getMessagesController().processNewDifferenceParams(-1, tL_updateShortSentMessage.pts, tL_updateShortSentMessage.date, tL_updateShortSentMessage.pts_count);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$66(TLRPC.TL_updateNewMessage tL_updateNewMessage) {
        getMessagesController().processNewDifferenceParams(-1, tL_updateNewMessage.pts, -1, tL_updateNewMessage.pts_count);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$67(TLRPC.TL_updateNewChannelMessage tL_updateNewChannelMessage) {
        getMessagesController().processNewChannelDifferenceParams(tL_updateNewChannelMessage.pts, tL_updateNewChannelMessage.pts_count, tL_updateNewChannelMessage.message.peer_id.channel_id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$68(TLRPC.TL_updateNewChannelMessage tL_updateNewChannelMessage, long j) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.add(Integer.valueOf(tL_updateNewChannelMessage.message.id));
        getMessagesStorage().updatePinnedMessages(-j, arrayList, true, -1, 0, false, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$69(TLRPC.Updates updates) {
        getMessagesController().processUpdates(updates, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$70(boolean z, TLRPC.Message message, ArrayList arrayList, boolean z2, ArrayList arrayList2, int i) {
        getMessagesController().deleteMessages(arrayList, null, null, message.dialog_id, false, z2 ? 1 : 0, false, 0L, null, 0, !z2 && z, (!z || message == null) ? 0 : message.id);
        getMessagesController().updateInterfaceWithMessages(message.dialog_id, arrayList2, z ? 1 : 0);
        getMediaDataController().increasePeerRaiting(message.dialog_id);
        processSentMessage(i);
        removeFromSendingMessages(i, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$71(ArrayList arrayList, final boolean z, final boolean z2, final TLRPC.Message message, final ArrayList arrayList2, final ArrayList arrayList3, final int i) {
        getMessagesStorage().putMessages(arrayList, true, false, false, 0, false, !z ? 1 : 0, 0L);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequest$70(z2, message, arrayList2, z, arrayList3, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$72(TLRPC.Message message, int i, int i2, boolean z) {
        getMediaDataController().increasePeerRaiting(message.dialog_id);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByServer, Integer.valueOf(i), Integer.valueOf(message.id), message, Long.valueOf(message.dialog_id), 0L, Integer.valueOf(i2), Boolean.valueOf(z));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByServer2, Integer.valueOf(i), Integer.valueOf(message.id), message, Long.valueOf(message.dialog_id), 0L, Integer.valueOf(i2), Boolean.valueOf(z));
        processSentMessage(i);
        removeFromSendingMessages(i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$73(final boolean z, final TLRPC.Message message, final int i, ArrayList arrayList, final int i2) {
        int i3 = (message.quick_reply_shortcut_id == 0 && message.quick_reply_shortcut == null) ? z ? 1 : 0 : 5;
        getMessagesStorage().updateMessageStateAndId(message.random_id, MessageObject.getPeerId(message.peer_id), Integer.valueOf(i), message.id, 0, false, z ? 1 : 0, message.quick_reply_shortcut_id);
        getMessagesStorage().putMessages((ArrayList<TLRPC.Message>) arrayList, true, false, false, 0, i3, message.quick_reply_shortcut_id);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda93
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequest$72(message, i, i2, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v32 */
    /* JADX WARN: Type inference failed for: r10v33 */
    public /* synthetic */ void lambda$performSendMessageRequest$74(final boolean z, TLRPC.TL_error tL_error, final TLRPC.Message message, TLObject tLObject, MessageObject messageObject, String str, TLObject tLObject2) {
        TLRPC.TL_error tL_error2;
        boolean z2;
        ?? r10;
        String str2;
        int i;
        final boolean z3;
        int i2;
        boolean z4;
        boolean z5;
        int mediaExistanceFlags;
        boolean z6;
        int i3;
        boolean z7;
        TLRPC.MessageReplyHeader messageReplyHeader;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11 = z;
        if (tL_error == null) {
            int i4 = message.id;
            final ArrayList arrayList = new ArrayList();
            boolean z12 = message.date == 2147483646;
            if (tLObject instanceof TLRPC.TL_updateShortSentMessage) {
                final TLRPC.TL_updateShortSentMessage tL_updateShortSentMessage = (TLRPC.TL_updateShortSentMessage) tLObject;
                i = i4;
                z4 = false;
                updateMediaPaths(messageObject, null, tL_updateShortSentMessage.id, null, false);
                int mediaExistanceFlags2 = messageObject.getMediaExistanceFlags();
                int i5 = tL_updateShortSentMessage.id;
                message.id = i5;
                message.local_id = i5;
                message.date = tL_updateShortSentMessage.date;
                message.entities = tL_updateShortSentMessage.entities;
                message.out = tL_updateShortSentMessage.out;
                if ((tL_updateShortSentMessage.flags & ConnectionsManager.FileTypeVideo) != 0) {
                    message.ttl_period = tL_updateShortSentMessage.ttl_period;
                    message.flags |= ConnectionsManager.FileTypeVideo;
                }
                TLRPC.MessageMedia messageMedia = tL_updateShortSentMessage.media;
                if (messageMedia != null) {
                    message.media = messageMedia;
                    message.flags |= LiteMode.FLAG_CALLS_ANIMATIONS;
                    ImageLoader.saveMessageThumbs(message);
                }
                TLRPC.MessageMedia messageMedia2 = tL_updateShortSentMessage.media;
                if (((messageMedia2 instanceof TLRPC.TL_messageMediaGame) || (messageMedia2 instanceof TLRPC.TL_messageMediaInvoice)) && !TextUtils.isEmpty(tL_updateShortSentMessage.message)) {
                    message.message = tL_updateShortSentMessage.message;
                }
                if (!message.entities.isEmpty()) {
                    message.flags |= 128;
                }
                Integer numValueOf = getMessagesController().dialogs_read_outbox_max.get(Long.valueOf(message.dialog_id));
                if (numValueOf == null) {
                    numValueOf = Integer.valueOf(getMessagesStorage().getDialogReadMax(message.out, message.dialog_id));
                    getMessagesController().dialogs_read_outbox_max.put(Long.valueOf(message.dialog_id), numValueOf);
                }
                message.unread = numValueOf.intValue() < message.id;
                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda69
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$performSendMessageRequest$65(tL_updateShortSentMessage);
                    }
                });
                arrayList.add(message);
                i2 = mediaExistanceFlags2;
                z3 = false;
            } else {
                i = i4;
                if (tLObject instanceof TLRPC.Updates) {
                    final TLRPC.Updates updates = (TLRPC.Updates) tLObject;
                    ArrayList<TLRPC.Update> arrayList2 = updates.updates;
                    boolean z13 = z11 ? 1 : 0;
                    int i6 = 0;
                    TLRPC.Message message2 = null;
                    LongSparseArray longSparseArray = null;
                    while (i6 < arrayList2.size()) {
                        TLRPC.Update update = arrayList2.get(i6);
                        if (update instanceof TLRPC.TL_updateNewMessage) {
                            final TLRPC.TL_updateNewMessage tL_updateNewMessage = (TLRPC.TL_updateNewMessage) update;
                            TLRPC.Message message3 = tL_updateNewMessage.message;
                            if (message3.action == null) {
                                arrayList.add(message3);
                                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda70
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$performSendMessageRequest$66(tL_updateNewMessage);
                                    }
                                });
                                arrayList2.remove(i6);
                                i6--;
                                z7 = z13;
                                message2 = message3;
                                i3 = 1;
                            }
                            i3 = 1;
                            z7 = z13;
                        } else {
                            if (update instanceof TLRPC.TL_updateNewChannelMessage) {
                                final TLRPC.TL_updateNewChannelMessage tL_updateNewChannelMessage = (TLRPC.TL_updateNewChannelMessage) update;
                                final long updateChannelId = MessagesController.getUpdateChannelId(tL_updateNewChannelMessage);
                                TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(updateChannelId));
                                if ((chat == null || chat.megagroup) && (messageReplyHeader = tL_updateNewChannelMessage.message.reply_to) != null && (messageReplyHeader.reply_to_top_id != 0 || messageReplyHeader.reply_to_msg_id != 0)) {
                                    if (longSparseArray == null) {
                                        longSparseArray = new LongSparseArray();
                                    }
                                    long dialogId = MessageObject.getDialogId(tL_updateNewChannelMessage.message);
                                    SparseArray sparseArray = (SparseArray) longSparseArray.get(dialogId);
                                    if (sparseArray == null) {
                                        sparseArray = new SparseArray();
                                        longSparseArray.put(dialogId, sparseArray);
                                    }
                                    TLRPC.MessageReplyHeader messageReplyHeader2 = tL_updateNewChannelMessage.message.reply_to;
                                    int i7 = messageReplyHeader2.reply_to_top_id;
                                    if (i7 == 0) {
                                        i7 = messageReplyHeader2.reply_to_msg_id;
                                    }
                                    TLRPC.MessageReplies tL_messageReplies = (TLRPC.MessageReplies) sparseArray.get(i7);
                                    if (tL_messageReplies == null) {
                                        tL_messageReplies = new TLRPC.TL_messageReplies();
                                        sparseArray.put(i7, tL_messageReplies);
                                    }
                                    TLRPC.Peer peer = tL_updateNewChannelMessage.message.from_id;
                                    if (peer != null) {
                                        tL_messageReplies.recent_repliers.add(0, peer);
                                    }
                                    tL_messageReplies.replies++;
                                }
                                message2 = tL_updateNewChannelMessage.message;
                                arrayList.add(message2);
                                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda71
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$performSendMessageRequest$67(tL_updateNewChannelMessage);
                                    }
                                });
                                arrayList2.remove(i6);
                                i6--;
                                if (tL_updateNewChannelMessage.message.pinned) {
                                    Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda72
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.lambda$performSendMessageRequest$68(tL_updateNewChannelMessage, updateChannelId);
                                        }
                                    });
                                }
                                i3 = 1;
                            } else if (update instanceof TLRPC.TL_updateNewScheduledMessage) {
                                TLRPC.TL_updateNewScheduledMessage tL_updateNewScheduledMessage = (TLRPC.TL_updateNewScheduledMessage) update;
                                int i8 = 0;
                                while (true) {
                                    if (i8 >= arrayList.size()) {
                                        break;
                                    }
                                    if (((TLRPC.Message) arrayList.get(i8)).id == tL_updateNewScheduledMessage.message.id) {
                                        arrayList.remove(i8);
                                        break;
                                    }
                                    i8++;
                                }
                                message2 = tL_updateNewScheduledMessage.message;
                                arrayList.add(message2);
                                arrayList2.remove(i6);
                                i6--;
                                i3 = 1;
                                z7 = true;
                            } else if (update instanceof TLRPC.TL_updateQuickReplyMessage) {
                                QuickRepliesController.getInstance(this.currentAccount).processUpdate(update, messageObject.getQuickReplyName(), messageObject.getQuickReplyId());
                                message2 = ((TLRPC.TL_updateQuickReplyMessage) update).message;
                                arrayList.add(message2);
                                arrayList2.remove(i6);
                                i6--;
                                z7 = z13;
                                i3 = 1;
                            } else {
                                if (update instanceof TLRPC.TL_updateDeleteScheduledMessages) {
                                    TLRPC.TL_updateDeleteScheduledMessages tL_updateDeleteScheduledMessages = (TLRPC.TL_updateDeleteScheduledMessages) update;
                                    if (messageObject.getDialogId() == DialogObject.getPeerDialogId(tL_updateDeleteScheduledMessages.peer)) {
                                        Iterator it = tL_updateDeleteScheduledMessages.messages.iterator();
                                        while (it.hasNext()) {
                                            int iIntValue = ((Integer) it.next()).intValue();
                                            int i9 = 0;
                                            while (true) {
                                                if (i9 >= arrayList.size()) {
                                                    break;
                                                }
                                                if (((TLRPC.Message) arrayList.get(i9)).id == iIntValue) {
                                                    arrayList.remove(i9);
                                                    break;
                                                }
                                                i9++;
                                            }
                                        }
                                        i3 = 1;
                                        arrayList2.remove(i6);
                                        i6--;
                                    }
                                }
                                i3 = 1;
                                z7 = z13;
                            }
                            z7 = false;
                        }
                        i6 += i3;
                        z13 = z7;
                    }
                    if (longSparseArray != null) {
                        getMessagesStorage().putChannelViews(null, null, longSparseArray, true);
                        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didUpdateMessagesViews, null, null, longSparseArray, Boolean.TRUE);
                    }
                    if (message2 != null) {
                        MessageObject.getDialogId(message2);
                        boolean z14 = (!z12 || message2.date == 2147483646) ? z13 : false;
                        ImageLoader.saveMessageThumbs(message2);
                        if (!z14) {
                            Integer numValueOf2 = getMessagesController().dialogs_read_outbox_max.get(Long.valueOf(message2.dialog_id));
                            if (numValueOf2 == null) {
                                numValueOf2 = Integer.valueOf(getMessagesStorage().getDialogReadMax(message2.out, message2.dialog_id));
                                getMessagesController().dialogs_read_outbox_max.put(Long.valueOf(message2.dialog_id), numValueOf2);
                            }
                            message2.unread = numValueOf2.intValue() < message2.id;
                        }
                        TLRPC.Message message4 = messageObject.messageOwner;
                        message4.post_author = message2.post_author;
                        if ((message2.flags & ConnectionsManager.FileTypeVideo) != 0) {
                            message4.ttl_period = message2.ttl_period;
                            message4.flags |= ConnectionsManager.FileTypeVideo;
                        }
                        message4.entities = message2.entities;
                        int i10 = message2.quick_reply_shortcut_id;
                        message4.quick_reply_shortcut_id = i10;
                        if (i10 != 0) {
                            message4.flags |= 1073741824;
                        }
                        updateMediaPaths(messageObject, message2, message2.id, str, false);
                        mediaExistanceFlags = messageObject.getMediaExistanceFlags();
                        message.id = message2.id;
                        z5 = z14;
                        z6 = false;
                    } else {
                        if (BuildVars.LOGS_ENABLED) {
                            StringBuilder sb = new StringBuilder();
                            for (int i11 = 0; i11 < arrayList2.size(); i11++) {
                                sb.append(arrayList2.get(i11).getClass().getSimpleName());
                                sb.append(", ");
                            }
                            FileLog.d("can't find message in updates " + ((Object) sb));
                        }
                        z5 = z13;
                        mediaExistanceFlags = 0;
                        z6 = true;
                    }
                    Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda73
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$performSendMessageRequest$69(updates);
                        }
                    });
                    i2 = mediaExistanceFlags;
                    z4 = z6;
                    z3 = z5;
                } else {
                    z3 = z;
                    i2 = 0;
                    z4 = false;
                }
            }
            if (MessageObject.isLiveLocationMessage(message) && message.via_bot_id == 0 && TextUtils.isEmpty(message.via_bot_name)) {
                getLocationController().addSharingLocation(message);
            }
            if (z4) {
                z8 = z;
            } else {
                getStatsController().incrementSentItemsCount(ApplicationLoader.getCurrentNetworkType(), 1, 1);
                message.send_state = 0;
                message.errorNewPriceStars = 0L;
                message.errorAllowedPriceStars = 0L;
                boolean z15 = z;
                if (z15 != z3) {
                    final ArrayList arrayList3 = new ArrayList();
                    arrayList3.add(Integer.valueOf(i));
                    final ArrayList arrayList4 = new ArrayList();
                    arrayList4.add(new MessageObject(messageObject.currentAccount, messageObject.messageOwner, true, true));
                    final int i12 = i;
                    getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda74
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$performSendMessageRequest$71(arrayList, z, z3, message, arrayList3, arrayList4, i12);
                        }
                    });
                    z8 = z15;
                } else {
                    z9 = z4;
                    getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByServer, Integer.valueOf(i), Integer.valueOf(message.id), message, Long.valueOf(message.dialog_id), 0L, Integer.valueOf(i2), Boolean.valueOf(z));
                    getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByServer2, Integer.valueOf(i), Integer.valueOf(message.id), message, Long.valueOf(message.dialog_id), 0L, Integer.valueOf(i2), Boolean.valueOf(z));
                    final int i13 = i;
                    final int i14 = i2;
                    getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda75
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$performSendMessageRequest$73(z, message, i13, arrayList, i14);
                        }
                    });
                    z10 = z15;
                    tL_error2 = tL_error;
                    z2 = z9;
                    r10 = z10;
                }
            }
            z9 = z4;
            z10 = z8;
            tL_error2 = tL_error;
            z2 = z9;
            r10 = z10;
        } else {
            tL_error2 = tL_error;
            AlertsCreator.processError(this.currentAccount, tL_error2, null, tLObject2, new Object[0]);
            z2 = true;
            r10 = z11;
        }
        if (z2) {
            getMessagesStorage().markMessageAsSendError(message, r10);
            message.send_state = 2;
            if (tL_error2 != null && (str2 = tL_error2.text) != null && str2.startsWith("ALLOW_PAYMENT_REQUIRED_")) {
                StarsController.getInstance(this.currentAccount);
                message.errorAllowedPriceStars = StarsController.getAllowedPaidStars(tLObject2);
                message.errorNewPriceStars = Long.parseLong(tL_error2.text.substring(23));
                StarsController.getInstance(this.currentAccount).showPriceChangedToast(Arrays.asList(messageObject));
                getMessagesStorage().updateMessageCustomParams(MessageObject.getDialogId(message), message);
            }
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageSendError, Integer.valueOf(message.id));
            processSentMessage(message.id);
            removeFromSendingMessages(message.id, r10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$75(final TLObject tLObject, final MessageObject messageObject, final String str, DelayedMessage delayedMessage, boolean z, final DelayedMessage delayedMessage2, Object obj, HashMap map, final boolean z2, final TLRPC.Message message, final TLObject tLObject2, final TLRPC.TL_error tL_error) {
        if (tL_error != null && (((tLObject instanceof TLRPC.TL_messages_sendMedia) || (tLObject instanceof TLRPC.TL_messages_editMessage)) && FileRefController.isFileRefError(tL_error.text))) {
            if (FileRefController.isFileRefErrorCover(tL_error.text)) {
                if (removeCoverFromRequest(tLObject)) {
                    lambda$performSendMessageRequest$60(tLObject, messageObject, str, delayedMessage, z, delayedMessage2, obj, map, z2);
                    return;
                }
            } else if (obj != null) {
                getFileRefController().requestReference(obj, tLObject, messageObject, str, delayedMessage, Boolean.valueOf(z), delayedMessage2, Boolean.valueOf(z2));
                return;
            } else if (delayedMessage2 != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda54
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$performSendMessageRequest$61(message, z2, tLObject, delayedMessage2);
                    }
                });
                return;
            }
        }
        AndroidUtilities.runOnUIThread(tLObject instanceof TLRPC.TL_messages_editMessage ? new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda55
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequest$64(tL_error, message, tLObject2, messageObject, str, z2, tLObject);
            }
        } : new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda56
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequest$74(z2, tL_error, message, tLObject2, messageObject, str, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$76(TLRPC.Message message, int i) {
        message.send_state = 0;
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByAck, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$77(final TLRPC.Message message) {
        final int i = message.id;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequest$76(message, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$51(TLObject tLObject, int i, DelayedMessage delayedMessage, ArrayList arrayList, boolean z) {
        boolean z2;
        if (tLObject instanceof TLRPC.TL_messages_sendMultiMedia) {
            TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia = (TLRPC.TL_messages_sendMultiMedia) tLObject;
            int size = tL_messages_sendMultiMedia.multi_media.size();
            z2 = false;
            for (int i2 = 0; i2 < size; i2++) {
                if (i >= 0) {
                    if (i == i2) {
                        removeFromSendingMessages(((MessageObject) arrayList.get(i2)).getId(), z);
                        TLRPC.TL_inputSingleMedia tL_inputSingleMedia = (TLRPC.TL_inputSingleMedia) tL_messages_sendMultiMedia.multi_media.get(i2);
                        TLRPC.InputMedia inputMedia = tL_inputSingleMedia.media;
                        if ((inputMedia instanceof TLRPC.TL_inputMediaPhoto) || (inputMedia instanceof TLRPC.TL_inputMediaDocument)) {
                            tL_inputSingleMedia.media = delayedMessage.inputMedias.get(i2);
                        }
                        delayedMessage.videoEditedInfo = delayedMessage.videoEditedInfos.get(i2);
                        delayedMessage.httpLocation = delayedMessage.httpLocations.get(i2);
                        TLRPC.PhotoSize photoSize = delayedMessage.locations.get(i2);
                        delayedMessage.photoSize = photoSize;
                        delayedMessage.performMediaUpload = true;
                        if (tL_inputSingleMedia.media.file == null || photoSize != null) {
                            z2 = true;
                        }
                        performSendDelayedMessage(delayedMessage, i2);
                    }
                } else if (delayedMessage.parentObjects.get(i2) == null) {
                }
            }
        } else if (tLObject instanceof TLRPC.TL_messages_sendMedia) {
            TLRPC.TL_inputMediaPaidMedia tL_inputMediaPaidMedia = (TLRPC.TL_inputMediaPaidMedia) ((TLRPC.TL_messages_sendMedia) tLObject).media;
            int size2 = tL_inputMediaPaidMedia.extended_media.size();
            z2 = false;
            for (int i3 = 0; i3 < size2; i3++) {
                if (i >= 0) {
                    if (i == i3) {
                        removeFromSendingMessages(((MessageObject) arrayList.get(i3)).getId(), z);
                        TLRPC.InputMedia inputMedia2 = (TLRPC.InputMedia) tL_inputMediaPaidMedia.extended_media.get(i3);
                        if ((inputMedia2 instanceof TLRPC.TL_inputMediaPhoto) || (inputMedia2 instanceof TLRPC.TL_inputMediaDocument)) {
                            ArrayList arrayList2 = tL_inputMediaPaidMedia.extended_media;
                            TLRPC.InputMedia inputMedia3 = delayedMessage.inputMedias.get(i3);
                            arrayList2.set(i3, inputMedia3);
                            inputMedia2 = inputMedia3;
                        }
                        delayedMessage.videoEditedInfo = delayedMessage.videoEditedInfos.get(i3);
                        delayedMessage.httpLocation = delayedMessage.httpLocations.get(i3);
                        TLRPC.PhotoSize photoSize2 = delayedMessage.locations.get(i3);
                        delayedMessage.photoSize = photoSize2;
                        delayedMessage.performMediaUpload = true;
                        if (inputMedia2.file == null || photoSize2 != null) {
                            z2 = true;
                        }
                        performSendDelayedMessage(delayedMessage, i3);
                    }
                } else if (delayedMessage.parentObjects.get(i3) == null) {
                }
            }
        } else {
            z2 = false;
        }
        if (z2) {
            return;
        }
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            TLRPC.Message message = ((MessageObject) arrayList.get(i4)).messageOwner;
            getMessagesStorage().markMessageAsSendError(message, z ? 1 : 0);
            message.send_state = 2;
            message.errorAllowedPriceStars = 0L;
            message.errorNewPriceStars = 0L;
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageSendError, Integer.valueOf(message.id));
            processSentMessage(message.id);
            removeFromSendingMessages(message.id, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$52(TLRPC.TL_updateNewMessage tL_updateNewMessage) {
        getMessagesController().processNewDifferenceParams(-1, tL_updateNewMessage.pts, -1, tL_updateNewMessage.pts_count);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$53(TLRPC.TL_updateNewChannelMessage tL_updateNewChannelMessage) {
        getMessagesController().processNewChannelDifferenceParams(tL_updateNewChannelMessage.pts, tL_updateNewChannelMessage.pts_count, tL_updateNewChannelMessage.message.peer_id.channel_id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$54(TLRPC.TL_updateNewChannelMessage tL_updateNewChannelMessage, long j) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.add(Integer.valueOf(tL_updateNewChannelMessage.message.id));
        getMessagesStorage().updatePinnedMessages(-j, arrayList, true, -1, 0, false, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$55(int[] iArr, int[] iArr2, boolean z, boolean z2, MessageObject messageObject, SparseArray sparseArray, ArrayList arrayList, TLRPC.Message message, int i, long j, int i2) {
        char c;
        char c2;
        int i3 = iArr[0] + 1;
        iArr[0] = i3;
        if (i3 != iArr2[0] || z == z2) {
            c = 0;
            c2 = 1;
        } else {
            long dialogId = messageObject.getDialogId();
            int iKeyAt = (!z2 || sparseArray.size() <= 1) ? 0 : sparseArray.keyAt(0);
            c2 = 1;
            c = 0;
            getMessagesController().deleteMessages(arrayList, null, null, dialogId, false, z ? 1 : 0, false, 0L, null, 0, z2 && !z, iKeyAt);
        }
        getMediaDataController().increasePeerRaiting(message.dialog_id);
        NotificationCenter notificationCenter = getNotificationCenter();
        int i4 = NotificationCenter.messageReceivedByServer;
        Integer numValueOf = Integer.valueOf(i);
        Integer numValueOf2 = Integer.valueOf(message.id);
        Long lValueOf = Long.valueOf(message.dialog_id);
        Long lValueOf2 = Long.valueOf(j);
        Integer numValueOf3 = Integer.valueOf(i2);
        Boolean boolValueOf = Boolean.valueOf(z2);
        Object[] objArr = new Object[7];
        objArr[c] = numValueOf;
        objArr[c2] = numValueOf2;
        objArr[2] = message;
        objArr[3] = lValueOf;
        objArr[4] = lValueOf2;
        objArr[5] = numValueOf3;
        objArr[6] = boolValueOf;
        notificationCenter.lambda$postNotificationNameOnUIThread$1(i4, objArr);
        NotificationCenter notificationCenter2 = getNotificationCenter();
        int i5 = NotificationCenter.messageReceivedByServer2;
        Integer numValueOf4 = Integer.valueOf(i);
        Integer numValueOf5 = Integer.valueOf(message.id);
        Long lValueOf3 = Long.valueOf(message.dialog_id);
        Long lValueOf4 = Long.valueOf(j);
        Integer numValueOf6 = Integer.valueOf(i2);
        Boolean boolValueOf2 = Boolean.valueOf(z2);
        Object[] objArr2 = new Object[7];
        objArr2[c] = numValueOf4;
        objArr2[c2] = numValueOf5;
        objArr2[2] = message;
        objArr2[3] = lValueOf3;
        objArr2[4] = lValueOf4;
        objArr2[5] = numValueOf6;
        objArr2[6] = boolValueOf2;
        notificationCenter2.lambda$postNotificationNameOnUIThread$1(i5, objArr2);
        processSentMessage(i);
        removeFromSendingMessages(i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$56(final boolean z, final TLRPC.Message message, final int i, ArrayList arrayList, final int[] iArr, final int[] iArr2, final boolean z2, final MessageObject messageObject, final SparseArray sparseArray, final ArrayList arrayList2, final long j, final int i2) {
        int i3 = (message.quick_reply_shortcut_id == 0 && message.quick_reply_shortcut == null) ? z ? 1 : 0 : 5;
        getMessagesStorage().updateMessageStateAndId(message.random_id, MessageObject.getPeerId(message.peer_id), Integer.valueOf(i), message.id, 0, false, i3, message.quick_reply_shortcut_id);
        getMessagesStorage().putMessages((ArrayList<TLRPC.Message>) arrayList, true, false, false, 0, i3, message.quick_reply_shortcut_id);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequestMulti$55(iArr, iArr2, z2, z, messageObject, sparseArray, arrayList2, message, i, j, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$57(TLRPC.Updates updates) {
        getMessagesController().processUpdates(updates, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$58(TLRPC.TL_error tL_error, TLObject tLObject, final boolean z, ArrayList arrayList, ArrayList arrayList2, TLObject tLObject2) {
        final SendMessagesHelper sendMessagesHelper;
        char c;
        TLRPC.TL_error tL_error2;
        boolean z2;
        String str;
        int i;
        TLRPC.Updates updates;
        TLRPC.Message message;
        ArrayList arrayList3;
        int i2;
        TLRPC.Message message2;
        TLRPC.Updates updates2;
        LongSparseArray longSparseArray;
        SparseArray sparseArray;
        ArrayList arrayList4;
        int i3;
        String quickReplyName;
        int i4;
        TLRPC.MessageReplyHeader messageReplyHeader;
        ArrayList arrayList5 = arrayList;
        if (tL_error == null) {
            SparseArray sparseArray2 = new SparseArray();
            LongSparseArray longSparseArray2 = new LongSparseArray();
            TLRPC.Updates updates3 = (TLRPC.Updates) tLObject;
            ArrayList<TLRPC.Update> arrayList6 = updates3.updates;
            boolean z3 = z ? 1 : 0;
            int i5 = 0;
            LongSparseArray longSparseArray3 = null;
            while (i5 < arrayList6.size()) {
                TLRPC.Update update = arrayList6.get(i5);
                if (update instanceof TLRPC.TL_updateMessageID) {
                    TLRPC.TL_updateMessageID tL_updateMessageID = (TLRPC.TL_updateMessageID) update;
                    longSparseArray2.put(tL_updateMessageID.random_id, Integer.valueOf(tL_updateMessageID.id));
                    arrayList6.remove(i5);
                    i5--;
                } else {
                    if (update instanceof TLRPC.TL_updateNewMessage) {
                        final TLRPC.TL_updateNewMessage tL_updateNewMessage = (TLRPC.TL_updateNewMessage) update;
                        TLRPC.Message message3 = tL_updateNewMessage.message;
                        sparseArray2.put(message3.id, message3);
                        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda87
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$performSendMessageRequestMulti$52(tL_updateNewMessage);
                            }
                        });
                    } else if (update instanceof TLRPC.TL_updateNewChannelMessage) {
                        final TLRPC.TL_updateNewChannelMessage tL_updateNewChannelMessage = (TLRPC.TL_updateNewChannelMessage) update;
                        final long updateChannelId = MessagesController.getUpdateChannelId(tL_updateNewChannelMessage);
                        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(updateChannelId));
                        if ((chat == null || chat.megagroup) && (messageReplyHeader = tL_updateNewChannelMessage.message.reply_to) != null && (messageReplyHeader.reply_to_top_id != 0 || messageReplyHeader.reply_to_msg_id != 0)) {
                            if (longSparseArray3 == null) {
                                longSparseArray3 = new LongSparseArray();
                            }
                            long dialogId = MessageObject.getDialogId(tL_updateNewChannelMessage.message);
                            SparseArray sparseArray3 = (SparseArray) longSparseArray3.get(dialogId);
                            if (sparseArray3 == null) {
                                sparseArray3 = new SparseArray();
                                longSparseArray3.put(dialogId, sparseArray3);
                            }
                            TLRPC.MessageReplyHeader messageReplyHeader2 = tL_updateNewChannelMessage.message.reply_to;
                            int i6 = messageReplyHeader2.reply_to_top_id;
                            if (i6 == 0) {
                                i6 = messageReplyHeader2.reply_to_msg_id;
                            }
                            TLRPC.MessageReplies tL_messageReplies = (TLRPC.MessageReplies) sparseArray3.get(i6);
                            if (tL_messageReplies == null) {
                                tL_messageReplies = new TLRPC.TL_messageReplies();
                                sparseArray3.put(i6, tL_messageReplies);
                            }
                            TLRPC.MessageReplies messageReplies = tL_messageReplies;
                            TLRPC.Peer peer = tL_updateNewChannelMessage.message.from_id;
                            if (peer != null) {
                                messageReplies.recent_repliers.add(0, peer);
                            }
                            messageReplies.replies++;
                        }
                        TLRPC.Message message4 = tL_updateNewChannelMessage.message;
                        sparseArray2.put(message4.id, message4);
                        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda88
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$performSendMessageRequestMulti$53(tL_updateNewChannelMessage);
                            }
                        });
                        arrayList6.remove(i5);
                        i5--;
                        if (tL_updateNewChannelMessage.message.pinned) {
                            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda89
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$performSendMessageRequestMulti$54(tL_updateNewChannelMessage, updateChannelId);
                                }
                            });
                        }
                    } else if (update instanceof TLRPC.TL_updateNewScheduledMessage) {
                        TLRPC.Message message5 = ((TLRPC.TL_updateNewScheduledMessage) update).message;
                        sparseArray2.put(message5.id, message5);
                        arrayList6.remove(i5);
                        i5--;
                        i4 = 1;
                        z3 = true;
                        i5 += i4;
                    } else if (update instanceof TLRPC.TL_updateQuickReplyMessage) {
                        QuickRepliesController quickRepliesController = QuickRepliesController.getInstance(this.currentAccount);
                        if (arrayList.isEmpty()) {
                            i3 = 0;
                            quickReplyName = null;
                        } else {
                            i3 = 0;
                            quickReplyName = ((MessageObject) arrayList5.get(0)).getQuickReplyName();
                        }
                        quickRepliesController.processUpdate(update, quickReplyName, (arrayList.isEmpty() ? null : Integer.valueOf(((MessageObject) arrayList5.get(i3)).getQuickReplyId())).intValue());
                        TLRPC.Message message6 = ((TLRPC.TL_updateQuickReplyMessage) update).message;
                        sparseArray2.put(message6.id, message6);
                    }
                    arrayList6.remove(i5);
                    i5--;
                    i4 = 1;
                    z3 = false;
                    i5 += i4;
                }
                i4 = 1;
                i5 += i4;
            }
            if (longSparseArray3 != null) {
                getMessagesStorage().putChannelViews(null, null, longSparseArray3, true);
                i = 0;
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didUpdateMessagesViews, null, null, longSparseArray3, Boolean.TRUE);
            } else {
                i = 0;
            }
            int[] iArr = new int[1];
            iArr[i] = i;
            final int[] iArr2 = {i};
            final ArrayList arrayList7 = new ArrayList();
            int i7 = 0;
            while (i7 < arrayList.size()) {
                final MessageObject messageObject = (MessageObject) arrayList5.get(i7);
                String str2 = (String) arrayList2.get(i7);
                TLRPC.Message message7 = messageObject.messageOwner;
                int i8 = message7.id;
                ArrayList arrayList8 = new ArrayList();
                int i9 = i7;
                Integer num = (Integer) longSparseArray2.get(message7.random_id);
                if (num == null || (message = (TLRPC.Message) sparseArray2.get(num.intValue())) == null) {
                    updates = updates3;
                    z2 = true;
                    break;
                }
                MessageObject.getDialogId(message);
                arrayList8.add(message);
                if ((message.flags & ConnectionsManager.FileTypeVideo) != 0) {
                    TLRPC.Message message8 = messageObject.messageOwner;
                    arrayList3 = arrayList8;
                    message8.ttl_period = message.ttl_period;
                    message8.flags |= ConnectionsManager.FileTypeVideo;
                } else {
                    arrayList3 = arrayList8;
                }
                if (tLObject2 instanceof TLRPC.TL_messages_sendMedia) {
                    arrayList4 = arrayList3;
                    i2 = i8;
                    updates2 = updates3;
                    longSparseArray = longSparseArray2;
                    sparseArray = sparseArray2;
                    message2 = message7;
                    updateMediaPaths((MessageObject) arrayList5.get(0), message, message.id, arrayList2, false, -1);
                } else {
                    i2 = i8;
                    message2 = message7;
                    updates2 = updates3;
                    longSparseArray = longSparseArray2;
                    sparseArray = sparseArray2;
                    arrayList4 = arrayList3;
                    updateMediaPaths(messageObject, message, message.id, str2, false);
                }
                final int mediaExistanceFlags = messageObject.getMediaExistanceFlags();
                message2.id = message.id;
                int i10 = message.quick_reply_shortcut_id;
                message2.quick_reply_shortcut_id = i10;
                if (i10 != 0) {
                    message2.flags |= 1073741824;
                }
                final long j = message.grouped_id;
                if (!z) {
                    Integer numValueOf = getMessagesController().dialogs_read_outbox_max.get(Long.valueOf(message.dialog_id));
                    if (numValueOf == null) {
                        numValueOf = Integer.valueOf(getMessagesStorage().getDialogReadMax(message.out, message.dialog_id));
                        getMessagesController().dialogs_read_outbox_max.put(Long.valueOf(message.dialog_id), numValueOf);
                    }
                    message.unread = numValueOf.intValue() < message.id;
                }
                iArr[0] = iArr[0] + 1;
                arrayList7.add(Integer.valueOf(i2));
                getStatsController().incrementSentItemsCount(ApplicationLoader.getCurrentNetworkType(), 1, 1);
                message2.send_state = 0;
                message2.errorAllowedPriceStars = 0L;
                message2.errorNewPriceStars = 0L;
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByServer, Integer.valueOf(i2), Integer.valueOf(message2.id), message2, Long.valueOf(message2.dialog_id), Long.valueOf(j), Integer.valueOf(mediaExistanceFlags), Boolean.valueOf(z3));
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByServer2, Integer.valueOf(i2), Integer.valueOf(message2.id), message2, Long.valueOf(message2.dialog_id), Long.valueOf(j), Integer.valueOf(mediaExistanceFlags), Boolean.valueOf(z3));
                final boolean z4 = z3;
                final TLRPC.Message message9 = message2;
                final int i11 = i2;
                final ArrayList arrayList9 = arrayList4;
                final int[] iArr3 = iArr;
                final SparseArray sparseArray4 = sparseArray;
                arrayList7 = arrayList7;
                getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda90
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$performSendMessageRequestMulti$56(z4, message9, i11, arrayList9, iArr2, iArr3, z, messageObject, sparseArray4, arrayList7, j, mediaExistanceFlags);
                    }
                });
                i7 = i9 + 1;
                arrayList5 = arrayList;
                longSparseArray2 = longSparseArray;
                iArr = iArr;
                updates3 = updates2;
                sparseArray2 = sparseArray;
            }
            updates = updates3;
            z2 = false;
            c = 0;
            sendMessagesHelper = this;
            final TLRPC.Updates updates4 = updates;
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda91
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$performSendMessageRequestMulti$57(updates4);
                }
            });
            tL_error2 = tL_error;
        } else {
            sendMessagesHelper = this;
            c = 0;
            tL_error2 = tL_error;
            AlertsCreator.processError(sendMessagesHelper.currentAccount, tL_error2, null, tLObject2, new Object[0]);
            z2 = true;
        }
        if (z2) {
            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                MessageObject messageObject2 = (MessageObject) arrayList.get(i12);
                TLRPC.Message message10 = messageObject2.messageOwner;
                getMessagesStorage().markMessageAsSendError(message10, z ? 1 : 0);
                message10.send_state = 2;
                if (!z && tL_error2 != null && (str = tL_error2.text) != null && str.startsWith("ALLOW_PAYMENT_REQUIRED_")) {
                    StarsController.getInstance(sendMessagesHelper.currentAccount);
                    message10.errorAllowedPriceStars = StarsController.getAllowedPaidStars(tLObject2);
                    message10.errorNewPriceStars = Long.parseLong(tL_error2.text.substring(23));
                    StarsController starsController = StarsController.getInstance(sendMessagesHelper.currentAccount);
                    MessageObject[] messageObjectArr = new MessageObject[1];
                    messageObjectArr[c] = messageObject2;
                    starsController.showPriceChangedToast(Arrays.asList(messageObjectArr));
                    getMessagesStorage().updateMessageCustomParams(MessageObject.getDialogId(message10), message10);
                }
                NotificationCenter notificationCenter = getNotificationCenter();
                int i13 = NotificationCenter.messageSendError;
                Object[] objArr = new Object[1];
                objArr[c] = Integer.valueOf(message10.id);
                notificationCenter.lambda$postNotificationNameOnUIThread$1(i13, objArr);
                sendMessagesHelper.processSentMessage(message10.id);
                sendMessagesHelper.removeFromSendingMessages(message10.id, z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$59(ArrayList arrayList, final TLObject tLObject, final ArrayList arrayList2, final ArrayList arrayList3, final DelayedMessage delayedMessage, final boolean z, final TLObject tLObject2, final TLRPC.TL_error tL_error) {
        if (tL_error != null && FileRefController.isFileRefError(tL_error.text)) {
            final int fileRefErrorIndex = FileRefController.getFileRefErrorIndex(tL_error.text);
            if (arrayList != null) {
                ArrayList arrayList4 = new ArrayList(arrayList);
                if (fileRefErrorIndex >= 0) {
                    int i = 0;
                    while (i < arrayList4.size()) {
                        arrayList4.set(i, fileRefErrorIndex == i ? arrayList4.get(i) : null);
                        i++;
                    }
                }
                getFileRefController().requestReference(arrayList4, tLObject, arrayList2, arrayList3, arrayList4, delayedMessage, Boolean.valueOf(z));
                return;
            }
            if (delayedMessage != null && !delayedMessage.getRetriedToSend(fileRefErrorIndex)) {
                delayedMessage.setRetriedToSend(fileRefErrorIndex, true);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda52
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$performSendMessageRequestMulti$51(tLObject, fileRefErrorIndex, delayedMessage, arrayList2, z);
                    }
                });
                return;
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda53
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequestMulti$58(tL_error, tLObject2, z, arrayList2, arrayList3, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareImportHistory$79(Uri uri, ArrayList arrayList, MessagesStorage.LongCallback longCallback, long j) {
        if (j != 0) {
            prepareImportHistory(-j, uri, arrayList, longCallback);
        } else {
            longCallback.run(0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareImportHistory$82(MessagesStorage.LongCallback longCallback) {
        Toast.makeText(ApplicationLoader.applicationContext, LocaleController.getString(R.string.ImportFileTooLarge), 0).show();
        longCallback.run(0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareImportHistory$83(HashMap map, long j, ImportingHistory importingHistory, MessagesStorage.LongCallback longCallback) {
        this.importingHistoryFiles.putAll(map);
        this.importingHistoryMap.put(j, importingHistory);
        getFileLoader().uploadFile(importingHistory.historyPath, false, true, 0L, ConnectionsManager.FileTypeFile, true);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(j));
        longCallback.run(j);
        try {
            ApplicationLoader.applicationContext.startService(new Intent(ApplicationLoader.applicationContext, (Class<?>) ImportingService.class));
        } catch (Throwable th) {
            FileLog.e(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareImportHistory$84(ArrayList arrayList, final long j, Uri uri, final MessagesStorage.LongCallback longCallback) throws IOException {
        Runnable runnable;
        int i;
        ArrayList arrayList2 = arrayList != null ? arrayList : new ArrayList();
        final ImportingHistory importingHistory = new ImportingHistory();
        importingHistory.mediaPaths = arrayList2;
        importingHistory.dialogId = j;
        importingHistory.peer = getMessagesController().getInputPeer(j);
        final HashMap map = new HashMap();
        int size = arrayList2.size();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= size + 1) {
                runnable = new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda66
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$prepareImportHistory$83(map, j, importingHistory, longCallback);
                    }
                };
                break;
            }
            Uri uri2 = i3 == 0 ? uri : (Uri) arrayList2.get(i3 - 1);
            if (uri2 == null || AndroidUtilities.isInternalUri(uri2)) {
                i = i3;
                if (i == 0) {
                    runnable = new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda65
                        @Override // java.lang.Runnable
                        public final void run() {
                            longCallback.run(0L);
                        }
                    };
                    break;
                } else {
                    i3 = i + 1;
                    i2 = 0;
                }
            } else {
                String strFixFileName = FileLoader.fixFileName(MediaController.getFileName(uri));
                String str = (strFixFileName == null || !strFixFileName.endsWith(".zip")) ? "txt" : "zip";
                String strCopyFileToCache = MediaController.copyFileToCache(uri2, str);
                if ("zip".equals(str)) {
                    File file = new File(strCopyFileToCache);
                    try {
                        try {
                            ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(file));
                            while (true) {
                                try {
                                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                                    if (nextEntry == null) {
                                        break;
                                    }
                                    String name = nextEntry.getName();
                                    if (name != null) {
                                        int iLastIndexOf = name.lastIndexOf("/");
                                        if (iLastIndexOf >= 0) {
                                            name = name.substring(iLastIndexOf + 1);
                                        }
                                        if (name.endsWith(".txt")) {
                                            File fileCreateFileInCache = MediaController.createFileInCache(name, "txt");
                                            strCopyFileToCache = fileCreateFileInCache.getAbsolutePath();
                                            FileOutputStream fileOutputStream = new FileOutputStream(fileCreateFileInCache);
                                            byte[] bArr = new byte[1024];
                                            while (true) {
                                                int i4 = zipInputStream.read(bArr);
                                                if (i4 <= 0) {
                                                    break;
                                                } else {
                                                    fileOutputStream.write(bArr, i2, i4);
                                                }
                                            }
                                            fileOutputStream.close();
                                        }
                                    }
                                } catch (Throwable th) {
                                    try {
                                        zipInputStream.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                    throw th;
                                }
                            }
                            zipInputStream.closeEntry();
                            zipInputStream.close();
                        } catch (Exception e) {
                            FileLog.e(e);
                        }
                    } catch (IOException e2) {
                        FileLog.e(e2);
                    }
                    try {
                        file.delete();
                    } catch (Exception e3) {
                        FileLog.e(e3);
                    }
                }
                if (strCopyFileToCache == null) {
                    i = i3;
                } else {
                    File file2 = new File(strCopyFileToCache);
                    if (file2.exists()) {
                        long length = file2.length();
                        if (length != 0) {
                            i = i3;
                            importingHistory.totalSize += length;
                            if (i != 0) {
                                importingHistory.uploadMedia.add(strCopyFileToCache);
                            } else {
                                if (length > 33554432) {
                                    file2.delete();
                                    runnable = new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda63
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            SendMessagesHelper.lambda$prepareImportHistory$82(longCallback);
                                        }
                                    };
                                    break;
                                }
                                importingHistory.historyPath = strCopyFileToCache;
                            }
                            importingHistory.uploadSet.add(strCopyFileToCache);
                            map.put(strCopyFileToCache, importingHistory);
                        }
                    }
                    i = i3;
                    if (i == 0) {
                        runnable = new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda64
                            @Override // java.lang.Runnable
                            public final void run() {
                                longCallback.run(0L);
                            }
                        };
                        break;
                    }
                }
                i3 = i + 1;
                i2 = 0;
            }
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareImportStickers$86(ImportingStickers importingStickers, HashMap map, String str, MessagesStorage.StringCallback stringCallback) {
        if (importingStickers.uploadMedia.get(0).item != null) {
            importingStickers.startImport();
        } else {
            this.importingStickersFiles.putAll(map);
            this.importingStickersMap.put(str, importingStickers);
            importingStickers.initImport();
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, str);
            stringCallback.run(str);
        }
        try {
            ApplicationLoader.applicationContext.startService(new Intent(ApplicationLoader.applicationContext, (Class<?>) ImportingService.class));
        } catch (Throwable th) {
            FileLog.e(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareImportStickers$87(String str, final String str2, String str3, ArrayList arrayList, final MessagesStorage.StringCallback stringCallback) {
        Runnable runnable;
        final ImportingStickers importingStickers = new ImportingStickers();
        importingStickers.title = str;
        importingStickers.shortName = str2;
        importingStickers.software = str3;
        final HashMap map = new HashMap();
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                runnable = new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda101
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$prepareImportStickers$86(importingStickers, map, str2, stringCallback);
                    }
                };
                break;
            }
            ImportingSticker importingSticker = (ImportingSticker) arrayList.get(i);
            File file = new File(importingSticker.path);
            if (file.exists()) {
                long length = file.length();
                if (length != 0) {
                    importingStickers.totalSize += length;
                    importingStickers.uploadMedia.add(importingSticker);
                    importingStickers.uploadSet.put(importingSticker.path, importingSticker);
                    map.put(importingSticker.path, importingStickers);
                }
                i++;
            }
            if (i == 0) {
                runnable = new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda100
                    @Override // java.lang.Runnable
                    public final void run() {
                        stringCallback.run(null);
                    }
                };
                break;
            }
            i++;
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingAudioDocuments$89(MessageObject messageObject, AccountInstance accountInstance, TLRPC.TL_document tL_document, MessageObject messageObject2, HashMap map, String str, long j, MessageObject messageObject3, MessageObject messageObject4, String str2, ArrayList arrayList, boolean z, int i, TL_stories$StoryItem tL_stories$StoryItem, String str3, int i2, long j2, boolean z2, long j3) {
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, null, tL_document, messageObject2.messageOwner.attachPath, null, map, false, false, str);
            return;
        }
        SendMessageParams sendMessageParamsOf = SendMessageParams.of(tL_document, null, messageObject2.messageOwner.attachPath, j, messageObject3, messageObject4, str2, arrayList, null, map, z, i, 0, str, null, false, false);
        sendMessageParamsOf.replyToStoryItem = tL_stories$StoryItem;
        sendMessageParamsOf.quick_reply_shortcut = str3;
        sendMessageParamsOf.quick_reply_shortcut_id = i2;
        sendMessageParamsOf.effect_id = j2;
        sendMessageParamsOf.invert_media = z2;
        sendMessageParamsOf.payStars = j3;
        accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void lambda$prepareSendingAudioDocuments$90(ArrayList arrayList, final long j, final AccountInstance accountInstance, CharSequence charSequence, final MessageObject messageObject, final MessageObject messageObject2, final MessageObject messageObject3, final boolean z, final int i, final TL_stories$StoryItem tL_stories$StoryItem, final String str, final int i2, final long j2, final boolean z2, final long j3) throws InterruptedException {
        final TLRPC.TL_document tL_document;
        String str2;
        int size = arrayList.size();
        long jNextLong = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < size) {
            final MessageObject messageObject4 = (MessageObject) arrayList.get(i3);
            String str3 = messageObject4.messageOwner.attachPath;
            File file = new File(str3);
            boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(j);
            if (!zIsEncryptedDialog && size > 1 && i4 % 10 == 0) {
                jNextLong = Utilities.random.nextLong();
                i4 = 0;
            }
            if (str3 != null) {
                str3 = str3 + MediaStreamTrack.AUDIO_TRACK_KIND + file.length();
            }
            if (!zIsEncryptedDialog) {
                Object[] sentFile = accountInstance.getMessagesStorage().getSentFile(str3, !zIsEncryptedDialog ? 1 : 4);
                if (sentFile != null) {
                    Object obj = sentFile[0];
                    if (obj instanceof TLRPC.TL_document) {
                        tL_document = (TLRPC.TL_document) obj;
                        String str4 = (String) sentFile[1];
                        ensureMediaThumbExists(accountInstance, zIsEncryptedDialog, tL_document, str3, null, 0L);
                        str2 = str4;
                    } else {
                        tL_document = null;
                        str2 = null;
                    }
                }
            }
            if (tL_document == null) {
                tL_document = (TLRPC.TL_document) messageObject4.messageOwner.media.document;
            }
            if (zIsEncryptedDialog && accountInstance.getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j))) == null) {
                return;
            }
            CharSequence[] charSequenceArr = {charSequence};
            final ArrayList<TLRPC.MessageEntity> entities = i3 == 0 ? accountInstance.getMediaDataController().getEntities(charSequenceArr, true) : null;
            final String string = i3 == 0 ? charSequenceArr[0].toString() : null;
            final HashMap map = new HashMap();
            if (str3 != null) {
                map.put("originalPath", str3);
            }
            if (str2 != null) {
                map.put("parentObject", str2);
            }
            i4++;
            map.put("groupId", "" + jNextLong);
            if (i4 == 10 || i3 == size - 1) {
                map.put("final", "1");
            }
            final String str5 = str2;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.lambda$prepareSendingAudioDocuments$89(messageObject, accountInstance, tL_document, messageObject4, map, str5, j, messageObject2, messageObject3, string, entities, z, i, tL_stories$StoryItem, str, i2, j2, z2, j3);
                }
            });
            i3++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingBotContextResult$96(TLRPC.TL_document tL_document, Bitmap[] bitmapArr, String[] strArr, String str, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC.BotInlineResult botInlineResult, HashMap map, boolean z, int i, TLRPC.TL_photo tL_photo, TLRPC.TL_game tL_game, String str2, int i2, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote, long j2, AccountInstance accountInstance) {
        SendMessageParams sendMessageParamsOf;
        if (tL_document != null) {
            if (bitmapArr[0] != null && strArr[0] != null) {
                ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmapArr[0]), strArr[0], false);
            }
            TLRPC.BotInlineMessage botInlineMessage = botInlineResult.send_message;
            sendMessageParamsOf = SendMessageParams.of(tL_document, null, str, j, messageObject, messageObject2, botInlineMessage.message, botInlineMessage.entities, botInlineMessage.reply_markup, map, z, i, 0, botInlineResult, null, false);
        } else {
            sendMessageParamsOf = null;
            if (tL_photo != null) {
                TLRPC.WebDocument webDocument = botInlineResult.content;
                String str3 = webDocument != null ? webDocument.url : null;
                TLRPC.BotInlineMessage botInlineMessage2 = botInlineResult.send_message;
                sendMessageParamsOf = SendMessageParams.of(tL_photo, str3, j, messageObject, messageObject2, botInlineMessage2.message, botInlineMessage2.entities, botInlineMessage2.reply_markup, map, z, i, 0, botInlineResult, false);
            } else if (tL_game != null) {
                sendMessageParamsOf = SendMessageParams.of(tL_game, j, messageObject, messageObject2, botInlineResult.send_message.reply_markup, (HashMap<String, String>) map, z, i);
            }
        }
        if (sendMessageParamsOf != null) {
            sendMessageParamsOf.quick_reply_shortcut = str2;
            sendMessageParamsOf.quick_reply_shortcut_id = i2;
            sendMessageParamsOf.replyToStoryItem = tL_stories$StoryItem;
            sendMessageParamsOf.replyQuote = replyQuote;
            sendMessageParamsOf.payStars = j2;
            accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsOf);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0395 A[Catch: all -> 0x034f, TryCatch #1 {all -> 0x034f, blocks: (B:139:0x031d, B:141:0x0323, B:143:0x032a, B:145:0x0330, B:147:0x0338, B:149:0x0346, B:153:0x0360, B:152:0x0351, B:157:0x0395, B:162:0x039f, B:164:0x03a5, B:165:0x03b0, B:155:0x038c, B:169:0x03ed, B:171:0x03f1, B:173:0x042a, B:175:0x0433, B:176:0x043e), top: B:233:0x01fe }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01bf  */
    /* JADX WARN: Type inference failed for: r0v121, types: [org.telegram.tgnet.TLRPC$TL_game] */
    /* JADX WARN: Type inference failed for: r15v3, types: [org.telegram.tgnet.TLRPC$TL_game] */
    /* JADX WARN: Type inference failed for: r5v25, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v4, types: [int] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void lambda$prepareSendingBotContextResult$97(final long j, final TLRPC.BotInlineResult botInlineResult, final AccountInstance accountInstance, final HashMap map, final BaseFragment baseFragment, final MessageObject messageObject, final MessageObject messageObject2, final boolean z, final int i, final String str, final int i2, final TL_stories$StoryItem tL_stories$StoryItem, final ChatActivity.ReplyQuote replyQuote, final long j2) {
        File file;
        String absolutePath;
        char c;
        TLRPC.TL_document tL_document;
        TLRPC.TL_photo tL_photo;
        final TLRPC.TL_photo tL_photo2;
        Bitmap bitmapLoadBitmap;
        Bitmap bitmapCreateVideoThumbnail;
        TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio;
        String str2;
        TLRPC.TL_photo tL_photo3;
        Runnable runnable;
        TLRPC.WebDocument webDocument;
        boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(j);
        if (!"game".equals(botInlineResult.type)) {
            if (botInlineResult instanceof TLRPC.TL_botInlineMediaResult) {
                TLRPC.Document document = botInlineResult.document;
                if (document == null) {
                    TLRPC.Photo photo = botInlineResult.photo;
                    if (photo != null && (photo instanceof TLRPC.TL_photo)) {
                        tL_photo2 = (TLRPC.TL_photo) photo;
                        tL_document = null;
                        tL_photo = null;
                        tL_photo3 = null;
                    }
                } else if (document instanceof TLRPC.TL_document) {
                    tL_document = (TLRPC.TL_document) document;
                    tL_photo = null;
                }
                tL_document = null;
                tL_photo = null;
            } else {
                TLRPC.WebDocument webDocument2 = botInlineResult.content;
                if (webDocument2 != null) {
                    String httpUrlExtension = ImageLoader.getHttpUrlExtension(webDocument2.url, null);
                    file = new File(FileLoader.getDirectory(4), Utilities.MD5(botInlineResult.content.url) + (TextUtils.isEmpty(httpUrlExtension) ? FileLoader.getExtensionByMimeType(botInlineResult.content.mime_type) : "." + httpUrlExtension));
                    absolutePath = file.exists() ? file.getAbsolutePath() : botInlineResult.content.url;
                    String str3 = botInlineResult.type;
                    str3.hashCode();
                    c = 5;
                    switch (str3) {
                        case "sticker":
                        case "gif":
                        case "file":
                        case "audio":
                        case "video":
                        case "voice":
                            TLRPC.TL_document tL_document2 = new TLRPC.TL_document();
                            tL_document2.id = 0L;
                            tL_document2.size = 0L;
                            tL_document2.dc_id = 0;
                            tL_document2.mime_type = botInlineResult.content.mime_type;
                            tL_document2.file_reference = new byte[0];
                            tL_document2.date = accountInstance.getConnectionsManager().getCurrentTime();
                            TLRPC.TL_documentAttributeFilename tL_documentAttributeFilename = new TLRPC.TL_documentAttributeFilename();
                            tL_document2.attributes.add(tL_documentAttributeFilename);
                            String str4 = botInlineResult.type;
                            str4.hashCode();
                            ?? HashCode = str4.hashCode();
                            switch (HashCode) {
                                case -1890252483:
                                    if (str4.equals("sticker")) {
                                        c = 0;
                                        break;
                                    } else {
                                        c = 65535;
                                        break;
                                    }
                                case 102340:
                                    if (str4.equals("gif")) {
                                        c = 1;
                                        break;
                                    }
                                    break;
                                case 3143036:
                                    if (str4.equals("file")) {
                                        c = 2;
                                        break;
                                    }
                                    break;
                                case 93166550:
                                    if (str4.equals(MediaStreamTrack.AUDIO_TRACK_KIND)) {
                                        c = 3;
                                        break;
                                    }
                                    break;
                                case 112202875:
                                    if (str4.equals(MediaStreamTrack.VIDEO_TRACK_KIND)) {
                                        c = 4;
                                        break;
                                    }
                                    break;
                                case 112386354:
                                    if (!str4.equals("voice")) {
                                    }
                                    break;
                            }
                            try {
                                switch (c) {
                                    case 0:
                                        HashCode = absolutePath;
                                        TLRPC.TL_documentAttributeSticker tL_documentAttributeSticker = new TLRPC.TL_documentAttributeSticker();
                                        tL_documentAttributeSticker.alt = "";
                                        tL_documentAttributeSticker.stickerset = new TLRPC.TL_inputStickerSetEmpty();
                                        tL_document2.attributes.add(tL_documentAttributeSticker);
                                        TLRPC.TL_documentAttributeImageSize tL_documentAttributeImageSize = new TLRPC.TL_documentAttributeImageSize();
                                        int[] inlineResultWidthAndHeight = MessageObject.getInlineResultWidthAndHeight(botInlineResult);
                                        tL_documentAttributeImageSize.w = inlineResultWidthAndHeight[0];
                                        tL_documentAttributeImageSize.h = inlineResultWidthAndHeight[1];
                                        tL_document2.attributes.add(tL_documentAttributeImageSize);
                                        tL_documentAttributeFilename.file_name = "sticker.webp";
                                        if (botInlineResult.thumb != null) {
                                            Bitmap bitmapLoadBitmap2 = ImageLoader.loadBitmap(new File(FileLoader.getDirectory(4), Utilities.MD5(botInlineResult.thumb.url) + "." + ImageLoader.getHttpUrlExtension(botInlineResult.thumb.url, "webp")).getAbsolutePath(), null, 90.0f, 90.0f, true);
                                            if (bitmapLoadBitmap2 != null) {
                                                TLRPC.PhotoSize photoSizeScaleAndSaveImage = ImageLoader.scaleAndSaveImage(bitmapLoadBitmap2, 90.0f, 90.0f, 55, false);
                                                if (photoSizeScaleAndSaveImage != null) {
                                                    tL_document2.thumbs.add(photoSizeScaleAndSaveImage);
                                                    tL_document2.flags |= 1;
                                                }
                                                bitmapLoadBitmap2.recycle();
                                                break;
                                            }
                                        }
                                        break;
                                    case 1:
                                        tL_documentAttributeFilename.file_name = "animation.gif";
                                        HashCode = absolutePath;
                                        if (HashCode.endsWith("mp4")) {
                                            tL_document2.mime_type = "video/mp4";
                                            tL_document2.attributes.add(new TLRPC.TL_documentAttributeAnimated());
                                        } else {
                                            tL_document2.mime_type = "image/gif";
                                        }
                                        int i3 = zIsEncryptedDialog ? 90 : 320;
                                        if (HashCode.endsWith("mp4")) {
                                            bitmapCreateVideoThumbnail = createVideoThumbnail(HashCode, 1);
                                            if (bitmapCreateVideoThumbnail == null) {
                                                TLRPC.WebDocument webDocument3 = botInlineResult.thumb;
                                                if ((webDocument3 instanceof TLRPC.TL_webDocument) && "video/mp4".equals(webDocument3.mime_type)) {
                                                    String httpUrlExtension2 = ImageLoader.getHttpUrlExtension(botInlineResult.thumb.url, null);
                                                    bitmapLoadBitmap = createVideoThumbnail(new File(FileLoader.getDirectory(4), Utilities.MD5(botInlineResult.thumb.url) + (TextUtils.isEmpty(httpUrlExtension2) ? FileLoader.getExtensionByMimeType(botInlineResult.thumb.mime_type) : "." + httpUrlExtension2)).getAbsolutePath(), 1);
                                                }
                                            }
                                            if (bitmapCreateVideoThumbnail != null) {
                                                float f = i3;
                                                TLRPC.PhotoSize photoSizeScaleAndSaveImage2 = ImageLoader.scaleAndSaveImage(bitmapCreateVideoThumbnail, f, f, i3 > 90 ? 80 : 55, false);
                                                if (photoSizeScaleAndSaveImage2 != null) {
                                                    tL_document2.thumbs.add(photoSizeScaleAndSaveImage2);
                                                    tL_document2.flags |= 1;
                                                }
                                                bitmapCreateVideoThumbnail.recycle();
                                                break;
                                            }
                                        } else {
                                            float f2 = i3;
                                            bitmapLoadBitmap = ImageLoader.loadBitmap(HashCode, null, f2, f2, true);
                                        }
                                        bitmapCreateVideoThumbnail = bitmapLoadBitmap;
                                        if (bitmapCreateVideoThumbnail != null) {
                                        }
                                        break;
                                    case 2:
                                        int iLastIndexOf = botInlineResult.content.mime_type.lastIndexOf(47);
                                        if (iLastIndexOf != -1) {
                                            tL_documentAttributeFilename.file_name = "file." + botInlineResult.content.mime_type.substring(iLastIndexOf + 1);
                                        } else {
                                            tL_documentAttributeFilename.file_name = "file";
                                        }
                                        HashCode = absolutePath;
                                        break;
                                    case 3:
                                        tL_documentAttributeAudio = new TLRPC.TL_documentAttributeAudio();
                                        tL_documentAttributeAudio.duration = MessageObject.getInlineResultDuration(botInlineResult);
                                        tL_documentAttributeAudio.title = botInlineResult.title;
                                        int i4 = tL_documentAttributeAudio.flags;
                                        tL_documentAttributeAudio.flags = i4 | 1;
                                        String str5 = botInlineResult.description;
                                        if (str5 != null) {
                                            tL_documentAttributeAudio.performer = str5;
                                            tL_documentAttributeAudio.flags = i4 | 3;
                                        }
                                        str2 = "audio.mp3";
                                        tL_documentAttributeFilename.file_name = str2;
                                        tL_document2.attributes.add(tL_documentAttributeAudio);
                                        HashCode = absolutePath;
                                        break;
                                    case 4:
                                        tL_documentAttributeFilename.file_name = "video.mp4";
                                        TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo = new TLRPC.TL_documentAttributeVideo();
                                        int[] inlineResultWidthAndHeight2 = MessageObject.getInlineResultWidthAndHeight(botInlineResult);
                                        tL_documentAttributeVideo.w = inlineResultWidthAndHeight2[0];
                                        tL_documentAttributeVideo.h = inlineResultWidthAndHeight2[1];
                                        tL_documentAttributeVideo.duration = MessageObject.getInlineResultDuration(botInlineResult);
                                        tL_documentAttributeVideo.supports_streaming = true;
                                        tL_document2.attributes.add(tL_documentAttributeVideo);
                                        try {
                                            if (botInlineResult.thumb != null) {
                                                Bitmap bitmapLoadBitmap3 = ImageLoader.loadBitmap(new File(FileLoader.getDirectory(4), Utilities.MD5(botInlineResult.thumb.url) + "." + ImageLoader.getHttpUrlExtension(botInlineResult.thumb.url, "jpg")).getAbsolutePath(), null, 90.0f, 90.0f, true);
                                                if (bitmapLoadBitmap3 != null) {
                                                    TLRPC.PhotoSize photoSizeScaleAndSaveImage3 = ImageLoader.scaleAndSaveImage(bitmapLoadBitmap3, 90.0f, 90.0f, 55, false);
                                                    if (photoSizeScaleAndSaveImage3 != null) {
                                                        tL_document2.thumbs.add(photoSizeScaleAndSaveImage3);
                                                        tL_document2.flags |= 1;
                                                    }
                                                    bitmapLoadBitmap3.recycle();
                                                }
                                            }
                                        } catch (Throwable th) {
                                            FileLog.e(th);
                                        }
                                        HashCode = absolutePath;
                                        break;
                                    case 5:
                                        tL_documentAttributeAudio = new TLRPC.TL_documentAttributeAudio();
                                        tL_documentAttributeAudio.duration = MessageObject.getInlineResultDuration(botInlineResult);
                                        tL_documentAttributeAudio.voice = true;
                                        str2 = "audio.ogg";
                                        tL_documentAttributeFilename.file_name = str2;
                                        tL_document2.attributes.add(tL_documentAttributeAudio);
                                        HashCode = absolutePath;
                                        break;
                                    default:
                                        HashCode = absolutePath;
                                        break;
                                }
                            } catch (Throwable th2) {
                                FileLog.e(th2);
                            }
                            if (tL_documentAttributeFilename.file_name == null) {
                                tL_documentAttributeFilename.file_name = "file";
                            }
                            if (tL_document2.mime_type == null) {
                                tL_document2.mime_type = "application/octet-stream";
                            }
                            if (tL_document2.thumbs.isEmpty()) {
                                TLRPC.TL_photoSize tL_photoSize = new TLRPC.TL_photoSize();
                                int[] inlineResultWidthAndHeight3 = MessageObject.getInlineResultWidthAndHeight(botInlineResult);
                                tL_photoSize.w = inlineResultWidthAndHeight3[0];
                                tL_photoSize.h = inlineResultWidthAndHeight3[1];
                                tL_photoSize.size = 0;
                                tL_photoSize.location = new TLRPC.TL_fileLocationUnavailable();
                                tL_photoSize.type = "x";
                                tL_document2.thumbs.add(tL_photoSize);
                                tL_document2.flags |= 1;
                            }
                            tL_document = tL_document2;
                            tL_photo = HashCode;
                            tL_photo2 = null;
                            tL_photo3 = tL_photo2;
                            break;
                        case "photo":
                            TLRPC.TL_photo tL_photoGeneratePhotoSizes = file.exists() ? accountInstance.getSendMessagesHelper().generatePhotoSizes(absolutePath, null) : null;
                            if (tL_photoGeneratePhotoSizes == null) {
                                tL_photoGeneratePhotoSizes = new TLRPC.TL_photo();
                                tL_photoGeneratePhotoSizes.date = accountInstance.getConnectionsManager().getCurrentTime();
                                tL_photoGeneratePhotoSizes.file_reference = new byte[0];
                                TLRPC.TL_photoSize tL_photoSize2 = new TLRPC.TL_photoSize();
                                int[] inlineResultWidthAndHeight4 = MessageObject.getInlineResultWidthAndHeight(botInlineResult);
                                tL_photoSize2.w = inlineResultWidthAndHeight4[0];
                                tL_photoSize2.h = inlineResultWidthAndHeight4[1];
                                tL_photoSize2.size = 1;
                                tL_photoSize2.location = new TLRPC.TL_fileLocationUnavailable();
                                tL_photoSize2.type = "x";
                                tL_photoGeneratePhotoSizes.sizes.add(tL_photoSize2);
                            }
                            tL_photo2 = tL_photoGeneratePhotoSizes;
                            tL_photo = absolutePath;
                            tL_document = null;
                            tL_photo3 = null;
                            break;
                        default:
                            tL_photo = absolutePath;
                            tL_document = null;
                            tL_photo2 = null;
                            tL_photo3 = tL_photo2;
                            break;
                    }
                }
                tL_document = null;
                tL_photo = null;
            }
            tL_photo2 = tL_photo;
            tL_photo3 = tL_photo2;
        } else {
            if (zIsEncryptedDialog) {
                return;
            }
            ?? tL_game = new TLRPC.TL_game();
            tL_game.title = botInlineResult.title;
            tL_game.description = botInlineResult.description;
            tL_game.short_name = botInlineResult.id;
            TLRPC.Photo photo2 = botInlineResult.photo;
            tL_game.photo = photo2;
            if (photo2 == null) {
                tL_game.photo = new TLRPC.TL_photoEmpty();
            }
            TLRPC.Document document2 = botInlineResult.document;
            if (document2 instanceof TLRPC.TL_document) {
                tL_game.document = document2;
                tL_game.flags |= 1;
            }
            tL_photo3 = tL_game;
            tL_document = null;
            tL_photo = null;
            tL_photo2 = null;
        }
        if (map != null && (webDocument = botInlineResult.content) != null) {
            map.put("originalPath", webDocument.url);
        }
        final Bitmap[] bitmapArr = new Bitmap[1];
        final String[] strArr = new String[1];
        if (zIsEncryptedDialog && tL_document != null) {
            for (int i5 = 0; i5 < tL_document.attributes.size(); i5++) {
                if (tL_document.attributes.get(i5) instanceof TLRPC.TL_documentAttributeVideo) {
                    TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo2 = (TLRPC.TL_documentAttributeVideo) tL_document.attributes.get(i5);
                    TLRPC.TL_documentAttributeVideo_layer159 tL_documentAttributeVideo_layer159 = new TLRPC.TL_documentAttributeVideo_layer159();
                    tL_documentAttributeVideo_layer159.flags = tL_documentAttributeVideo2.flags;
                    tL_documentAttributeVideo_layer159.round_message = tL_documentAttributeVideo2.round_message;
                    tL_documentAttributeVideo_layer159.supports_streaming = tL_documentAttributeVideo2.supports_streaming;
                    tL_documentAttributeVideo_layer159.duration = tL_documentAttributeVideo2.duration;
                    tL_documentAttributeVideo_layer159.w = tL_documentAttributeVideo2.w;
                    tL_documentAttributeVideo_layer159.h = tL_documentAttributeVideo2.h;
                    tL_document.attributes.set(i5, tL_documentAttributeVideo_layer159);
                }
            }
        }
        if (MessageObject.isGifDocument(tL_document)) {
            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tL_document.thumbs, 320);
            File pathToAttach = FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(tL_document);
            if (!pathToAttach.exists()) {
                pathToAttach = FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(tL_document, true);
            }
            ensureMediaThumbExists(accountInstance, zIsEncryptedDialog, tL_document, pathToAttach.getAbsolutePath(), null, 0L);
            strArr[0] = getKeyForPhotoSize(accountInstance, closestPhotoSizeWithSize, bitmapArr, true, true);
        }
        TLRPC.InputPeer inputPeer = !DialogObject.isEncryptedDialog(j) ? accountInstance.getMessagesController().getInputPeer(j) : null;
        if (inputPeer == null || inputPeer.user_id == 0 || accountInstance.getMessagesController().getUserFull(inputPeer.user_id) == null || !accountInstance.getMessagesController().getUserFull(inputPeer.user_id).voice_messages_forbidden || tL_document == null) {
            final TLRPC.TL_document tL_document3 = tL_document;
            final ?? r5 = tL_photo;
            final ?? r15 = tL_photo3;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda105
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.lambda$prepareSendingBotContextResult$96(tL_document3, bitmapArr, strArr, r5, j, messageObject, messageObject2, botInlineResult, map, z, i, tL_photo2, r15, str, i2, tL_stories$StoryItem, replyQuote, j2, accountInstance);
                }
            });
            return;
        }
        if (MessageObject.isVoiceDocument(tL_document)) {
            runnable = new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda103
                @Override // java.lang.Runnable
                public final void run() {
                    AlertsCreator.showSendMediaAlert(7, baseFragment, null);
                }
            };
        } else if (!MessageObject.isRoundVideoDocument(tL_document)) {
            return;
        } else {
            runnable = new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda104
                @Override // java.lang.Runnable
                public final void run() {
                    AlertsCreator.showSendMediaAlert(8, baseFragment, null);
                }
            };
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingDocumentInternal$88(MessageObject messageObject, AccountInstance accountInstance, TLRPC.TL_document tL_document, String str, HashMap map, String str2, long j, MessageObject messageObject2, MessageObject messageObject3, String str3, ArrayList arrayList, boolean z, int i, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote, String str4, int i2, long j2, boolean z2, long j3, long j4, MessageSuggestionParams messageSuggestionParams) {
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, null, tL_document, str, null, map, false, false, str2);
            return;
        }
        SendMessageParams sendMessageParamsOf = SendMessageParams.of(tL_document, null, str, j, messageObject2, messageObject3, str3, arrayList, null, map, z, i, 0, str2, null, false);
        sendMessageParamsOf.replyToStoryItem = tL_stories$StoryItem;
        sendMessageParamsOf.replyQuote = replyQuote;
        sendMessageParamsOf.quick_reply_shortcut = str4;
        sendMessageParamsOf.quick_reply_shortcut_id = i2;
        sendMessageParamsOf.effect_id = j2;
        sendMessageParamsOf.invert_media = z2;
        sendMessageParamsOf.payStars = j3;
        sendMessageParamsOf.monoForumPeer = j4;
        sendMessageParamsOf.suggestionParams = messageSuggestionParams;
        accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingDocuments$92(long j, ArrayList arrayList, String str, AccountInstance accountInstance, int i, ArrayList arrayList2, String str2, MessageObject messageObject, MessageObject messageObject2, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote, MessageObject messageObject3, boolean z, InputContentInfoCompat inputContentInfoCompat, String str3, int i2, long j2, boolean z2, long j3, long j4, MessageSuggestionParams messageSuggestionParams, ArrayList arrayList3) throws Throwable {
        Integer[] numArr;
        long[] jArr;
        ArrayList arrayList4;
        int iPrepareSendingDocumentInternal;
        boolean z3;
        AccountInstance accountInstance2;
        AccountInstance accountInstance3 = accountInstance;
        int i3 = i;
        int i4 = 1;
        long[] jArr2 = new long[1];
        Integer[] numArr2 = new Integer[1];
        boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(j);
        int i5 = 10;
        if (arrayList != null) {
            int size = arrayList.size();
            iPrepareSendingDocumentInternal = 0;
            int i6 = 0;
            boolean z4 = true;
            int i7 = 0;
            while (i7 < size) {
                String str4 = i7 == 0 ? str : null;
                if (!zIsEncryptedDialog && size > i4 && i6 % 10 == 0) {
                    long j5 = jArr2[0];
                    if (j5 != 0) {
                        finishGroup(accountInstance3, j5, i3);
                    }
                    jArr2[0] = Utilities.random.nextLong();
                    i6 = 0;
                }
                int i8 = i6 + 1;
                long j6 = jArr2[0];
                int i9 = size;
                int i10 = i7;
                Integer[] numArr3 = numArr2;
                long[] jArr3 = jArr2;
                iPrepareSendingDocumentInternal = prepareSendingDocumentInternal(accountInstance, (String) arrayList.get(i7), (String) arrayList2.get(i7), null, str2, j, messageObject, messageObject2, tL_stories$StoryItem, replyQuote, null, messageObject3, jArr3, i8 == i5 || i7 == size + (-1), str4, z, i, numArr3, inputContentInfoCompat == null, str3, i2, z4 ? j2 : 0L, z2, j3, j4, messageSuggestionParams);
                long j7 = jArr3[0];
                i6 = (j6 != j7 || j7 == -1) ? 1 : i8;
                i7 = i10 + 1;
                accountInstance3 = accountInstance;
                i3 = i;
                size = i9;
                numArr2 = numArr3;
                jArr2 = jArr3;
                z4 = false;
                i5 = 10;
                i4 = 1;
            }
            numArr = numArr2;
            jArr = jArr2;
            arrayList4 = arrayList3;
            z3 = z4;
        } else {
            numArr = numArr2;
            jArr = jArr2;
            arrayList4 = arrayList3;
            iPrepareSendingDocumentInternal = 0;
            z3 = true;
        }
        if (arrayList4 != null) {
            jArr[0] = 0;
            int size2 = arrayList3.size();
            int i11 = 0;
            int i12 = 0;
            while (i12 < arrayList3.size()) {
                String str5 = (i12 == 0 && (arrayList == null || arrayList.size() == 0)) ? str : null;
                if (zIsEncryptedDialog || size2 <= 1 || i11 % 10 != 0) {
                    accountInstance2 = accountInstance;
                } else {
                    long j8 = jArr[0];
                    accountInstance2 = accountInstance;
                    if (j8 != 0) {
                        finishGroup(accountInstance2, j8, i);
                    }
                    jArr[0] = Utilities.random.nextLong();
                    i11 = 0;
                }
                int i13 = i11 + 1;
                long j9 = jArr[0];
                int i14 = i12;
                int i15 = size2;
                iPrepareSendingDocumentInternal = prepareSendingDocumentInternal(accountInstance, null, null, (Uri) arrayList4.get(i12), str2, j, messageObject, messageObject2, tL_stories$StoryItem, replyQuote, null, messageObject3, jArr, i13 == 10 || i12 == size2 + (-1), str5, z, i, numArr, inputContentInfoCompat == null, str3, i2, z3 ? j2 : 0L, z2, j3, j4, messageSuggestionParams);
                long j10 = jArr[0];
                i11 = (j9 != j10 || j10 == -1) ? 1 : i13;
                i12 = i14 + 1;
                arrayList4 = arrayList3;
                size2 = i15;
                z3 = false;
            }
        }
        if (inputContentInfoCompat != null) {
            inputContentInfoCompat.releasePermission();
        }
        handleError(iPrepareSendingDocumentInternal, accountInstance);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingMedia$101(MediaSendPrepareWorker mediaSendPrepareWorker, AccountInstance accountInstance, SendingMediaInfo sendingMediaInfo, boolean z) {
        mediaSendPrepareWorker.photo = accountInstance.getSendMessagesHelper().generatePhotoSizes(null, sendingMediaInfo.path, sendingMediaInfo.uri, sendingMediaInfo.highQuality);
        if (z && sendingMediaInfo.canDeleteAfter) {
            new File(sendingMediaInfo.path).delete();
        }
        mediaSendPrepareWorker.sync.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingMedia$102(MessageObject messageObject, AccountInstance accountInstance, TLRPC.TL_document tL_document, String str, HashMap map, SendingMediaInfo sendingMediaInfo, String str2, long j, MessageObject messageObject2, MessageObject messageObject3, boolean z, int i, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote, String str3, int i2, boolean z2, long j2, boolean z3, long j3, long j4, MessageSuggestionParams messageSuggestionParams) {
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, null, tL_document, str, null, map, false, sendingMediaInfo.hasMediaSpoilers, str2);
            return;
        }
        SendMessageParams sendMessageParamsOf = SendMessageParams.of(tL_document, null, str, j, messageObject2, messageObject3, sendingMediaInfo.caption, sendingMediaInfo.entities, null, map, z, i, 0, str2, null, false, sendingMediaInfo.hasMediaSpoilers);
        sendMessageParamsOf.replyToStoryItem = tL_stories$StoryItem;
        sendMessageParamsOf.replyQuote = replyQuote;
        sendMessageParamsOf.quick_reply_shortcut = str3;
        sendMessageParamsOf.quick_reply_shortcut_id = i2;
        if (z2) {
            sendMessageParamsOf.effect_id = j2;
        }
        sendMessageParamsOf.invert_media = z3;
        sendMessageParamsOf.payStars = j3;
        sendMessageParamsOf.monoForumPeer = j4;
        sendMessageParamsOf.suggestionParams = messageSuggestionParams;
        accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingMedia$103(MessageObject messageObject, AccountInstance accountInstance, TLRPC.TL_photo tL_photo, boolean z, SendingMediaInfo sendingMediaInfo, HashMap map, String str, long j, MessageObject messageObject2, MessageObject messageObject3, boolean z2, int i, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote, int i2, String str2, long j2, boolean z3, long j3, long j4, MessageSuggestionParams messageSuggestionParams) {
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, tL_photo, null, null, z ? sendingMediaInfo.searchImage.imageUrl : null, null, map, false, sendingMediaInfo.hasMediaSpoilers, str);
            return;
        }
        SendMessageParams sendMessageParamsOf = SendMessageParams.of(tL_photo, z ? sendingMediaInfo.searchImage.imageUrl : null, j, messageObject2, messageObject3, sendingMediaInfo.caption, sendingMediaInfo.entities, null, map, z2, i, sendingMediaInfo.ttl, str, false, sendingMediaInfo.hasMediaSpoilers);
        sendMessageParamsOf.replyToStoryItem = tL_stories$StoryItem;
        sendMessageParamsOf.replyQuote = replyQuote;
        sendMessageParamsOf.quick_reply_shortcut_id = i2;
        sendMessageParamsOf.quick_reply_shortcut = str2;
        sendMessageParamsOf.effect_id = j2;
        sendMessageParamsOf.invert_media = z3;
        sendMessageParamsOf.payStars = j3;
        sendMessageParamsOf.monoForumPeer = j4;
        sendMessageParamsOf.suggestionParams = messageSuggestionParams;
        accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingMedia$104(Bitmap bitmap, String str, MessageObject messageObject, AccountInstance accountInstance, VideoEditedInfo videoEditedInfo, TLRPC.TL_document tL_document, String str2, HashMap map, SendingMediaInfo sendingMediaInfo, String str3, long j, MessageObject messageObject2, MessageObject messageObject3, boolean z, int i, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote, String str4, int i2, long j2, boolean z2, TLRPC.PhotoSize photoSize, long j3, long j4, MessageSuggestionParams messageSuggestionParams) {
        if (bitmap != null && str != null) {
            ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmap), str, false);
        }
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, videoEditedInfo, tL_document, str2, null, map, false, sendingMediaInfo.hasMediaSpoilers, str3);
            return;
        }
        SendMessageParams sendMessageParamsOf = SendMessageParams.of(tL_document, videoEditedInfo, str2, j, messageObject2, messageObject3, sendingMediaInfo.caption, sendingMediaInfo.entities, null, map, z, i, sendingMediaInfo.ttl, str3, null, false, sendingMediaInfo.hasMediaSpoilers);
        sendMessageParamsOf.replyToStoryItem = tL_stories$StoryItem;
        sendMessageParamsOf.replyQuote = replyQuote;
        sendMessageParamsOf.quick_reply_shortcut = str4;
        sendMessageParamsOf.quick_reply_shortcut_id = i2;
        sendMessageParamsOf.effect_id = j2;
        sendMessageParamsOf.invert_media = z2;
        sendMessageParamsOf.stars = sendingMediaInfo.stars;
        sendMessageParamsOf.cover = photoSize;
        sendMessageParamsOf.payStars = j3;
        sendMessageParamsOf.monoForumPeer = j4;
        sendMessageParamsOf.suggestionParams = messageSuggestionParams;
        accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingMedia$105(Bitmap[] bitmapArr, String[] strArr, MessageObject messageObject, AccountInstance accountInstance, TLRPC.TL_photo tL_photo, HashMap map, SendingMediaInfo sendingMediaInfo, String str, long j, MessageObject messageObject2, MessageObject messageObject3, boolean z, int i, boolean z2, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote, String str2, int i2, long j2, boolean z3, long j3, long j4, MessageSuggestionParams messageSuggestionParams, boolean z4) {
        if (bitmapArr[0] != null && strArr[0] != null) {
            ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmapArr[0]), strArr[0], false);
        }
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, tL_photo, null, null, null, null, map, false, sendingMediaInfo.hasMediaSpoilers, str);
            return;
        }
        SendMessageParams sendMessageParamsOf = SendMessageParams.of(tL_photo, null, j, messageObject2, messageObject3, sendingMediaInfo.caption, sendingMediaInfo.entities, null, map, z, i, sendingMediaInfo.ttl, str, z2, sendingMediaInfo.hasMediaSpoilers);
        sendMessageParamsOf.replyToStoryItem = tL_stories$StoryItem;
        sendMessageParamsOf.replyQuote = replyQuote;
        sendMessageParamsOf.quick_reply_shortcut = str2;
        sendMessageParamsOf.quick_reply_shortcut_id = i2;
        sendMessageParamsOf.effect_id = j2;
        sendMessageParamsOf.invert_media = z3;
        sendMessageParamsOf.stars = sendingMediaInfo.stars;
        sendMessageParamsOf.payStars = j3;
        sendMessageParamsOf.monoForumPeer = j4;
        sendMessageParamsOf.suggestionParams = messageSuggestionParams;
        sendMessageParamsOf.sendingHighQuality = z4;
        accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03da A[Catch: Exception -> 0x03bd, TRY_LEAVE, TryCatch #10 {Exception -> 0x03bd, blocks: (B:153:0x03b5, B:160:0x03c2, B:164:0x03d1, B:167:0x03da), top: B:750:0x03b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0457  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0556  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x05cd A[PHI: r0
      0x05cd: PHI (r0v112 org.telegram.tgnet.TLRPC$TL_photo) = (r0v111 org.telegram.tgnet.TLRPC$TL_photo), (r0v115 org.telegram.tgnet.TLRPC$TL_photo) binds: [B:212:0x0554, B:216:0x0593] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:236:0x067c  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x078b  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0795  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x0802  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x080c  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x0813  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x0868  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x090b  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x0a27  */
    /* JADX WARN: Removed duplicated region for block: B:428:0x0a37  */
    /* JADX WARN: Removed duplicated region for block: B:435:0x0a6d  */
    /* JADX WARN: Removed duplicated region for block: B:444:0x0b32  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0b34  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x0b4c  */
    /* JADX WARN: Removed duplicated region for block: B:491:0x0c62  */
    /* JADX WARN: Removed duplicated region for block: B:506:0x0cd9  */
    /* JADX WARN: Removed duplicated region for block: B:556:0x0de1  */
    /* JADX WARN: Removed duplicated region for block: B:558:0x0de8  */
    /* JADX WARN: Removed duplicated region for block: B:559:0x0dee  */
    /* JADX WARN: Removed duplicated region for block: B:584:0x0e4f  */
    /* JADX WARN: Removed duplicated region for block: B:586:0x0e55  */
    /* JADX WARN: Removed duplicated region for block: B:589:0x0e6c  */
    /* JADX WARN: Removed duplicated region for block: B:638:0x0f32  */
    /* JADX WARN: Removed duplicated region for block: B:649:0x0f58  */
    /* JADX WARN: Removed duplicated region for block: B:658:0x0f9c  */
    /* JADX WARN: Removed duplicated region for block: B:661:0x0fa3  */
    /* JADX WARN: Removed duplicated region for block: B:672:0x0fe8  */
    /* JADX WARN: Removed duplicated region for block: B:678:0x0ffd  */
    /* JADX WARN: Removed duplicated region for block: B:691:0x10ab  */
    /* JADX WARN: Removed duplicated region for block: B:692:0x10c9  */
    /* JADX WARN: Removed duplicated region for block: B:718:0x1190  */
    /* JADX WARN: Removed duplicated region for block: B:722:0x119a  */
    /* JADX WARN: Removed duplicated region for block: B:736:0x03cc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:740:0x076e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:744:0x074d A[EXC_TOP_SPLITTER, PHI: r8 r10 r12
      0x074d: PHI (r8v23 java.io.FileOutputStream) = 
      (r8v22 java.io.FileOutputStream)
      (r8v27 java.io.FileOutputStream)
      (r8v27 java.io.FileOutputStream)
      (r8v27 java.io.FileOutputStream)
     binds: [B:286:0x0773, B:266:0x0748, B:728:0x074d, B:267:0x074a] A[DONT_GENERATE, DONT_INLINE]
      0x074d: PHI (r10v42 java.lang.String) = (r10v41 java.lang.String), (r10v45 java.lang.String), (r10v45 java.lang.String), (r10v45 java.lang.String) binds: [B:286:0x0773, B:266:0x0748, B:728:0x074d, B:267:0x074a] A[DONT_GENERATE, DONT_INLINE]
      0x074d: PHI (r12v22 java.lang.String) = (r12v21 java.lang.String), (r12v24 java.lang.String), (r12v24 java.lang.String), (r12v24 java.lang.String) binds: [B:286:0x0773, B:266:0x0748, B:728:0x074d, B:267:0x074a] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:762:0x03e7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:773:0x0f41 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x017c  */
    /* JADX WARN: Type inference failed for: r37v17 */
    /* JADX WARN: Type inference failed for: r37v6 */
    /* JADX WARN: Type inference failed for: r37v7 */
    /* JADX WARN: Type inference failed for: r37v8 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void lambda$prepareSendingMedia$106(ArrayList arrayList, final long j, boolean z, boolean z2, final AccountInstance accountInstance, final MessageObject messageObject, final MessageObject messageObject2, final MessageObject messageObject3, final boolean z3, final int i, final TL_stories$StoryItem tL_stories$StoryItem, final ChatActivity.ReplyQuote replyQuote, final String str, final int i2, final long j2, final boolean z4, final long j3, final long j4, final MessageSuggestionParams messageSuggestionParams, InputContentInfoCompat inputContentInfoCompat, final boolean z5) throws InterruptedException, IOException {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        ArrayList arrayList2;
        boolean z6;
        int i3;
        int i4;
        HashMap map;
        int i5;
        int i6;
        int i7;
        ArrayList arrayList3;
        boolean z7;
        int i8;
        long j5;
        MediaController.SearchImage searchImage;
        int i9;
        ArrayList arrayList4;
        int i10;
        HashMap map2;
        String str10;
        String str11;
        String str12;
        String str13;
        long j6;
        boolean z8;
        String str14;
        String str15;
        HashMap map3;
        VideoEditedInfo videoEditedInfoCreateCompressionSettings;
        int i11;
        String str16;
        String str17;
        String str18;
        String str19;
        String str20;
        long j7;
        int i12;
        Object obj;
        SendingMediaInfo sendingMediaInfo;
        ArrayList arrayList5;
        String str21;
        long j8;
        boolean z9;
        long j9;
        String str22;
        File file;
        String str23;
        String str24;
        Object obj2;
        TLRPC.TL_document tL_document;
        String str25;
        Object obj3;
        SendingMediaInfo sendingMediaInfo2;
        TLRPC.TL_document tL_document2;
        final Bitmap bitmap;
        final String str26;
        int i13;
        TLRPC.PhotoSize photoSizeScaleAndSaveImage;
        String keyForPhotoSize;
        TLRPC.PhotoSize photoSizeFileToSize;
        String str27;
        final String absolutePath;
        String str28;
        ArrayList arrayList6;
        String str29;
        long j10;
        int i14;
        int i15;
        String str30;
        ArrayList<TLRPC.InputDocument> arrayList7;
        int size;
        int i16;
        int i17;
        TLRPC.PhotoSize photoSizeScaleAndSaveImage2;
        String keyForPhotoSize2;
        String str31;
        String str32;
        TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo;
        int i18;
        int i19;
        TLRPC.FileLocation fileLocation;
        MediaController.SearchImage searchImage2;
        String string;
        String str33;
        String str34;
        String str35;
        String str36;
        String fileExtension;
        String strCopyFileToCache;
        ArrayList arrayList8;
        boolean z10;
        Object obj4;
        String str37;
        HashMap map4;
        String string2;
        String str38;
        Object obj5;
        String str39;
        String str40;
        Object obj6;
        Object obj7;
        final TLRPC.TL_photo tL_photo;
        String str41;
        String str42;
        String str43;
        TLRPC.TL_photo tL_photo2;
        TLRPC.TL_photo tL_photo3;
        String str44;
        String str45;
        String str46;
        int i20;
        long j11;
        int i21;
        String str47;
        ArrayList arrayList9;
        ArrayList arrayList10;
        ArrayList arrayList11;
        String str48;
        AccountInstance accountInstance2;
        ArrayList arrayList12;
        int i22;
        long j12;
        int i23;
        int i24;
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        ?? r37;
        Uri uri;
        InputStream inputStreamOpenInputStream;
        FileOutputStream fileOutputStream;
        Uri uri2;
        String str49;
        final TLRPC.TL_photo tL_photo4;
        boolean z11;
        String str50;
        long j13;
        int i25;
        Uri uri3;
        File file2;
        TLRPC.TL_document tL_document3;
        String str51;
        String str52;
        Object obj8;
        String str53;
        File file3;
        int i26;
        Bitmap bitmapCreateVideoThumbnail;
        String str54;
        String str55;
        String str56;
        String str57;
        String str58;
        String str59;
        String str60;
        int i27;
        int i28;
        final boolean z12;
        String str61;
        String string3;
        String str62;
        String str63;
        boolean zIsWebp;
        boolean z13;
        String string4;
        AnonymousClass1 anonymousClass1;
        final SendingMediaInfo sendingMediaInfo3;
        String str64;
        TLRPC.TL_photo tL_photo5;
        TLRPC.TL_photo tL_photo6;
        String str65;
        Object[] sentFile;
        boolean z14;
        Uri uri4;
        Object obj9;
        Uri uri5;
        ArrayList arrayList13 = arrayList;
        String str66 = "parentObject";
        String str67 = "masks";
        String str68 = "-2147483648_";
        String str69 = "x";
        String str70 = "video/mp4";
        long jCurrentTimeMillis = System.currentTimeMillis();
        int size2 = arrayList.size();
        boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(j);
        String str71 = ".webp";
        String str72 = ".gif";
        String str73 = "_";
        boolean z15 = true;
        if (z || !z2) {
            str2 = "_";
            str3 = ".gif";
            str4 = ".webp";
            str5 = "video/mp4";
            str6 = "-2147483648_";
            str7 = "x";
            str8 = "masks";
            str9 = "parentObject";
            arrayList2 = null;
            z6 = zIsEncryptedDialog;
            i3 = size2;
            i4 = 1;
            map = null;
        } else {
            HashMap map5 = new HashMap();
            int i29 = 0;
            while (i29 < size2) {
                int i30 = size2;
                SendingMediaInfo sendingMediaInfo4 = (SendingMediaInfo) arrayList13.get(i29);
                if (sendingMediaInfo4.searchImage == null && !sendingMediaInfo4.isVideo && sendingMediaInfo4.videoEditedInfo == null) {
                    MediaController.PhotoEntry photoEntry = sendingMediaInfo4.originalPhotoEntry;
                    String str74 = str70;
                    if (photoEntry != null && sendingMediaInfo4.highQuality) {
                        photoEntry.rebuildPhoto(z15);
                        String str75 = sendingMediaInfo4.originalPhotoEntry.imagePath;
                        if (str75 != null) {
                            sendingMediaInfo4.path = str75;
                        }
                    }
                    String path = sendingMediaInfo4.path;
                    if (path != null || (uri5 = sendingMediaInfo4.uri) == null) {
                        string3 = path;
                    } else {
                        path = AndroidUtilities.getPath(uri5);
                        string3 = sendingMediaInfo4.uri.toString();
                    }
                    if (path == null || sendingMediaInfo4.ttl > 0) {
                        str62 = str72;
                        str63 = str71;
                        zIsWebp = false;
                    } else {
                        if (path.endsWith(str72)) {
                            str62 = str72;
                            zIsWebp = false;
                        } else {
                            zIsWebp = path.endsWith(str71);
                            str62 = str72;
                            if (!zIsWebp) {
                                str63 = str71;
                            }
                        }
                        str63 = str71;
                        if (arrayList.size() > 1 || ((zIsWebp && !shouldSendWebPAsSticker(path, null)) || !TextUtils.isEmpty(sendingMediaInfo4.caption))) {
                            z14 = true;
                            sendingMediaInfo4.forceImage = z14;
                            if (path != null) {
                                File file4 = new File(path);
                                StringBuilder sb = new StringBuilder();
                                sb.append(string3);
                                z13 = zIsEncryptedDialog;
                                sb.append(file4.length());
                                sb.append(str73);
                                sb.append(file4.lastModified());
                                string4 = sb.toString();
                            } else {
                                z13 = zIsEncryptedDialog;
                                string4 = null;
                            }
                            if (z13 || sendingMediaInfo4.ttl != 0) {
                                str54 = str73;
                                str59 = str67;
                                str57 = str74;
                                str55 = str62;
                                str56 = str63;
                                z12 = z13;
                                str58 = str69;
                                str60 = str66;
                                i27 = i30;
                                anonymousClass1 = null;
                                str61 = str68;
                                sendingMediaInfo3 = sendingMediaInfo4;
                                str64 = null;
                                tL_photo5 = null;
                            } else {
                                int i31 = sendingMediaInfo4.highQuality ? !z13 ? 6 : 7 : !z13 ? 0 : 3;
                                Object[] sentFile2 = accountInstance.getMessagesStorage().getSentFile(string4, i31);
                                if (sentFile2 != null) {
                                    Object obj10 = sentFile2[0];
                                    if (obj10 instanceof TLRPC.TL_photo) {
                                        str65 = (String) sentFile2[1];
                                        tL_photo6 = (TLRPC.TL_photo) obj10;
                                    } else {
                                        tL_photo6 = null;
                                        str65 = null;
                                    }
                                    if (tL_photo6 != null || sendingMediaInfo4.uri == null || (sentFile = accountInstance.getMessagesStorage().getSentFile(AndroidUtilities.getPath(sendingMediaInfo4.uri), i31)) == null) {
                                        TLRPC.TL_photo tL_photo7 = tL_photo6;
                                        String str76 = str65;
                                        str54 = str73;
                                        str55 = str62;
                                        str56 = str63;
                                        str60 = str66;
                                        str58 = str69;
                                        i27 = i30;
                                        str61 = str68;
                                        str59 = str67;
                                        z12 = z13;
                                        sendingMediaInfo3 = sendingMediaInfo4;
                                        anonymousClass1 = null;
                                        str57 = str74;
                                        ensureMediaThumbExists(accountInstance, z13, tL_photo7, sendingMediaInfo4.path, sendingMediaInfo4.uri, 0L, sendingMediaInfo4.highQuality);
                                        tL_photo5 = tL_photo7;
                                        str64 = str76;
                                    } else {
                                        Object obj11 = sentFile[0];
                                        if (obj11 instanceof TLRPC.TL_photo) {
                                            tL_photo6 = (TLRPC.TL_photo) obj11;
                                            str65 = (String) sentFile[1];
                                        }
                                        TLRPC.TL_photo tL_photo72 = tL_photo6;
                                        String str762 = str65;
                                        str54 = str73;
                                        str55 = str62;
                                        str56 = str63;
                                        str60 = str66;
                                        str58 = str69;
                                        i27 = i30;
                                        str61 = str68;
                                        str59 = str67;
                                        z12 = z13;
                                        sendingMediaInfo3 = sendingMediaInfo4;
                                        anonymousClass1 = null;
                                        str57 = str74;
                                        ensureMediaThumbExists(accountInstance, z13, tL_photo72, sendingMediaInfo4.path, sendingMediaInfo4.uri, 0L, sendingMediaInfo4.highQuality);
                                        tL_photo5 = tL_photo72;
                                        str64 = str762;
                                    }
                                }
                                i29 += i28;
                                zIsEncryptedDialog = z12;
                                size2 = i27;
                                str67 = str59;
                                str68 = str61;
                                str66 = str60;
                                str69 = str58;
                                str73 = str54;
                                str72 = str55;
                                str71 = str56;
                                str70 = str57;
                                z15 = true;
                            }
                            final MediaSendPrepareWorker mediaSendPrepareWorker = new MediaSendPrepareWorker();
                            map5.put(sendingMediaInfo3, mediaSendPrepareWorker);
                            if (tL_photo5 == null) {
                                mediaSendPrepareWorker.parentObject = str64;
                                mediaSendPrepareWorker.photo = tL_photo5;
                                i28 = 1;
                            } else {
                                i28 = 1;
                                mediaSendPrepareWorker.sync = new CountDownLatch(1);
                                mediaSendThreadPool.execute(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda38
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        SendMessagesHelper.lambda$prepareSendingMedia$101(mediaSendPrepareWorker, accountInstance, sendingMediaInfo3, z12);
                                    }
                                });
                            }
                            i29 += i28;
                            zIsEncryptedDialog = z12;
                            size2 = i27;
                            str67 = str59;
                            str68 = str61;
                            str66 = str60;
                            str69 = str58;
                            str73 = str54;
                            str72 = str55;
                            str71 = str56;
                            str70 = str57;
                            z15 = true;
                        }
                        str54 = str73;
                        str59 = str67;
                        str57 = str74;
                        str55 = str62;
                        str56 = str63;
                        i28 = 1;
                        z12 = zIsEncryptedDialog;
                        str58 = str69;
                        str60 = str66;
                        i27 = i30;
                    }
                    if (ImageLoader.shouldSendImageAsDocument(sendingMediaInfo4.path, sendingMediaInfo4.uri)) {
                        str54 = str73;
                        str59 = str67;
                        str57 = str74;
                        str55 = str62;
                        str56 = str63;
                        i28 = 1;
                        z12 = zIsEncryptedDialog;
                        str58 = str69;
                        str60 = str66;
                        i27 = i30;
                    } else if (path == null && (uri4 = sendingMediaInfo4.uri) != null && (MediaController.isGif(uri4) || (zIsWebp = MediaController.isWebp(sendingMediaInfo4.uri)))) {
                        if (arrayList.size() <= 1) {
                            if (zIsWebp) {
                                obj9 = null;
                                if (shouldSendWebPAsSticker(null, sendingMediaInfo4.uri)) {
                                }
                            } else {
                                obj9 = null;
                            }
                            if (TextUtils.isEmpty(sendingMediaInfo4.caption)) {
                                str54 = str73;
                                str59 = str67;
                                str57 = str74;
                                str55 = str62;
                                str56 = str63;
                                i28 = 1;
                                z12 = zIsEncryptedDialog;
                                str58 = str69;
                                str60 = str66;
                                i27 = i30;
                            }
                        }
                        z14 = true;
                        sendingMediaInfo4.forceImage = z14;
                        if (path != null) {
                        }
                        if (z13) {
                        }
                        i29 += i28;
                        zIsEncryptedDialog = z12;
                        size2 = i27;
                        str67 = str59;
                        str68 = str61;
                        str66 = str60;
                        str69 = str58;
                        str73 = str54;
                        str72 = str55;
                        str71 = str56;
                        str70 = str57;
                        z15 = true;
                    } else {
                        if (path != null) {
                        }
                        if (z13) {
                            str54 = str73;
                            str59 = str67;
                            str57 = str74;
                            str55 = str62;
                            str56 = str63;
                            z12 = z13;
                            str58 = str69;
                            str60 = str66;
                            i27 = i30;
                            anonymousClass1 = null;
                            str61 = str68;
                            sendingMediaInfo3 = sendingMediaInfo4;
                            str64 = null;
                            tL_photo5 = null;
                            final MediaSendPrepareWorker mediaSendPrepareWorker2 = new MediaSendPrepareWorker();
                            map5.put(sendingMediaInfo3, mediaSendPrepareWorker2);
                            if (tL_photo5 == null) {
                            }
                        }
                        i29 += i28;
                        zIsEncryptedDialog = z12;
                        size2 = i27;
                        str67 = str59;
                        str68 = str61;
                        str66 = str60;
                        str69 = str58;
                        str73 = str54;
                        str72 = str55;
                        str71 = str56;
                        str70 = str57;
                        z15 = true;
                    }
                } else {
                    str54 = str73;
                    str55 = str72;
                    str56 = str71;
                    str57 = str70;
                    str58 = str69;
                    str59 = str67;
                    str60 = str66;
                    i27 = i30;
                    i28 = 1;
                    z12 = zIsEncryptedDialog;
                }
                str61 = str68;
                i29 += i28;
                zIsEncryptedDialog = z12;
                size2 = i27;
                str67 = str59;
                str68 = str61;
                str66 = str60;
                str69 = str58;
                str73 = str54;
                str72 = str55;
                str71 = str56;
                str70 = str57;
                z15 = true;
            }
            str2 = str73;
            str3 = str72;
            str4 = str71;
            str5 = str70;
            str6 = str68;
            str7 = str69;
            str8 = str67;
            str9 = str66;
            arrayList2 = null;
            z6 = zIsEncryptedDialog;
            i3 = size2;
            i4 = 1;
            map = map5;
        }
        ArrayList arrayList14 = arrayList2;
        ArrayList arrayList15 = arrayList14;
        ArrayList arrayList16 = arrayList15;
        ArrayList arrayList17 = arrayList16;
        ArrayList arrayList18 = arrayList17;
        ArrayList arrayList19 = arrayList18;
        int i32 = 0;
        int i33 = 0;
        long j14 = 0;
        long jNextLong = 0;
        ArrayList arrayList20 = arrayList18;
        while (i33 < i3) {
            final SendingMediaInfo sendingMediaInfo5 = (SendingMediaInfo) arrayList13.get(i33);
            boolean z16 = i32 == 0;
            if (z2 && i3 > i4) {
                if (i32 % 10 == 0) {
                    jNextLong = Utilities.random.nextLong();
                    j5 = jNextLong;
                    i8 = 0;
                }
                searchImage = sendingMediaInfo5.searchImage;
                ArrayList arrayList21 = arrayList14;
                ArrayList arrayList22 = arrayList17;
                i9 = i33;
                if (searchImage == null && sendingMediaInfo5.videoEditedInfo == null) {
                    ArrayList arrayList23 = arrayList15;
                    if (searchImage.type == 1) {
                        final HashMap map6 = new HashMap();
                        TLRPC.Document document = sendingMediaInfo5.searchImage.document;
                        if (document instanceof TLRPC.TL_document) {
                            tL_document3 = (TLRPC.TL_document) document;
                            file2 = FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(tL_document3, true);
                        } else {
                            file2 = new File(FileLoader.getDirectory(4), Utilities.MD5(sendingMediaInfo5.searchImage.imageUrl) + "." + ImageLoader.getHttpUrlExtension(sendingMediaInfo5.searchImage.imageUrl, "jpg"));
                            tL_document3 = null;
                        }
                        if (tL_document3 == null) {
                            TLRPC.TL_document tL_document4 = new TLRPC.TL_document();
                            tL_document4.id = 0L;
                            tL_document4.file_reference = new byte[0];
                            tL_document4.date = accountInstance.getConnectionsManager().getCurrentTime();
                            TLRPC.TL_documentAttributeFilename tL_documentAttributeFilename = new TLRPC.TL_documentAttributeFilename();
                            tL_documentAttributeFilename.file_name = "animation.gif";
                            tL_document4.attributes.add(tL_documentAttributeFilename);
                            tL_document4.size = sendingMediaInfo5.searchImage.size;
                            tL_document4.dc_id = 0;
                            if (z || !file2.toString().endsWith("mp4")) {
                                str52 = str5;
                                tL_document4.mime_type = "image/gif";
                            } else {
                                str52 = str5;
                                tL_document4.mime_type = str52;
                                tL_document4.attributes.add(new TLRPC.TL_documentAttributeAnimated());
                            }
                            if (file2.exists()) {
                                file3 = file2;
                            } else {
                                file2 = null;
                                file3 = null;
                            }
                            if (file2 == null) {
                                file2 = new File(FileLoader.getDirectory(4), Utilities.MD5(sendingMediaInfo5.searchImage.thumbUrl) + "." + ImageLoader.getHttpUrlExtension(sendingMediaInfo5.searchImage.thumbUrl, "jpg"));
                                if (!file2.exists()) {
                                    file2 = null;
                                }
                            }
                            if (file2 == null) {
                                obj8 = null;
                            } else if (z6) {
                                i26 = 90;
                                if (file2.getAbsolutePath().endsWith("mp4")) {
                                }
                                if (bitmapCreateVideoThumbnail != null) {
                                }
                            } else {
                                try {
                                    if (sendingMediaInfo5.ttl != 0) {
                                        i26 = 90;
                                        if (file2.getAbsolutePath().endsWith("mp4")) {
                                            try {
                                                bitmapCreateVideoThumbnail = createVideoThumbnail(file2.getAbsolutePath(), 1);
                                                obj8 = null;
                                            } catch (Exception e) {
                                                e = e;
                                                obj8 = null;
                                                FileLog.e(e);
                                                if (tL_document4.thumbs.isEmpty()) {
                                                }
                                                tL_document3 = tL_document4;
                                                file2 = file3;
                                                if (file2 != null) {
                                                }
                                                str53 = sendingMediaInfo5.searchImage.imageUrl;
                                                if (str53 != null) {
                                                }
                                                final String str77 = null;
                                                String str78 = str51;
                                                ArrayList arrayList24 = arrayList16;
                                                final TLRPC.TL_document tL_document5 = tL_document3;
                                                String str79 = str6;
                                                z8 = z6;
                                                final boolean z17 = z16;
                                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda39
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        SendMessagesHelper.lambda$prepareSendingMedia$102(messageObject, accountInstance, tL_document5, string, map6, sendingMediaInfo5, str77, j, messageObject2, messageObject3, z3, i, tL_stories$StoryItem, replyQuote, str, i2, z17, j2, z4, j3, j4, messageSuggestionParams);
                                                    }
                                                });
                                                i12 = i3;
                                                i32 = i8;
                                                arrayList15 = arrayList23;
                                                arrayList14 = arrayList21;
                                                arrayList16 = arrayList24;
                                                arrayList17 = arrayList22;
                                                i11 = i9;
                                                str16 = str52;
                                                str18 = str8;
                                                str20 = str9;
                                                obj = null;
                                                j7 = j5;
                                                str14 = str78;
                                                str19 = str79;
                                                str17 = str2;
                                                map3 = map;
                                                i33 = i11 + 1;
                                                arrayList13 = arrayList;
                                                map = map3;
                                                z6 = z8;
                                                str7 = str14;
                                                str2 = str17;
                                                str5 = str16;
                                                str8 = str18;
                                                str9 = str20;
                                                j14 = j7;
                                                str6 = str19;
                                                i3 = i12;
                                                i4 = 1;
                                                arrayList20 = arrayList20;
                                            }
                                        } else {
                                            float f = i26;
                                            obj8 = null;
                                            bitmapCreateVideoThumbnail = ImageLoader.loadBitmap(file2.getAbsolutePath(), null, f, f, true);
                                        }
                                        if (bitmapCreateVideoThumbnail != null) {
                                            try {
                                                float f2 = i26;
                                                TLRPC.PhotoSize photoSizeScaleAndSaveImage3 = ImageLoader.scaleAndSaveImage(bitmapCreateVideoThumbnail, f2, f2, i26 > 90 ? 80 : 55, z6);
                                                if (photoSizeScaleAndSaveImage3 != null) {
                                                    tL_document4.thumbs.add(photoSizeScaleAndSaveImage3);
                                                    tL_document4.flags |= 1;
                                                }
                                                bitmapCreateVideoThumbnail.recycle();
                                            } catch (Exception e2) {
                                                e = e2;
                                                FileLog.e(e);
                                                if (tL_document4.thumbs.isEmpty()) {
                                                }
                                                tL_document3 = tL_document4;
                                                file2 = file3;
                                                if (file2 != null) {
                                                }
                                                str53 = sendingMediaInfo5.searchImage.imageUrl;
                                                if (str53 != null) {
                                                }
                                                final String str772 = null;
                                                String str782 = str51;
                                                ArrayList arrayList242 = arrayList16;
                                                final TLRPC.TL_document tL_document52 = tL_document3;
                                                String str792 = str6;
                                                z8 = z6;
                                                final boolean z172 = z16;
                                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda39
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        SendMessagesHelper.lambda$prepareSendingMedia$102(messageObject, accountInstance, tL_document52, string, map6, sendingMediaInfo5, str772, j, messageObject2, messageObject3, z3, i, tL_stories$StoryItem, replyQuote, str, i2, z172, j2, z4, j3, j4, messageSuggestionParams);
                                                    }
                                                });
                                                i12 = i3;
                                                i32 = i8;
                                                arrayList15 = arrayList23;
                                                arrayList14 = arrayList21;
                                                arrayList16 = arrayList242;
                                                arrayList17 = arrayList22;
                                                i11 = i9;
                                                str16 = str52;
                                                str18 = str8;
                                                str20 = str9;
                                                obj = null;
                                                j7 = j5;
                                                str14 = str782;
                                                str19 = str792;
                                                str17 = str2;
                                                map3 = map;
                                                i33 = i11 + 1;
                                                arrayList13 = arrayList;
                                                map = map3;
                                                z6 = z8;
                                                str7 = str14;
                                                str2 = str17;
                                                str5 = str16;
                                                str8 = str18;
                                                str9 = str20;
                                                j14 = j7;
                                                str6 = str19;
                                                i3 = i12;
                                                i4 = 1;
                                                arrayList20 = arrayList20;
                                            }
                                        }
                                    } else {
                                        i26 = 320;
                                        if (file2.getAbsolutePath().endsWith("mp4")) {
                                        }
                                        if (bitmapCreateVideoThumbnail != null) {
                                        }
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    obj8 = null;
                                    FileLog.e(e);
                                    if (tL_document4.thumbs.isEmpty()) {
                                    }
                                    tL_document3 = tL_document4;
                                    file2 = file3;
                                    if (file2 != null) {
                                    }
                                    str53 = sendingMediaInfo5.searchImage.imageUrl;
                                    if (str53 != null) {
                                    }
                                    final String str7722 = null;
                                    String str7822 = str51;
                                    ArrayList arrayList2422 = arrayList16;
                                    final TLRPC.TL_document tL_document522 = tL_document3;
                                    String str7922 = str6;
                                    z8 = z6;
                                    final boolean z1722 = z16;
                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda39
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            SendMessagesHelper.lambda$prepareSendingMedia$102(messageObject, accountInstance, tL_document522, string, map6, sendingMediaInfo5, str7722, j, messageObject2, messageObject3, z3, i, tL_stories$StoryItem, replyQuote, str, i2, z1722, j2, z4, j3, j4, messageSuggestionParams);
                                        }
                                    });
                                    i12 = i3;
                                    i32 = i8;
                                    arrayList15 = arrayList23;
                                    arrayList14 = arrayList21;
                                    arrayList16 = arrayList2422;
                                    arrayList17 = arrayList22;
                                    i11 = i9;
                                    str16 = str52;
                                    str18 = str8;
                                    str20 = str9;
                                    obj = null;
                                    j7 = j5;
                                    str14 = str7822;
                                    str19 = str7922;
                                    str17 = str2;
                                    map3 = map;
                                    i33 = i11 + 1;
                                    arrayList13 = arrayList;
                                    map = map3;
                                    z6 = z8;
                                    str7 = str14;
                                    str2 = str17;
                                    str5 = str16;
                                    str8 = str18;
                                    str9 = str20;
                                    j14 = j7;
                                    str6 = str19;
                                    i3 = i12;
                                    i4 = 1;
                                    arrayList20 = arrayList20;
                                }
                            }
                            if (tL_document4.thumbs.isEmpty()) {
                                str51 = str7;
                            } else {
                                TLRPC.TL_photoSize tL_photoSize = new TLRPC.TL_photoSize();
                                MediaController.SearchImage searchImage3 = sendingMediaInfo5.searchImage;
                                tL_photoSize.w = searchImage3.width;
                                tL_photoSize.h = searchImage3.height;
                                tL_photoSize.size = 0;
                                tL_photoSize.location = new TLRPC.TL_fileLocationUnavailable();
                                str51 = str7;
                                tL_photoSize.type = str51;
                                tL_document4.thumbs.add(tL_photoSize);
                                tL_document4.flags |= 1;
                            }
                            tL_document3 = tL_document4;
                            file2 = file3;
                        } else {
                            str51 = str7;
                            str52 = str5;
                            obj8 = null;
                        }
                        final String string5 = file2 != null ? sendingMediaInfo5.searchImage.imageUrl : file2.toString();
                        str53 = sendingMediaInfo5.searchImage.imageUrl;
                        if (str53 != null) {
                            map6.put("originalPath", str53);
                        }
                        final String str77222 = null;
                        String str78222 = str51;
                        ArrayList arrayList24222 = arrayList16;
                        final TLRPC.TL_document tL_document5222 = tL_document3;
                        String str79222 = str6;
                        z8 = z6;
                        final boolean z17222 = z16;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda39
                            @Override // java.lang.Runnable
                            public final void run() {
                                SendMessagesHelper.lambda$prepareSendingMedia$102(messageObject, accountInstance, tL_document5222, string5, map6, sendingMediaInfo5, str77222, j, messageObject2, messageObject3, z3, i, tL_stories$StoryItem, replyQuote, str, i2, z17222, j2, z4, j3, j4, messageSuggestionParams);
                            }
                        });
                        i12 = i3;
                        i32 = i8;
                        arrayList15 = arrayList23;
                        arrayList14 = arrayList21;
                        arrayList16 = arrayList24222;
                        arrayList17 = arrayList22;
                        i11 = i9;
                        str16 = str52;
                        str18 = str8;
                        str20 = str9;
                        obj = null;
                        j7 = j5;
                        str14 = str78222;
                        str19 = str79222;
                        str17 = str2;
                        map3 = map;
                    } else {
                        ArrayList arrayList25 = arrayList16;
                        HashMap map7 = map;
                        String str80 = str8;
                        String str81 = str6;
                        String str82 = str9;
                        String str83 = str7;
                        String str84 = str5;
                        z8 = z6;
                        int i34 = i3;
                        TLRPC.Photo photo = searchImage.photo;
                        TLRPC.TL_photo tL_photo8 = photo instanceof TLRPC.TL_photo ? (TLRPC.TL_photo) photo : null;
                        if (tL_photo8 == null) {
                            File file5 = new File(FileLoader.getDirectory(4), Utilities.MD5(sendingMediaInfo5.searchImage.imageUrl) + "." + ImageLoader.getHttpUrlExtension(sendingMediaInfo5.searchImage.imageUrl, "jpg"));
                            if (!file5.exists() || file5.length() == 0) {
                                uri3 = null;
                            } else {
                                uri3 = null;
                                tL_photo8 = accountInstance.getSendMessagesHelper().generatePhotoSizes(file5.toString(), null);
                                boolean z18 = tL_photo8 == null;
                                if (tL_photo8 != null) {
                                    File file6 = new File(FileLoader.getDirectory(4), Utilities.MD5(sendingMediaInfo5.searchImage.thumbUrl) + "." + ImageLoader.getHttpUrlExtension(sendingMediaInfo5.searchImage.thumbUrl, "jpg"));
                                    if (file6.exists()) {
                                        tL_photo8 = accountInstance.getSendMessagesHelper().generatePhotoSizes(file6.toString(), uri3);
                                    }
                                    if (tL_photo8 == null) {
                                        tL_photo8 = new TLRPC.TL_photo();
                                        tL_photo8.date = accountInstance.getConnectionsManager().getCurrentTime();
                                        tL_photo8.file_reference = new byte[0];
                                        TLRPC.TL_photoSize tL_photoSize2 = new TLRPC.TL_photoSize();
                                        MediaController.SearchImage searchImage4 = sendingMediaInfo5.searchImage;
                                        tL_photoSize2.w = searchImage4.width;
                                        tL_photoSize2.h = searchImage4.height;
                                        tL_photoSize2.size = 0;
                                        tL_photoSize2.location = new TLRPC.TL_fileLocationUnavailable();
                                        str49 = str83;
                                        tL_photoSize2.type = str49;
                                        tL_photo8.sizes.add(tL_photoSize2);
                                    } else {
                                        str49 = str83;
                                    }
                                    tL_photo4 = tL_photo8;
                                    z11 = z18;
                                }
                            }
                            if (tL_photo8 != null) {
                            }
                        } else {
                            str49 = str83;
                            tL_photo4 = tL_photo8;
                            z11 = true;
                        }
                        final HashMap map8 = new HashMap();
                        String str85 = sendingMediaInfo5.searchImage.imageUrl;
                        if (str85 != null) {
                            map8.put("originalPath", str85);
                        }
                        if (z2) {
                            int i35 = i8 + 1;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("");
                            str50 = str49;
                            j13 = j5;
                            sb2.append(j13);
                            map8.put("groupId", sb2.toString());
                            if (i35 != 10) {
                                i25 = i9;
                                if (i25 != i34 - 1) {
                                    i8 = i35;
                                }
                            } else {
                                i25 = i9;
                            }
                            map8.put("final", "1");
                            i8 = i35;
                            jNextLong = 0;
                        } else {
                            str50 = str49;
                            j13 = j5;
                            i25 = i9;
                        }
                        final String str86 = null;
                        long j15 = j13;
                        int i36 = i25;
                        final boolean z19 = z11;
                        str14 = str50;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda40
                            @Override // java.lang.Runnable
                            public final void run() {
                                SendMessagesHelper.lambda$prepareSendingMedia$103(messageObject, accountInstance, tL_photo4, z19, sendingMediaInfo5, map8, str86, j, messageObject2, messageObject3, z3, i, tL_stories$StoryItem, replyQuote, i2, str, j2, z4, j3, j4, messageSuggestionParams);
                            }
                        });
                        i32 = i8;
                        str17 = str2;
                        arrayList15 = arrayList23;
                        arrayList14 = arrayList21;
                        arrayList16 = arrayList25;
                        arrayList17 = arrayList22;
                        str16 = str84;
                        str19 = str81;
                        str18 = str80;
                        str20 = str82;
                        map3 = map7;
                        i11 = i36;
                        j7 = j15;
                        i12 = i34;
                        arrayList20 = arrayList20;
                        obj = null;
                    }
                } else {
                    ArrayList arrayList26 = arrayList15;
                    arrayList4 = arrayList16;
                    i10 = i3;
                    map2 = map;
                    str10 = str8;
                    str11 = str6;
                    str12 = str9;
                    str13 = str5;
                    j6 = j5;
                    z8 = z6;
                    str14 = str7;
                    if (sendingMediaInfo5.isVideo && sendingMediaInfo5.videoEditedInfo == null) {
                        String str87 = sendingMediaInfo5.path;
                        if (str87 != null || (uri2 = sendingMediaInfo5.uri) == null) {
                            string = str87;
                            str33 = string;
                        } else {
                            String path2 = (Build.VERSION.SDK_INT < 30 || !RemoteMessageConst.Notification.CONTENT.equals(uri2.getScheme())) ? AndroidUtilities.getPath(sendingMediaInfo5.uri) : null;
                            string = sendingMediaInfo5.uri.toString();
                            str33 = path2;
                        }
                        if (inputContentInfoCompat == null || sendingMediaInfo5.uri == null || !inputContentInfoCompat.getDescription().hasMimeType("image/png")) {
                            str34 = str4;
                            str35 = str11;
                        } else {
                            try {
                                BitmapFactory.Options options = new BitmapFactory.Options();
                                inputStreamOpenInputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(sendingMediaInfo5.uri);
                                try {
                                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                                    StringBuilder sb3 = new StringBuilder();
                                    str35 = str11;
                                    try {
                                        sb3.append(str35);
                                        sb3.append(SharedConfig.getLastLocalId());
                                        str34 = str4;
                                        try {
                                            sb3.append(str34);
                                            File file7 = new File(FileLoader.getDirectory(4), sb3.toString());
                                            fileOutputStream = new FileOutputStream(file7);
                                            try {
                                                bitmapDecodeStream.compress(Bitmap.CompressFormat.WEBP, 100, fileOutputStream);
                                                SharedConfig.saveConfig();
                                                sendingMediaInfo5.uri = Uri.fromFile(file7);
                                                if (inputStreamOpenInputStream != null) {
                                                    try {
                                                        inputStreamOpenInputStream.close();
                                                    } catch (Exception unused) {
                                                    }
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                try {
                                                    FileLog.e(th);
                                                    if (inputStreamOpenInputStream != null) {
                                                        try {
                                                            inputStreamOpenInputStream.close();
                                                        } catch (Exception unused2) {
                                                        }
                                                    }
                                                    if (fileOutputStream != null) {
                                                        fileOutputStream.close();
                                                    }
                                                    if (z) {
                                                        str36 = str3;
                                                        if (str33 == null) {
                                                        }
                                                        strCopyFileToCache = str33;
                                                        r37 = fileExtension;
                                                        z10 = true;
                                                        arrayList8 = r37;
                                                        if (z10) {
                                                        }
                                                    }
                                                    i33 = i11 + 1;
                                                    arrayList13 = arrayList;
                                                    map = map3;
                                                    z6 = z8;
                                                    str7 = str14;
                                                    str2 = str17;
                                                    str5 = str16;
                                                    str8 = str18;
                                                    str9 = str20;
                                                    j14 = j7;
                                                    str6 = str19;
                                                    i3 = i12;
                                                    i4 = 1;
                                                    arrayList20 = arrayList20;
                                                } finally {
                                                }
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            fileOutputStream = null;
                                            FileLog.e(th);
                                            if (inputStreamOpenInputStream != null) {
                                            }
                                            if (fileOutputStream != null) {
                                            }
                                            if (z) {
                                            }
                                            i33 = i11 + 1;
                                            arrayList13 = arrayList;
                                            map = map3;
                                            z6 = z8;
                                            str7 = str14;
                                            str2 = str17;
                                            str5 = str16;
                                            str8 = str18;
                                            str9 = str20;
                                            j14 = j7;
                                            str6 = str19;
                                            i3 = i12;
                                            i4 = 1;
                                            arrayList20 = arrayList20;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        str34 = str4;
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    str34 = str4;
                                    str35 = str11;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                str34 = str4;
                                str35 = str11;
                                inputStreamOpenInputStream = null;
                            }
                            try {
                                fileOutputStream.close();
                            } catch (Exception unused3) {
                            }
                        }
                        if (z || ImageLoader.shouldSendImageAsDocument(sendingMediaInfo5.path, sendingMediaInfo5.uri)) {
                            str36 = str3;
                            fileExtension = str33 == null ? FileLoader.getFileExtension(new File(str33)) : "";
                        } else {
                            if (sendingMediaInfo5.forceImage || str33 == null) {
                                str36 = str3;
                            } else {
                                str36 = str3;
                                if ((str33.endsWith(str36) || str33.endsWith(str34)) && sendingMediaInfo5.ttl <= 0) {
                                    fileExtension = str33.endsWith(str36) ? "gif" : "webp";
                                }
                            }
                            if (!sendingMediaInfo5.forceImage && str33 == null && (uri = sendingMediaInfo5.uri) != null) {
                                if (MediaController.isGif(uri)) {
                                    string = sendingMediaInfo5.uri.toString();
                                    strCopyFileToCache = MediaController.copyFileToCache(sendingMediaInfo5.uri, "gif");
                                    r37 = "gif";
                                } else if (MediaController.isWebp(sendingMediaInfo5.uri)) {
                                    string = sendingMediaInfo5.uri.toString();
                                    strCopyFileToCache = MediaController.copyFileToCache(sendingMediaInfo5.uri, "webp");
                                    r37 = "webp";
                                }
                                z10 = true;
                                arrayList8 = r37;
                                if (z10) {
                                    if (strCopyFileToCache != null) {
                                        File file8 = new File(strCopyFileToCache);
                                        StringBuilder sb4 = new StringBuilder();
                                        sb4.append(string);
                                        obj4 = "1";
                                        sb4.append(file8.length());
                                        str37 = str2;
                                        sb4.append(str37);
                                        sb4.append(file8.lastModified());
                                        string2 = sb4.toString();
                                        map4 = map2;
                                    } else {
                                        obj4 = "1";
                                        str37 = str2;
                                        map4 = map2;
                                        string2 = null;
                                    }
                                    if (map4 != null) {
                                        MediaSendPrepareWorker mediaSendPrepareWorker3 = (MediaSendPrepareWorker) map4.get(sendingMediaInfo5);
                                        TLRPC.TL_photo tL_photo9 = mediaSendPrepareWorker3.photo;
                                        HashMap map9 = map4;
                                        String str88 = mediaSendPrepareWorker3.parentObject;
                                        if (tL_photo9 == null) {
                                            try {
                                                mediaSendPrepareWorker3.sync.await();
                                            } catch (Exception e4) {
                                                FileLog.e(e4);
                                            }
                                            tL_photo9 = mediaSendPrepareWorker3.photo;
                                            str38 = string2;
                                            obj5 = obj4;
                                            str39 = str37;
                                            str4 = str34;
                                            str40 = str35;
                                            map3 = map9;
                                            str42 = mediaSendPrepareWorker3.parentObject;
                                        } else {
                                            str38 = string2;
                                            obj5 = obj4;
                                            str39 = str37;
                                            str4 = str34;
                                            str40 = str35;
                                            map3 = map9;
                                            str42 = str88;
                                        }
                                        obj6 = "groupId";
                                        obj7 = "originalPath";
                                        tL_photo = tL_photo9;
                                    } else {
                                        HashMap map10 = map4;
                                        if (z8 || sendingMediaInfo5.ttl != 0) {
                                            str38 = string2;
                                            obj5 = obj4;
                                            str39 = str37;
                                            str4 = str34;
                                            str40 = str35;
                                            map3 = map10;
                                            obj6 = "groupId";
                                            obj7 = "originalPath";
                                            tL_photo = null;
                                            str41 = null;
                                        } else {
                                            int i37 = sendingMediaInfo5.highQuality ? !z8 ? 6 : 7 : !z8 ? 0 : 3;
                                            Object[] sentFile3 = accountInstance.getMessagesStorage().getSentFile(string2, i37);
                                            String str89 = string2;
                                            if (sentFile3 != null) {
                                                Object obj12 = sentFile3[0];
                                                if (obj12 instanceof TLRPC.TL_photo) {
                                                    tL_photo2 = (TLRPC.TL_photo) obj12;
                                                    str43 = (String) sentFile3[1];
                                                } else {
                                                    str43 = null;
                                                    tL_photo2 = null;
                                                }
                                                if (tL_photo2 != null) {
                                                    str41 = str43;
                                                } else if (sendingMediaInfo5.uri != null) {
                                                    str41 = str43;
                                                    Object[] sentFile4 = accountInstance.getMessagesStorage().getSentFile(AndroidUtilities.getPath(sendingMediaInfo5.uri), i37);
                                                    if (sentFile4 != null) {
                                                        Object obj13 = sentFile4[0];
                                                        if (obj13 instanceof TLRPC.TL_photo) {
                                                            str41 = (String) sentFile4[1];
                                                            tL_photo3 = (TLRPC.TL_photo) obj13;
                                                            map3 = map10;
                                                            str38 = str89;
                                                            obj5 = obj4;
                                                            str4 = str34;
                                                            obj6 = "groupId";
                                                            str39 = str37;
                                                            str40 = str35;
                                                            obj7 = "originalPath";
                                                            ensureMediaThumbExists(accountInstance, z8, tL_photo3, sendingMediaInfo5.path, sendingMediaInfo5.uri, 0L);
                                                            tL_photo = tL_photo3;
                                                        }
                                                    }
                                                } else {
                                                    str41 = str43;
                                                }
                                                tL_photo3 = tL_photo2;
                                                map3 = map10;
                                                str38 = str89;
                                                obj5 = obj4;
                                                str4 = str34;
                                                obj6 = "groupId";
                                                str39 = str37;
                                                str40 = str35;
                                                obj7 = "originalPath";
                                                ensureMediaThumbExists(accountInstance, z8, tL_photo3, sendingMediaInfo5.path, sendingMediaInfo5.uri, 0L);
                                                tL_photo = tL_photo3;
                                            }
                                        }
                                        if (tL_photo == null) {
                                            TLRPC.TL_photo tL_photoGeneratePhotoSizes = accountInstance.getSendMessagesHelper().generatePhotoSizes(sendingMediaInfo5.path, sendingMediaInfo5.uri);
                                            if (z8 && sendingMediaInfo5.canDeleteAfter) {
                                                new File(sendingMediaInfo5.path).delete();
                                            }
                                            tL_photo = tL_photoGeneratePhotoSizes;
                                        }
                                        str42 = str41;
                                    }
                                    if (tL_photo != null) {
                                        final HashMap map11 = new HashMap();
                                        final Bitmap[] bitmapArr = new Bitmap[1];
                                        final String[] strArr = new String[1];
                                        ArrayList<TLRPC.InputDocument> arrayList27 = sendingMediaInfo5.masks;
                                        boolean z20 = (arrayList27 == null || arrayList27.isEmpty()) ? false : true;
                                        tL_photo.has_stickers = z20;
                                        if (z20) {
                                            SerializedData serializedData = new SerializedData((sendingMediaInfo5.masks.size() * 20) + 4);
                                            serializedData.writeInt32(sendingMediaInfo5.masks.size());
                                            for (int i38 = 0; i38 < sendingMediaInfo5.masks.size(); i38++) {
                                                sendingMediaInfo5.masks.get(i38).serializeToStream(serializedData);
                                            }
                                            str48 = str10;
                                            map11.put(str48, Utilities.bytesToHex(serializedData.toByteArray()));
                                            serializedData.cleanup();
                                        } else {
                                            str48 = str10;
                                        }
                                        String str90 = str38;
                                        if (str90 != null) {
                                            map11.put(obj7, str90);
                                        }
                                        if (str42 != null) {
                                            map11.put(str12, str42);
                                        }
                                        if (z2) {
                                            try {
                                            } catch (Exception e5) {
                                                e = e5;
                                                accountInstance2 = accountInstance;
                                                FileLog.e(e);
                                                if (z2) {
                                                }
                                                final boolean z21 = sendingMediaInfo5.highQuality;
                                                i20 = i22;
                                                str45 = str48;
                                                final String str91 = str42;
                                                str46 = str12;
                                                str44 = str40;
                                                j11 = j12;
                                                i21 = i23;
                                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda41
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        SendMessagesHelper.lambda$prepareSendingMedia$105(bitmapArr, strArr, messageObject, accountInstance, tL_photo, map11, sendingMediaInfo5, str91, j, messageObject2, messageObject3, z3, i, z5, tL_stories$StoryItem, replyQuote, str, i2, j2, z4, j3, j4, messageSuggestionParams, z21);
                                                    }
                                                });
                                                i32 = i24;
                                                arrayList16 = arrayList12;
                                                arrayList15 = arrayList26;
                                                arrayList14 = arrayList21;
                                                arrayList17 = arrayList22;
                                                i11 = i20;
                                                str16 = str13;
                                                str17 = str39;
                                                str18 = str45;
                                                str19 = str44;
                                                str20 = str46;
                                                j7 = j11;
                                                i12 = i21;
                                                arrayList20 = arrayList8;
                                                obj = null;
                                                i33 = i11 + 1;
                                                arrayList13 = arrayList;
                                                map = map3;
                                                z6 = z8;
                                                str7 = str14;
                                                str2 = str17;
                                                str5 = str16;
                                                str8 = str18;
                                                str9 = str20;
                                                j14 = j7;
                                                str6 = str19;
                                                i3 = i12;
                                                i4 = 1;
                                                arrayList20 = arrayList20;
                                            }
                                            if (arrayList.size() == 1) {
                                                closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tL_photo.sizes, AndroidUtilities.getPhotoSize(sendingMediaInfo5.highQuality));
                                                if (closestPhotoSizeWithSize == null) {
                                                    accountInstance2 = accountInstance;
                                                    try {
                                                        strArr[0] = getKeyForPhotoSize(accountInstance2, closestPhotoSizeWithSize, bitmapArr, false, false);
                                                    } catch (Exception e6) {
                                                        e = e6;
                                                        FileLog.e(e);
                                                        if (z2) {
                                                        }
                                                        final boolean z212 = sendingMediaInfo5.highQuality;
                                                        i20 = i22;
                                                        str45 = str48;
                                                        final String str912 = str42;
                                                        str46 = str12;
                                                        str44 = str40;
                                                        j11 = j12;
                                                        i21 = i23;
                                                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda41
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                SendMessagesHelper.lambda$prepareSendingMedia$105(bitmapArr, strArr, messageObject, accountInstance, tL_photo, map11, sendingMediaInfo5, str912, j, messageObject2, messageObject3, z3, i, z5, tL_stories$StoryItem, replyQuote, str, i2, j2, z4, j3, j4, messageSuggestionParams, z212);
                                                            }
                                                        });
                                                        i32 = i24;
                                                        arrayList16 = arrayList12;
                                                        arrayList15 = arrayList26;
                                                        arrayList14 = arrayList21;
                                                        arrayList17 = arrayList22;
                                                        i11 = i20;
                                                        str16 = str13;
                                                        str17 = str39;
                                                        str18 = str45;
                                                        str19 = str44;
                                                        str20 = str46;
                                                        j7 = j11;
                                                        i12 = i21;
                                                        arrayList20 = arrayList8;
                                                        obj = null;
                                                        i33 = i11 + 1;
                                                        arrayList13 = arrayList;
                                                        map = map3;
                                                        z6 = z8;
                                                        str7 = str14;
                                                        str2 = str17;
                                                        str5 = str16;
                                                        str8 = str18;
                                                        str9 = str20;
                                                        j14 = j7;
                                                        str6 = str19;
                                                        i3 = i12;
                                                        i4 = 1;
                                                        arrayList20 = arrayList20;
                                                    }
                                                }
                                                if (z2) {
                                                    i24 = i8 + 1;
                                                    StringBuilder sb5 = new StringBuilder();
                                                    sb5.append("");
                                                    arrayList12 = arrayList4;
                                                    str3 = str36;
                                                    j12 = j6;
                                                    sb5.append(j12);
                                                    map11.put(obj6, sb5.toString());
                                                    if (i24 != 10) {
                                                        i23 = i10;
                                                        i22 = i9;
                                                        if (i22 == i23 - 1) {
                                                        }
                                                    } else {
                                                        i22 = i9;
                                                        i23 = i10;
                                                    }
                                                    map11.put("final", obj5);
                                                    jNextLong = 0;
                                                } else {
                                                    arrayList12 = arrayList4;
                                                    str3 = str36;
                                                    i22 = i9;
                                                    j12 = j6;
                                                    i23 = i10;
                                                    i24 = i8;
                                                }
                                                final boolean z2122 = sendingMediaInfo5.highQuality;
                                                i20 = i22;
                                                str45 = str48;
                                                final String str9122 = str42;
                                                str46 = str12;
                                                str44 = str40;
                                                j11 = j12;
                                                i21 = i23;
                                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda41
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        SendMessagesHelper.lambda$prepareSendingMedia$105(bitmapArr, strArr, messageObject, accountInstance, tL_photo, map11, sendingMediaInfo5, str9122, j, messageObject2, messageObject3, z3, i, z5, tL_stories$StoryItem, replyQuote, str, i2, j2, z4, j3, j4, messageSuggestionParams, z2122);
                                                    }
                                                });
                                                i32 = i24;
                                                arrayList16 = arrayList12;
                                                arrayList15 = arrayList26;
                                                arrayList14 = arrayList21;
                                                arrayList17 = arrayList22;
                                                i11 = i20;
                                                str16 = str13;
                                                str17 = str39;
                                                str18 = str45;
                                                str19 = str44;
                                                str20 = str46;
                                                j7 = j11;
                                                i12 = i21;
                                                arrayList20 = arrayList8;
                                                obj = null;
                                            }
                                            accountInstance2 = accountInstance;
                                            if (z2) {
                                            }
                                            final boolean z21222 = sendingMediaInfo5.highQuality;
                                            i20 = i22;
                                            str45 = str48;
                                            final String str91222 = str42;
                                            str46 = str12;
                                            str44 = str40;
                                            j11 = j12;
                                            i21 = i23;
                                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda41
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    SendMessagesHelper.lambda$prepareSendingMedia$105(bitmapArr, strArr, messageObject, accountInstance, tL_photo, map11, sendingMediaInfo5, str91222, j, messageObject2, messageObject3, z3, i, z5, tL_stories$StoryItem, replyQuote, str, i2, j2, z4, j3, j4, messageSuggestionParams, z21222);
                                                }
                                            });
                                            i32 = i24;
                                            arrayList16 = arrayList12;
                                            arrayList15 = arrayList26;
                                            arrayList14 = arrayList21;
                                            arrayList17 = arrayList22;
                                            i11 = i20;
                                            str16 = str13;
                                            str17 = str39;
                                            str18 = str45;
                                            str19 = str44;
                                            str20 = str46;
                                            j7 = j11;
                                            i12 = i21;
                                            arrayList20 = arrayList8;
                                            obj = null;
                                        } else {
                                            closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tL_photo.sizes, AndroidUtilities.getPhotoSize(sendingMediaInfo5.highQuality));
                                            if (closestPhotoSizeWithSize == null) {
                                                accountInstance2 = accountInstance;
                                            }
                                            if (z2) {
                                            }
                                            final boolean z212222 = sendingMediaInfo5.highQuality;
                                            i20 = i22;
                                            str45 = str48;
                                            final String str912222 = str42;
                                            str46 = str12;
                                            str44 = str40;
                                            j11 = j12;
                                            i21 = i23;
                                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda41
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    SendMessagesHelper.lambda$prepareSendingMedia$105(bitmapArr, strArr, messageObject, accountInstance, tL_photo, map11, sendingMediaInfo5, str912222, j, messageObject2, messageObject3, z3, i, z5, tL_stories$StoryItem, replyQuote, str, i2, j2, z4, j3, j4, messageSuggestionParams, z212222);
                                                }
                                            });
                                            i32 = i24;
                                            arrayList16 = arrayList12;
                                            arrayList15 = arrayList26;
                                            arrayList14 = arrayList21;
                                            arrayList17 = arrayList22;
                                            i11 = i20;
                                            str16 = str13;
                                            str17 = str39;
                                            str18 = str45;
                                            str19 = str44;
                                            str20 = str46;
                                            j7 = j11;
                                            i12 = i21;
                                            arrayList20 = arrayList8;
                                            obj = null;
                                        }
                                    } else {
                                        str3 = str36;
                                        str44 = str40;
                                        str45 = str10;
                                        str46 = str12;
                                        i20 = i9;
                                        j11 = j6;
                                        i21 = i10;
                                        str47 = str38;
                                        if (arrayList4 == null) {
                                            arrayList16 = new ArrayList();
                                            arrayList15 = new ArrayList();
                                            arrayList10 = new ArrayList();
                                            arrayList11 = new ArrayList();
                                            arrayList14 = new ArrayList();
                                            arrayList9 = arrayList11;
                                            arrayList16.add(strCopyFileToCache);
                                            arrayList15.add(str47);
                                            arrayList14.add(sendingMediaInfo5.uri);
                                            arrayList10.add(sendingMediaInfo5.caption);
                                            arrayList9.add(sendingMediaInfo5.entities);
                                            arrayList17 = arrayList10;
                                            arrayList19 = arrayList9;
                                            i32 = i8;
                                            i11 = i20;
                                            str16 = str13;
                                            str17 = str39;
                                            str18 = str45;
                                            str19 = str44;
                                            str20 = str46;
                                            j7 = j11;
                                            i12 = i21;
                                            arrayList20 = arrayList8;
                                            obj = null;
                                        } else {
                                            arrayList16 = arrayList4;
                                            arrayList9 = arrayList19;
                                            arrayList15 = arrayList26;
                                            arrayList14 = arrayList21;
                                            arrayList10 = arrayList22;
                                            arrayList16.add(strCopyFileToCache);
                                            arrayList15.add(str47);
                                            arrayList14.add(sendingMediaInfo5.uri);
                                            arrayList10.add(sendingMediaInfo5.caption);
                                            arrayList9.add(sendingMediaInfo5.entities);
                                            arrayList17 = arrayList10;
                                            arrayList19 = arrayList9;
                                            i32 = i8;
                                            i11 = i20;
                                            str16 = str13;
                                            str17 = str39;
                                            str18 = str45;
                                            str19 = str44;
                                            str20 = str46;
                                            j7 = j11;
                                            i12 = i21;
                                            arrayList20 = arrayList8;
                                            obj = null;
                                        }
                                    }
                                } else if (arrayList4 == null) {
                                    arrayList16 = new ArrayList();
                                    arrayList15 = new ArrayList();
                                    arrayList10 = new ArrayList();
                                    arrayList11 = new ArrayList();
                                    str47 = string;
                                    str4 = str34;
                                    str44 = str35;
                                    str3 = str36;
                                    str39 = str2;
                                    str45 = str10;
                                    str46 = str12;
                                    map3 = map2;
                                    i20 = i9;
                                    j11 = j6;
                                    i21 = i10;
                                    arrayList14 = new ArrayList();
                                    arrayList9 = arrayList11;
                                    arrayList16.add(strCopyFileToCache);
                                    arrayList15.add(str47);
                                    arrayList14.add(sendingMediaInfo5.uri);
                                    arrayList10.add(sendingMediaInfo5.caption);
                                    arrayList9.add(sendingMediaInfo5.entities);
                                    arrayList17 = arrayList10;
                                    arrayList19 = arrayList9;
                                    i32 = i8;
                                    i11 = i20;
                                    str16 = str13;
                                    str17 = str39;
                                    str18 = str45;
                                    str19 = str44;
                                    str20 = str46;
                                    j7 = j11;
                                    i12 = i21;
                                    arrayList20 = arrayList8;
                                    obj = null;
                                } else {
                                    str47 = string;
                                    str4 = str34;
                                    str44 = str35;
                                    arrayList16 = arrayList4;
                                    str3 = str36;
                                    str39 = str2;
                                    arrayList9 = arrayList19;
                                    arrayList15 = arrayList26;
                                    arrayList14 = arrayList21;
                                    arrayList10 = arrayList22;
                                    str45 = str10;
                                    str46 = str12;
                                    map3 = map2;
                                    i20 = i9;
                                    j11 = j6;
                                    i21 = i10;
                                    arrayList16.add(strCopyFileToCache);
                                    arrayList15.add(str47);
                                    arrayList14.add(sendingMediaInfo5.uri);
                                    arrayList10.add(sendingMediaInfo5.caption);
                                    arrayList9.add(sendingMediaInfo5.entities);
                                    arrayList17 = arrayList10;
                                    arrayList19 = arrayList9;
                                    i32 = i8;
                                    i11 = i20;
                                    str16 = str13;
                                    str17 = str39;
                                    str18 = str45;
                                    str19 = str44;
                                    str20 = str46;
                                    j7 = j11;
                                    i12 = i21;
                                    arrayList20 = arrayList8;
                                    obj = null;
                                }
                            }
                            strCopyFileToCache = str33;
                            z10 = false;
                            arrayList8 = arrayList20;
                            if (z10) {
                            }
                        }
                        strCopyFileToCache = str33;
                        r37 = fileExtension;
                        z10 = true;
                        arrayList8 = r37;
                        if (z10) {
                        }
                    } else {
                        str15 = str2;
                        map3 = map2;
                        if (z) {
                            videoEditedInfoCreateCompressionSettings = sendingMediaInfo5.videoEditedInfo;
                            if (videoEditedInfoCreateCompressionSettings == null) {
                                videoEditedInfoCreateCompressionSettings = createCompressionSettings(sendingMediaInfo5.path);
                            }
                        } else {
                            videoEditedInfoCreateCompressionSettings = null;
                        }
                        if (!z || (videoEditedInfoCreateCompressionSettings == null && !sendingMediaInfo5.path.endsWith("mp4"))) {
                            i11 = i9;
                            str16 = str13;
                            str17 = str15;
                            str18 = str10;
                            str19 = str11;
                            str20 = str12;
                            j7 = j6;
                            i12 = i10;
                            obj = null;
                            if (arrayList4 != null) {
                                arrayList16 = new ArrayList();
                                arrayList15 = new ArrayList();
                                arrayList17 = new ArrayList();
                                ArrayList arrayList28 = new ArrayList();
                                arrayList14 = new ArrayList();
                                sendingMediaInfo = sendingMediaInfo5;
                                arrayList5 = arrayList28;
                            } else {
                                sendingMediaInfo = sendingMediaInfo5;
                                arrayList5 = arrayList19;
                                arrayList15 = arrayList26;
                                arrayList14 = arrayList21;
                                arrayList16 = arrayList4;
                                arrayList17 = arrayList22;
                            }
                            arrayList16.add(sendingMediaInfo.path);
                            arrayList15.add(sendingMediaInfo.path);
                            arrayList14.add(sendingMediaInfo.uri);
                            arrayList17.add(sendingMediaInfo.caption);
                            arrayList5.add(sendingMediaInfo.entities);
                            arrayList19 = arrayList5;
                            i32 = i8;
                        } else {
                            if (sendingMediaInfo5.path == null && (searchImage2 = sendingMediaInfo5.searchImage) != null) {
                                sendingMediaInfo5.path = searchImage2.photo instanceof TLRPC.TL_photo ? FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(sendingMediaInfo5.searchImage.photo, true).getAbsolutePath() : new File(FileLoader.getDirectory(4), Utilities.MD5(sendingMediaInfo5.searchImage.imageUrl) + "." + ImageLoader.getHttpUrlExtension(sendingMediaInfo5.searchImage.imageUrl, "jpg")).getAbsolutePath();
                            }
                            String str92 = sendingMediaInfo5.path;
                            File file9 = new File(str92);
                            String str93 = str92 + file9.length() + str15 + file9.lastModified();
                            if (videoEditedInfoCreateCompressionSettings != null) {
                                boolean z22 = videoEditedInfoCreateCompressionSettings.muted;
                                StringBuilder sb6 = new StringBuilder();
                                sb6.append(str93);
                                sb6.append(videoEditedInfoCreateCompressionSettings.estimatedDuration);
                                sb6.append(str15);
                                sb6.append(videoEditedInfoCreateCompressionSettings.startTime);
                                sb6.append(str15);
                                sb6.append(videoEditedInfoCreateCompressionSettings.endTime);
                                sb6.append(videoEditedInfoCreateCompressionSettings.muted ? "_m" : "");
                                String string6 = sb6.toString();
                                if (videoEditedInfoCreateCompressionSettings.resultWidth != videoEditedInfoCreateCompressionSettings.originalWidth) {
                                    string6 = string6 + str15 + videoEditedInfoCreateCompressionSettings.resultWidth;
                                }
                                long j16 = videoEditedInfoCreateCompressionSettings.startTime;
                                if (j16 >= 0) {
                                    z9 = z22;
                                    str21 = string6;
                                    j8 = j16;
                                } else {
                                    str21 = string6;
                                    z9 = z22;
                                    j8 = 0;
                                }
                            } else {
                                str21 = str93;
                                j8 = 0;
                                z9 = false;
                            }
                            if (z8) {
                                j9 = j8;
                                str22 = str21;
                                str17 = str15;
                                file = file9;
                                str23 = "mp4";
                                str24 = str92;
                            } else {
                                long j17 = j8;
                                if (sendingMediaInfo5.ttl == 0 && (videoEditedInfoCreateCompressionSettings == null || (videoEditedInfoCreateCompressionSettings.filterState == null && videoEditedInfoCreateCompressionSettings.paintPath == null && videoEditedInfoCreateCompressionSettings.mediaEntities == null && videoEditedInfoCreateCompressionSettings.cropState == null))) {
                                    Object[] sentFile5 = accountInstance.getMessagesStorage().getSentFile(str21, !z8 ? 2 : 5);
                                    if (sentFile5 != null) {
                                        String str94 = str21;
                                        Object obj14 = sentFile5[0];
                                        if (obj14 instanceof TLRPC.TL_document) {
                                            TLRPC.TL_document tL_document6 = (TLRPC.TL_document) obj14;
                                            String str95 = (String) sentFile5[1];
                                            j9 = j17;
                                            str22 = str94;
                                            str17 = str15;
                                            str24 = str92;
                                            obj2 = "1";
                                            file = file9;
                                            str23 = "mp4";
                                            ensureMediaThumbExists(accountInstance, z8, tL_document6, sendingMediaInfo5.path, null, j9);
                                            tL_document = tL_document6;
                                            str25 = str95;
                                            if (tL_document != null) {
                                                String str96 = sendingMediaInfo5.thumbPath;
                                                Bitmap bitmapDecodeFile = str96 != null ? BitmapFactory.decodeFile(str96) : null;
                                                if (bitmapDecodeFile == null && (bitmapDecodeFile = createVideoThumbnailAtTime(sendingMediaInfo5.path, j9)) == null) {
                                                    bitmapDecodeFile = createVideoThumbnail(sendingMediaInfo5.path, 1);
                                                }
                                                if (bitmapDecodeFile != null) {
                                                    int iMax = (z8 || sendingMediaInfo5.ttl != 0) ? 90 : Math.max(bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight());
                                                    float f3 = iMax;
                                                    sendingMediaInfo2 = sendingMediaInfo5;
                                                    photoSizeScaleAndSaveImage2 = ImageLoader.scaleAndSaveImage(null, bitmapDecodeFile, (videoEditedInfoCreateCompressionSettings == null || !videoEditedInfoCreateCompressionSettings.isSticker) ? Bitmap.CompressFormat.JPEG : Bitmap.CompressFormat.WEBP, false, f3, f3, iMax > 90 ? 80 : 55, z8, 0, 0, false);
                                                    if (photoSizeScaleAndSaveImage2 == null || photoSizeScaleAndSaveImage2.location == null) {
                                                        i17 = 0;
                                                        keyForPhotoSize2 = null;
                                                    } else {
                                                        i17 = 0;
                                                        keyForPhotoSize2 = getKeyForPhotoSize(accountInstance, photoSizeScaleAndSaveImage2, null, true, false);
                                                    }
                                                } else {
                                                    sendingMediaInfo2 = sendingMediaInfo5;
                                                    i17 = 0;
                                                    photoSizeScaleAndSaveImage2 = null;
                                                    keyForPhotoSize2 = null;
                                                }
                                                TLRPC.TL_document tL_document7 = new TLRPC.TL_document();
                                                tL_document7.file_reference = new byte[i17];
                                                if (photoSizeScaleAndSaveImage2 != null) {
                                                    tL_document7.thumbs.add(photoSizeScaleAndSaveImage2);
                                                    tL_document7.flags |= 1;
                                                }
                                                VideoEditedInfo videoEditedInfo = sendingMediaInfo2.videoEditedInfo;
                                                if (videoEditedInfo == null || !videoEditedInfo.isSticker) {
                                                    str31 = str13;
                                                    tL_document7.mime_type = str31;
                                                } else {
                                                    tL_document7.mime_type = "video/webm";
                                                    str31 = str13;
                                                }
                                                Bitmap bitmap2 = bitmapDecodeFile;
                                                accountInstance.getUserConfig().saveConfig(false);
                                                VideoEditedInfo videoEditedInfo2 = sendingMediaInfo2.videoEditedInfo;
                                                if (videoEditedInfo2 == null || !videoEditedInfo2.isSticker) {
                                                    obj3 = obj2;
                                                    str32 = str31;
                                                    if (z8) {
                                                        tL_documentAttributeVideo = new TLRPC.TL_documentAttributeVideo();
                                                        tL_documentAttributeVideo.supports_streaming = true;
                                                    } else {
                                                        tL_documentAttributeVideo = new TLRPC.TL_documentAttributeVideo_layer159();
                                                    }
                                                    tL_document7.attributes.add(tL_documentAttributeVideo);
                                                    if (videoEditedInfoCreateCompressionSettings != null || (!videoEditedInfoCreateCompressionSettings.needConvert() && sendingMediaInfo2.isVideo)) {
                                                        if (file.exists()) {
                                                            tL_document7.size = (int) file.length();
                                                        }
                                                        fillVideoAttribute(sendingMediaInfo2.path, tL_documentAttributeVideo, null);
                                                    } else {
                                                        if (sendingMediaInfo2.isVideo && videoEditedInfoCreateCompressionSettings.muted) {
                                                            fillVideoAttribute(sendingMediaInfo2.path, tL_documentAttributeVideo, videoEditedInfoCreateCompressionSettings);
                                                            videoEditedInfoCreateCompressionSettings.originalWidth = tL_documentAttributeVideo.w;
                                                            videoEditedInfoCreateCompressionSettings.originalHeight = tL_documentAttributeVideo.h;
                                                        } else {
                                                            tL_documentAttributeVideo.duration = (int) (videoEditedInfoCreateCompressionSettings.estimatedDuration / 1000);
                                                        }
                                                        int i39 = videoEditedInfoCreateCompressionSettings.rotationValue;
                                                        MediaController.CropState cropState = videoEditedInfoCreateCompressionSettings.cropState;
                                                        if (cropState != null) {
                                                            i18 = cropState.transformWidth;
                                                            i19 = cropState.transformHeight;
                                                        } else {
                                                            i18 = videoEditedInfoCreateCompressionSettings.resultWidth;
                                                            i19 = videoEditedInfoCreateCompressionSettings.resultHeight;
                                                        }
                                                        if (i39 == 90 || i39 == 270) {
                                                            tL_documentAttributeVideo.w = i19;
                                                            tL_documentAttributeVideo.h = i18;
                                                        } else {
                                                            tL_documentAttributeVideo.w = i18;
                                                            tL_documentAttributeVideo.h = i19;
                                                        }
                                                        tL_document7.size = videoEditedInfoCreateCompressionSettings.estimatedSize;
                                                    }
                                                    tL_document2 = tL_document7;
                                                    str26 = keyForPhotoSize2;
                                                    bitmap = bitmap2;
                                                    str16 = str32;
                                                } else {
                                                    tL_document7.attributes.add(new TLRPC.TL_documentAttributeAnimated());
                                                    TLRPC.TL_documentAttributeSticker tL_documentAttributeSticker = new TLRPC.TL_documentAttributeSticker();
                                                    tL_documentAttributeSticker.alt = "👍";
                                                    tL_documentAttributeSticker.stickerset = new TLRPC.TL_inputStickerSetEmpty();
                                                    tL_document7.attributes.add(tL_documentAttributeSticker);
                                                    if (photoSizeScaleAndSaveImage2 != null && (fileLocation = photoSizeScaleAndSaveImage2.location) != null) {
                                                        obj3 = obj2;
                                                        str32 = str31;
                                                        keyForPhotoSize2 = String.format(Locale.US, "%d_%d@b1", Long.valueOf(fileLocation.volume_id), Integer.valueOf(photoSizeScaleAndSaveImage2.location.local_id));
                                                    }
                                                    if (z8) {
                                                    }
                                                    tL_document7.attributes.add(tL_documentAttributeVideo);
                                                    if (videoEditedInfoCreateCompressionSettings != null) {
                                                        if (file.exists()) {
                                                        }
                                                        fillVideoAttribute(sendingMediaInfo2.path, tL_documentAttributeVideo, null);
                                                        tL_document2 = tL_document7;
                                                        str26 = keyForPhotoSize2;
                                                        bitmap = bitmap2;
                                                        str16 = str32;
                                                    }
                                                }
                                            } else {
                                                obj3 = obj2;
                                                sendingMediaInfo2 = sendingMediaInfo5;
                                                long j18 = j9;
                                                if (tL_document.thumbs.isEmpty()) {
                                                    str16 = str13;
                                                    tL_document2 = tL_document;
                                                    bitmap = null;
                                                    str26 = null;
                                                } else {
                                                    String str97 = sendingMediaInfo2.thumbPath;
                                                    Bitmap bitmapDecodeFile2 = str97 != null ? BitmapFactory.decodeFile(str97) : null;
                                                    if (bitmapDecodeFile2 == null && (bitmapDecodeFile2 = createVideoThumbnailAtTime(sendingMediaInfo2.path, j18)) == null) {
                                                        bitmapDecodeFile2 = createVideoThumbnail(sendingMediaInfo2.path, 1);
                                                    }
                                                    if (bitmapDecodeFile2 != null) {
                                                        int iMax2 = (z8 || sendingMediaInfo2.ttl != 0) ? 90 : Math.max(bitmapDecodeFile2.getWidth(), bitmapDecodeFile2.getHeight());
                                                        float f4 = iMax2;
                                                        str16 = str13;
                                                        photoSizeScaleAndSaveImage = ImageLoader.scaleAndSaveImage(null, bitmapDecodeFile2, (videoEditedInfoCreateCompressionSettings == null || !videoEditedInfoCreateCompressionSettings.isSticker) ? Bitmap.CompressFormat.JPEG : Bitmap.CompressFormat.WEBP, false, f4, f4, iMax2 <= 90 ? 55 : 80, z8, 0, 0, false);
                                                        if (photoSizeScaleAndSaveImage == null || photoSizeScaleAndSaveImage.location == null) {
                                                            i13 = 1;
                                                            keyForPhotoSize = null;
                                                        } else {
                                                            i13 = 1;
                                                            keyForPhotoSize = getKeyForPhotoSize(accountInstance, photoSizeScaleAndSaveImage, null, true, false);
                                                        }
                                                    } else {
                                                        str16 = str13;
                                                        i13 = 1;
                                                        photoSizeScaleAndSaveImage = null;
                                                        keyForPhotoSize = null;
                                                    }
                                                    if (photoSizeScaleAndSaveImage != null) {
                                                        tL_document.thumbs.add(photoSizeScaleAndSaveImage);
                                                        tL_document.flags |= i13;
                                                    }
                                                    bitmap = bitmapDecodeFile2;
                                                    tL_document2 = tL_document;
                                                    str26 = keyForPhotoSize;
                                                }
                                            }
                                            photoSizeFileToSize = ImageLoader.fileToSize(sendingMediaInfo2.coverPath, false);
                                            if (photoSizeFileToSize == null && sendingMediaInfo2.coverPhoto != null) {
                                                photoSizeFileToSize = new ImageLoader.PhotoSizeFromPhoto(sendingMediaInfo2.coverPhoto);
                                            }
                                            final TLRPC.PhotoSize photoSize = photoSizeFileToSize;
                                            if (videoEditedInfoCreateCompressionSettings != null && videoEditedInfoCreateCompressionSettings.muted) {
                                                size = tL_document2.attributes.size();
                                                i16 = 0;
                                                while (true) {
                                                    if (i16 < size) {
                                                        tL_document2.attributes.add(new TLRPC.TL_documentAttributeAnimated());
                                                        break;
                                                    } else if (tL_document2.attributes.get(i16) instanceof TLRPC.TL_documentAttributeAnimated) {
                                                        break;
                                                    } else {
                                                        i16++;
                                                    }
                                                }
                                            }
                                            if (videoEditedInfoCreateCompressionSettings != null || (!videoEditedInfoCreateCompressionSettings.needConvert() && sendingMediaInfo2.isVideo)) {
                                                str27 = str11;
                                                absolutePath = str24;
                                            } else {
                                                String str98 = videoEditedInfoCreateCompressionSettings.isSticker ? "webm" : str23;
                                                StringBuilder sb7 = new StringBuilder();
                                                str27 = str11;
                                                sb7.append(str27);
                                                sb7.append(SharedConfig.getLastLocalId());
                                                sb7.append(".");
                                                sb7.append(str98);
                                                File file10 = new File(FileLoader.getDirectory(4), sb7.toString());
                                                SharedConfig.saveConfig();
                                                absolutePath = file10.getAbsolutePath();
                                            }
                                            final HashMap map12 = new HashMap();
                                            str28 = str22;
                                            if (str28 != null) {
                                                map12.put("originalPath", str28);
                                            }
                                            if (str25 != null) {
                                                map12.put(str12, str25);
                                            }
                                            if (z9 && z2) {
                                                int i40 = i8 + 1;
                                                StringBuilder sb8 = new StringBuilder();
                                                sb8.append("");
                                                str29 = str27;
                                                j10 = j6;
                                                sb8.append(j10);
                                                map12.put("groupId", sb8.toString());
                                                if (i40 != 10) {
                                                    i14 = i10;
                                                    arrayList6 = arrayList4;
                                                    i11 = i9;
                                                    if (i11 != i14 - 1) {
                                                        i15 = i40;
                                                    }
                                                } else {
                                                    arrayList6 = arrayList4;
                                                    i11 = i9;
                                                    i14 = i10;
                                                }
                                                map12.put("final", obj3);
                                                i15 = i40;
                                                jNextLong = 0;
                                            } else {
                                                arrayList6 = arrayList4;
                                                str29 = str27;
                                                i11 = i9;
                                                j10 = j6;
                                                i14 = i10;
                                                i15 = i8;
                                            }
                                            if (!z8 || ((videoEditedInfoCreateCompressionSettings != null && videoEditedInfoCreateCompressionSettings.isSticker) || (arrayList7 = sendingMediaInfo2.masks) == null || arrayList7.isEmpty())) {
                                                str30 = str10;
                                            } else {
                                                tL_document2.attributes.add(new TLRPC.TL_documentAttributeHasStickers());
                                                SerializedData serializedData2 = new SerializedData((sendingMediaInfo2.masks.size() * 20) + 4);
                                                serializedData2.writeInt32(sendingMediaInfo2.masks.size());
                                                for (int i41 = 0; i41 < sendingMediaInfo2.masks.size(); i41++) {
                                                    sendingMediaInfo2.masks.get(i41).serializeToStream(serializedData2);
                                                }
                                                str30 = str10;
                                                map12.put(str30, Utilities.bytesToHex(serializedData2.toByteArray()));
                                                serializedData2.cleanup();
                                            }
                                            final SendingMediaInfo sendingMediaInfo6 = sendingMediaInfo2;
                                            final VideoEditedInfo videoEditedInfo3 = videoEditedInfoCreateCompressionSettings;
                                            final String str99 = str25;
                                            final TLRPC.TL_document tL_document8 = tL_document2;
                                            str18 = str30;
                                            str20 = str12;
                                            j7 = j10;
                                            str19 = str29;
                                            obj = null;
                                            i12 = i14;
                                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda42
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    SendMessagesHelper.lambda$prepareSendingMedia$104(bitmap, str26, messageObject, accountInstance, videoEditedInfo3, tL_document8, absolutePath, map12, sendingMediaInfo6, str99, j, messageObject2, messageObject3, z3, i, tL_stories$StoryItem, replyQuote, str, i2, j2, z4, photoSize, j3, j4, messageSuggestionParams);
                                                }
                                            });
                                            i32 = i15;
                                            arrayList15 = arrayList26;
                                            arrayList14 = arrayList21;
                                            arrayList16 = arrayList6;
                                            arrayList17 = arrayList22;
                                        } else {
                                            str17 = str15;
                                            file = file9;
                                            str23 = "mp4";
                                            str24 = str92;
                                            j9 = j17;
                                            str22 = str94;
                                        }
                                    }
                                } else {
                                    str22 = str21;
                                    str17 = str15;
                                    file = file9;
                                    str23 = "mp4";
                                    str24 = str92;
                                    j9 = j17;
                                }
                            }
                            obj2 = "1";
                            tL_document = null;
                            str25 = null;
                            if (tL_document != null) {
                            }
                            photoSizeFileToSize = ImageLoader.fileToSize(sendingMediaInfo2.coverPath, false);
                            if (photoSizeFileToSize == null) {
                                photoSizeFileToSize = new ImageLoader.PhotoSizeFromPhoto(sendingMediaInfo2.coverPhoto);
                            }
                            final TLRPC.PhotoSize photoSize2 = photoSizeFileToSize;
                            if (videoEditedInfoCreateCompressionSettings != null) {
                                size = tL_document2.attributes.size();
                                i16 = 0;
                                while (true) {
                                    if (i16 < size) {
                                    }
                                    i16++;
                                }
                            }
                            if (videoEditedInfoCreateCompressionSettings != null) {
                                str27 = str11;
                                absolutePath = str24;
                                final HashMap map122 = new HashMap();
                                str28 = str22;
                                if (str28 != null) {
                                }
                                if (str25 != null) {
                                }
                                if (z9) {
                                    arrayList6 = arrayList4;
                                    str29 = str27;
                                    i11 = i9;
                                    j10 = j6;
                                    i14 = i10;
                                    i15 = i8;
                                    if (z8) {
                                        str30 = str10;
                                        final SendingMediaInfo sendingMediaInfo62 = sendingMediaInfo2;
                                        final VideoEditedInfo videoEditedInfo32 = videoEditedInfoCreateCompressionSettings;
                                        final String str992 = str25;
                                        final TLRPC.TL_document tL_document82 = tL_document2;
                                        str18 = str30;
                                        str20 = str12;
                                        j7 = j10;
                                        str19 = str29;
                                        obj = null;
                                        i12 = i14;
                                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda42
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                SendMessagesHelper.lambda$prepareSendingMedia$104(bitmap, str26, messageObject, accountInstance, videoEditedInfo32, tL_document82, absolutePath, map122, sendingMediaInfo62, str992, j, messageObject2, messageObject3, z3, i, tL_stories$StoryItem, replyQuote, str, i2, j2, z4, photoSize2, j3, j4, messageSuggestionParams);
                                            }
                                        });
                                        i32 = i15;
                                        arrayList15 = arrayList26;
                                        arrayList14 = arrayList21;
                                        arrayList16 = arrayList6;
                                        arrayList17 = arrayList22;
                                    }
                                }
                            }
                        }
                    }
                }
                i33 = i11 + 1;
                arrayList13 = arrayList;
                map = map3;
                z6 = z8;
                str7 = str14;
                str2 = str17;
                str5 = str16;
                str8 = str18;
                str9 = str20;
                j14 = j7;
                str6 = str19;
                i3 = i12;
                i4 = 1;
                arrayList20 = arrayList20;
            }
            i8 = i32;
            j5 = j14;
            searchImage = sendingMediaInfo5.searchImage;
            ArrayList arrayList212 = arrayList14;
            ArrayList arrayList222 = arrayList17;
            i9 = i33;
            if (searchImage == null) {
                ArrayList arrayList262 = arrayList15;
                arrayList4 = arrayList16;
                i10 = i3;
                map2 = map;
                str10 = str8;
                str11 = str6;
                str12 = str9;
                str13 = str5;
                j6 = j5;
                z8 = z6;
                str14 = str7;
                if (sendingMediaInfo5.isVideo) {
                }
                str15 = str2;
                map3 = map2;
                if (z) {
                }
                if (z) {
                    i11 = i9;
                    str16 = str13;
                    str17 = str15;
                    str18 = str10;
                    str19 = str11;
                    str20 = str12;
                    j7 = j6;
                    i12 = i10;
                    obj = null;
                    if (arrayList4 != null) {
                    }
                    arrayList16.add(sendingMediaInfo.path);
                    arrayList15.add(sendingMediaInfo.path);
                    arrayList14.add(sendingMediaInfo.uri);
                    arrayList17.add(sendingMediaInfo.caption);
                    arrayList5.add(sendingMediaInfo.entities);
                    arrayList19 = arrayList5;
                    i32 = i8;
                }
            }
            i33 = i11 + 1;
            arrayList13 = arrayList;
            map = map3;
            z6 = z8;
            str7 = str14;
            str2 = str17;
            str5 = str16;
            str8 = str18;
            str9 = str20;
            j14 = j7;
            str6 = str19;
            i3 = i12;
            i4 = 1;
            arrayList20 = arrayList20;
        }
        ArrayList arrayList29 = arrayList14;
        ArrayList arrayList30 = arrayList15;
        ArrayList arrayList31 = arrayList16;
        ArrayList arrayList32 = arrayList17;
        boolean z23 = z6;
        int i42 = i3;
        long j19 = jNextLong;
        if (j19 != 0) {
            finishGroup(accountInstance, j19, i);
        }
        if (inputContentInfoCompat != null) {
            inputContentInfoCompat.releasePermission();
        }
        if (arrayList31 != null && !arrayList31.isEmpty()) {
            int i43 = 1;
            long[] jArr = new long[1];
            int size3 = arrayList31.size();
            int i44 = 0;
            while (i44 < size3) {
                if (!z || z23) {
                    i5 = i42;
                } else {
                    i5 = i42;
                    if (i5 > i43) {
                        i6 = 10;
                        if (i32 % 10 == 0) {
                            jArr[0] = Utilities.random.nextLong();
                            i32 = 0;
                            i7 = i32 + 1;
                            ArrayList arrayList33 = arrayList31;
                            String str100 = (String) arrayList33.get(i44);
                            ArrayList arrayList34 = arrayList30;
                            String str101 = (String) arrayList34.get(i44);
                            ArrayList arrayList35 = arrayList29;
                            Uri uri6 = (Uri) arrayList35.get(i44);
                            ArrayList arrayList36 = arrayList19;
                            ArrayList arrayList37 = (ArrayList) arrayList36.get(i44);
                            if (i7 == i6 || i44 == size3 - 1) {
                                arrayList3 = arrayList32;
                                z7 = true;
                            } else {
                                arrayList3 = arrayList32;
                                z7 = false;
                            }
                            arrayList19 = arrayList36;
                            handleError(prepareSendingDocumentInternal(accountInstance, str100, str101, uri6, arrayList20, j, messageObject2, messageObject3, tL_stories$StoryItem, replyQuote, arrayList37, messageObject, jArr, z7, (CharSequence) arrayList3.get(i44), z3, i, null, z, str, i2, j2, z4, j3, j4, messageSuggestionParams), accountInstance);
                            i44++;
                            arrayList31 = arrayList33;
                            arrayList32 = arrayList3;
                            arrayList29 = arrayList35;
                            arrayList30 = arrayList34;
                            i32 = i7;
                            i42 = i5;
                            size3 = size3;
                            i43 = 1;
                        }
                    }
                    i7 = i32 + 1;
                    ArrayList arrayList332 = arrayList31;
                    String str1002 = (String) arrayList332.get(i44);
                    ArrayList arrayList342 = arrayList30;
                    String str1012 = (String) arrayList342.get(i44);
                    ArrayList arrayList352 = arrayList29;
                    Uri uri62 = (Uri) arrayList352.get(i44);
                    ArrayList arrayList362 = arrayList19;
                    ArrayList arrayList372 = (ArrayList) arrayList362.get(i44);
                    if (i7 == i6) {
                        arrayList3 = arrayList32;
                        z7 = true;
                    }
                    arrayList19 = arrayList362;
                    handleError(prepareSendingDocumentInternal(accountInstance, str1002, str1012, uri62, arrayList20, j, messageObject2, messageObject3, tL_stories$StoryItem, replyQuote, arrayList372, messageObject, jArr, z7, (CharSequence) arrayList3.get(i44), z3, i, null, z, str, i2, j2, z4, j3, j4, messageSuggestionParams), accountInstance);
                    i44++;
                    arrayList31 = arrayList332;
                    arrayList32 = arrayList3;
                    arrayList29 = arrayList352;
                    arrayList30 = arrayList342;
                    i32 = i7;
                    i42 = i5;
                    size3 = size3;
                    i43 = 1;
                }
                i6 = 10;
                i7 = i32 + 1;
                ArrayList arrayList3322 = arrayList31;
                String str10022 = (String) arrayList3322.get(i44);
                ArrayList arrayList3422 = arrayList30;
                String str10122 = (String) arrayList3422.get(i44);
                ArrayList arrayList3522 = arrayList29;
                Uri uri622 = (Uri) arrayList3522.get(i44);
                ArrayList arrayList3622 = arrayList19;
                ArrayList arrayList3722 = (ArrayList) arrayList3622.get(i44);
                if (i7 == i6) {
                }
                arrayList19 = arrayList3622;
                handleError(prepareSendingDocumentInternal(accountInstance, str10022, str10122, uri622, arrayList20, j, messageObject2, messageObject3, tL_stories$StoryItem, replyQuote, arrayList3722, messageObject, jArr, z7, (CharSequence) arrayList3.get(i44), z3, i, null, z, str, i2, j2, z4, j3, j4, messageSuggestionParams), accountInstance);
                i44++;
                arrayList31 = arrayList3322;
                arrayList32 = arrayList3;
                arrayList29 = arrayList3522;
                arrayList30 = arrayList3422;
                i32 = i7;
                i42 = i5;
                size3 = size3;
                i43 = 1;
            }
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("total send time = " + (System.currentTimeMillis() - jCurrentTimeMillis));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingText$100(final String str, final long j, final AccountInstance accountInstance, final long j2, final boolean z, final int i, final long j3) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.lambda$prepareSendingText$99(str, j, accountInstance, j2, z, i, j3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingText$98(String str, long j, AccountInstance accountInstance, long j2, boolean z, int i, long j3) {
        MessageObject messageObject;
        TLRPC.TL_forumTopic tL_forumTopicFindTopic;
        String trimmedString = getTrimmedString(str);
        if (trimmedString.length() != 0) {
            int iCeil = (int) Math.ceil(trimmedString.length() / 4096.0f);
            int i2 = 0;
            if (j == 0 || (tL_forumTopicFindTopic = accountInstance.getMessagesController().getTopicsController().findTopic(-j2, j)) == null || tL_forumTopicFindTopic.topicStartMessage == null) {
                messageObject = null;
            } else {
                messageObject = new MessageObject(accountInstance.getCurrentAccount(), tL_forumTopicFindTopic.topicStartMessage, false, false);
                messageObject.isTopicMainMessage = true;
            }
            while (i2 < iCeil) {
                int i3 = i2 + 1;
                SendMessageParams sendMessageParamsOf = SendMessageParams.of(trimmedString.substring(i2 * LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM, Math.min(i3 * LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM, trimmedString.length())), j2, messageObject, messageObject, null, true, null, null, null, z, i, null, false);
                if (i2 == 0) {
                    sendMessageParamsOf.effect_id = j3;
                }
                accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsOf);
                i2 = i3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingText$99(final String str, final long j, final AccountInstance accountInstance, final long j2, final boolean z, final int i, final long j3) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.lambda$prepareSendingText$98(str, j, accountInstance, j2, z, i, j3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingVideo$107(Bitmap bitmap, String str, MessageObject messageObject, AccountInstance accountInstance, VideoEditedInfo videoEditedInfo, TLRPC.TL_document tL_document, String str2, TLRPC.PhotoSize photoSize, HashMap map, boolean z, String str3, long j, MessageObject messageObject2, MessageObject messageObject3, String str4, ArrayList arrayList, boolean z2, int i, int i2, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote, int i3, String str5, long j2, long j3, long j4, MessageSuggestionParams messageSuggestionParams) {
        if (bitmap != null && str != null) {
            ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmap), str, false);
        }
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, videoEditedInfo, tL_document, str2, photoSize, map, false, z, str3);
            return;
        }
        SendMessageParams sendMessageParamsOf = SendMessageParams.of(tL_document, videoEditedInfo, str2, j, messageObject2, messageObject3, str4, arrayList, null, map, z2, i, i2, str3, null, false, z);
        sendMessageParamsOf.replyToStoryItem = tL_stories$StoryItem;
        sendMessageParamsOf.replyQuote = replyQuote;
        sendMessageParamsOf.quick_reply_shortcut_id = i3;
        sendMessageParamsOf.quick_reply_shortcut = str5;
        sendMessageParamsOf.effect_id = j2;
        sendMessageParamsOf.cover = photoSize;
        sendMessageParamsOf.payStars = j3;
        sendMessageParamsOf.monoForumPeer = j4;
        sendMessageParamsOf.suggestionParams = messageSuggestionParams;
        accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0489  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d9 A[PHI: r0
      0x00d9: PHI (r0v3 java.lang.String) = (r0v2 java.lang.String), (r0v39 java.lang.String) binds: [B:19:0x0086, B:29:0x00d5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void lambda$prepareSendingVideo$108(VideoEditedInfo videoEditedInfo, String str, final long j, final int i, final AccountInstance accountInstance, String str2, TLRPC.Photo photo, CharSequence charSequence, final MessageObject messageObject, final boolean z, final MessageObject messageObject2, final MessageObject messageObject3, final ArrayList arrayList, final boolean z2, final int i2, final TL_stories$StoryItem tL_stories$StoryItem, final ChatActivity.ReplyQuote replyQuote, final int i3, final String str3, final long j2, final long j3, final long j4, final MessageSuggestionParams messageSuggestionParams, boolean z3) throws Throwable {
        String str4;
        long j5;
        long j6;
        String str5;
        TLRPC.TL_document tL_document;
        String str6;
        String str7;
        VideoEditedInfo videoEditedInfo2;
        final TLRPC.TL_document tL_document2;
        final Bitmap bitmap;
        final String str8;
        boolean z4;
        int i4;
        Bitmap bitmap2;
        String str9;
        VideoEditedInfo videoEditedInfo3;
        String str10;
        TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo;
        int i5;
        int i6;
        final String absolutePath = str;
        VideoEditedInfo videoEditedInfoCreateCompressionSettings = videoEditedInfo != null ? videoEditedInfo : createCompressionSettings(str);
        boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(j);
        boolean z5 = videoEditedInfoCreateCompressionSettings != null && videoEditedInfoCreateCompressionSettings.roundVideo;
        if (videoEditedInfoCreateCompressionSettings == null && !absolutePath.endsWith("mp4") && !z5) {
            prepareSendingDocumentInternal(accountInstance, str, str, null, null, j, messageObject2, messageObject3, tL_stories$StoryItem, replyQuote, arrayList, messageObject, null, false, charSequence, z2, i2, null, z3, str3, i3, 0L, false, j3, j4, messageSuggestionParams);
            return;
        }
        File file = new File(absolutePath);
        String string = absolutePath + file.length() + "_" + file.lastModified();
        if (videoEditedInfoCreateCompressionSettings == null) {
            str4 = string;
            j5 = 0;
        } else {
            if (!z5) {
                StringBuilder sb = new StringBuilder();
                sb.append(string);
                sb.append(videoEditedInfoCreateCompressionSettings.estimatedDuration);
                sb.append("_");
                sb.append(videoEditedInfoCreateCompressionSettings.startTime);
                sb.append("_");
                sb.append(videoEditedInfoCreateCompressionSettings.endTime);
                sb.append(videoEditedInfoCreateCompressionSettings.muted ? "_m" : "");
                string = sb.toString();
                if (videoEditedInfoCreateCompressionSettings.resultWidth != videoEditedInfoCreateCompressionSettings.originalWidth) {
                    string = string + "_" + videoEditedInfoCreateCompressionSettings.resultWidth;
                }
            }
            j5 = videoEditedInfoCreateCompressionSettings.startTime;
            if (j5 >= 0) {
                str4 = string;
            }
        }
        if (!zIsEncryptedDialog && i == 0 && (videoEditedInfoCreateCompressionSettings == null || (videoEditedInfoCreateCompressionSettings.filterState == null && videoEditedInfoCreateCompressionSettings.paintPath == null && videoEditedInfoCreateCompressionSettings.mediaEntities == null && videoEditedInfoCreateCompressionSettings.cropState == null))) {
            Object[] sentFile = accountInstance.getMessagesStorage().getSentFile(str4, !zIsEncryptedDialog ? 2 : 5);
            if (sentFile != null) {
                Object obj = sentFile[0];
                if (obj instanceof TLRPC.TL_document) {
                    TLRPC.TL_document tL_document3 = (TLRPC.TL_document) obj;
                    String str11 = (String) sentFile[1];
                    j6 = j5;
                    str5 = "_";
                    ensureMediaThumbExists(accountInstance, zIsEncryptedDialog, tL_document3, str, null, j6);
                    tL_document = tL_document3;
                    str6 = str11;
                }
            }
        } else {
            j6 = j5;
            str5 = "_";
            tL_document = null;
            str6 = null;
        }
        if (tL_document == null) {
            Bitmap bitmapCreateScaledBitmap = (videoEditedInfoCreateCompressionSettings == null || !videoEditedInfoCreateCompressionSettings.notReadyYet) ? null : videoEditedInfoCreateCompressionSettings.thumb;
            str7 = str6;
            if (bitmapCreateScaledBitmap == null) {
                bitmapCreateScaledBitmap = createVideoThumbnailAtTime(absolutePath, j6);
            }
            if (bitmapCreateScaledBitmap == null) {
                bitmapCreateScaledBitmap = createVideoThumbnail(absolutePath, 1);
            }
            int i7 = (zIsEncryptedDialog || i != 0) ? 90 : 320;
            float f = i7;
            TLRPC.PhotoSize photoSizeScaleAndSaveImage = ImageLoader.scaleAndSaveImage(bitmapCreateScaledBitmap, f, f, i7 > 90 ? 80 : 55, zIsEncryptedDialog);
            if (bitmapCreateScaledBitmap == null || photoSizeScaleAndSaveImage == null) {
                videoEditedInfo3 = videoEditedInfoCreateCompressionSettings;
            } else if (z5) {
                if (zIsEncryptedDialog) {
                    bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateScaledBitmap, 90, 90, true);
                    int i8 = Build.VERSION.SDK_INT;
                    Utilities.blurBitmap(bitmapCreateScaledBitmap, 7, i8 < 21 ? 0 : 1, bitmapCreateScaledBitmap.getWidth(), bitmapCreateScaledBitmap.getHeight(), bitmapCreateScaledBitmap.getRowBytes());
                    Utilities.blurBitmap(bitmapCreateScaledBitmap, 7, i8 < 21 ? 0 : 1, bitmapCreateScaledBitmap.getWidth(), bitmapCreateScaledBitmap.getHeight(), bitmapCreateScaledBitmap.getRowBytes());
                    Utilities.blurBitmap(bitmapCreateScaledBitmap, 7, i8 < 21 ? 0 : 1, bitmapCreateScaledBitmap.getWidth(), bitmapCreateScaledBitmap.getHeight(), bitmapCreateScaledBitmap.getRowBytes());
                    StringBuilder sb2 = new StringBuilder();
                    videoEditedInfo3 = videoEditedInfoCreateCompressionSettings;
                    sb2.append(photoSizeScaleAndSaveImage.location.volume_id);
                    sb2.append(str5);
                    sb2.append(photoSizeScaleAndSaveImage.location.local_id);
                    sb2.append("@%d_%d_b2");
                    str10 = String.format(sb2.toString(), Integer.valueOf((int) (AndroidUtilities.roundMessageSize / AndroidUtilities.density)), Integer.valueOf((int) (AndroidUtilities.roundMessageSize / AndroidUtilities.density)));
                } else {
                    videoEditedInfo3 = videoEditedInfoCreateCompressionSettings;
                    Utilities.blurBitmap(bitmapCreateScaledBitmap, 3, Build.VERSION.SDK_INT < 21 ? 0 : 1, bitmapCreateScaledBitmap.getWidth(), bitmapCreateScaledBitmap.getHeight(), bitmapCreateScaledBitmap.getRowBytes());
                    str10 = String.format(photoSizeScaleAndSaveImage.location.volume_id + str5 + photoSizeScaleAndSaveImage.location.local_id + "@%d_%d_b", Integer.valueOf((int) (AndroidUtilities.roundMessageSize / AndroidUtilities.density)), Integer.valueOf((int) (AndroidUtilities.roundMessageSize / AndroidUtilities.density)));
                }
                TLRPC.TL_document tL_document4 = new TLRPC.TL_document();
                if (photoSizeScaleAndSaveImage != null) {
                    tL_document4.thumbs.add(photoSizeScaleAndSaveImage);
                    tL_document4.flags |= 1;
                }
                tL_document4.file_reference = new byte[0];
                tL_document4.mime_type = "video/mp4";
                accountInstance.getUserConfig().saveConfig(false);
                if (zIsEncryptedDialog) {
                    tL_documentAttributeVideo = new TLRPC.TL_documentAttributeVideo();
                    tL_documentAttributeVideo.supports_streaming = true;
                } else if (accountInstance.getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j))) == null) {
                    return;
                } else {
                    tL_documentAttributeVideo = new TLRPC.TL_documentAttributeVideo_layer159();
                }
                tL_documentAttributeVideo.round_message = z5;
                tL_document4.attributes.add(tL_documentAttributeVideo);
                videoEditedInfo2 = videoEditedInfo3;
                if (videoEditedInfo3 == null && videoEditedInfo2.notReadyYet) {
                    tL_documentAttributeVideo.w = videoEditedInfo2.resultWidth;
                    tL_documentAttributeVideo.h = videoEditedInfo2.resultHeight;
                    double d = videoEditedInfo2.estimatedDuration;
                    Double.isNaN(d);
                    tL_documentAttributeVideo.duration = d / 1000.0d;
                } else if (videoEditedInfo2 == null && videoEditedInfo2.needConvert()) {
                    if (videoEditedInfo2.muted) {
                        tL_document4.attributes.add(new TLRPC.TL_documentAttributeAnimated());
                        fillVideoAttribute(absolutePath, tL_documentAttributeVideo, videoEditedInfo2);
                        videoEditedInfo2.originalWidth = tL_documentAttributeVideo.w;
                        videoEditedInfo2.originalHeight = tL_documentAttributeVideo.h;
                    } else {
                        double d2 = videoEditedInfo2.estimatedDuration;
                        Double.isNaN(d2);
                        tL_documentAttributeVideo.duration = d2 / 1000.0d;
                    }
                    int i9 = videoEditedInfo2.rotationValue;
                    MediaController.CropState cropState = videoEditedInfo2.cropState;
                    if (cropState != null) {
                        i5 = cropState.transformWidth;
                        i6 = cropState.transformHeight;
                        i9 += cropState.transformRotation;
                    } else {
                        i5 = videoEditedInfo2.resultWidth;
                        i6 = videoEditedInfo2.resultHeight;
                    }
                    if (i9 == 90 || i9 == 270) {
                        tL_documentAttributeVideo.w = i6;
                        tL_documentAttributeVideo.h = i5;
                    } else {
                        tL_documentAttributeVideo.w = i5;
                        tL_documentAttributeVideo.h = i6;
                    }
                } else {
                    if (file.exists()) {
                        tL_document4.size = (int) file.length();
                    }
                    fillVideoAttribute(absolutePath, tL_documentAttributeVideo, null);
                    tL_document2 = tL_document4;
                    z4 = false;
                    str8 = str10;
                    bitmap = bitmapCreateScaledBitmap;
                }
                tL_document4.size = videoEditedInfo2.estimatedSize;
                tL_document2 = tL_document4;
                z4 = false;
                str8 = str10;
                bitmap = bitmapCreateScaledBitmap;
            } else {
                videoEditedInfo3 = videoEditedInfoCreateCompressionSettings;
                bitmapCreateScaledBitmap = null;
            }
            str10 = null;
            TLRPC.TL_document tL_document42 = new TLRPC.TL_document();
            if (photoSizeScaleAndSaveImage != null) {
            }
            tL_document42.file_reference = new byte[0];
            tL_document42.mime_type = "video/mp4";
            accountInstance.getUserConfig().saveConfig(false);
            if (zIsEncryptedDialog) {
            }
            tL_documentAttributeVideo.round_message = z5;
            tL_document42.attributes.add(tL_documentAttributeVideo);
            videoEditedInfo2 = videoEditedInfo3;
            if (videoEditedInfo3 == null) {
                if (videoEditedInfo2 == null) {
                }
                if (file.exists()) {
                }
                fillVideoAttribute(absolutePath, tL_documentAttributeVideo, null);
                tL_document2 = tL_document42;
                z4 = false;
                str8 = str10;
                bitmap = bitmapCreateScaledBitmap;
            }
        } else {
            str7 = str6;
            videoEditedInfo2 = videoEditedInfoCreateCompressionSettings;
            long j7 = j6;
            String str12 = null;
            if (tL_document.thumbs.isEmpty()) {
                Bitmap bitmapCreateVideoThumbnail = (videoEditedInfo2 == null || !videoEditedInfo2.notReadyYet) ? null : videoEditedInfo2.thumb;
                if (bitmapCreateVideoThumbnail == null) {
                    bitmapCreateVideoThumbnail = createVideoThumbnailAtTime(absolutePath, j7);
                }
                if (bitmapCreateVideoThumbnail == null) {
                    bitmapCreateVideoThumbnail = createVideoThumbnail(absolutePath, 1);
                }
                int i10 = (zIsEncryptedDialog || i != 0) ? 90 : 320;
                float f2 = i10;
                TLRPC.PhotoSize photoSizeScaleAndSaveImage2 = ImageLoader.scaleAndSaveImage(bitmapCreateVideoThumbnail, f2, f2, i10 > 90 ? 80 : 55, zIsEncryptedDialog);
                if (bitmapCreateVideoThumbnail == null || photoSizeScaleAndSaveImage2 == null) {
                    i4 = 1;
                } else {
                    if (!z5) {
                        i4 = 1;
                        bitmap2 = null;
                    } else if (zIsEncryptedDialog) {
                        Bitmap bitmapCreateScaledBitmap2 = Bitmap.createScaledBitmap(bitmapCreateVideoThumbnail, 90, 90, true);
                        int i11 = Build.VERSION.SDK_INT;
                        Utilities.blurBitmap(bitmapCreateScaledBitmap2, 7, i11 < 21 ? 0 : 1, bitmapCreateScaledBitmap2.getWidth(), bitmapCreateScaledBitmap2.getHeight(), bitmapCreateScaledBitmap2.getRowBytes());
                        Utilities.blurBitmap(bitmapCreateScaledBitmap2, 7, i11 < 21 ? 0 : 1, bitmapCreateScaledBitmap2.getWidth(), bitmapCreateScaledBitmap2.getHeight(), bitmapCreateScaledBitmap2.getRowBytes());
                        Utilities.blurBitmap(bitmapCreateScaledBitmap2, 7, i11 < 21 ? 0 : 1, bitmapCreateScaledBitmap2.getWidth(), bitmapCreateScaledBitmap2.getHeight(), bitmapCreateScaledBitmap2.getRowBytes());
                        str12 = String.format(photoSizeScaleAndSaveImage2.location.volume_id + str5 + photoSizeScaleAndSaveImage2.location.local_id + "@%d_%d_b2", Integer.valueOf((int) (AndroidUtilities.roundMessageSize / AndroidUtilities.density)), Integer.valueOf((int) (AndroidUtilities.roundMessageSize / AndroidUtilities.density)));
                        i4 = 1;
                        bitmap2 = bitmapCreateScaledBitmap2;
                    } else {
                        Utilities.blurBitmap(bitmapCreateVideoThumbnail, 3, Build.VERSION.SDK_INT < 21 ? 0 : 1, bitmapCreateVideoThumbnail.getWidth(), bitmapCreateVideoThumbnail.getHeight(), bitmapCreateVideoThumbnail.getRowBytes());
                        i4 = 1;
                        str12 = String.format(photoSizeScaleAndSaveImage2.location.volume_id + str5 + photoSizeScaleAndSaveImage2.location.local_id + "@%d_%d_b", Integer.valueOf((int) (AndroidUtilities.roundMessageSize / AndroidUtilities.density)), Integer.valueOf((int) (AndroidUtilities.roundMessageSize / AndroidUtilities.density)));
                    }
                    if (photoSizeScaleAndSaveImage2 != null) {
                        tL_document.thumbs.add(photoSizeScaleAndSaveImage2);
                        tL_document.flags |= i4;
                    }
                    tL_document2 = tL_document;
                    bitmap = bitmap2;
                    str8 = str12;
                }
                bitmap2 = bitmapCreateVideoThumbnail;
                if (photoSizeScaleAndSaveImage2 != null) {
                }
                tL_document2 = tL_document;
                bitmap = bitmap2;
                str8 = str12;
            } else {
                tL_document2 = tL_document;
                bitmap = null;
                str8 = null;
            }
            z4 = false;
        }
        TLRPC.PhotoSize photoSizeFileToSize = ImageLoader.fileToSize(str2, z4);
        if (photoSizeFileToSize == null && photo != null) {
            photoSizeFileToSize = new ImageLoader.PhotoSizeFromPhoto(photo);
        }
        final TLRPC.PhotoSize photoSize = photoSizeFileToSize;
        if (videoEditedInfo2 != null && videoEditedInfo2.needConvert()) {
            File file2 = new File(FileLoader.getDirectory(4), "-2147483648_" + SharedConfig.getLastLocalId() + ".mp4");
            SharedConfig.saveConfig();
            absolutePath = file2.getAbsolutePath();
        }
        final HashMap map = new HashMap();
        final String string2 = charSequence != null ? charSequence.toString() : "";
        if (str4 != null) {
            map.put("originalPath", str4);
        }
        if (str7 != null) {
            str9 = str7;
            map.put("parentObject", str9);
        } else {
            str9 = str7;
        }
        final VideoEditedInfo videoEditedInfo4 = videoEditedInfo2;
        final String str13 = str9;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.lambda$prepareSendingVideo$107(bitmap, str8, messageObject, accountInstance, videoEditedInfo4, tL_document2, absolutePath, photoSize, map, z, str13, j, messageObject2, messageObject3, string2, arrayList, z2, i2, i, tL_stories$StoryItem, replyQuote, i3, str3, j2, j3, j4, messageSuggestionParams);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processUnsentMessages$78(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5) {
        HashMap map;
        getMessagesController().putUsers(arrayList, true);
        getMessagesController().putChats(arrayList2, true);
        getMessagesController().putEncryptedChats(arrayList3, true);
        int size = arrayList4.size();
        for (int i = 0; i < size; i++) {
            MessageObject messageObject = new MessageObject(this.currentAccount, (TLRPC.Message) arrayList4.get(i), false, true);
            long groupId = messageObject.getGroupId();
            if (groupId != 0 && (map = messageObject.messageOwner.params) != null && !map.containsKey("final") && (i == size - 1 || ((TLRPC.Message) arrayList4.get(i + 1)).grouped_id != groupId)) {
                messageObject.messageOwner.params.put("final", "1");
            }
            retrySendMessage(messageObject, true, 0L);
        }
        if (arrayList5 != null) {
            for (int i2 = 0; i2 < arrayList5.size(); i2++) {
                MessageObject messageObject2 = new MessageObject(this.currentAccount, (TLRPC.Message) arrayList5.get(i2), false, true);
                messageObject2.scheduled = true;
                retrySendMessage(messageObject2, true, 0L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putToSendingMessages$49(TLRPC.Message message, boolean z) {
        putToSendingMessages(message, z, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$requestUrlAuth$28(TLObject tLObject, ChatActivity chatActivity, TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, String str, boolean z) {
        if (tLObject != null) {
            if (tLObject instanceof TLRPC.TL_urlAuthResultRequest) {
                chatActivity.showRequestUrlAlert((TLRPC.TL_urlAuthResultRequest) tLObject, tL_messages_requestUrlAuth, str, z);
                return;
            } else if (tLObject instanceof TLRPC.TL_urlAuthResultAccepted) {
                AlertsCreator.showOpenUrlAlert(chatActivity, ((TLRPC.TL_urlAuthResultAccepted) tLObject).url, false, false);
                return;
            } else if (!(tLObject instanceof TLRPC.TL_urlAuthResultDefault)) {
                return;
            }
        }
        AlertsCreator.showOpenUrlAlert(chatActivity, str, false, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$requestUrlAuth$29(final ChatActivity chatActivity, final TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, final String str, final boolean z, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.lambda$requestUrlAuth$28(tLObject, chatActivity, tL_messages_requestUrlAuth, str, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendCallback$30(String str, List list) {
        this.waitingForCallback.remove(str);
        list.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sendCallback$31(String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendCallback$33(final boolean z, final MessageObject messageObject, final TLRPC.KeyboardButton keyboardButton, final ChatActivity chatActivity, AlertDialog alertDialog, int i) {
        final TwoStepVerificationActivity twoStepVerificationActivity = new TwoStepVerificationActivity();
        twoStepVerificationActivity.setDelegate(0, new TwoStepVerificationActivity.TwoStepVerificationActivityDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda96
            @Override // org.telegram.ui.TwoStepVerificationActivity.TwoStepVerificationActivityDelegate
            public final void didEnterPassword(TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP) {
                this.f$0.lambda$sendCallback$32(z, messageObject, keyboardButton, twoStepVerificationActivity, chatActivity, inputCheckPasswordSRP);
            }
        });
        chatActivity.presentFragment(twoStepVerificationActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sendCallback$34(ChatActivity chatActivity, AlertDialog alertDialog, int i) {
        chatActivity.presentFragment(new TwoStepVerificationSetupActivity(6, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendCallback$35(TLRPC.TL_error tL_error, TLObject tLObject, TwoStepVerificationActivity twoStepVerificationActivity, boolean z, MessageObject messageObject, TLRPC.KeyboardButton keyboardButton, ChatActivity chatActivity) {
        if (tL_error == null) {
            TL_account$Password tL_account$Password = (TL_account$Password) tLObject;
            twoStepVerificationActivity.setCurrentPasswordInfo(null, tL_account$Password);
            TwoStepVerificationActivity.initPasswordNewAlgo(tL_account$Password);
            lambda$sendCallback$32(z, messageObject, keyboardButton, twoStepVerificationActivity.getNewSrpPassword(), twoStepVerificationActivity, chatActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendCallback$36(final TwoStepVerificationActivity twoStepVerificationActivity, final boolean z, final MessageObject messageObject, final TLRPC.KeyboardButton keyboardButton, final ChatActivity chatActivity, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendCallback$35(tL_error, tLObject, twoStepVerificationActivity, z, messageObject, keyboardButton, chatActivity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$sendCallback$37(final String str, final List list, boolean z, TLObject tLObject, final MessageObject messageObject, final TLRPC.KeyboardButton keyboardButton, final ChatActivity chatActivity, final TwoStepVerificationActivity twoStepVerificationActivity, TLObject[] tLObjectArr, TLRPC.TL_error tL_error, TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, final boolean z2) {
        int i;
        AlertDialog alertDialogCreate;
        AlertDialog.Builder builder;
        String name;
        String str2;
        this.waitingForCallback.remove(str);
        list.remove(str);
        boolean z3 = false;
        if (z && tLObject == null) {
            sendCallback(false, messageObject, keyboardButton, chatActivity);
            return;
        }
        if (tLObject != null) {
            if (twoStepVerificationActivity != null) {
                twoStepVerificationActivity.needHideProgress();
                twoStepVerificationActivity.lambda$onBackPressed$354();
            }
            long fromChatId = messageObject.getFromChatId();
            long j = messageObject.messageOwner.via_bot_id;
            if (j != 0) {
                fromChatId = j;
            }
            if (fromChatId <= 0) {
                TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(-fromChatId));
                if (chat != null) {
                    name = chat.title;
                }
                if (name == null) {
                }
                if (keyboardButton instanceof TLRPC.TL_keyboardButtonUrlAuth) {
                }
                AlertsCreator.showOpenUrlAlert(chatActivity, str2, false, false);
                return;
            }
            TLRPC.User user = getMessagesController().getUser(Long.valueOf(fromChatId));
            name = user != null ? ContactsController.formatName(user.first_name, user.last_name) : null;
            if (name == null) {
                name = "bot";
            }
            if (keyboardButton instanceof TLRPC.TL_keyboardButtonUrlAuth) {
                if (keyboardButton instanceof TLRPC.TL_keyboardButtonBuy) {
                    if (tLObject instanceof TLRPC.TL_payments_paymentFormStars) {
                        StarsController.getInstance(this.currentAccount).openPaymentForm(messageObject, ((TLRPC.TL_payments_getPaymentForm) tLObjectArr[0]).invoice, (TLRPC.TL_payments_paymentFormStars) tLObject, new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$sendCallback$30(str, list);
                            }
                        }, new Utilities.Callback() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda5
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj) {
                                SendMessagesHelper.lambda$sendCallback$31((String) obj);
                            }
                        });
                        return;
                    }
                    if (tLObject instanceof TLRPC.PaymentForm) {
                        TLRPC.PaymentForm paymentForm = (TLRPC.PaymentForm) tLObject;
                        getMessagesController().putUsers(paymentForm.users, false);
                        chatActivity.presentFragment(new PaymentFormActivity(paymentForm, messageObject, chatActivity));
                        return;
                    } else if (!(tLObject instanceof TLRPC.TL_payments_paymentReceiptStars)) {
                        if (tLObject instanceof TLRPC.PaymentReceipt) {
                            chatActivity.presentFragment(new PaymentFormActivity((TLRPC.PaymentReceipt) tLObject));
                            return;
                        }
                        return;
                    } else {
                        Context context = LaunchActivity.instance;
                        if (context == null) {
                            context = ApplicationLoader.applicationContext;
                        }
                        StarsIntroActivity.showTransactionSheet(context, false, this.currentAccount, (TLRPC.TL_payments_paymentReceiptStars) tLObject, (Theme.ResourcesProvider) null);
                        return;
                    }
                }
                TLRPC.TL_messages_botCallbackAnswer tL_messages_botCallbackAnswer = (TLRPC.TL_messages_botCallbackAnswer) tLObject;
                if (!z && tL_messages_botCallbackAnswer.cache_time != 0 && !keyboardButton.requires_password) {
                    getMessagesStorage().saveBotCache(str, tL_messages_botCallbackAnswer);
                }
                String str3 = tL_messages_botCallbackAnswer.message;
                if (str3 != null) {
                    if (!tL_messages_botCallbackAnswer.alert) {
                        chatActivity.showAlert(name, str3);
                        return;
                    } else {
                        if (chatActivity.getParentActivity() == null) {
                            return;
                        }
                        AlertDialog.Builder builder2 = new AlertDialog.Builder(chatActivity.getParentActivity());
                        builder2.setTitle(name);
                        builder2.setPositiveButton(LocaleController.getString(R.string.OK), null);
                        builder2.setMessage(tL_messages_botCallbackAnswer.message);
                        builder = builder2;
                    }
                } else {
                    if (tL_messages_botCallbackAnswer.url == null || chatActivity.getParentActivity() == null) {
                        return;
                    }
                    TLRPC.User user2 = getMessagesController().getUser(Long.valueOf(fromChatId));
                    boolean z4 = user2 != null && user2.verified;
                    if (keyboardButton instanceof TLRPC.TL_keyboardButtonGame) {
                        TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
                        TLRPC.TL_game tL_game = messageMedia instanceof TLRPC.TL_messageMediaGame ? messageMedia.game : null;
                        if (tL_game == null) {
                            return;
                        }
                        String str4 = tL_messages_botCallbackAnswer.url;
                        if (!z4) {
                            if (MessagesController.getNotificationsSettings(this.currentAccount).getBoolean("askgame_" + fromChatId, true)) {
                                z3 = true;
                            }
                        }
                        chatActivity.showOpenGameAlert(tL_game, messageObject, str4, z3, fromChatId);
                        return;
                    }
                    str2 = tL_messages_botCallbackAnswer.url;
                }
            } else if (tLObject instanceof TLRPC.TL_urlAuthResultRequest) {
                chatActivity.showRequestUrlAlert((TLRPC.TL_urlAuthResultRequest) tLObject, (TLRPC.TL_messages_requestUrlAuth) tLObjectArr[0], keyboardButton.url, false);
                return;
            } else {
                if (!(tLObject instanceof TLRPC.TL_urlAuthResultAccepted)) {
                    if (tLObject instanceof TLRPC.TL_urlAuthResultDefault) {
                        AlertsCreator.showOpenUrlAlert(chatActivity, keyboardButton.url, false, true);
                        return;
                    }
                    return;
                }
                str2 = ((TLRPC.TL_urlAuthResultAccepted) tLObject).url;
            }
            AlertsCreator.showOpenUrlAlert(chatActivity, str2, false, false);
            return;
            chatActivity.showDialog(alertDialogCreate);
        }
        if (tL_error == null || chatActivity.getParentActivity() == null) {
            return;
        }
        if ("PASSWORD_HASH_INVALID".equals(tL_error.text)) {
            if (inputCheckPasswordSRP == null) {
                AlertDialog.Builder builder3 = new AlertDialog.Builder(chatActivity.getParentActivity());
                builder3.setTitle(LocaleController.getString(R.string.BotOwnershipTransfer));
                builder3.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BotOwnershipTransferReadyAlertText", R.string.BotOwnershipTransferReadyAlertText, new Object[0])));
                builder3.setPositiveButton(LocaleController.getString(R.string.BotOwnershipTransferChangeOwner), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda6
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$sendCallback$33(z2, messageObject, keyboardButton, chatActivity, alertDialog, i2);
                    }
                });
                builder3.setNegativeButton(LocaleController.getString(R.string.Cancel), null);
                alertDialogCreate = builder3.create();
                chatActivity.showDialog(alertDialogCreate);
            }
            return;
        }
        if (!"PASSWORD_MISSING".equals(tL_error.text) && !tL_error.text.startsWith("PASSWORD_TOO_FRESH_") && !tL_error.text.startsWith("SESSION_TOO_FRESH_")) {
            if ("SRP_ID_INVALID".equals(tL_error.text)) {
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account$getPassword(), new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda7
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                        this.f$0.lambda$sendCallback$36(twoStepVerificationActivity, z2, messageObject, keyboardButton, chatActivity, tLObject2, tL_error2);
                    }
                }, 8);
                return;
            } else {
                if (twoStepVerificationActivity != null) {
                    twoStepVerificationActivity.needHideProgress();
                    twoStepVerificationActivity.lambda$onBackPressed$354();
                    return;
                }
                return;
            }
        }
        if (twoStepVerificationActivity != null) {
            twoStepVerificationActivity.needHideProgress();
        }
        AlertDialog.Builder builder4 = new AlertDialog.Builder(chatActivity.getParentActivity());
        builder4.setTitle(LocaleController.getString(R.string.EditAdminTransferAlertTitle));
        LinearLayout linearLayout = new LinearLayout(chatActivity.getParentActivity());
        linearLayout.setPadding(AndroidUtilities.dp(24.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(24.0f), 0);
        linearLayout.setOrientation(1);
        builder4.setView(linearLayout);
        TextView textView = new TextView(chatActivity.getParentActivity());
        int i2 = Theme.key_dialogTextBlack;
        textView.setTextColor(Theme.getColor(i2));
        textView.setTextSize(1, 16.0f);
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("BotOwnershipTransferAlertText", R.string.BotOwnershipTransferAlertText, new Object[0])));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
        LinearLayout linearLayout2 = new LinearLayout(chatActivity.getParentActivity());
        linearLayout2.setOrientation(0);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 11.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        ImageView imageView = new ImageView(chatActivity.getParentActivity());
        int i3 = R.drawable.list_circle;
        imageView.setImageResource(i3);
        imageView.setPadding(LocaleController.isRTL ? AndroidUtilities.dp(11.0f) : 0, AndroidUtilities.dp(9.0f), LocaleController.isRTL ? 0 : AndroidUtilities.dp(11.0f), 0);
        int color = Theme.getColor(i2);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        imageView.setColorFilter(new PorterDuffColorFilter(color, mode));
        TextView textView2 = new TextView(chatActivity.getParentActivity());
        textView2.setTextColor(Theme.getColor(i2));
        textView2.setTextSize(1, 16.0f);
        textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(R.string.EditAdminTransferAlertText1)));
        if (LocaleController.isRTL) {
            linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2));
            linearLayout2.addView(imageView, LayoutHelper.createLinear(-2, -2, 5));
        } else {
            linearLayout2.addView(imageView, LayoutHelper.createLinear(-2, -2));
            linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2));
        }
        LinearLayout linearLayout3 = new LinearLayout(chatActivity.getParentActivity());
        linearLayout3.setOrientation(0);
        linearLayout.addView(linearLayout3, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 11.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        ImageView imageView2 = new ImageView(chatActivity.getParentActivity());
        imageView2.setImageResource(i3);
        imageView2.setPadding(LocaleController.isRTL ? AndroidUtilities.dp(11.0f) : 0, AndroidUtilities.dp(9.0f), LocaleController.isRTL ? 0 : AndroidUtilities.dp(11.0f), 0);
        imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), mode));
        TextView textView3 = new TextView(chatActivity.getParentActivity());
        textView3.setTextColor(Theme.getColor(i2));
        textView3.setTextSize(1, 16.0f);
        textView3.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        textView3.setText(AndroidUtilities.replaceTags(LocaleController.getString(R.string.EditAdminTransferAlertText2)));
        if (LocaleController.isRTL) {
            linearLayout3.addView(textView3, LayoutHelper.createLinear(-1, -2));
            linearLayout3.addView(imageView2, LayoutHelper.createLinear(-2, -2, 5));
        } else {
            linearLayout3.addView(imageView2, LayoutHelper.createLinear(-2, -2));
            linearLayout3.addView(textView3, LayoutHelper.createLinear(-1, -2));
        }
        if ("PASSWORD_MISSING".equals(tL_error.text)) {
            builder4.setPositiveButton(LocaleController.getString(R.string.EditAdminTransferSetPassword), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda8
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i4) {
                    SendMessagesHelper.lambda$sendCallback$34(chatActivity, alertDialog, i4);
                }
            });
            i = R.string.Cancel;
        } else {
            TextView textView4 = new TextView(chatActivity.getParentActivity());
            textView4.setTextColor(Theme.getColor(i2));
            textView4.setTextSize(1, 16.0f);
            textView4.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
            textView4.setText(LocaleController.getString(R.string.EditAdminTransferAlertText3));
            linearLayout.addView(textView4, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 11.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            i = R.string.OK;
        }
        builder4.setNegativeButton(LocaleController.getString(i), null);
        builder = builder4;
        alertDialogCreate = builder.create();
        chatActivity.showDialog(alertDialogCreate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendCallback$38(final String str, final List list, final boolean z, final MessageObject messageObject, final TLRPC.KeyboardButton keyboardButton, final ChatActivity chatActivity, final TwoStepVerificationActivity twoStepVerificationActivity, final TLObject[] tLObjectArr, final TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, final boolean z2, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendCallback$37(str, list, z, tLObject, messageObject, keyboardButton, chatActivity, twoStepVerificationActivity, tLObjectArr, tL_error, inputCheckPasswordSRP, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendGame$39(long j, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
        }
        if (j != 0) {
            getMessagesStorage().removePendingTask(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$10(final ArrayList arrayList, final int i, final int i2, final TLRPC.Message message, final int i3, final TLRPC.Message message2, final MessageObject messageObject, final int i4) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendMessage$9(arrayList, i, i2, message, i3, message2, messageObject, i4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$11(TLRPC.Message message, long j, int i, TLRPC.Message message2, int i2, int i3) {
        message.send_state = 0;
        getMediaDataController().increasePeerRaiting(j);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByServer, Integer.valueOf(i), Integer.valueOf(message2.id), message2, Long.valueOf(j), 0L, Integer.valueOf(i2), Boolean.valueOf(i3 != 0));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByServer2, Integer.valueOf(i), Integer.valueOf(message2.id), message2, Long.valueOf(j), 0L, Integer.valueOf(i2), Boolean.valueOf(i3 != 0));
        processSentMessage(i);
        removeFromSendingMessages(i, i3 != 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$12(final int i, final TLRPC.Message message, final TLRPC.Message message2, TLRPC.Peer peer, final int i2, ArrayList arrayList, final long j, final int i3) {
        int i4 = (message.quick_reply_shortcut_id == 0 && message.quick_reply_shortcut == null) ? i != 0 ? 1 : 0 : 5;
        getMessagesStorage().updateMessageStateAndId(message2.random_id, MessageObject.getPeerId(peer), Integer.valueOf(i2), message2.id, 0, false, i != 0 ? 1 : 0, message.quick_reply_shortcut_id);
        getMessagesStorage().putMessages((ArrayList<TLRPC.Message>) arrayList, true, false, false, 0, i4, message.quick_reply_shortcut_id);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendMessage$11(message2, j, i2, message, i3, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$13(TLRPC.TL_error tL_error, TLRPC.TL_messages_forwardMessages tL_messages_forwardMessages) {
        AlertsCreator.processError(this.currentAccount, tL_error, null, tL_messages_forwardMessages, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$14(TLRPC.Message message, int i) {
        message.send_state = 2;
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageSendError, Integer.valueOf(message.id));
        processSentMessage(message.id);
        removeFromSendingMessages(message.id, i != 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$15(ArrayList arrayList) {
        StarsController.getInstance(this.currentAccount).showPriceChangedToast(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:48:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0141  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$sendMessage$16(final long j, final int i, boolean z, boolean z2, LongSparseArray longSparseArray, ArrayList arrayList, final ArrayList arrayList2, final MessageObject messageObject, final TLRPC.Peer peer, final TLRPC.TL_messages_forwardMessages tL_messages_forwardMessages, TLObject tLObject, TLRPC.TL_error tL_error) {
        final TLRPC.TL_error tL_error2;
        String str;
        String str2;
        TLRPC.Message message;
        TLRPC.Message message2;
        int i2;
        int i3;
        long j2;
        TLRPC.Updates updates;
        SparseLongArray sparseLongArray;
        int i4;
        final TLRPC.Message message3;
        int iIndexOf;
        int i5 = i;
        ArrayList arrayList3 = arrayList;
        ArrayList arrayList4 = arrayList2;
        int i6 = -1;
        if (tL_error == null) {
            SparseLongArray sparseLongArray2 = new SparseLongArray();
            TLRPC.Updates updates2 = (TLRPC.Updates) tLObject;
            int i7 = 0;
            while (i7 < updates2.updates.size()) {
                TLRPC.Update update = updates2.updates.get(i7);
                if (update instanceof TLRPC.TL_updateMessageID) {
                    TLRPC.TL_updateMessageID tL_updateMessageID = (TLRPC.TL_updateMessageID) update;
                    sparseLongArray2.put(tL_updateMessageID.id, tL_updateMessageID.random_id);
                    updates2.updates.remove(i7);
                    i7--;
                }
                i7++;
            }
            getNotificationCenter().postNotificationNameOnUIThread(NotificationCenter.savedMessagesForwarded, sparseLongArray2);
            Integer numValueOf = getMessagesController().dialogs_read_outbox_max.get(Long.valueOf(j));
            if (numValueOf == null) {
                numValueOf = Integer.valueOf(getMessagesStorage().getDialogReadMax(true, j));
                getMessagesController().dialogs_read_outbox_max.put(Long.valueOf(j), numValueOf);
            }
            Integer num = numValueOf;
            int i8 = 0;
            int i9 = 0;
            while (i8 < updates2.updates.size()) {
                TLRPC.Update update2 = updates2.updates.get(i8);
                boolean z3 = update2 instanceof TLRPC.TL_updateNewMessage;
                if (z3 || (update2 instanceof TLRPC.TL_updateNewChannelMessage) || (update2 instanceof TLRPC.TL_updateNewScheduledMessage) || (update2 instanceof TLRPC.TL_updateQuickReplyMessage)) {
                    int i10 = i9;
                    int i11 = i5 != 0 ? 1 : 0;
                    updates2.updates.remove(i8);
                    int i12 = i8 - 1;
                    if (z3) {
                        TLRPC.TL_updateNewMessage tL_updateNewMessage = (TLRPC.TL_updateNewMessage) update2;
                        message = tL_updateNewMessage.message;
                        getMessagesController().processNewDifferenceParams(i6, tL_updateNewMessage.pts, i6, tL_updateNewMessage.pts_count);
                    } else if (update2 instanceof TLRPC.TL_updateNewScheduledMessage) {
                        message2 = ((TLRPC.TL_updateNewScheduledMessage) update2).message;
                        i2 = 1;
                        i3 = (z || message2.date == 2147483646) ? i2 : 0;
                        ImageLoader.saveMessageThumbs(message2);
                        if (i3 == 0) {
                            message2.unread = num.intValue() < message2.id;
                        }
                        if (!z2) {
                            message2.out = true;
                            message2.unread = false;
                            message2.media_unread = false;
                        }
                        j2 = sparseLongArray2.get(message2.id);
                        if (j2 != 0 || (message3 = (TLRPC.Message) longSparseArray.get(j2)) == null || (iIndexOf = arrayList3.indexOf(message3)) == -1) {
                            updates = updates2;
                            sparseLongArray = sparseLongArray2;
                            i9 = i10;
                            i8 = i12;
                        } else {
                            TLRPC.Updates updates3 = updates2;
                            MessageObject messageObject2 = (MessageObject) arrayList4.get(iIndexOf);
                            arrayList3.remove(iIndexOf);
                            arrayList4.remove(iIndexOf);
                            final int i13 = message3.id;
                            final ArrayList arrayList5 = new ArrayList();
                            arrayList5.add(message2);
                            TLRPC.Message message4 = messageObject2.messageOwner;
                            message4.post_author = message2.post_author;
                            if ((message2.flags & ConnectionsManager.FileTypeVideo) != 0) {
                                message4.ttl_period = message2.ttl_period;
                                message4.flags |= ConnectionsManager.FileTypeVideo;
                            }
                            updates = updates3;
                            updateMediaPaths(messageObject2, message2, message2.id, null, true);
                            final int mediaExistanceFlags = messageObject2.getMediaExistanceFlags();
                            message3.id = message2.id;
                            int i14 = i10 + 1;
                            if (i11 != i3) {
                                final int i15 = i3;
                                sparseLongArray = sparseLongArray2;
                                final int i16 = i11;
                                final TLRPC.Message message5 = message2;
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda45
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$sendMessage$10(arrayList5, i15, i13, message3, i16, message5, messageObject, i);
                                    }
                                });
                            } else {
                                sparseLongArray = sparseLongArray2;
                                final TLRPC.Message message6 = message2;
                                getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda46
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$sendMessage$12(i, message6, message3, peer, i13, arrayList5, j, mediaExistanceFlags);
                                    }
                                });
                            }
                            i8 = i12;
                            i9 = i14;
                        }
                        i4 = 1;
                    } else if (update2 instanceof TLRPC.TL_updateQuickReplyMessage) {
                        QuickRepliesController.getInstance(this.currentAccount).processUpdate(update2, null, 0);
                        message = ((TLRPC.TL_updateQuickReplyMessage) update2).message;
                    } else {
                        TLRPC.TL_updateNewChannelMessage tL_updateNewChannelMessage = (TLRPC.TL_updateNewChannelMessage) update2;
                        message = tL_updateNewChannelMessage.message;
                        getMessagesController().processNewChannelDifferenceParams(tL_updateNewChannelMessage.pts, tL_updateNewChannelMessage.pts_count, message.peer_id.channel_id);
                    }
                    message2 = message;
                    i2 = 0;
                    if (z) {
                        ImageLoader.saveMessageThumbs(message2);
                        if (i3 == 0) {
                        }
                        if (!z2) {
                        }
                        j2 = sparseLongArray2.get(message2.id);
                        if (j2 != 0) {
                            updates = updates2;
                            sparseLongArray = sparseLongArray2;
                            i9 = i10;
                            i8 = i12;
                            i4 = 1;
                        }
                    }
                } else {
                    updates = updates2;
                    sparseLongArray = sparseLongArray2;
                    i4 = 1;
                }
                i8 += i4;
                i5 = i;
                arrayList3 = arrayList;
                updates2 = updates;
                sparseLongArray2 = sparseLongArray;
                i6 = -1;
                arrayList4 = arrayList2;
            }
            int i17 = i9;
            TLRPC.Updates updates4 = updates2;
            if (!updates4.updates.isEmpty()) {
                getMessagesController().processUpdates(updates4, false);
            }
            getStatsController().incrementSentItemsCount(ApplicationLoader.getCurrentNetworkType(), 1, i17);
            tL_error2 = tL_error;
        } else {
            tL_error2 = tL_error;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda47
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendMessage$13(tL_error2, tL_messages_forwardMessages);
                }
            });
        }
        for (int i18 = 0; i18 < arrayList.size(); i18++) {
            final TLRPC.Message message7 = (TLRPC.Message) arrayList.get(i18);
            getMessagesStorage().markMessageAsSendError(message7, i != 0 ? 1 : 0);
            if (tL_error2 != null && (str2 = tL_error2.text) != null && str2.startsWith("ALLOW_PAYMENT_REQUIRED_")) {
                StarsController.getInstance(this.currentAccount);
                message7.errorAllowedPriceStars = StarsController.getAllowedPaidStars(tL_messages_forwardMessages);
                message7.errorNewPriceStars = Long.parseLong(tL_error2.text.substring(23)) / tL_messages_forwardMessages.id.size();
                getMessagesStorage().updateMessageCustomParams(MessageObject.getDialogId(message7), message7);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda48
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendMessage$14(message7, i);
                }
            });
        }
        if (tL_error2 == null || (str = tL_error2.text) == null || !str.startsWith("ALLOW_PAYMENT_REQUIRED_")) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendMessage$15(arrayList2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$17(final TLRPC.TL_messages_forwardMessages tL_messages_forwardMessages, final long j, final int i, final boolean z, final boolean z2, final LongSparseArray longSparseArray, final ArrayList arrayList, final ArrayList arrayList2, final MessageObject messageObject, final TLRPC.Peer peer) {
        getConnectionsManager().sendRequest(tL_messages_forwardMessages, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda24
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendMessage$16(j, i, z, z2, longSparseArray, arrayList, arrayList2, messageObject, peer, tL_messages_forwardMessages, tLObject, tL_error);
            }
        }, 68);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$40(SendMessageParams sendMessageParams, Long l) {
        sendMessageParams.payStars = l.longValue();
        sendMessage(sendMessageParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$7(ArrayList arrayList, long j, boolean z, boolean z2, boolean z3, int i, MessageObject messageObject, int i2, long j2, MessageSuggestionParams messageSuggestionParams, Long l) {
        sendMessage(arrayList, j, z, z2, z3, i, messageObject, i2, l.longValue(), j2, messageSuggestionParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$8(int i, TLRPC.Message message, int i2, int i3, TLRPC.Message message2, MessageObject messageObject, int i4) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.add(Integer.valueOf(i));
        getMessagesController().deleteMessages(arrayList, null, null, message.dialog_id, false, i2, false, 0L, null, 0, i3 == 1, message2.id);
        ArrayList<MessageObject> arrayList2 = new ArrayList<>();
        arrayList2.add(new MessageObject(messageObject.currentAccount, messageObject.messageOwner, true, true));
        getMessagesController().updateInterfaceWithMessages(message.dialog_id, arrayList2, i3);
        getMediaDataController().increasePeerRaiting(message.dialog_id);
        processSentMessage(i);
        removeFromSendingMessages(i, i4 != 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$9(ArrayList arrayList, final int i, final int i2, final TLRPC.Message message, final int i3, final TLRPC.Message message2, final MessageObject messageObject, final int i4) {
        getMessagesStorage().putMessages((ArrayList<TLRPC.Message>) arrayList, true, false, false, 0, i, 0L);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda62
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendMessage$8(i2, message, i3, i, message2, messageObject, i4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendNotificationCallback$20(String str, List list) {
        this.waitingForCallback.remove(str);
        list.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendNotificationCallback$21(final String str, final List list, TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda80
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendNotificationCallback$20(str, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendNotificationCallback$22(long j, int i, byte[] bArr) {
        TLRPC.Chat chatSync;
        TLRPC.User userSync;
        final String str = j + "_" + i + "_" + Utilities.bytesToHex(bArr) + "_0";
        this.waitingForCallback.put(str, Boolean.TRUE);
        final List<String> list = this.waitingForCallbackMap.get(j + "_" + i);
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            this.waitingForCallbackMap.put(j + "_" + i, arrayList);
            list = arrayList;
        }
        list.add(str);
        if (!DialogObject.isUserDialog(j)) {
            long j2 = -j;
            if (getMessagesController().getChat(Long.valueOf(j2)) == null && (chatSync = getMessagesStorage().getChatSync(j2)) != null) {
                getMessagesController().putChat(chatSync, true);
            }
        } else if (getMessagesController().getUser(Long.valueOf(j)) == null && (userSync = getMessagesStorage().getUserSync(j)) != null) {
            getMessagesController().putUser(userSync, true);
        }
        TLRPC.TL_messages_getBotCallbackAnswer tL_messages_getBotCallbackAnswer = new TLRPC.TL_messages_getBotCallbackAnswer();
        tL_messages_getBotCallbackAnswer.peer = getMessagesController().getInputPeer(j);
        tL_messages_getBotCallbackAnswer.msg_id = i;
        tL_messages_getBotCallbackAnswer.game = false;
        if (bArr != null) {
            tL_messages_getBotCallbackAnswer.flags |= 1;
            tL_messages_getBotCallbackAnswer.data = bArr;
        }
        getConnectionsManager().sendRequest(tL_messages_getBotCallbackAnswer, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda97
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendNotificationCallback$21(str, list, tLObject, tL_error);
            }
        }, 2);
        getMessagesController().markDialogAsRead(j, i, i, 0, false, 0L, 0, true, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendReaction$27(Runnable runnable, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSticker$5(Bitmap[] bitmapArr, String[] strArr, TLRPC.Document document, long j, MessageObject messageObject, MessageObject messageObject2, boolean z, int i, Object obj, MessageObject.SendAnimationData sendAnimationData, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote, String str, int i2, long j2, long j3, MessageSuggestionParams messageSuggestionParams) {
        if (bitmapArr[0] != null && strArr[0] != null) {
            ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmapArr[0]), strArr[0], false);
        }
        SendMessageParams sendMessageParamsOf = SendMessageParams.of((TLRPC.TL_document) document, null, null, j, messageObject, messageObject2, null, null, null, null, z, i, 0, obj, sendAnimationData, false);
        sendMessageParamsOf.replyToStoryItem = tL_stories$StoryItem;
        sendMessageParamsOf.replyQuote = replyQuote;
        sendMessageParamsOf.quick_reply_shortcut = str;
        sendMessageParamsOf.quick_reply_shortcut_id = i2;
        sendMessageParamsOf.payStars = j2;
        sendMessageParamsOf.monoForumPeer = j3;
        sendMessageParamsOf.suggestionParams = messageSuggestionParams;
        sendMessage(sendMessageParamsOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSticker$6(final TLRPC.Document document, final long j, final MessageObject messageObject, final MessageObject messageObject2, final boolean z, final int i, final Object obj, final MessageObject.SendAnimationData sendAnimationData, final TL_stories$StoryItem tL_stories$StoryItem, final ChatActivity.ReplyQuote replyQuote, final String str, final int i2, final long j2, final long j3, final MessageSuggestionParams messageSuggestionParams) {
        final Bitmap[] bitmapArr = new Bitmap[1];
        String key = ImageLocation.getForDocument(document).getKey(null, null, false);
        String str2 = "video/mp4".equals(document.mime_type) ? ".mp4" : "video/x-matroska".equals(document.mime_type) ? ".mkv" : "";
        File file = new File(FileLoader.getDirectory(3), key + str2);
        if (!file.exists()) {
            file = new File(FileLoader.getDirectory(2), key + str2);
        }
        ensureMediaThumbExists(getAccountInstance(), false, document, file.getAbsolutePath(), null, 0L);
        final String[] strArr = {getKeyForPhotoSize(getAccountInstance(), FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 320), bitmapArr, true, true)};
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda79
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendSticker$5(bitmapArr, strArr, document, j, messageObject, messageObject2, z, i, obj, sendAnimationData, tL_stories$StoryItem, replyQuote, str, i2, j2, j3, messageSuggestionParams);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendVote$23(String str, Runnable runnable) {
        this.waitingForVote.remove(str);
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendVote$24(MessageObject messageObject, final String str, final Runnable runnable, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            this.voteSendTime.put(messageObject.getPollId(), 0L);
            getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
            this.voteSendTime.put(messageObject.getPollId(), Long.valueOf(SystemClock.elapsedRealtime()));
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendVote$23(str, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleTodo$25(int i, boolean z, Runnable runnable) {
        Boolean bool = this.waitingForTodoUpdate.get(Integer.valueOf(i));
        if (bool != null && bool.booleanValue() == z) {
            this.waitingForTodoUpdate.remove(Integer.valueOf(i));
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleTodo$26(MessageObject messageObject, TLRPC.TodoItem todoItem, final boolean z, final int i, final Runnable runnable, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            getMessagesStorage().toggleTodo(messageObject.getDialogId(), messageObject.getId(), todoItem.id, z);
            getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$toggleTodo$25(i, z, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$uploadMultiMedia$47(TLObject tLObject, TLRPC.InputMedia inputMedia, DelayedMessage delayedMessage) {
        TLRPC.TL_inputMediaDocument tL_inputMediaDocument;
        String str;
        TLRPC.TL_inputMediaDocument tL_inputMediaDocument2;
        if (tLObject != null) {
            TLRPC.MessageMedia messageMedia = (TLRPC.MessageMedia) tLObject;
            if ((inputMedia instanceof TLRPC.TL_inputMediaUploadedPhoto) && (messageMedia instanceof TLRPC.TL_messageMediaPhoto)) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto = new TLRPC.TL_inputMediaPhoto();
                TLRPC.TL_inputPhoto tL_inputPhoto = new TLRPC.TL_inputPhoto();
                tL_inputMediaPhoto.id = tL_inputPhoto;
                TLRPC.Photo photo = messageMedia.photo;
                tL_inputPhoto.id = photo.id;
                tL_inputPhoto.access_hash = photo.access_hash;
                tL_inputPhoto.file_reference = photo.file_reference;
                tL_inputMediaPhoto.spoiler = inputMedia.spoiler;
                tL_inputMediaDocument = tL_inputMediaPhoto;
                if (BuildVars.DEBUG_VERSION) {
                    str = "set uploaded photo";
                    tL_inputMediaDocument2 = tL_inputMediaPhoto;
                    FileLog.d(str);
                    tL_inputMediaDocument = tL_inputMediaDocument2;
                }
            } else if ((inputMedia instanceof TLRPC.TL_inputMediaUploadedDocument) && (messageMedia instanceof TLRPC.TL_messageMediaDocument)) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument3 = new TLRPC.TL_inputMediaDocument();
                TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
                tL_inputMediaDocument3.id = tL_inputDocument;
                TLRPC.Document document = messageMedia.document;
                tL_inputDocument.id = document.id;
                tL_inputDocument.access_hash = document.access_hash;
                tL_inputDocument.file_reference = document.file_reference;
                tL_inputMediaDocument3.spoiler = inputMedia.spoiler;
                TLRPC.Photo photo2 = messageMedia.video_cover;
                if (photo2 != null) {
                    TLRPC.TL_inputPhoto tL_inputPhoto2 = new TLRPC.TL_inputPhoto();
                    tL_inputPhoto2.id = photo2.id;
                    tL_inputPhoto2.access_hash = photo2.access_hash;
                    tL_inputPhoto2.file_reference = photo2.file_reference;
                    tL_inputMediaDocument3.flags |= 8;
                    tL_inputMediaDocument3.video_cover = tL_inputPhoto2;
                }
                tL_inputMediaDocument = tL_inputMediaDocument3;
                if (BuildVars.DEBUG_VERSION) {
                    str = "set uploaded document";
                    tL_inputMediaDocument2 = tL_inputMediaDocument3;
                    FileLog.d(str);
                    tL_inputMediaDocument = tL_inputMediaDocument2;
                }
            } else {
                tL_inputMediaDocument = null;
            }
        }
        if (tL_inputMediaDocument == null) {
            delayedMessage.markAsError();
            return;
        }
        int i = inputMedia.ttl_seconds;
        if (i != 0) {
            tL_inputMediaDocument.ttl_seconds = i;
            tL_inputMediaDocument.flags |= 1;
        }
        TLObject tLObject2 = delayedMessage.sendRequest;
        if (tLObject2 instanceof TLRPC.TL_messages_sendMultiMedia) {
            TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia = (TLRPC.TL_messages_sendMultiMedia) tLObject2;
            int i2 = 0;
            while (true) {
                if (i2 >= tL_messages_sendMultiMedia.multi_media.size()) {
                    break;
                }
                if (((TLRPC.TL_inputSingleMedia) tL_messages_sendMultiMedia.multi_media.get(i2)).media == inputMedia) {
                    ((TLRPC.TL_inputSingleMedia) tL_messages_sendMultiMedia.multi_media.get(i2)).media = tL_inputMediaDocument;
                    break;
                }
                i2++;
            }
        } else if (tLObject2 instanceof TLRPC.TL_messages_sendMedia) {
            TLRPC.InputMedia inputMedia2 = ((TLRPC.TL_messages_sendMedia) tLObject2).media;
            if (inputMedia2 instanceof TLRPC.TL_inputMediaPaidMedia) {
                TLRPC.TL_inputMediaPaidMedia tL_inputMediaPaidMedia = (TLRPC.TL_inputMediaPaidMedia) inputMedia2;
                int i3 = 0;
                while (true) {
                    if (i3 >= tL_inputMediaPaidMedia.extended_media.size()) {
                        break;
                    }
                    if (tL_inputMediaPaidMedia.extended_media.get(i3) == inputMedia) {
                        tL_inputMediaPaidMedia.extended_media.set(i3, tL_inputMediaDocument);
                        break;
                    }
                    i3++;
                }
            }
        }
        sendReadyToSendGroup(delayedMessage, false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$uploadMultiMedia$48(final TLRPC.InputMedia inputMedia, final DelayedMessage delayedMessage, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$uploadMultiMedia$47(tLObject, inputMedia, delayedMessage);
            }
        });
    }

    private void performSendDelayedMessage(DelayedMessage delayedMessage) {
        performSendDelayedMessage(delayedMessage, -1);
    }

    /* JADX WARN: Removed duplicated region for block: B:314:0x0711  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x07f2  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x0828  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x082d  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0959  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void performSendDelayedMessage(final DelayedMessage delayedMessage, int i) {
        boolean z;
        Object obj;
        boolean z2;
        TLRPC.InputFile inputFile;
        MessageObject messageObject;
        TLRPC.InputPeer inputPeer;
        TLRPC.InputMedia inputMedia;
        TLRPC.InputPeer inputPeer2;
        TLRPC.InputMedia inputMedia2;
        TLRPC.PhotoSize photoSize;
        String string;
        FileLoader fileLoader;
        TLRPC.PhotoSize photoSize2;
        StringBuilder sb;
        TLRPC.PhotoSize photoSize3;
        String str;
        FileLoader fileLoader2;
        long j;
        int i2;
        boolean z3;
        boolean z4;
        final TLRPC.InputMedia inputMedia3;
        TLRPC.InputPeer inputPeer3;
        VideoEditedInfo videoEditedInfo;
        TLRPC.PhotoSize photoSize4;
        int i3 = delayedMessage.type;
        int i4 = ConnectionsManager.FileTypePhoto;
        if (i3 == 0) {
            String str2 = delayedMessage.httpLocation;
            if (str2 != null) {
                putToDelayedMessages(str2, delayedMessage);
                ImageLoader.getInstance().loadHttpFile(delayedMessage.httpLocation, "file", this.currentAccount);
                return;
            }
            if (delayedMessage.sendRequest != null) {
                string = FileLoader.getInstance(this.currentAccount).getPathToAttach(delayedMessage.photoSize).toString();
                putToDelayedMessages(string, delayedMessage);
                fileLoader = getFileLoader();
                fileLoader.uploadFile(string, z, true, i4);
            } else {
                String string2 = FileLoader.getInstance(this.currentAccount).getPathToAttach(delayedMessage.photoSize).toString();
                if (delayedMessage.sendEncryptedRequest != null && (photoSize4 = delayedMessage.photoSize) != null && photoSize4.location.dc_id != 0) {
                    File file = new File(string2);
                    if (!file.exists()) {
                        string2 = FileLoader.getInstance(this.currentAccount).getPathToAttach(delayedMessage.photoSize, true).toString();
                        file = new File(string2);
                    }
                    if (!file.exists()) {
                        putToDelayedMessages(FileLoader.getAttachFileName(delayedMessage.photoSize), delayedMessage);
                        getFileLoader().loadFile(ImageLocation.getForObject(delayedMessage.photoSize, delayedMessage.locationParent), delayedMessage.parentObject, "jpg", 3, 0);
                        return;
                    }
                }
                putToDelayedMessages(string2, delayedMessage);
                getFileLoader().uploadFile(string2, true, true, ConnectionsManager.FileTypePhoto);
            }
        } else {
            if (i3 == 1) {
                VideoEditedInfo videoEditedInfo2 = delayedMessage.videoEditedInfo;
                if (videoEditedInfo2 != null && videoEditedInfo2.needConvert() && delayedMessage.performMediaUpload) {
                    MessageObject messageObject2 = delayedMessage.obj;
                    String string3 = messageObject2.messageOwner.attachPath;
                    TLRPC.Document document = messageObject2.getDocument();
                    if (string3 == null) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(FileLoader.getDirectory(4));
                        sb2.append("/");
                        sb2.append(document.id);
                        sb2.append(".");
                        sb2.append(delayedMessage.videoEditedInfo.isSticker ? "webm" : "mp4");
                        string3 = sb2.toString();
                    }
                    putToDelayedMessages(string3, delayedMessage);
                    if (!delayedMessage.videoEditedInfo.alreadyScheduledConverting) {
                        MediaController.getInstance().scheduleVideoConvert(delayedMessage.obj);
                    }
                } else {
                    VideoEditedInfo videoEditedInfo3 = delayedMessage.videoEditedInfo;
                    if (videoEditedInfo3 != null) {
                        TLRPC.InputFile inputFile2 = videoEditedInfo3.file;
                        if (inputFile2 != null) {
                            TLObject tLObject = delayedMessage.sendRequest;
                            (tLObject instanceof TLRPC.TL_messages_sendMedia ? ((TLRPC.TL_messages_sendMedia) tLObject).media : ((TLRPC.TL_messages_editMessage) tLObject).media).file = inputFile2;
                            videoEditedInfo3.file = null;
                        } else if (videoEditedInfo3.encryptedFile != null) {
                            TLRPC.TL_decryptedMessage tL_decryptedMessage = (TLRPC.TL_decryptedMessage) delayedMessage.sendEncryptedRequest;
                            TLRPC.DecryptedMessageMedia decryptedMessageMedia = tL_decryptedMessage.media;
                            decryptedMessageMedia.size = videoEditedInfo3.estimatedSize;
                            decryptedMessageMedia.key = videoEditedInfo3.key;
                            decryptedMessageMedia.iv = videoEditedInfo3.iv;
                            SecretChatHelper secretChatHelper = getSecretChatHelper();
                            MessageObject messageObject3 = delayedMessage.obj;
                            secretChatHelper.performSendEncryptedRequest(tL_decryptedMessage, messageObject3.messageOwner, delayedMessage.encryptedChat, delayedMessage.videoEditedInfo.encryptedFile, delayedMessage.originalPath, messageObject3);
                            delayedMessage.videoEditedInfo.encryptedFile = null;
                            return;
                        }
                    }
                    TLObject tLObject2 = delayedMessage.sendRequest;
                    if (tLObject2 != null) {
                        if (tLObject2 instanceof TLRPC.TL_messages_sendMedia) {
                            TLRPC.TL_messages_sendMedia tL_messages_sendMedia = (TLRPC.TL_messages_sendMedia) tLObject2;
                            inputMedia3 = tL_messages_sendMedia.media;
                            inputPeer3 = tL_messages_sendMedia.peer;
                        } else {
                            TLRPC.TL_messages_editMessage tL_messages_editMessage = (TLRPC.TL_messages_editMessage) tLObject2;
                            inputMedia3 = tL_messages_editMessage.media;
                            inputPeer3 = tL_messages_editMessage.peer;
                        }
                        if (inputMedia3 instanceof TLRPC.TL_inputMediaPaidMedia) {
                            TLRPC.TL_inputMediaPaidMedia tL_inputMediaPaidMedia = (TLRPC.TL_inputMediaPaidMedia) inputMedia3;
                            if (!tL_inputMediaPaidMedia.extended_media.isEmpty()) {
                                inputMedia3 = (TLRPC.InputMedia) tL_inputMediaPaidMedia.extended_media.get(0);
                            }
                        }
                        if (inputMedia3.file == null && !(inputMedia3 instanceof TLRPC.TL_inputMediaDocument) && delayedMessage.performMediaUpload) {
                            MessageObject messageObject4 = delayedMessage.obj;
                            String str3 = messageObject4.messageOwner.attachPath;
                            TLRPC.Document document2 = messageObject4.getDocument();
                            if (str3 == null) {
                                str3 = FileLoader.getDirectory(4) + "/" + document2.id + ".mp4";
                            }
                            str = str3;
                            putToDelayedMessages(str, delayedMessage);
                            VideoEditedInfo videoEditedInfo4 = delayedMessage.obj.videoEditedInfo;
                            if (videoEditedInfo4 == null || !videoEditedInfo4.notReadyYet) {
                                if (videoEditedInfo4 == null || !videoEditedInfo4.needConvert()) {
                                    getFileLoader().uploadFile(str, false, false, ConnectionsManager.FileTypeVideo);
                                } else {
                                    fileLoader2 = getFileLoader();
                                    j = document2.size;
                                    i2 = ConnectionsManager.FileTypeVideo;
                                    z3 = false;
                                    z4 = false;
                                    fileLoader2.uploadFile(str, z4, false, j, i2, z3);
                                }
                            }
                        } else {
                            TLRPC.InputPhoto inputPhoto = inputMedia3.video_cover;
                            if (inputPhoto == null && delayedMessage.coverFile == null && delayedMessage.coverPhotoSize != null && delayedMessage.performCoverUpload) {
                                sb = new StringBuilder();
                                sb.append(FileLoader.getDirectory(4));
                                sb.append("/");
                                sb.append(delayedMessage.coverPhotoSize.location.volume_id);
                                sb.append("_");
                                photoSize3 = delayedMessage.coverPhotoSize;
                                sb.append(photoSize3.location.local_id);
                                sb.append(".jpg");
                                string = sb.toString();
                            } else {
                                if (inputPhoto == null && delayedMessage.coverFile != null && delayedMessage.performCoverUpload) {
                                    TLRPC.TL_messages_uploadMedia tL_messages_uploadMedia = new TLRPC.TL_messages_uploadMedia();
                                    tL_messages_uploadMedia.peer = inputPeer3;
                                    TLRPC.TL_inputMediaUploadedPhoto tL_inputMediaUploadedPhoto = new TLRPC.TL_inputMediaUploadedPhoto();
                                    tL_inputMediaUploadedPhoto.file = delayedMessage.coverFile;
                                    tL_messages_uploadMedia.media = tL_inputMediaUploadedPhoto;
                                    getConnectionsManager().sendRequest(tL_messages_uploadMedia, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda76
                                        @Override // org.telegram.tgnet.RequestDelegate
                                        public final void run(TLObject tLObject3, TLRPC.TL_error tL_error) {
                                            this.f$0.lambda$performSendDelayedMessage$42(inputMedia3, delayedMessage, tLObject3, tL_error);
                                        }
                                    });
                                    return;
                                }
                                MessageObject messageObject5 = delayedMessage.obj;
                                string = FileLoader.getDirectory(4) + "/" + delayedMessage.photoSize.location.volume_id + "_" + delayedMessage.photoSize.location.local_id + "." + ((messageObject5 == null || (videoEditedInfo = messageObject5.videoEditedInfo) == null || !videoEditedInfo.isSticker) ? "jpg" : "webp");
                            }
                        }
                    } else {
                        MessageObject messageObject6 = delayedMessage.obj;
                        String str4 = messageObject6.messageOwner.attachPath;
                        TLRPC.Document document3 = messageObject6.getDocument();
                        if (str4 == null) {
                            str4 = FileLoader.getDirectory(4) + "/" + document3.id + ".mp4";
                        }
                        if (delayedMessage.sendEncryptedRequest != null && document3.dc_id != 0) {
                            File file2 = new File(str4);
                            if (!file2.exists() && (file2 = getFileLoader().getPathToMessage(delayedMessage.obj.messageOwner)) != null && file2.exists()) {
                                TLRPC.Message message = delayedMessage.obj.messageOwner;
                                String absolutePath = file2.getAbsolutePath();
                                message.attachPath = absolutePath;
                                delayedMessage.obj.attachPathExists = true;
                                str4 = absolutePath;
                            }
                            if ((file2 == null || (!file2.exists() && delayedMessage.obj.getDocument() != null)) && (file2 = getFileLoader().getPathToAttach(delayedMessage.obj.getDocument(), false)) != null && file2.exists()) {
                                TLRPC.Message message2 = delayedMessage.obj.messageOwner;
                                String absolutePath2 = file2.getAbsolutePath();
                                message2.attachPath = absolutePath2;
                                delayedMessage.obj.attachPathExists = true;
                                str4 = absolutePath2;
                            }
                            if (file2 == null || !file2.exists()) {
                                putToDelayedMessages(FileLoader.getAttachFileName(document3), delayedMessage);
                                getFileLoader().loadFile(document3, delayedMessage.parentObject, 3, 0);
                                return;
                            }
                        }
                        str = str4;
                        putToDelayedMessages(str, delayedMessage);
                        VideoEditedInfo videoEditedInfo5 = delayedMessage.obj.videoEditedInfo;
                        if (videoEditedInfo5 == null || !videoEditedInfo5.notReadyYet) {
                            if (videoEditedInfo5 == null || !videoEditedInfo5.needConvert()) {
                                getFileLoader().uploadFile(str, true, false, ConnectionsManager.FileTypeVideo);
                            } else {
                                fileLoader2 = getFileLoader();
                                j = document3.size;
                                i2 = ConnectionsManager.FileTypeVideo;
                                z3 = false;
                                z4 = true;
                                fileLoader2.uploadFile(str, z4, false, j, i2, z3);
                            }
                        }
                    }
                }
            } else if (i3 == 2) {
                String str5 = delayedMessage.httpLocation;
                if (str5 != null) {
                    putToDelayedMessages(str5, delayedMessage);
                    ImageLoader.getInstance().loadHttpFile(delayedMessage.httpLocation, "gif", this.currentAccount);
                    return;
                }
                TLObject tLObject3 = delayedMessage.sendRequest;
                if (tLObject3 != null) {
                    TLRPC.InputMedia inputMedia4 = tLObject3 instanceof TLRPC.TL_messages_sendMedia ? ((TLRPC.TL_messages_sendMedia) tLObject3).media : ((TLRPC.TL_messages_editMessage) tLObject3).media;
                    if (inputMedia4.file == null) {
                        String str6 = delayedMessage.obj.messageOwner.attachPath;
                        putToDelayedMessages(str6, delayedMessage);
                        getFileLoader().uploadFile(str6, delayedMessage.sendRequest == null, false, ConnectionsManager.FileTypeFile);
                    } else {
                        if (inputMedia4.thumb != null || (photoSize2 = delayedMessage.photoSize) == null || (photoSize2 instanceof TLRPC.TL_photoStrippedSize)) {
                            return;
                        }
                        sb = new StringBuilder();
                        sb.append(FileLoader.getDirectory(4));
                        sb.append("/");
                        sb.append(delayedMessage.photoSize.location.volume_id);
                        sb.append("_");
                        photoSize3 = delayedMessage.photoSize;
                        sb.append(photoSize3.location.local_id);
                        sb.append(".jpg");
                        string = sb.toString();
                    }
                } else {
                    MessageObject messageObject7 = delayedMessage.obj;
                    String str7 = messageObject7.messageOwner.attachPath;
                    TLRPC.Document document4 = messageObject7.getDocument();
                    if (delayedMessage.sendEncryptedRequest != null && document4.dc_id != 0) {
                        File file3 = new File(str7);
                        if (!file3.exists() && (file3 = getFileLoader().getPathToMessage(delayedMessage.obj.messageOwner)) != null && file3.exists()) {
                            TLRPC.Message message3 = delayedMessage.obj.messageOwner;
                            String absolutePath3 = file3.getAbsolutePath();
                            message3.attachPath = absolutePath3;
                            delayedMessage.obj.attachPathExists = true;
                            str7 = absolutePath3;
                        }
                        if ((file3 == null || (!file3.exists() && delayedMessage.obj.getDocument() != null)) && (file3 = getFileLoader().getPathToAttach(delayedMessage.obj.getDocument(), false)) != null && file3.exists()) {
                            TLRPC.Message message4 = delayedMessage.obj.messageOwner;
                            String absolutePath4 = file3.getAbsolutePath();
                            message4.attachPath = absolutePath4;
                            delayedMessage.obj.attachPathExists = true;
                            str7 = absolutePath4;
                        }
                        if (file3 == null || !file3.exists()) {
                            putToDelayedMessages(FileLoader.getAttachFileName(document4), delayedMessage);
                            getFileLoader().loadFile(document4, delayedMessage.parentObject, 3, 0);
                            return;
                        }
                    }
                    putToDelayedMessages(str7, delayedMessage);
                    getFileLoader().uploadFile(str7, true, false, ConnectionsManager.FileTypeFile);
                }
            } else {
                if (i3 != 3) {
                    if (i3 != 4) {
                        if (i3 == 5) {
                            final String str8 = "stickerset_" + delayedMessage.obj.getId();
                            TLRPC.TL_messages_getStickerSet tL_messages_getStickerSet = new TLRPC.TL_messages_getStickerSet();
                            tL_messages_getStickerSet.stickerset = (TLRPC.InputStickerSet) delayedMessage.parentObject;
                            getConnectionsManager().sendRequest(tL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda78
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject4, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$performSendDelayedMessage$46(delayedMessage, str8, tLObject4, tL_error);
                                }
                            });
                            putToDelayedMessages(str8, delayedMessage);
                            return;
                        }
                        return;
                    }
                    boolean z5 = i < 0;
                    if (delayedMessage.performMediaUpload || delayedMessage.performCoverUpload) {
                        int size = i < 0 ? delayedMessage.messageObjects.size() - 1 : i;
                        final MessageObject messageObject8 = delayedMessage.messageObjects.get(size);
                        TLRPC.Document document5 = messageObject8.getDocument();
                        if (document5 == null && (MessageObject.getMedia(messageObject8) instanceof TLRPC.TL_messageMediaPaidMedia)) {
                            TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) MessageObject.getMedia(messageObject8);
                            TLRPC.MessageExtendedMedia messageExtendedMedia = size >= tL_messageMediaPaidMedia.extended_media.size() ? null : tL_messageMediaPaidMedia.extended_media.get(size);
                            TLRPC.MessageMedia messageMedia = messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia ? ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media : null;
                            document5 = messageMedia == null ? null : messageMedia.document;
                        }
                        if (document5 != null) {
                            VideoEditedInfo videoEditedInfo6 = delayedMessage.videoEditedInfo;
                            if (videoEditedInfo6 != null && videoEditedInfo6.needConvert() && delayedMessage.performMediaUpload) {
                                String str9 = messageObject8.messageOwner.attachPath;
                                if (str9 == null) {
                                    str9 = FileLoader.getDirectory(4) + "/" + document5.id + ".mp4";
                                }
                                putToDelayedMessages(str9, delayedMessage);
                                delayedMessage.extraHashMap.put(messageObject8, str9);
                                delayedMessage.extraHashMap.put(str9 + "_i", messageObject8);
                                TLRPC.PhotoSize photoSize5 = delayedMessage.photoSize;
                                if (photoSize5 != null && photoSize5.location != null) {
                                    delayedMessage.extraHashMap.put(str9 + "_t", delayedMessage.photoSize);
                                }
                                TLRPC.PhotoSize photoSize6 = delayedMessage.coverPhotoSize;
                                if (photoSize6 != null && photoSize6.location != null) {
                                    delayedMessage.extraHashMap.put(str9 + "_ct", delayedMessage.coverPhotoSize);
                                }
                                if (!delayedMessage.videoEditedInfo.alreadyScheduledConverting) {
                                    MediaController.getInstance().scheduleVideoConvert(messageObject8);
                                }
                                delayedMessage.obj = messageObject8;
                                putToUploadingMessages(messageObject8);
                                z = z5;
                            } else {
                                String string4 = messageObject8.messageOwner.attachPath;
                                if (string4 == null) {
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append(FileLoader.getDirectory(4));
                                    sb3.append("/");
                                    z = z5;
                                    sb3.append(document5.id);
                                    sb3.append(".mp4");
                                    string4 = sb3.toString();
                                } else {
                                    z = z5;
                                }
                                final String str10 = string4;
                                TLObject tLObject4 = delayedMessage.sendRequest;
                                if (tLObject4 != null) {
                                    if (tLObject4 instanceof TLRPC.TL_messages_sendMultiMedia) {
                                        TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia = (TLRPC.TL_messages_sendMultiMedia) tLObject4;
                                        inputPeer2 = tL_messages_sendMultiMedia.peer;
                                        inputMedia2 = ((TLRPC.TL_inputSingleMedia) tL_messages_sendMultiMedia.multi_media.get(size)).media;
                                    } else {
                                        if (tLObject4 instanceof TLRPC.TL_messages_sendMedia) {
                                            TLRPC.TL_messages_sendMedia tL_messages_sendMedia2 = (TLRPC.TL_messages_sendMedia) tLObject4;
                                            inputPeer2 = tL_messages_sendMedia2.peer;
                                            TLRPC.InputMedia inputMedia5 = tL_messages_sendMedia2.media;
                                            if (inputMedia5 instanceof TLRPC.TL_inputMediaPaidMedia) {
                                                inputMedia2 = (TLRPC.InputMedia) ((TLRPC.TL_inputMediaPaidMedia) inputMedia5).extended_media.get(size);
                                            } else {
                                                inputPeer = inputPeer2;
                                            }
                                        } else {
                                            inputPeer = null;
                                        }
                                        inputMedia = null;
                                        if (inputMedia == null && inputMedia.file == null && !(inputMedia instanceof TLRPC.TL_inputMediaDocument) && delayedMessage.performMediaUpload) {
                                            putToDelayedMessages(str10, delayedMessage);
                                            delayedMessage.extraHashMap.put(messageObject8, str10);
                                            delayedMessage.extraHashMap.put(str10, inputMedia);
                                            delayedMessage.extraHashMap.put(str10 + "_i", messageObject8);
                                            TLRPC.PhotoSize photoSize7 = delayedMessage.photoSize;
                                            if (photoSize7 != null && photoSize7.location != null) {
                                                delayedMessage.extraHashMap.put(str10 + "_t", delayedMessage.photoSize);
                                            }
                                            TLRPC.PhotoSize photoSize8 = delayedMessage.coverPhotoSize;
                                            if (photoSize8 != null && photoSize8.location != null) {
                                                String str11 = FileLoader.getDirectory(4) + "/" + delayedMessage.coverPhotoSize.location.volume_id + "_" + delayedMessage.coverPhotoSize.location.local_id + ".jpg";
                                                delayedMessage.extraHashMap.put(str10 + "_ct", delayedMessage.coverPhotoSize);
                                                delayedMessage.extraHashMap.put(str11 + "_doc", str10);
                                            }
                                            VideoEditedInfo videoEditedInfo7 = messageObject8.videoEditedInfo;
                                            if (videoEditedInfo7 == null || !videoEditedInfo7.needConvert()) {
                                                getFileLoader().uploadFile(str10, false, false, ConnectionsManager.FileTypeVideo);
                                            } else {
                                                getFileLoader().uploadFile(str10, false, false, document5.size, ConnectionsManager.FileTypeVideo, false);
                                            }
                                            messageObject = messageObject8;
                                        } else {
                                            photoSize = delayedMessage.coverPhotoSize;
                                            if (photoSize == null && delayedMessage.coverFile == null && inputMedia.video_cover == null) {
                                                StringBuilder sb4 = new StringBuilder();
                                                sb4.append(FileLoader.getDirectory(4));
                                                sb4.append("/");
                                                TLRPC.InputMedia inputMedia6 = inputMedia;
                                                sb4.append(delayedMessage.coverPhotoSize.location.volume_id);
                                                sb4.append("_");
                                                sb4.append(delayedMessage.coverPhotoSize.location.local_id);
                                                sb4.append(".jpg");
                                                String string5 = sb4.toString();
                                                putToDelayedMessages(string5, delayedMessage);
                                                TLRPC.PhotoSize photoSize9 = delayedMessage.coverPhotoSize;
                                                if (photoSize9 != null && photoSize9.location != null) {
                                                    String str12 = FileLoader.getDirectory(4) + "/" + delayedMessage.coverPhotoSize.location.volume_id + "_" + delayedMessage.coverPhotoSize.location.local_id + ".jpg";
                                                    delayedMessage.extraHashMap.put(str10 + "_ct", delayedMessage.coverPhotoSize);
                                                    delayedMessage.extraHashMap.put(str12 + "_doc", str10);
                                                }
                                                delayedMessage.extraHashMap.put(string5 + "_o", str10);
                                                delayedMessage.extraHashMap.put(str10 + "_i", messageObject8);
                                                delayedMessage.extraHashMap.put(messageObject8, string5);
                                                delayedMessage.extraHashMap.put(string5, inputMedia6);
                                                getFileLoader().uploadFile(string5, false, true, ConnectionsManager.FileTypePhoto);
                                                putToUploadingMessages(messageObject8);
                                            } else {
                                                final TLRPC.InputMedia inputMedia7 = inputMedia;
                                                if (photoSize != null || delayedMessage.coverFile == null || inputMedia7 == null || inputMedia7.video_cover != null) {
                                                    messageObject = messageObject8;
                                                    if (delayedMessage.photoSize != null) {
                                                        String str13 = FileLoader.getDirectory(4) + "/" + delayedMessage.photoSize.location.volume_id + "_" + delayedMessage.photoSize.location.local_id + ".jpg";
                                                        putToDelayedMessages(str13, delayedMessage);
                                                        delayedMessage.extraHashMap.put(str13 + "_o", str10);
                                                        delayedMessage.extraHashMap.put(messageObject, str13);
                                                        delayedMessage.extraHashMap.put(str13, inputMedia7);
                                                        getFileLoader().uploadFile(str13, false, true, ConnectionsManager.FileTypePhoto);
                                                    }
                                                } else {
                                                    TLRPC.TL_messages_uploadMedia tL_messages_uploadMedia2 = new TLRPC.TL_messages_uploadMedia();
                                                    tL_messages_uploadMedia2.peer = inputPeer;
                                                    TLRPC.TL_inputMediaUploadedPhoto tL_inputMediaUploadedPhoto2 = new TLRPC.TL_inputMediaUploadedPhoto();
                                                    tL_inputMediaUploadedPhoto2.file = delayedMessage.coverFile;
                                                    tL_messages_uploadMedia2.media = tL_inputMediaUploadedPhoto2;
                                                    getConnectionsManager().sendRequest(tL_messages_uploadMedia2, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda77
                                                        @Override // org.telegram.tgnet.RequestDelegate
                                                        public final void run(TLObject tLObject5, TLRPC.TL_error tL_error) {
                                                            this.f$0.lambda$performSendDelayedMessage$44(inputMedia7, delayedMessage, str10, messageObject8, tLObject5, tL_error);
                                                        }
                                                    });
                                                }
                                            }
                                        }
                                    }
                                    TLRPC.InputPeer inputPeer4 = inputPeer2;
                                    inputMedia = inputMedia2;
                                    inputPeer = inputPeer4;
                                    if (inputMedia == null) {
                                        photoSize = delayedMessage.coverPhotoSize;
                                        if (photoSize == null) {
                                            final TLRPC.InputMedia inputMedia72 = inputMedia;
                                            if (photoSize != null) {
                                                messageObject = messageObject8;
                                                if (delayedMessage.photoSize != null) {
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    messageObject = messageObject8;
                                    TLRPC.TL_messages_sendEncryptedMultiMedia tL_messages_sendEncryptedMultiMedia = (TLRPC.TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest;
                                    putToDelayedMessages(str10, delayedMessage);
                                    delayedMessage.extraHashMap.put(messageObject, str10);
                                    delayedMessage.extraHashMap.put(str10, tL_messages_sendEncryptedMultiMedia.files.get(size));
                                    delayedMessage.extraHashMap.put(str10 + "_i", messageObject);
                                    TLRPC.PhotoSize photoSize10 = delayedMessage.photoSize;
                                    if (photoSize10 != null && photoSize10.location != null) {
                                        delayedMessage.extraHashMap.put(str10 + "_t", delayedMessage.photoSize);
                                    }
                                    VideoEditedInfo videoEditedInfo8 = messageObject.videoEditedInfo;
                                    if (videoEditedInfo8 == null || !videoEditedInfo8.needConvert()) {
                                        getFileLoader().uploadFile(str10, true, false, ConnectionsManager.FileTypeVideo);
                                    } else {
                                        getFileLoader().uploadFile(str10, true, false, document5.size, ConnectionsManager.FileTypeVideo, false);
                                    }
                                }
                                putToUploadingMessages(messageObject);
                            }
                            inputFile = null;
                            delayedMessage.videoEditedInfo = null;
                            delayedMessage.photoSize = null;
                            delayedMessage.coverPhotoSize = null;
                        } else {
                            z = z5;
                            String str14 = delayedMessage.httpLocation;
                            if (str14 != null) {
                                putToDelayedMessages(str14, delayedMessage);
                                delayedMessage.extraHashMap.put(messageObject8, delayedMessage.httpLocation);
                                delayedMessage.extraHashMap.put(delayedMessage.httpLocation, messageObject8);
                                ImageLoader.getInstance().loadHttpFile(delayedMessage.httpLocation, "file", this.currentAccount);
                                inputFile = null;
                                delayedMessage.httpLocation = null;
                            } else {
                                TLObject tLObject5 = delayedMessage.sendRequest;
                                if (tLObject5 instanceof TLRPC.TL_messages_sendMultiMedia) {
                                    obj = ((TLRPC.TL_inputSingleMedia) ((TLRPC.TL_messages_sendMultiMedia) tLObject5).multi_media.get(size)).media;
                                } else if (tLObject5 instanceof TLRPC.TL_messages_sendMedia) {
                                    TLRPC.InputMedia inputMedia8 = ((TLRPC.TL_messages_sendMedia) tLObject5).media;
                                    ArrayList arrayList = inputMedia8 instanceof TLRPC.TL_inputMediaPaidMedia ? ((TLRPC.TL_inputMediaPaidMedia) inputMedia8).extended_media : ((TLRPC.TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest).files;
                                    obj = (TLObject) arrayList.get(size);
                                }
                                String string6 = FileLoader.getInstance(this.currentAccount).getPathToAttach(delayedMessage.photoSize).toString();
                                putToDelayedMessages(string6, delayedMessage);
                                delayedMessage.extraHashMap.put(string6, obj);
                                delayedMessage.extraHashMap.put(messageObject8, string6);
                                z2 = true;
                                getFileLoader().uploadFile(string6, delayedMessage.sendEncryptedRequest != null, true, ConnectionsManager.FileTypePhoto);
                                putToUploadingMessages(messageObject8);
                                inputFile = null;
                                delayedMessage.photoSize = null;
                                delayedMessage.coverFile = inputFile;
                                delayedMessage.performMediaUpload = false;
                                delayedMessage.performCoverUpload = false;
                            }
                        }
                        z2 = true;
                        delayedMessage.coverFile = inputFile;
                        delayedMessage.performMediaUpload = false;
                        delayedMessage.performCoverUpload = false;
                    } else {
                        if (!delayedMessage.messageObjects.isEmpty()) {
                            ArrayList<MessageObject> arrayList2 = delayedMessage.messageObjects;
                            putToSendingMessages(arrayList2.get(arrayList2.size() - 1).messageOwner, delayedMessage.finalGroupMessage != 0);
                        }
                        z = z5;
                        z2 = true;
                    }
                    sendReadyToSendGroup(delayedMessage, z, z2);
                    return;
                }
                string = delayedMessage.obj.messageOwner.attachPath;
                putToDelayedMessages(string, delayedMessage);
                fileLoader = getFileLoader();
                z = delayedMessage.sendRequest == null;
                i4 = ConnectionsManager.FileTypeAudio;
                fileLoader.uploadFile(string, z, true, i4);
            }
            putToDelayedMessages(string, delayedMessage);
            fileLoader = getFileLoader();
            i4 = ConnectionsManager.FileTypePhoto;
            fileLoader.uploadFile(string, z, true, i4);
        }
        putToUploadingMessages(delayedMessage.obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performSendMessageRequest(TLObject tLObject, MessageObject messageObject, String str, DelayedMessage delayedMessage, Object obj, HashMap<String, String> map, boolean z) {
        lambda$performSendMessageRequest$60(tLObject, messageObject, str, null, false, delayedMessage, obj, map, z);
    }

    public static void prepareSendingAudioDocuments(final AccountInstance accountInstance, final ArrayList<MessageObject> arrayList, final CharSequence charSequence, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories$StoryItem tL_stories$StoryItem, final boolean z, final int i, final MessageObject messageObject3, final String str, final int i2, final long j2, final boolean z2, final long j3) {
        new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() throws InterruptedException {
                SendMessagesHelper.lambda$prepareSendingAudioDocuments$90(arrayList, j, accountInstance, charSequence, messageObject3, messageObject, messageObject2, z, i, tL_stories$StoryItem, str, i2, j2, z2, j3);
            }
        }).start();
    }

    public static void prepareSendingBotContextResult(final BaseFragment baseFragment, final AccountInstance accountInstance, final TLRPC.BotInlineResult botInlineResult, final HashMap<String, String> map, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories$StoryItem tL_stories$StoryItem, final ChatActivity.ReplyQuote replyQuote, final boolean z, final int i, final String str, final int i2, final long j2) {
        TLRPC.TL_webPagePending tL_webPagePending;
        SendMessageParams sendMessageParamsOf;
        TLRPC.MessageMedia tL_messageMediaGeoLive;
        TLRPC.BotInlineMessage botInlineMessage;
        TLRPC.TL_webPagePending tL_webPagePending2;
        if (botInlineResult == null) {
            return;
        }
        TLRPC.BotInlineMessage botInlineMessage2 = botInlineResult.send_message;
        if (botInlineMessage2 instanceof TLRPC.TL_botInlineMessageMediaAuto) {
            new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda61
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.lambda$prepareSendingBotContextResult$97(j, botInlineResult, accountInstance, map, baseFragment, messageObject, messageObject2, z, i, str, i2, tL_stories$StoryItem, replyQuote, j2);
                }
            }).run();
            return;
        }
        if (botInlineMessage2 instanceof TLRPC.TL_botInlineMessageText) {
            if (DialogObject.isEncryptedDialog(j)) {
                for (int i3 = 0; i3 < botInlineResult.send_message.entities.size(); i3++) {
                    TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) botInlineResult.send_message.entities.get(i3);
                    if (messageEntity instanceof TLRPC.TL_messageEntityUrl) {
                        tL_webPagePending2 = new TLRPC.TL_webPagePending();
                        String str2 = botInlineResult.send_message.message;
                        int i4 = messageEntity.offset;
                        tL_webPagePending2.url = str2.substring(i4, messageEntity.length + i4);
                        break;
                    }
                }
                tL_webPagePending2 = null;
                tL_webPagePending = tL_webPagePending2;
            } else {
                tL_webPagePending2 = null;
                tL_webPagePending = tL_webPagePending2;
            }
            sendMessageParamsOf.quick_reply_shortcut = str;
            sendMessageParamsOf.quick_reply_shortcut_id = i2;
            sendMessageParamsOf.replyQuote = replyQuote;
            sendMessageParamsOf.payStars = j2;
            accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsOf);
        }
        if (botInlineMessage2 instanceof TLRPC.TL_botInlineMessageMediaVenue) {
            TLRPC.TL_messageMediaVenue tL_messageMediaVenue = new TLRPC.TL_messageMediaVenue();
            TLRPC.BotInlineMessage botInlineMessage3 = botInlineResult.send_message;
            tL_messageMediaVenue.geo = botInlineMessage3.geo;
            tL_messageMediaVenue.address = botInlineMessage3.address;
            tL_messageMediaVenue.title = botInlineMessage3.title;
            tL_messageMediaVenue.provider = botInlineMessage3.provider;
            String str3 = botInlineMessage3.venue_type;
            tL_messageMediaVenue.venue_id = str3;
            tL_messageMediaVenue.venue_type = str3;
            if (str3 == null) {
                tL_messageMediaVenue.venue_type = "";
            }
            sendMessageParamsOf = SendMessageParams.of(tL_messageMediaVenue, j, messageObject, messageObject2, botInlineMessage3.reply_markup, map, z, i);
        } else if (botInlineMessage2 instanceof TLRPC.TL_botInlineMessageMediaGeo) {
            if (botInlineMessage2.period == 0 && botInlineMessage2.proximity_notification_radius == 0) {
                tL_messageMediaGeoLive = new TLRPC.TL_messageMediaGeo();
                botInlineMessage = botInlineResult.send_message;
                tL_messageMediaGeoLive.geo = botInlineMessage.geo;
                tL_messageMediaGeoLive.heading = botInlineMessage.heading;
            } else {
                tL_messageMediaGeoLive = new TLRPC.TL_messageMediaGeoLive();
                botInlineMessage = botInlineResult.send_message;
                int i5 = botInlineMessage.period;
                if (i5 == 0) {
                    i5 = 900;
                }
                tL_messageMediaGeoLive.period = i5;
                tL_messageMediaGeoLive.geo = botInlineMessage.geo;
                tL_messageMediaGeoLive.heading = botInlineMessage.heading;
                tL_messageMediaGeoLive.proximity_notification_radius = botInlineMessage.proximity_notification_radius;
            }
            sendMessageParamsOf = SendMessageParams.of(tL_messageMediaGeoLive, j, messageObject, messageObject2, botInlineMessage.reply_markup, map, z, i);
        } else if (botInlineMessage2 instanceof TLRPC.TL_botInlineMessageMediaContact) {
            TLRPC.TL_user tL_user = new TLRPC.TL_user();
            TLRPC.BotInlineMessage botInlineMessage4 = botInlineResult.send_message;
            tL_user.phone = botInlineMessage4.phone_number;
            tL_user.first_name = botInlineMessage4.first_name;
            tL_user.last_name = botInlineMessage4.last_name;
            TLRPC.RestrictionReason restrictionReason = new TLRPC.RestrictionReason();
            restrictionReason.text = botInlineResult.send_message.vcard;
            restrictionReason.platform = "";
            restrictionReason.reason = "";
            tL_user.restriction_reason.add(restrictionReason);
            sendMessageParamsOf = SendMessageParams.of(tL_user, j, messageObject, messageObject2, botInlineResult.send_message.reply_markup, map, z, i);
        } else if (botInlineMessage2 instanceof TLRPC.TL_botInlineMessageMediaInvoice) {
            if (DialogObject.isEncryptedDialog(j)) {
                return;
            }
            TLRPC.TL_botInlineMessageMediaInvoice tL_botInlineMessageMediaInvoice = (TLRPC.TL_botInlineMessageMediaInvoice) botInlineResult.send_message;
            TLRPC.TL_messageMediaInvoice tL_messageMediaInvoice = new TLRPC.TL_messageMediaInvoice();
            tL_messageMediaInvoice.shipping_address_requested = tL_botInlineMessageMediaInvoice.shipping_address_requested;
            tL_messageMediaInvoice.test = tL_botInlineMessageMediaInvoice.test;
            tL_messageMediaInvoice.title = tL_botInlineMessageMediaInvoice.title;
            tL_messageMediaInvoice.description = tL_botInlineMessageMediaInvoice.description;
            TLRPC.WebDocument webDocument = tL_botInlineMessageMediaInvoice.photo;
            if (webDocument != null) {
                tL_messageMediaInvoice.webPhoto = webDocument;
                tL_messageMediaInvoice.flags |= 1;
            }
            tL_messageMediaInvoice.currency = tL_botInlineMessageMediaInvoice.currency;
            tL_messageMediaInvoice.total_amount = tL_botInlineMessageMediaInvoice.total_amount;
            tL_messageMediaInvoice.start_param = "";
            sendMessageParamsOf = SendMessageParams.of(tL_messageMediaInvoice, j, messageObject, messageObject2, botInlineResult.send_message.reply_markup, map, z, i);
        } else {
            if (!(botInlineMessage2 instanceof TLRPC.TL_botInlineMessageMediaWebPage)) {
                return;
            }
            tL_webPagePending = new TLRPC.TL_webPagePending();
            tL_webPagePending.url = ((TLRPC.TL_botInlineMessageMediaWebPage) botInlineMessage2).url;
        }
        sendMessageParamsOf.quick_reply_shortcut = str;
        sendMessageParamsOf.quick_reply_shortcut_id = i2;
        sendMessageParamsOf.replyQuote = replyQuote;
        sendMessageParamsOf.payStars = j2;
        accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsOf);
        TLRPC.BotInlineMessage botInlineMessage5 = botInlineResult.send_message;
        sendMessageParamsOf = SendMessageParams.of(botInlineMessage5.message, j, messageObject, messageObject2, tL_webPagePending, !botInlineMessage5.no_webpage, botInlineMessage5.entities, botInlineMessage5.reply_markup, map, z, i, null, false);
        sendMessageParamsOf.quick_reply_shortcut = str;
        sendMessageParamsOf.quick_reply_shortcut_id = i2;
        sendMessageParamsOf.replyQuote = replyQuote;
        sendMessageParamsOf.payStars = j2;
        accountInstance.getSendMessagesHelper().sendMessage(sendMessageParamsOf);
    }

    public static void prepareSendingDocument(AccountInstance accountInstance, String str, String str2, Uri uri, String str3, String str4, long j, MessageObject messageObject, MessageObject messageObject2, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote, MessageObject messageObject3, boolean z, int i, InputContentInfoCompat inputContentInfoCompat, String str5, int i2, boolean z2) {
        ArrayList arrayList;
        if ((str == null || str2 == null) && uri == null) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (uri != null) {
            arrayList = new ArrayList();
            arrayList.add(uri);
        } else {
            arrayList = null;
        }
        if (str != null) {
            arrayList2.add(str);
            arrayList3.add(str2);
        }
        prepareSendingDocuments(accountInstance, arrayList2, arrayList3, arrayList, str3, str4, j, messageObject, messageObject2, tL_stories$StoryItem, replyQuote, messageObject3, z, i, inputContentInfoCompat, str5, i2, 0L, z2, 0L);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(27:(8:383|64|353|65|(10:67|367|68|69|375|70|71|377|72|73)(1:82)|357|83|(7:85|373|86|87|359|88|89)(1:94))|(28:96|369|97|(26:99|100|(1:102)|361|108|109|150|(0)(0)|(0)(0)|171|174|(0)(0)|203|(0)(0)|(0)(0)|303|(0)|306|(0)|(0)|312|(0)(0)|335|(0)(0)|350|351)|107|361|108|109|150|(0)(0)|(0)(0)|171|174|(0)(0)|203|(0)(0)|(0)(0)|303|(0)|306|(0)|(0)|312|(0)(0)|335|(0)(0)|350|351)(1:106)|105|107|361|108|109|150|(0)(0)|(0)(0)|171|174|(0)(0)|203|(0)(0)|(0)(0)|303|(0)|306|(0)|(0)|312|(0)(0)|335|(0)(0)|350|351) */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x018a, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0271 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0358 A[PHI: r4
      0x0358: PHI (r4v32 java.lang.String) = 
      (r4v25 java.lang.String)
      (r4v26 java.lang.String)
      (r4v27 java.lang.String)
      (r4v28 java.lang.String)
      (r4v29 java.lang.String)
      (r4v30 java.lang.String)
      (r4v33 java.lang.String)
     binds: [B:235:0x039f, B:231:0x0394, B:227:0x0387, B:223:0x037c, B:219:0x036f, B:215:0x0362, B:212:0x0356] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:248:0x03c1  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x04bf  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x04c7  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x04cd  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x04d5  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x04e0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:311:0x04e9  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x04f5  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x0553  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0557 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:349:0x0597  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x01c5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:371:0x01ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:385:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int prepareSendingDocumentInternal(final AccountInstance accountInstance, String str, String str2, Uri uri, String str3, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories$StoryItem tL_stories$StoryItem, final ChatActivity.ReplyQuote replyQuote, final ArrayList<TLRPC.MessageEntity> arrayList, final MessageObject messageObject3, long[] jArr, boolean z, CharSequence charSequence, final boolean z2, final int i, Integer[] numArr, boolean z3, final String str4, final int i2, final long j2, final boolean z4, final long j3, final long j4, final MessageSuggestionParams messageSuggestionParams) throws Throwable {
        String str5;
        String strSubstring;
        File file;
        String str6;
        String str7;
        Object obj;
        String str8;
        int i3;
        String artist;
        String title;
        int iCeil;
        String str9;
        boolean z5;
        Bitmap cover;
        String str10;
        String str11;
        Object obj2;
        TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio;
        String string;
        boolean z6;
        Object obj3;
        String str12;
        boolean z7;
        String str13;
        String str14;
        String str15;
        Bitmap bitmap;
        Object obj4;
        Object obj5;
        long j5;
        int i4;
        final String str16;
        TLRPC.TL_document tL_document;
        final String str17;
        String str18;
        TLRPC.TL_document tL_document2;
        final HashMap map;
        char c;
        boolean z8;
        String mimeTypeFromExtension;
        int i5;
        int i6;
        String str19;
        char c2;
        String str20;
        TLRPC.TL_document tL_document3;
        StringBuilder sb;
        MediaMetadataRetriever mediaMetadataRetriever;
        MediaMetadataRetriever mediaMetadataRetriever2;
        String strExtractMetadata;
        Bitmap bitmap2;
        String str21;
        Throwable th;
        boolean z9;
        String str22;
        String strExtractMetadata2;
        Bitmap bitmapDecodeByteArray;
        boolean z10;
        if ((str == null || str.length() == 0) && uri == null) {
            return 1;
        }
        if (uri != null && AndroidUtilities.isInternalUri(uri)) {
            return 1;
        }
        if (str != null && AndroidUtilities.isInternalUri(Uri.fromFile(new File(str)))) {
            return 1;
        }
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        if (uri != null && str == null) {
            if (checkFileSize(accountInstance, uri)) {
                return 2;
            }
            strSubstring = str3 != null ? singleton.getExtensionFromMimeType(str3) : null;
            if (strSubstring == null) {
                strSubstring = "txt";
                z10 = false;
            } else {
                z10 = true;
            }
            String strCopyFileToCache = MediaController.copyFileToCache(uri, strSubstring);
            if (strCopyFileToCache == null) {
                return 1;
            }
            str5 = strCopyFileToCache;
            if (!z10) {
            }
            file = new File(str5);
            if (!file.exists() && file.length() != 0) {
                if (!FileLoader.checkUploadFileSize(accountInstance.getCurrentAccount(), file.length())) {
                    return 2;
                }
                boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(j);
                String name = file.getName();
                if (strSubstring == null) {
                    int iLastIndexOf = str5.lastIndexOf(46);
                    if (iLastIndexOf != -1) {
                        strSubstring = str5.substring(iLastIndexOf + 1);
                        str6 = strSubstring;
                    } else {
                        str6 = "";
                    }
                } else {
                    str6 = strSubstring;
                }
                String lowerCase = str6.toLowerCase();
                if (lowerCase.equals("mp3") || lowerCase.equals("m4a")) {
                    str7 = name;
                    obj = "opus";
                    str8 = lowerCase;
                    AudioInfo audioInfo = AudioInfo.getAudioInfo(file);
                    if (audioInfo != null) {
                        long duration = audioInfo.getDuration();
                        if (duration != 0) {
                            artist = audioInfo.getArtist();
                            title = audioInfo.getTitle();
                            i3 = (int) (duration / 1000);
                        } else {
                            i3 = 0;
                            artist = null;
                            title = null;
                        }
                        iCeil = i3;
                        str9 = artist;
                        z5 = false;
                        cover = audioInfo.getCover();
                        str10 = title;
                        Bitmap bitmap3 = cover;
                        if (iCeil != 0) {
                            TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio2 = new TLRPC.TL_documentAttributeAudio();
                            str11 = str8;
                            obj2 = "flac";
                            tL_documentAttributeAudio2.duration = iCeil;
                            tL_documentAttributeAudio2.title = str10;
                            tL_documentAttributeAudio2.performer = str9;
                            if (str10 == null) {
                                tL_documentAttributeAudio2.title = "";
                            }
                            int i7 = tL_documentAttributeAudio2.flags;
                            tL_documentAttributeAudio2.flags = i7 | 1;
                            if (str9 == null) {
                                tL_documentAttributeAudio2.performer = "";
                            }
                            tL_documentAttributeAudio2.flags = i7 | 3;
                            if (z5) {
                                tL_documentAttributeAudio2.voice = true;
                            }
                            tL_documentAttributeAudio = tL_documentAttributeAudio2;
                        } else {
                            str11 = str8;
                            obj2 = "flac";
                            tL_documentAttributeAudio = null;
                        }
                        if (str2 == null) {
                            string = str2;
                        } else {
                            if (str2.endsWith("attheme")) {
                                string = str2;
                                z6 = true;
                                if (!z6 || zIsEncryptedDialog) {
                                    obj3 = "mp3";
                                    str12 = "";
                                    z7 = zIsEncryptedDialog;
                                    str13 = string;
                                    str14 = str5;
                                    str15 = str7;
                                    bitmap = bitmap3;
                                    obj4 = obj;
                                    obj5 = obj2;
                                    j5 = 0;
                                    i4 = -1;
                                    str16 = null;
                                    tL_document = null;
                                } else {
                                    Object[] sentFile = accountInstance.getMessagesStorage().getSentFile(string, !zIsEncryptedDialog ? 1 : 4);
                                    if (sentFile != null) {
                                        Object obj6 = sentFile[0];
                                        if (obj6 instanceof TLRPC.TL_document) {
                                            tL_document3 = (TLRPC.TL_document) obj6;
                                            str20 = (String) sentFile[1];
                                        } else {
                                            str20 = null;
                                            tL_document3 = null;
                                        }
                                        if (tL_document3 != null || str5.equals(string) || zIsEncryptedDialog) {
                                            tL_document = tL_document3;
                                            i4 = -1;
                                            str15 = str7;
                                            bitmap = bitmap3;
                                            z7 = zIsEncryptedDialog;
                                            obj3 = "mp3";
                                            str12 = "";
                                            str13 = string;
                                            str14 = str5;
                                            obj4 = obj;
                                            obj5 = obj2;
                                            j5 = 0;
                                            ensureMediaThumbExists(accountInstance, zIsEncryptedDialog, tL_document, str5, null, 0L);
                                            str16 = str20;
                                        } else {
                                            Object[] sentFile2 = accountInstance.getMessagesStorage().getSentFile(str5 + file.length(), !zIsEncryptedDialog ? 1 : 4);
                                            if (sentFile2 != null) {
                                                Object obj7 = sentFile2[0];
                                                if (obj7 instanceof TLRPC.TL_document) {
                                                    str20 = (String) sentFile2[1];
                                                    tL_document = (TLRPC.TL_document) obj7;
                                                }
                                                i4 = -1;
                                                str15 = str7;
                                                bitmap = bitmap3;
                                                z7 = zIsEncryptedDialog;
                                                obj3 = "mp3";
                                                str12 = "";
                                                str13 = string;
                                                str14 = str5;
                                                obj4 = obj;
                                                obj5 = obj2;
                                                j5 = 0;
                                                ensureMediaThumbExists(accountInstance, zIsEncryptedDialog, tL_document, str5, null, 0L);
                                                str16 = str20;
                                            }
                                        }
                                    }
                                }
                                if (tL_document != null) {
                                    TLRPC.TL_document tL_document4 = new TLRPC.TL_document();
                                    tL_document4.id = j5;
                                    tL_document4.date = accountInstance.getConnectionsManager().getCurrentTime();
                                    TLRPC.TL_documentAttributeFilename tL_documentAttributeFilename = new TLRPC.TL_documentAttributeFilename();
                                    tL_documentAttributeFilename.file_name = str15;
                                    tL_document4.file_reference = new byte[0];
                                    tL_document4.attributes.add(tL_documentAttributeFilename);
                                    tL_document4.size = file.length();
                                    tL_document4.dc_id = 0;
                                    if (tL_documentAttributeAudio != null) {
                                        tL_document4.attributes.add(tL_documentAttributeAudio);
                                    }
                                    if (str6.length() != 0) {
                                        switch (str11.hashCode()) {
                                            case 106458:
                                                str19 = str11;
                                                if (!str19.equals("m4a")) {
                                                    c2 = 65535;
                                                    break;
                                                } else {
                                                    c2 = 0;
                                                    break;
                                                }
                                            case 108272:
                                                str19 = str11;
                                                if (str19.equals(obj3)) {
                                                    c2 = 1;
                                                    break;
                                                }
                                                break;
                                            case 109967:
                                                str19 = str11;
                                                if (str19.equals("ogg")) {
                                                    c2 = 2;
                                                    break;
                                                }
                                                break;
                                            case 3145576:
                                                str19 = str11;
                                                if (str19.equals(obj5)) {
                                                    c2 = 3;
                                                    break;
                                                }
                                                break;
                                            case 3418175:
                                                str19 = str11;
                                                if (str19.equals(obj4)) {
                                                    c2 = 4;
                                                    break;
                                                }
                                                break;
                                            case 3645340:
                                                str19 = str11;
                                                if (str19.equals("webp")) {
                                                    c2 = 5;
                                                    break;
                                                }
                                                break;
                                            default:
                                                str19 = str11;
                                                c2 = 65535;
                                                break;
                                        }
                                        switch (c2) {
                                            case 0:
                                                mimeTypeFromExtension = "audio/m4a";
                                                tL_document4.mime_type = mimeTypeFromExtension;
                                                break;
                                            case 1:
                                                mimeTypeFromExtension = "audio/mpeg";
                                                tL_document4.mime_type = mimeTypeFromExtension;
                                                break;
                                            case 2:
                                                mimeTypeFromExtension = "audio/ogg";
                                                tL_document4.mime_type = mimeTypeFromExtension;
                                                break;
                                            case 3:
                                                mimeTypeFromExtension = "audio/flac";
                                                tL_document4.mime_type = mimeTypeFromExtension;
                                                break;
                                            case 4:
                                                mimeTypeFromExtension = "audio/opus";
                                                tL_document4.mime_type = mimeTypeFromExtension;
                                                break;
                                            case 5:
                                                tL_document4.mime_type = "image/webp";
                                                break;
                                            default:
                                                mimeTypeFromExtension = singleton.getMimeTypeFromExtension(str19);
                                                if (mimeTypeFromExtension == null) {
                                                    mimeTypeFromExtension = "application/octet-stream";
                                                }
                                                tL_document4.mime_type = mimeTypeFromExtension;
                                                break;
                                        }
                                        if (!z3 && tL_document4.mime_type.equals("image/gif") && (messageObject3 == null || messageObject3.getGroupIdForUse() == j5)) {
                                            try {
                                                Bitmap bitmapLoadBitmap = ImageLoader.loadBitmap(file.getAbsolutePath(), null, 90.0f, 90.0f, true);
                                                if (bitmapLoadBitmap != null) {
                                                    tL_documentAttributeFilename.file_name = "animation.gif";
                                                    tL_document4.attributes.add(new TLRPC.TL_documentAttributeAnimated());
                                                    TLRPC.PhotoSize photoSizeScaleAndSaveImage = ImageLoader.scaleAndSaveImage(bitmapLoadBitmap, 90.0f, 90.0f, 55, z7);
                                                    if (photoSizeScaleAndSaveImage != null) {
                                                        tL_document4.thumbs.add(photoSizeScaleAndSaveImage);
                                                        tL_document4.flags |= 1;
                                                    }
                                                    bitmapLoadBitmap.recycle();
                                                }
                                            } catch (Exception e) {
                                                FileLog.e(e);
                                            }
                                        }
                                        Bitmap bitmap4 = bitmap;
                                        if (bitmap4 != null) {
                                            TLRPC.PhotoSize photoSizeScaleAndSaveImage2 = ImageLoader.scaleAndSaveImage(bitmap4, 132.0f, 132.0f, 55, z7);
                                            if (photoSizeScaleAndSaveImage2 != null) {
                                                tL_document4.thumbs.add(photoSizeScaleAndSaveImage2);
                                                tL_document4.flags |= 1;
                                            }
                                            bitmap4.recycle();
                                        }
                                        if (tL_document4.mime_type.equals("image/webp") && messageObject3 == null) {
                                            BitmapFactory.Options options = new BitmapFactory.Options();
                                            try {
                                                options.inJustDecodeBounds = true;
                                                str17 = str14;
                                            } catch (Exception e2) {
                                                e = e2;
                                                str17 = str14;
                                            }
                                            try {
                                                BitmapFactory.decodeFile(str17, options);
                                            } catch (Exception e3) {
                                                e = e3;
                                                FileLog.e(e);
                                                i5 = options.outWidth;
                                                if (i5 == 0) {
                                                    str18 = str12;
                                                    tL_document2 = tL_document4;
                                                } else {
                                                    str18 = str12;
                                                    tL_document2 = tL_document4;
                                                }
                                                if (charSequence != null) {
                                                }
                                                map = new HashMap();
                                                if (str13 != null) {
                                                }
                                                if (z3) {
                                                }
                                                if (str16 != null) {
                                                }
                                                int i8 = 0;
                                                if (numArr != null) {
                                                }
                                                z8 = false;
                                                if (z7) {
                                                }
                                                final TLRPC.TL_document tL_document5 = tL_document2;
                                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda106
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        SendMessagesHelper.lambda$prepareSendingDocumentInternal$88(messageObject3, accountInstance, tL_document5, str17, map, str16, j, messageObject, messageObject2, string, arrayList, z2, i, tL_stories$StoryItem, replyQuote, str4, i2, j2, z4, j3, j4, messageSuggestionParams);
                                                    }
                                                });
                                                return 0;
                                            }
                                            i5 = options.outWidth;
                                            if (i5 == 0 && (i6 = options.outHeight) != 0 && i5 <= 800 && i6 <= 800) {
                                                TLRPC.TL_documentAttributeSticker tL_documentAttributeSticker = new TLRPC.TL_documentAttributeSticker();
                                                str18 = str12;
                                                tL_documentAttributeSticker.alt = str18;
                                                tL_documentAttributeSticker.stickerset = new TLRPC.TL_inputStickerSetEmpty();
                                                tL_document4.attributes.add(tL_documentAttributeSticker);
                                                TLRPC.TL_documentAttributeImageSize tL_documentAttributeImageSize = new TLRPC.TL_documentAttributeImageSize();
                                                tL_documentAttributeImageSize.w = options.outWidth;
                                                tL_documentAttributeImageSize.h = options.outHeight;
                                                tL_document4.attributes.add(tL_documentAttributeImageSize);
                                                TLRPC.PhotoSize photoSizeScaleAndSaveImage3 = ImageLoader.scaleAndSaveImage(null, ImageLoader.loadBitmap(file.getAbsolutePath(), null, 400.0f, 400.0f, true), Bitmap.CompressFormat.PNG, false, 400.0f, 400.0f, 100, z7, 0, 0, false);
                                                if (photoSizeScaleAndSaveImage3 != null) {
                                                    tL_document4.thumbs.add(photoSizeScaleAndSaveImage3);
                                                    tL_document4.flags |= 1;
                                                }
                                            }
                                            tL_document2 = tL_document4;
                                        } else {
                                            str17 = str14;
                                        }
                                        str18 = str12;
                                        tL_document2 = tL_document4;
                                    }
                                } else {
                                    str17 = str14;
                                    str18 = str12;
                                    tL_document2 = tL_document;
                                }
                                final String string2 = charSequence != null ? charSequence.toString() : str18;
                                map = new HashMap();
                                if (str13 != null) {
                                    map.put("originalPath", str13);
                                }
                                if (z3 && tL_documentAttributeAudio == null) {
                                    map.put("forceDocument", "1");
                                }
                                if (str16 != null) {
                                    map.put("parentObject", str16);
                                }
                                int i82 = 0;
                                if (numArr != null) {
                                    i82 = numArr[0];
                                    String str23 = tL_document2.mime_type;
                                    if (str23 != null && str23.toLowerCase().startsWith("image/webp")) {
                                        numArr[0] = Integer.valueOf(i4);
                                        c = 0;
                                        z8 = true;
                                        if (z7 && jArr != null) {
                                            if (numArr != null && i82 != null && i82 != numArr[c]) {
                                                finishGroup(accountInstance, jArr[c], i);
                                                jArr[c] = Utilities.random.nextLong();
                                            }
                                            if (!z8) {
                                                map.put("groupId", str18 + jArr[c]);
                                                if (z) {
                                                    map.put("final", "1");
                                                }
                                            }
                                        }
                                        final TLRPC.TL_document tL_document52 = tL_document2;
                                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda106
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                SendMessagesHelper.lambda$prepareSendingDocumentInternal$88(messageObject3, accountInstance, tL_document52, str17, map, str16, j, messageObject, messageObject2, string2, arrayList, z2, i, tL_stories$StoryItem, replyQuote, str4, i2, j2, z4, j3, j4, messageSuggestionParams);
                                            }
                                        });
                                        return 0;
                                    }
                                    String str24 = tL_document2.mime_type;
                                    if ((str24 == null || !(str24.toLowerCase().startsWith("image/") || tL_document2.mime_type.toLowerCase().startsWith("video/mp4"))) && !MessageObject.canPreviewDocument(tL_document2)) {
                                        c = 0;
                                        if (tL_documentAttributeAudio != null) {
                                            numArr[0] = 2;
                                        } else {
                                            numArr[0] = 0;
                                        }
                                    } else {
                                        c = 0;
                                        numArr[0] = 1;
                                    }
                                } else {
                                    c = 0;
                                }
                                z8 = false;
                                if (z7) {
                                }
                                final TLRPC.TL_document tL_document522 = tL_document2;
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda106
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        SendMessagesHelper.lambda$prepareSendingDocumentInternal$88(messageObject3, accountInstance, tL_document522, str17, map, str16, j, messageObject, messageObject2, string2, arrayList, z2, i, tL_stories$StoryItem, replyQuote, str4, i2, j2, z4, j3, j4, messageSuggestionParams);
                                    }
                                });
                                return 0;
                            }
                            if (tL_documentAttributeAudio != null) {
                                sb = new StringBuilder();
                                sb.append(str2);
                                sb.append(MediaStreamTrack.AUDIO_TRACK_KIND);
                            } else {
                                sb = new StringBuilder();
                                sb.append(str2);
                                sb.append("");
                            }
                            sb.append(file.length());
                            string = sb.toString();
                        }
                        z6 = false;
                        if (z6) {
                            obj3 = "mp3";
                            str12 = "";
                            z7 = zIsEncryptedDialog;
                            str13 = string;
                            str14 = str5;
                            str15 = str7;
                            bitmap = bitmap3;
                            obj4 = obj;
                            obj5 = obj2;
                            j5 = 0;
                            i4 = -1;
                            str16 = null;
                            tL_document = null;
                        }
                        if (tL_document != null) {
                        }
                        if (charSequence != null) {
                        }
                        map = new HashMap();
                        if (str13 != null) {
                        }
                        if (z3) {
                            map.put("forceDocument", "1");
                        }
                        if (str16 != null) {
                        }
                        int i822 = 0;
                        if (numArr != null) {
                        }
                        z8 = false;
                        if (z7) {
                        }
                        final TLRPC.TL_document tL_document5222 = tL_document2;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda106
                            @Override // java.lang.Runnable
                            public final void run() {
                                SendMessagesHelper.lambda$prepareSendingDocumentInternal$88(messageObject3, accountInstance, tL_document5222, str17, map, str16, j, messageObject, messageObject2, string2, arrayList, z2, i, tL_stories$StoryItem, replyQuote, str4, i2, j2, z4, j3, j4, messageSuggestionParams);
                            }
                        });
                        return 0;
                    }
                    str10 = null;
                    str9 = null;
                    cover = null;
                    iCeil = 0;
                } else {
                    if (lowerCase.equals("opus") || lowerCase.equals("ogg") || lowerCase.equals("flac")) {
                        try {
                            mediaMetadataRetriever2 = new MediaMetadataRetriever();
                            try {
                                try {
                                    mediaMetadataRetriever2.setDataSource(file.getAbsolutePath());
                                    if (mediaMetadataRetriever2.extractMetadata(9) != null) {
                                        str22 = lowerCase;
                                        try {
                                            iCeil = (int) Math.ceil(Long.parseLong(r0) / 1000.0f);
                                        } catch (Exception e4) {
                                            e = e4;
                                            str7 = name;
                                            obj = "opus";
                                            str8 = str22;
                                            iCeil = 0;
                                            strExtractMetadata = null;
                                            bitmap2 = null;
                                            str21 = null;
                                            try {
                                                FileLog.e(e);
                                                if (mediaMetadataRetriever2 != null) {
                                                }
                                                str10 = strExtractMetadata;
                                                cover = bitmap2;
                                                str9 = str21;
                                                z5 = false;
                                                Bitmap bitmap32 = cover;
                                                if (iCeil != 0) {
                                                }
                                                if (str2 == null) {
                                                }
                                                z6 = false;
                                                if (z6) {
                                                }
                                                if (tL_document != null) {
                                                }
                                                if (charSequence != null) {
                                                }
                                                map = new HashMap();
                                                if (str13 != null) {
                                                }
                                                if (z3) {
                                                }
                                                if (str16 != null) {
                                                }
                                                int i8222 = 0;
                                                if (numArr != null) {
                                                }
                                                z8 = false;
                                                if (z7) {
                                                }
                                                final TLRPC.TL_document tL_document52222 = tL_document2;
                                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda106
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        SendMessagesHelper.lambda$prepareSendingDocumentInternal$88(messageObject3, accountInstance, tL_document52222, str17, map, str16, j, messageObject, messageObject2, string2, arrayList, z2, i, tL_stories$StoryItem, replyQuote, str4, i2, j2, z4, j3, j4, messageSuggestionParams);
                                                    }
                                                });
                                                return 0;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                mediaMetadataRetriever = mediaMetadataRetriever2;
                                                th = th;
                                                mediaMetadataRetriever2 = mediaMetadataRetriever;
                                                if (mediaMetadataRetriever2 == null) {
                                                }
                                            }
                                        }
                                        try {
                                            strExtractMetadata = mediaMetadataRetriever2.extractMetadata(7);
                                            str7 = name;
                                        } catch (Exception e5) {
                                            e = e5;
                                            str7 = name;
                                            obj = "opus";
                                            str8 = str22;
                                            strExtractMetadata = null;
                                            bitmap2 = null;
                                            str21 = null;
                                            FileLog.e(e);
                                            if (mediaMetadataRetriever2 != null) {
                                            }
                                            str10 = strExtractMetadata;
                                            cover = bitmap2;
                                            str9 = str21;
                                            z5 = false;
                                            Bitmap bitmap322 = cover;
                                            if (iCeil != 0) {
                                            }
                                            if (str2 == null) {
                                            }
                                            z6 = false;
                                            if (z6) {
                                            }
                                            if (tL_document != null) {
                                            }
                                            if (charSequence != null) {
                                            }
                                            map = new HashMap();
                                            if (str13 != null) {
                                            }
                                            if (z3) {
                                            }
                                            if (str16 != null) {
                                            }
                                            int i82222 = 0;
                                            if (numArr != null) {
                                            }
                                            z8 = false;
                                            if (z7) {
                                            }
                                            final TLRPC.TL_document tL_document522222 = tL_document2;
                                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda106
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    SendMessagesHelper.lambda$prepareSendingDocumentInternal$88(messageObject3, accountInstance, tL_document522222, str17, map, str16, j, messageObject, messageObject2, string2, arrayList, z2, i, tL_stories$StoryItem, replyQuote, str4, i2, j2, z4, j3, j4, messageSuggestionParams);
                                                }
                                            });
                                            return 0;
                                        }
                                        try {
                                            strExtractMetadata2 = mediaMetadataRetriever2.extractMetadata(2);
                                        } catch (Exception e6) {
                                            e = e6;
                                            obj = "opus";
                                            str8 = str22;
                                            bitmap2 = null;
                                            str21 = null;
                                            FileLog.e(e);
                                            if (mediaMetadataRetriever2 != null) {
                                            }
                                            str10 = strExtractMetadata;
                                            cover = bitmap2;
                                            str9 = str21;
                                            z5 = false;
                                            Bitmap bitmap3222 = cover;
                                            if (iCeil != 0) {
                                            }
                                            if (str2 == null) {
                                            }
                                            z6 = false;
                                            if (z6) {
                                            }
                                            if (tL_document != null) {
                                            }
                                            if (charSequence != null) {
                                            }
                                            map = new HashMap();
                                            if (str13 != null) {
                                            }
                                            if (z3) {
                                            }
                                            if (str16 != null) {
                                            }
                                            int i822222 = 0;
                                            if (numArr != null) {
                                            }
                                            z8 = false;
                                            if (z7) {
                                            }
                                            final TLRPC.TL_document tL_document5222222 = tL_document2;
                                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda106
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    SendMessagesHelper.lambda$prepareSendingDocumentInternal$88(messageObject3, accountInstance, tL_document5222222, str17, map, str16, j, messageObject, messageObject2, string2, arrayList, z2, i, tL_stories$StoryItem, replyQuote, str4, i2, j2, z4, j3, j4, messageSuggestionParams);
                                                }
                                            });
                                            return 0;
                                        }
                                    } else {
                                        str7 = name;
                                        str22 = lowerCase;
                                        strExtractMetadata2 = null;
                                        iCeil = 0;
                                        strExtractMetadata = null;
                                    }
                                    try {
                                        byte[] embeddedPicture = mediaMetadataRetriever2.getEmbeddedPicture();
                                        if (embeddedPicture != null) {
                                            str21 = strExtractMetadata2;
                                            try {
                                                obj = "opus";
                                                try {
                                                    bitmapDecodeByteArray = BitmapFactory.decodeByteArray(embeddedPicture, 0, embeddedPicture.length);
                                                } catch (Exception e7) {
                                                    e = e7;
                                                    str8 = str22;
                                                    bitmap2 = null;
                                                    FileLog.e(e);
                                                    if (mediaMetadataRetriever2 != null) {
                                                        try {
                                                            mediaMetadataRetriever2.release();
                                                        } catch (Exception e8) {
                                                            e = e8;
                                                            z9 = false;
                                                            FileLog.e(e);
                                                            str10 = strExtractMetadata;
                                                            str9 = str21;
                                                            z5 = z9;
                                                            cover = bitmap2;
                                                            Bitmap bitmap32222 = cover;
                                                            if (iCeil != 0) {
                                                            }
                                                            if (str2 == null) {
                                                            }
                                                            z6 = false;
                                                            if (z6) {
                                                            }
                                                            if (tL_document != null) {
                                                            }
                                                            if (charSequence != null) {
                                                            }
                                                            map = new HashMap();
                                                            if (str13 != null) {
                                                            }
                                                            if (z3) {
                                                            }
                                                            if (str16 != null) {
                                                            }
                                                            int i8222222 = 0;
                                                            if (numArr != null) {
                                                            }
                                                            z8 = false;
                                                            if (z7) {
                                                            }
                                                            final TLRPC.TL_document tL_document52222222 = tL_document2;
                                                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda106
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    SendMessagesHelper.lambda$prepareSendingDocumentInternal$88(messageObject3, accountInstance, tL_document52222222, str17, map, str16, j, messageObject, messageObject2, string2, arrayList, z2, i, tL_stories$StoryItem, replyQuote, str4, i2, j2, z4, j3, j4, messageSuggestionParams);
                                                                }
                                                            });
                                                            return 0;
                                                        }
                                                    }
                                                    str10 = strExtractMetadata;
                                                    cover = bitmap2;
                                                    str9 = str21;
                                                    z5 = false;
                                                    Bitmap bitmap322222 = cover;
                                                    if (iCeil != 0) {
                                                    }
                                                    if (str2 == null) {
                                                    }
                                                    z6 = false;
                                                    if (z6) {
                                                    }
                                                    if (tL_document != null) {
                                                    }
                                                    if (charSequence != null) {
                                                    }
                                                    map = new HashMap();
                                                    if (str13 != null) {
                                                    }
                                                    if (z3) {
                                                    }
                                                    if (str16 != null) {
                                                    }
                                                    int i82222222 = 0;
                                                    if (numArr != null) {
                                                    }
                                                    z8 = false;
                                                    if (z7) {
                                                    }
                                                    final TLRPC.TL_document tL_document522222222 = tL_document2;
                                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda106
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            SendMessagesHelper.lambda$prepareSendingDocumentInternal$88(messageObject3, accountInstance, tL_document522222222, str17, map, str16, j, messageObject, messageObject2, string2, arrayList, z2, i, tL_stories$StoryItem, replyQuote, str4, i2, j2, z4, j3, j4, messageSuggestionParams);
                                                        }
                                                    });
                                                    return 0;
                                                }
                                            } catch (Exception e9) {
                                                e = e9;
                                                obj = "opus";
                                                str8 = str22;
                                                bitmap2 = null;
                                                FileLog.e(e);
                                                if (mediaMetadataRetriever2 != null) {
                                                }
                                                str10 = strExtractMetadata;
                                                cover = bitmap2;
                                                str9 = str21;
                                                z5 = false;
                                                Bitmap bitmap3222222 = cover;
                                                if (iCeil != 0) {
                                                }
                                                if (str2 == null) {
                                                }
                                                z6 = false;
                                                if (z6) {
                                                }
                                                if (tL_document != null) {
                                                }
                                                if (charSequence != null) {
                                                }
                                                map = new HashMap();
                                                if (str13 != null) {
                                                }
                                                if (z3) {
                                                }
                                                if (str16 != null) {
                                                }
                                                int i822222222 = 0;
                                                if (numArr != null) {
                                                }
                                                z8 = false;
                                                if (z7) {
                                                }
                                                final TLRPC.TL_document tL_document5222222222 = tL_document2;
                                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda106
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        SendMessagesHelper.lambda$prepareSendingDocumentInternal$88(messageObject3, accountInstance, tL_document5222222222, str17, map, str16, j, messageObject, messageObject2, string2, arrayList, z2, i, tL_stories$StoryItem, replyQuote, str4, i2, j2, z4, j3, j4, messageSuggestionParams);
                                                    }
                                                });
                                                return 0;
                                            }
                                        } else {
                                            str21 = strExtractMetadata2;
                                            obj = "opus";
                                            bitmapDecodeByteArray = null;
                                        }
                                    } catch (Exception e10) {
                                        e = e10;
                                        str21 = strExtractMetadata2;
                                    }
                                } catch (Exception e11) {
                                    e = e11;
                                    str7 = name;
                                    obj = "opus";
                                    str8 = lowerCase;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                if (mediaMetadataRetriever2 == null) {
                                    throw th;
                                }
                                try {
                                    mediaMetadataRetriever2.release();
                                    throw th;
                                } catch (Exception e12) {
                                    FileLog.e(e12);
                                    throw th;
                                }
                            }
                        } catch (Exception e13) {
                            e = e13;
                            str7 = name;
                            obj = "opus";
                            str8 = lowerCase;
                            mediaMetadataRetriever2 = null;
                        } catch (Throwable th4) {
                            th = th4;
                            mediaMetadataRetriever = null;
                            th = th;
                            mediaMetadataRetriever2 = mediaMetadataRetriever;
                            if (mediaMetadataRetriever2 == null) {
                            }
                        }
                        if (messageObject3 == null) {
                            str8 = str22;
                            try {
                            } catch (Exception e14) {
                                e = e14;
                                bitmap2 = bitmapDecodeByteArray;
                                FileLog.e(e);
                                if (mediaMetadataRetriever2 != null) {
                                }
                                str10 = strExtractMetadata;
                                cover = bitmap2;
                                str9 = str21;
                                z5 = false;
                                Bitmap bitmap32222222 = cover;
                                if (iCeil != 0) {
                                }
                                if (str2 == null) {
                                }
                                z6 = false;
                                if (z6) {
                                }
                                if (tL_document != null) {
                                }
                                if (charSequence != null) {
                                }
                                map = new HashMap();
                                if (str13 != null) {
                                }
                                if (z3) {
                                }
                                if (str16 != null) {
                                }
                                int i8222222222 = 0;
                                if (numArr != null) {
                                }
                                z8 = false;
                                if (z7) {
                                }
                                final TLRPC.TL_document tL_document52222222222 = tL_document2;
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda106
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        SendMessagesHelper.lambda$prepareSendingDocumentInternal$88(messageObject3, accountInstance, tL_document52222222222, str17, map, str16, j, messageObject, messageObject2, string2, arrayList, z2, i, tL_stories$StoryItem, replyQuote, str4, i2, j2, z4, j3, j4, messageSuggestionParams);
                                    }
                                });
                                return 0;
                            }
                            if (str8.equals("ogg")) {
                                bitmap2 = bitmapDecodeByteArray;
                                z9 = MediaController.isOpusFile(file.getAbsolutePath()) == 1;
                                mediaMetadataRetriever2.release();
                                str10 = strExtractMetadata;
                                str9 = str21;
                                z5 = z9;
                                cover = bitmap2;
                                Bitmap bitmap322222222 = cover;
                                if (iCeil != 0) {
                                }
                                if (str2 == null) {
                                }
                                z6 = false;
                                if (z6) {
                                }
                                if (tL_document != null) {
                                }
                                if (charSequence != null) {
                                }
                                map = new HashMap();
                                if (str13 != null) {
                                }
                                if (z3) {
                                }
                                if (str16 != null) {
                                }
                                int i82222222222 = 0;
                                if (numArr != null) {
                                }
                                z8 = false;
                                if (z7) {
                                }
                                final TLRPC.TL_document tL_document522222222222 = tL_document2;
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda106
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        SendMessagesHelper.lambda$prepareSendingDocumentInternal$88(messageObject3, accountInstance, tL_document522222222222, str17, map, str16, j, messageObject, messageObject2, string2, arrayList, z2, i, tL_stories$StoryItem, replyQuote, str4, i2, j2, z4, j3, j4, messageSuggestionParams);
                                    }
                                });
                                return 0;
                            }
                            mediaMetadataRetriever2.release();
                            str10 = strExtractMetadata;
                            str9 = str21;
                            z5 = z9;
                            cover = bitmap2;
                            Bitmap bitmap3222222222 = cover;
                            if (iCeil != 0) {
                            }
                            if (str2 == null) {
                            }
                            z6 = false;
                            if (z6) {
                            }
                            if (tL_document != null) {
                            }
                            if (charSequence != null) {
                            }
                            map = new HashMap();
                            if (str13 != null) {
                            }
                            if (z3) {
                            }
                            if (str16 != null) {
                            }
                            int i822222222222 = 0;
                            if (numArr != null) {
                            }
                            z8 = false;
                            if (z7) {
                            }
                            final TLRPC.TL_document tL_document5222222222222 = tL_document2;
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda106
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SendMessagesHelper.lambda$prepareSendingDocumentInternal$88(messageObject3, accountInstance, tL_document5222222222222, str17, map, str16, j, messageObject, messageObject2, string2, arrayList, z2, i, tL_stories$StoryItem, replyQuote, str4, i2, j2, z4, j3, j4, messageSuggestionParams);
                                }
                            });
                            return 0;
                        }
                        str8 = str22;
                        bitmap2 = bitmapDecodeByteArray;
                        mediaMetadataRetriever2.release();
                        str10 = strExtractMetadata;
                        str9 = str21;
                        z5 = z9;
                        cover = bitmap2;
                        Bitmap bitmap32222222222 = cover;
                        if (iCeil != 0) {
                        }
                        if (str2 == null) {
                        }
                        z6 = false;
                        if (z6) {
                        }
                        if (tL_document != null) {
                        }
                        if (charSequence != null) {
                        }
                        map = new HashMap();
                        if (str13 != null) {
                        }
                        if (z3) {
                        }
                        if (str16 != null) {
                        }
                        int i8222222222222 = 0;
                        if (numArr != null) {
                        }
                        z8 = false;
                        if (z7) {
                        }
                        final TLRPC.TL_document tL_document52222222222222 = tL_document2;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda106
                            @Override // java.lang.Runnable
                            public final void run() {
                                SendMessagesHelper.lambda$prepareSendingDocumentInternal$88(messageObject3, accountInstance, tL_document52222222222222, str17, map, str16, j, messageObject, messageObject2, string2, arrayList, z2, i, tL_stories$StoryItem, replyQuote, str4, i2, j2, z4, j3, j4, messageSuggestionParams);
                            }
                        });
                        return 0;
                    }
                    str7 = name;
                    obj = "opus";
                    str8 = lowerCase;
                    str10 = null;
                    str9 = null;
                    cover = null;
                    iCeil = 0;
                }
                z5 = false;
                Bitmap bitmap322222222222 = cover;
                if (iCeil != 0) {
                }
                if (str2 == null) {
                }
                z6 = false;
                if (z6) {
                }
                if (tL_document != null) {
                }
                if (charSequence != null) {
                }
                map = new HashMap();
                if (str13 != null) {
                }
                if (z3) {
                }
                if (str16 != null) {
                }
                int i82222222222222 = 0;
                if (numArr != null) {
                }
                z8 = false;
                if (z7) {
                }
                final TLRPC.TL_document tL_document522222222222222 = tL_document2;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda106
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.lambda$prepareSendingDocumentInternal$88(messageObject3, accountInstance, tL_document522222222222222, str17, map, str16, j, messageObject, messageObject2, string2, arrayList, z2, i, tL_stories$StoryItem, replyQuote, str4, i2, j2, z4, j3, j4, messageSuggestionParams);
                    }
                });
                return 0;
            }
        }
        str5 = str;
        strSubstring = null;
        file = new File(str5);
        return !file.exists() ? 1 : 1;
    }

    public static void prepareSendingDocuments(AccountInstance accountInstance, ArrayList<String> arrayList, ArrayList<String> arrayList2, ArrayList<Uri> arrayList3, String str, String str2, long j, MessageObject messageObject, MessageObject messageObject2, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote, MessageObject messageObject3, boolean z, int i, InputContentInfoCompat inputContentInfoCompat, String str3, int i2, long j2, boolean z2, long j3) {
        prepareSendingDocuments(accountInstance, arrayList, arrayList2, arrayList3, str, str2, j, messageObject, messageObject2, tL_stories$StoryItem, replyQuote, messageObject3, z, i, inputContentInfoCompat, str3, i2, j2, z2, j3, 0L, null);
    }

    public static void prepareSendingDocuments(final AccountInstance accountInstance, final ArrayList<String> arrayList, final ArrayList<String> arrayList2, final ArrayList<Uri> arrayList3, final String str, final String str2, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories$StoryItem tL_stories$StoryItem, final ChatActivity.ReplyQuote replyQuote, final MessageObject messageObject3, final boolean z, final int i, final InputContentInfoCompat inputContentInfoCompat, final String str3, final int i2, final long j2, final boolean z2, final long j3, final long j4, final MessageSuggestionParams messageSuggestionParams) {
        if (arrayList == null && arrayList2 == null && arrayList3 == null) {
            return;
        }
        if (arrayList == null || arrayList2 == null || arrayList.size() == arrayList2.size()) {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    SendMessagesHelper.lambda$prepareSendingDocuments$92(j, arrayList, str, accountInstance, i, arrayList2, str2, messageObject, messageObject2, tL_stories$StoryItem, replyQuote, messageObject3, z, inputContentInfoCompat, str3, i2, j2, z2, j3, j4, messageSuggestionParams, arrayList3);
                }
            });
        }
    }

    public static void prepareSendingMedia(final AccountInstance accountInstance, final ArrayList<SendingMediaInfo> arrayList, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories$StoryItem tL_stories$StoryItem, final ChatActivity.ReplyQuote replyQuote, final boolean z, boolean z2, final MessageObject messageObject3, final boolean z3, final int i, int i2, final boolean z4, final InputContentInfoCompat inputContentInfoCompat, final String str, final int i3, final long j2, final boolean z5, final long j3, final long j4, final MessageSuggestionParams messageSuggestionParams) {
        final boolean z6;
        if (arrayList.isEmpty()) {
            return;
        }
        int size = arrayList.size();
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                z6 = z2;
                break;
            } else {
                if (arrayList.get(i4).ttl > 0) {
                    z6 = false;
                    break;
                }
                i4++;
            }
        }
        mediaSendQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda68
            @Override // java.lang.Runnable
            public final void run() throws InterruptedException, IOException {
                SendMessagesHelper.lambda$prepareSendingMedia$106(arrayList, j, z, z6, accountInstance, messageObject3, messageObject, messageObject2, z3, i, tL_stories$StoryItem, replyQuote, str, i3, j2, z5, j3, j4, messageSuggestionParams, inputContentInfoCompat, z4);
            }
        });
    }

    public static void prepareSendingPhoto(AccountInstance accountInstance, String str, Uri uri, long j, MessageObject messageObject, MessageObject messageObject2, ChatActivity.ReplyQuote replyQuote, CharSequence charSequence, ArrayList<TLRPC.MessageEntity> arrayList, ArrayList<TLRPC.InputDocument> arrayList2, InputContentInfoCompat inputContentInfoCompat, int i, MessageObject messageObject3, boolean z, int i2, int i3, String str2, int i4) {
        prepareSendingPhoto(accountInstance, str, null, uri, j, messageObject, messageObject2, null, null, arrayList, arrayList2, inputContentInfoCompat, i, messageObject3, null, z, i2, i3, false, charSequence, str2, i4, 0L, 0L, 0L, null);
    }

    public static void prepareSendingPhoto(AccountInstance accountInstance, String str, String str2, Uri uri, long j, MessageObject messageObject, MessageObject messageObject2, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote, ArrayList<TLRPC.MessageEntity> arrayList, ArrayList<TLRPC.InputDocument> arrayList2, InputContentInfoCompat inputContentInfoCompat, int i, MessageObject messageObject3, VideoEditedInfo videoEditedInfo, boolean z, int i2, int i3, boolean z2, CharSequence charSequence, String str3, int i4, long j2, long j3) {
        prepareSendingPhoto(accountInstance, str, str2, uri, j, messageObject, messageObject2, tL_stories$StoryItem, replyQuote, arrayList, arrayList2, inputContentInfoCompat, i, messageObject3, videoEditedInfo, z, i2, i3, z2, charSequence, str3, i4, j2, j3, 0L, null);
    }

    public static void prepareSendingPhoto(AccountInstance accountInstance, String str, String str2, Uri uri, long j, MessageObject messageObject, MessageObject messageObject2, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote, ArrayList<TLRPC.MessageEntity> arrayList, ArrayList<TLRPC.InputDocument> arrayList2, InputContentInfoCompat inputContentInfoCompat, int i, MessageObject messageObject3, VideoEditedInfo videoEditedInfo, boolean z, int i2, int i3, boolean z2, CharSequence charSequence, String str3, int i4, long j2, long j3, long j4, MessageSuggestionParams messageSuggestionParams) {
        SendingMediaInfo sendingMediaInfo = new SendingMediaInfo();
        sendingMediaInfo.path = str;
        sendingMediaInfo.thumbPath = str2;
        sendingMediaInfo.uri = uri;
        if (charSequence != null) {
            sendingMediaInfo.caption = charSequence.toString();
        }
        sendingMediaInfo.entities = arrayList;
        sendingMediaInfo.ttl = i;
        if (arrayList2 != null) {
            sendingMediaInfo.masks = new ArrayList<>(arrayList2);
        }
        sendingMediaInfo.videoEditedInfo = videoEditedInfo;
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(sendingMediaInfo);
        prepareSendingMedia(accountInstance, arrayList3, j, messageObject, messageObject2, null, replyQuote, z2, false, messageObject3, z, i2, i3, false, inputContentInfoCompat, str3, i4, j2, false, j3, j4, messageSuggestionParams);
    }

    public static void prepareSendingText(final AccountInstance accountInstance, final String str, final long j, final long j2, final boolean z, final int i, final long j3) {
        accountInstance.getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.lambda$prepareSendingText$100(str, j2, accountInstance, j, z, i, j3);
            }
        });
    }

    public static void prepareSendingText(AccountInstance accountInstance, String str, long j, boolean z, int i, long j2) {
        prepareSendingText(accountInstance, str, j, 0L, z, i, j2);
    }

    public static void prepareSendingVideo(AccountInstance accountInstance, String str, VideoEditedInfo videoEditedInfo, String str2, TLRPC.Photo photo, long j, MessageObject messageObject, MessageObject messageObject2, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote, ArrayList<TLRPC.MessageEntity> arrayList, int i, MessageObject messageObject3, boolean z, int i2, boolean z2, boolean z3, CharSequence charSequence, String str3, int i3, long j2, long j3) {
        prepareSendingVideo(accountInstance, str, videoEditedInfo, str2, photo, j, messageObject, messageObject2, tL_stories$StoryItem, replyQuote, arrayList, i, messageObject3, z, i2, z2, z3, charSequence, str3, i3, j2, j3, 0L, null);
    }

    public static void prepareSendingVideo(final AccountInstance accountInstance, final String str, final VideoEditedInfo videoEditedInfo, final String str2, final TLRPC.Photo photo, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories$StoryItem tL_stories$StoryItem, final ChatActivity.ReplyQuote replyQuote, final ArrayList<TLRPC.MessageEntity> arrayList, final int i, final MessageObject messageObject3, final boolean z, final int i2, final boolean z2, final boolean z3, final CharSequence charSequence, final String str3, final int i3, final long j2, final long j3, final long j4, final MessageSuggestionParams messageSuggestionParams) {
        if (str == null || str.length() == 0) {
            return;
        }
        new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                SendMessagesHelper.lambda$prepareSendingVideo$108(videoEditedInfo, str, j, i, accountInstance, str2, photo, charSequence, messageObject3, z3, messageObject, messageObject2, arrayList, z, i2, tL_stories$StoryItem, replyQuote, i3, str3, j2, j3, j4, messageSuggestionParams, z2);
            }
        }).start();
    }

    private void putToDelayedMessages(String str, DelayedMessage delayedMessage) {
        ArrayList<DelayedMessage> arrayList = this.delayedMessages.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.delayedMessages.put(str, arrayList);
        }
        arrayList.add(delayedMessage);
    }

    private boolean removeCoverFromRequest(TLObject tLObject) {
        TLRPC.InputMedia inputMedia;
        TLRPC.InputMedia inputMedia2;
        int i;
        if (tLObject instanceof TLRPC.TL_messages_sendMedia) {
            inputMedia = ((TLRPC.TL_messages_sendMedia) tLObject).media;
            if (!(inputMedia instanceof TLRPC.TL_inputMediaUploadedDocument)) {
                if (!(inputMedia instanceof TLRPC.TL_inputMediaDocument)) {
                    if (!(inputMedia instanceof TLRPC.TL_inputMediaDocumentExternal)) {
                        return false;
                    }
                    inputMedia2 = (TLRPC.TL_inputMediaDocumentExternal) inputMedia;
                    inputMedia2.video_cover = null;
                    i = inputMedia2.flags & (-5);
                }
                inputMedia2 = (TLRPC.TL_inputMediaDocument) inputMedia;
                inputMedia2.video_cover = null;
                i = inputMedia2.flags & (-9);
            }
            inputMedia2 = (TLRPC.TL_inputMediaUploadedDocument) inputMedia;
            inputMedia2.video_cover = null;
            i = inputMedia2.flags & (-65);
        } else {
            if (!(tLObject instanceof TLRPC.TL_messages_editMessage)) {
                return false;
            }
            inputMedia = ((TLRPC.TL_messages_editMessage) tLObject).media;
            if (!(inputMedia instanceof TLRPC.TL_inputMediaUploadedDocument)) {
                if (!(inputMedia instanceof TLRPC.TL_inputMediaDocument)) {
                    if (!(inputMedia instanceof TLRPC.TL_inputMediaDocumentExternal)) {
                        return false;
                    }
                    inputMedia2 = (TLRPC.TL_inputMediaDocumentExternal) inputMedia;
                    inputMedia2.video_cover = null;
                    i = inputMedia2.flags & (-5);
                }
                inputMedia2 = (TLRPC.TL_inputMediaDocument) inputMedia;
                inputMedia2.video_cover = null;
                i = inputMedia2.flags & (-9);
            }
            inputMedia2 = (TLRPC.TL_inputMediaUploadedDocument) inputMedia;
            inputMedia2.video_cover = null;
            i = inputMedia2.flags & (-65);
        }
        inputMedia2.flags = i;
        return true;
    }

    private void revertEditingMessageObject(MessageObject messageObject) {
        messageObject.cancelEditing = true;
        TLRPC.Message message = messageObject.messageOwner;
        message.media = messageObject.previousMedia;
        message.message = messageObject.previousMessage;
        ArrayList<TLRPC.MessageEntity> arrayList = messageObject.previousMessageEntities;
        message.entities = arrayList;
        message.attachPath = messageObject.previousAttachPath;
        message.send_state = 0;
        message.flags = arrayList != null ? message.flags | 128 : message.flags & (-129);
        messageObject.previousMedia = null;
        messageObject.previousMessage = null;
        messageObject.previousMessageEntities = null;
        messageObject.previousAttachPath = null;
        messageObject.videoEditedInfo = null;
        messageObject.type = -1;
        messageObject.setType();
        messageObject.caption = null;
        if (messageObject.type != 0) {
            messageObject.generateCaption();
        } else {
            messageObject.resetLayout();
        }
        ArrayList<TLRPC.Message> arrayList2 = new ArrayList<>();
        arrayList2.add(messageObject.messageOwner);
        getMessagesStorage().putMessages(arrayList2, false, true, false, 0, messageObject.scheduled ? 1 : 0, 0L);
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(messageObject);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.replaceMessagesObjects, Long.valueOf(messageObject.getDialogId()), arrayList3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendLocation(Location location) {
        TLRPC.TL_messageMediaGeo tL_messageMediaGeo = new TLRPC.TL_messageMediaGeo();
        TLRPC.TL_geoPoint tL_geoPoint = new TLRPC.TL_geoPoint();
        tL_messageMediaGeo.geo = tL_geoPoint;
        tL_geoPoint.lat = AndroidUtilities.fixLocationCoord(location.getLatitude());
        tL_messageMediaGeo.geo._long = AndroidUtilities.fixLocationCoord(location.getLongitude());
        Iterator<Map.Entry<String, MessageObject>> it = this.waitingForLocation.entrySet().iterator();
        while (it.hasNext()) {
            MessageObject value = it.next().getValue();
            sendMessage(SendMessageParams.of((TLRPC.MessageMedia) tL_messageMediaGeo, value.getDialogId(), value, (MessageObject) null, (TLRPC.ReplyMarkup) null, (HashMap<String, String>) null, true, 0));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0217  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void sendReadyToSendGroup(DelayedMessage delayedMessage, boolean z, boolean z2) {
        DelayedMessage delayedMessageFindMaxDelayedMessageForMessageId;
        TLObject tLObject;
        DelayedMessage delayedMessageFindMaxDelayedMessageForMessageId2;
        ArrayList<MessageObject> arrayList;
        if (delayedMessage.messageObjects.isEmpty()) {
            delayedMessage.markAsError();
            return;
        }
        String str = "group_" + delayedMessage.groupId;
        int i = delayedMessage.finalGroupMessage;
        ArrayList<MessageObject> arrayList2 = delayedMessage.messageObjects;
        int i2 = 1;
        if (i != arrayList2.get(arrayList2.size() - 1).getId()) {
            if (z) {
                if (BuildVars.DEBUG_VERSION) {
                    FileLog.d("final message not added, add");
                }
                putToDelayedMessages(str, delayedMessage);
                return;
            } else {
                if (BuildVars.DEBUG_VERSION) {
                    FileLog.d("final message not added");
                    return;
                }
                return;
            }
        }
        int i3 = 0;
        if (z) {
            this.delayedMessages.remove(str);
            if (!delayedMessage.scheduled) {
                MessageObject messageObject = delayedMessage.obj;
                i2 = ((messageObject == null || !messageObject.isQuickReply()) && ((arrayList = delayedMessage.messageObjects) == null || arrayList.isEmpty() || !delayedMessage.messageObjects.get(0).isQuickReply())) ? 0 : 5;
            }
            if (delayedMessage.paidMedia) {
                ArrayList<MessageObject> arrayList3 = new ArrayList<>();
                arrayList3.add(delayedMessage.messageObjects.get(0));
                ArrayList<TLRPC.Message> arrayList4 = new ArrayList<>();
                arrayList4.add(delayedMessage.messages.get(0));
                getMessagesStorage().putMessages(arrayList4, false, true, false, 0, i2, 0L);
                getMessagesController().updateInterfaceWithMessages(delayedMessage.peer, arrayList3, i2);
            } else {
                getMessagesStorage().putMessages(delayedMessage.messages, false, true, false, 0, i2, 0L);
                getMessagesController().updateInterfaceWithMessages(delayedMessage.peer, delayedMessage.messageObjects, i2);
            }
            if (!delayedMessage.scheduled) {
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
            }
            if (BuildVars.DEBUG_VERSION) {
                FileLog.d("add message");
            }
        }
        TLObject tLObject2 = delayedMessage.sendRequest;
        if (tLObject2 instanceof TLRPC.TL_messages_sendMultiMedia) {
            TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia = (TLRPC.TL_messages_sendMultiMedia) tLObject2;
            while (i3 < tL_messages_sendMultiMedia.multi_media.size()) {
                TLRPC.InputMedia inputMedia = ((TLRPC.TL_inputSingleMedia) tL_messages_sendMultiMedia.multi_media.get(i3)).media;
                if ((inputMedia instanceof TLRPC.TL_inputMediaUploadedPhoto) || (inputMedia instanceof TLRPC.TL_inputMediaUploadedDocument)) {
                    if (BuildVars.DEBUG_VERSION) {
                        FileLog.d("multi media not ready");
                        return;
                    }
                    return;
                }
                if ((inputMedia instanceof TLRPC.TL_inputMediaDocument) && i3 < delayedMessage.messageObjects.size()) {
                    MessageObject messageObject2 = delayedMessage.messageObjects.get(i3);
                    String str2 = messageObject2.messageOwner.attachPath;
                    if (str2 == null) {
                        str2 = FileLoader.getDirectory(4) + "/" + messageObject2.getDocument().id + ".mp4";
                    }
                    if (delayedMessage.extraHashMap.containsKey(str2 + "_ct") && inputMedia.video_cover == null) {
                        if (BuildVars.DEBUG_VERSION) {
                            FileLog.d("cover media not ready");
                            return;
                        }
                        return;
                    }
                }
                i3++;
            }
            if (z2 && (delayedMessageFindMaxDelayedMessageForMessageId2 = findMaxDelayedMessageForMessageId(delayedMessage.finalGroupMessage, delayedMessage.peer)) != null) {
                delayedMessageFindMaxDelayedMessageForMessageId2.addDelayedRequest(delayedMessage.sendRequest, delayedMessage.messageObjects, delayedMessage.originalPaths, delayedMessage.parentObjects, delayedMessage, delayedMessage.scheduled);
                ArrayList<DelayedMessageSendAfterRequest> arrayList5 = delayedMessage.requests;
                if (arrayList5 != null) {
                    delayedMessageFindMaxDelayedMessageForMessageId2.requests.addAll(arrayList5);
                }
                if (BuildVars.DEBUG_VERSION) {
                    FileLog.d("has maxDelayedMessage, delay");
                    return;
                }
                return;
            }
        } else if (tLObject2 instanceof TLRPC.TL_messages_sendMedia) {
            TLRPC.InputMedia inputMedia2 = ((TLRPC.TL_messages_sendMedia) tLObject2).media;
            if (inputMedia2 instanceof TLRPC.TL_inputMediaPaidMedia) {
                TLRPC.TL_inputMediaPaidMedia tL_inputMediaPaidMedia = (TLRPC.TL_inputMediaPaidMedia) inputMedia2;
                while (i3 < tL_inputMediaPaidMedia.extended_media.size()) {
                    TLRPC.InputMedia inputMedia3 = (TLRPC.InputMedia) tL_inputMediaPaidMedia.extended_media.get(i3);
                    if ((inputMedia3 instanceof TLRPC.TL_inputMediaUploadedPhoto) || (inputMedia3 instanceof TLRPC.TL_inputMediaUploadedDocument)) {
                        if (BuildVars.DEBUG_VERSION) {
                            FileLog.d("multi media not ready");
                            return;
                        }
                        return;
                    }
                    i3++;
                }
                if (z2 && (delayedMessageFindMaxDelayedMessageForMessageId = findMaxDelayedMessageForMessageId(delayedMessage.finalGroupMessage, delayedMessage.peer)) != null) {
                    delayedMessageFindMaxDelayedMessageForMessageId.addDelayedRequest(delayedMessage.sendRequest, delayedMessage.messageObjects, delayedMessage.originalPaths, delayedMessage.parentObjects, delayedMessage, delayedMessage.scheduled);
                    ArrayList<DelayedMessageSendAfterRequest> arrayList6 = delayedMessage.requests;
                    if (arrayList6 != null) {
                        delayedMessageFindMaxDelayedMessageForMessageId.requests.addAll(arrayList6);
                    }
                    if (BuildVars.DEBUG_VERSION) {
                        FileLog.d("has maxDelayedMessage, delay");
                        return;
                    }
                    return;
                }
            } else {
                TLRPC.TL_messages_sendEncryptedMultiMedia tL_messages_sendEncryptedMultiMedia = (TLRPC.TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest;
                while (i3 < tL_messages_sendEncryptedMultiMedia.files.size()) {
                    if (((TLRPC.InputEncryptedFile) tL_messages_sendEncryptedMultiMedia.files.get(i3)) instanceof TLRPC.TL_inputEncryptedFile) {
                        return;
                    } else {
                        i3++;
                    }
                }
            }
        }
        TLObject tLObject3 = delayedMessage.sendRequest;
        if (tLObject3 instanceof TLRPC.TL_messages_sendMultiMedia) {
            tLObject = (TLRPC.TL_messages_sendMultiMedia) tLObject3;
        } else {
            if (!(tLObject3 instanceof TLRPC.TL_messages_sendMedia)) {
                getSecretChatHelper().performSendEncryptedRequest((TLRPC.TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest, delayedMessage);
                delayedMessage.sendDelayedRequests();
            }
            tLObject = (TLRPC.TL_messages_sendMedia) tLObject3;
        }
        lambda$performSendMessageRequestMulti$50(tLObject, delayedMessage.messageObjects, delayedMessage.originalPaths, delayedMessage.parentObjects, delayedMessage, delayedMessage.scheduled);
        delayedMessage.sendDelayedRequests();
    }

    public static boolean shouldSendWebPAsSticker(String str, Uri uri) throws IOException {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        if (str != null) {
            try {
                BitmapFactory.decodeFile(str, options);
            } catch (Exception e) {
                FileLog.e(e);
            }
        } else {
            try {
                InputStream inputStreamOpenInputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
                try {
                    BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                    if (inputStreamOpenInputStream != null) {
                        inputStreamOpenInputStream.close();
                    }
                } finally {
                }
            } catch (Exception unused) {
            }
        }
        return options.outWidth < 800 && options.outHeight < 800;
    }

    private void updateMediaPaths(MessageObject messageObject, TLRPC.Message message, int i, String str, boolean z) {
        updateMediaPaths(messageObject, message, i, Collections.singletonList(str), z, -1);
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x070c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateMediaPaths(MessageObject messageObject, TLRPC.Message message, int i, List<String> list, boolean z, int i2) {
        TLRPC.MessageMedia messageMedia;
        TLRPC.MessageMedia messageMedia2;
        boolean z2;
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia;
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia2;
        SendMessagesHelper sendMessagesHelper;
        String str;
        String str2;
        TLRPC.Message message2;
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia3;
        String str3;
        byte[] bArr;
        TLRPC.MessageMedia messageMedia3;
        TLRPC.FileLocation fileLocation;
        TLRPC.FileLocation fileLocation2;
        byte[] bArr2;
        SendMessagesHelper sendMessagesHelper2;
        TLRPC.Message message3;
        String str4;
        MessageObject messageObject2;
        TLRPC.Photo photo;
        String str5;
        boolean z3;
        TLRPC.MessageMedia messageMedia4;
        String str6;
        String str7;
        String str8;
        boolean z4;
        TLRPC.MessageMedia messageMedia5;
        String str9;
        File file;
        VideoEditedInfo videoEditedInfo;
        TLRPC.PhotoSize photoSize;
        String str10;
        TLRPC.Message message4;
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia4;
        TLRPC.PhotoSize photoSize2;
        String str11;
        String str12;
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia5;
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia6;
        TLRPC.PhotoSize closestPhotoSizeWithSize2;
        TLRPC.PhotoSize closestPhotoSizeWithSize3;
        TLObject tLObject;
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia7;
        TLRPC.PhotoSize closestPhotoSizeWithSize4;
        TLObject tLObject2;
        boolean z5;
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia8;
        TLRPC.Document document;
        TLRPC.Photo photo2;
        TLRPC.MessageMedia messageMedia6;
        TLRPC.WebPage webPage;
        TLRPC.Document document2;
        TLRPC.MessageMedia messageMedia7;
        TLRPC.WebPage webPage2;
        TLRPC.Photo photo3;
        TLRPC.MessageMedia messageMedia8;
        TLRPC.Document document3;
        TLRPC.MessageMedia messageMedia9;
        TLRPC.Photo photo4;
        TLRPC.MessageMedia messageMedia10;
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia9;
        StringBuilder sb;
        String string;
        SendMessagesHelper sendMessagesHelper3 = this;
        TLRPC.Message message5 = message;
        TLRPC.Message message6 = messageObject.messageOwner;
        String str13 = (list.isEmpty() || Math.max(0, i2) >= list.size()) ? null : list.get(Math.max(0, i2));
        TLRPC.MessageMedia messageMedia11 = message5 == null ? null : message5.media;
        TLRPC.MessageMedia messageMedia12 = message6 == null ? null : message6.media;
        TLRPC.MessageMedia messageMedia13 = message6.media;
        if (messageMedia13 != null) {
            if (messageMedia13.storyItem != null) {
                message5.media = messageMedia13;
            } else if (messageObject.isLiveLocation()) {
                TLRPC.MessageMedia messageMedia14 = message5.media;
                if (messageMedia14 instanceof TLRPC.TL_messageMediaGeoLive) {
                    message6.media.period = messageMedia14.period;
                } else if (messageObject.isDice()) {
                    ((TLRPC.TL_messageMediaDice) message6.media).value = ((TLRPC.TL_messageMediaDice) message5.media).value;
                } else {
                    TLRPC.MessageMedia messageMedia15 = message6.media;
                    TLRPC.Photo photo5 = messageMedia15.photo;
                    if (photo5 != null) {
                        closestPhotoSizeWithSize4 = FileLoader.getClosestPhotoSizeWithSize(photo5.sizes, 40);
                        closestPhotoSizeWithSize = (message5 == null || (messageMedia9 = message5.media) == null || (photo4 = messageMedia9.photo) == null) ? closestPhotoSizeWithSize4 : FileLoader.getClosestPhotoSizeWithSize(photo4.sizes, 40);
                        tLObject2 = message6.media.photo;
                    } else {
                        TLRPC.Document document4 = messageMedia15.document;
                        if (document4 != null) {
                            closestPhotoSizeWithSize4 = FileLoader.getClosestPhotoSizeWithSize(document4.thumbs, 40);
                            closestPhotoSizeWithSize = (message5 == null || (messageMedia8 = message5.media) == null || (document3 = messageMedia8.document) == null) ? closestPhotoSizeWithSize4 : FileLoader.getClosestPhotoSizeWithSize(document3.thumbs, 40);
                            tLObject2 = message6.media.document;
                        } else {
                            TLRPC.WebPage webPage3 = messageMedia15.webpage;
                            if (webPage3 != null) {
                                TLRPC.Photo photo6 = webPage3.photo;
                                if (photo6 != null) {
                                    closestPhotoSizeWithSize4 = FileLoader.getClosestPhotoSizeWithSize(photo6.sizes, 40);
                                    closestPhotoSizeWithSize = (message5 == null || (messageMedia7 = message5.media) == null || (webPage2 = messageMedia7.webpage) == null || (photo3 = webPage2.photo) == null) ? closestPhotoSizeWithSize4 : FileLoader.getClosestPhotoSizeWithSize(photo3.sizes, 40);
                                    tLObject2 = message6.media.webpage.photo;
                                } else {
                                    TLRPC.Document document5 = webPage3.document;
                                    if (document5 != null) {
                                        closestPhotoSizeWithSize4 = FileLoader.getClosestPhotoSizeWithSize(document5.thumbs, 40);
                                        closestPhotoSizeWithSize = (message5 == null || (messageMedia6 = message5.media) == null || (webPage = messageMedia6.webpage) == null || (document2 = webPage.document) == null) ? closestPhotoSizeWithSize4 : FileLoader.getClosestPhotoSizeWithSize(document2.thumbs, 40);
                                        tLObject2 = message6.media.webpage.document;
                                    }
                                }
                            } else if ((messageMedia15 instanceof TLRPC.TL_messageMediaPaidMedia) && (messageMedia11 instanceof TLRPC.TL_messageMediaPaidMedia)) {
                                TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) messageMedia15;
                                TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia2 = (TLRPC.TL_messageMediaPaidMedia) messageMedia11;
                                if (tL_messageMediaPaidMedia.extended_media.isEmpty() || tL_messageMediaPaidMedia2.extended_media.isEmpty()) {
                                    return;
                                }
                                if (i2 == -1) {
                                    int i3 = 0;
                                    while (i3 < tL_messageMediaPaidMedia.extended_media.size()) {
                                        updateMediaPaths(messageObject, message, i, list, z, i3);
                                        i3++;
                                        tL_messageMediaPaidMedia = tL_messageMediaPaidMedia;
                                    }
                                    return;
                                }
                                boolean z6 = tL_messageMediaPaidMedia2.extended_media.size() > 1;
                                if (i2 < 0 || i2 >= tL_messageMediaPaidMedia2.extended_media.size()) {
                                    return;
                                }
                                TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia2.extended_media.get(i2);
                                if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                                    TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia10 = (TLRPC.TL_messageExtendedMedia) messageExtendedMedia;
                                    tL_messageExtendedMedia5 = tL_messageExtendedMedia10;
                                    messageMedia11 = tL_messageExtendedMedia10.media;
                                } else {
                                    tL_messageExtendedMedia5 = null;
                                }
                                TLRPC.MessageExtendedMedia messageExtendedMedia2 = tL_messageMediaPaidMedia.extended_media.get(i2);
                                if (messageExtendedMedia2 instanceof TLRPC.TL_messageExtendedMedia) {
                                    tL_messageExtendedMedia6 = (TLRPC.TL_messageExtendedMedia) messageExtendedMedia2;
                                    messageMedia12 = tL_messageExtendedMedia6.media;
                                    TLRPC.Photo photo7 = messageMedia12.photo;
                                    if (photo7 != null) {
                                        closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(photo7.sizes, 40);
                                        closestPhotoSizeWithSize3 = (messageMedia11 == null || (photo2 = messageMedia11.photo) == null) ? closestPhotoSizeWithSize2 : FileLoader.getClosestPhotoSizeWithSize(photo2.sizes, 40);
                                        tLObject = messageMedia12.photo;
                                    } else {
                                        TLRPC.Document document6 = messageMedia12.document;
                                        if (document6 != null) {
                                            closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(document6.thumbs, 40);
                                            closestPhotoSizeWithSize3 = (messageMedia11 == null || (document = messageMedia11.document) == null) ? closestPhotoSizeWithSize2 : FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 40);
                                            tLObject = messageMedia12.document;
                                        }
                                    }
                                    boolean z7 = z6;
                                    tL_messageExtendedMedia7 = tL_messageExtendedMedia6;
                                    closestPhotoSizeWithSize4 = closestPhotoSizeWithSize2;
                                    tLObject2 = tLObject;
                                    z5 = z7;
                                    TLRPC.PhotoSize photoSize3 = closestPhotoSizeWithSize3;
                                    tL_messageExtendedMedia8 = tL_messageExtendedMedia5;
                                    closestPhotoSizeWithSize = photoSize3;
                                    if ((closestPhotoSizeWithSize instanceof TLRPC.TL_photoStrippedSize) || !(closestPhotoSizeWithSize4 instanceof TLRPC.TL_photoStrippedSize)) {
                                        messageMedia10 = messageMedia11;
                                        tL_messageExtendedMedia9 = tL_messageExtendedMedia7;
                                        tL_messageExtendedMedia = tL_messageExtendedMedia8;
                                    } else {
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append("stripped");
                                        messageMedia10 = messageMedia11;
                                        sb2.append(FileRefController.getKeyForParentObject(messageObject));
                                        String string2 = sb2.toString();
                                        if (message5 != null) {
                                            sb = new StringBuilder();
                                            sb.append("stripped");
                                            sb.append(FileRefController.getKeyForParentObject(message));
                                            string = sb.toString();
                                            tL_messageExtendedMedia9 = tL_messageExtendedMedia7;
                                            tL_messageExtendedMedia = tL_messageExtendedMedia8;
                                        } else {
                                            sb = new StringBuilder();
                                            sb.append("strippedmessage");
                                            sb.append(i);
                                            sb.append("_");
                                            tL_messageExtendedMedia9 = tL_messageExtendedMedia7;
                                            tL_messageExtendedMedia = tL_messageExtendedMedia8;
                                            sb.append(messageObject.getChannelId());
                                            sb.append("_");
                                            sb.append(messageObject.scheduled);
                                            string = sb.toString();
                                        }
                                        ImageLoader.getInstance().replaceImageInCache(string2, string, ImageLocation.getForObject(closestPhotoSizeWithSize, tLObject2), z);
                                    }
                                    messageMedia = messageMedia10;
                                    messageMedia2 = messageMedia12;
                                    z2 = z5;
                                    tL_messageExtendedMedia2 = tL_messageExtendedMedia9;
                                } else {
                                    tL_messageExtendedMedia6 = null;
                                }
                                closestPhotoSizeWithSize2 = null;
                                closestPhotoSizeWithSize3 = null;
                                tLObject = null;
                                boolean z72 = z6;
                                tL_messageExtendedMedia7 = tL_messageExtendedMedia6;
                                closestPhotoSizeWithSize4 = closestPhotoSizeWithSize2;
                                tLObject2 = tLObject;
                                z5 = z72;
                                TLRPC.PhotoSize photoSize32 = closestPhotoSizeWithSize3;
                                tL_messageExtendedMedia8 = tL_messageExtendedMedia5;
                                closestPhotoSizeWithSize = photoSize32;
                                if (closestPhotoSizeWithSize instanceof TLRPC.TL_photoStrippedSize) {
                                    messageMedia10 = messageMedia11;
                                    tL_messageExtendedMedia9 = tL_messageExtendedMedia7;
                                    tL_messageExtendedMedia = tL_messageExtendedMedia8;
                                    messageMedia = messageMedia10;
                                    messageMedia2 = messageMedia12;
                                    z2 = z5;
                                    tL_messageExtendedMedia2 = tL_messageExtendedMedia9;
                                }
                            }
                        }
                    }
                    tL_messageExtendedMedia7 = null;
                    tL_messageExtendedMedia8 = null;
                    z5 = false;
                    if (closestPhotoSizeWithSize instanceof TLRPC.TL_photoStrippedSize) {
                    }
                }
            }
            closestPhotoSizeWithSize4 = null;
            closestPhotoSizeWithSize = null;
            tLObject2 = null;
            tL_messageExtendedMedia7 = null;
            tL_messageExtendedMedia8 = null;
            z5 = false;
            if (closestPhotoSizeWithSize instanceof TLRPC.TL_photoStrippedSize) {
            }
        } else {
            messageMedia = messageMedia11;
            messageMedia2 = messageMedia12;
            z2 = false;
            closestPhotoSizeWithSize = null;
            tL_messageExtendedMedia = null;
            tL_messageExtendedMedia2 = null;
        }
        if (message5 == null) {
            return;
        }
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia11 = tL_messageExtendedMedia;
        if ((messageMedia instanceof TLRPC.TL_messageMediaPhoto) && messageMedia.photo != null && (messageMedia2 instanceof TLRPC.TL_messageMediaPhoto) && messageMedia2.photo != null) {
            if (messageMedia.ttl_seconds != 0 || messageObject.scheduled) {
                photoSize = closestPhotoSizeWithSize;
                str10 = "s";
                message4 = message6;
                tL_messageExtendedMedia4 = tL_messageExtendedMedia2;
            } else {
                int i4 = messageObject.sentHighQuality ? 6 : 0;
                MessagesStorage messagesStorage = getMessagesStorage();
                tL_messageExtendedMedia4 = tL_messageExtendedMedia2;
                TLRPC.Photo photo8 = messageMedia.photo;
                message4 = message6;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("sent_");
                photoSize = closestPhotoSizeWithSize;
                str10 = "s";
                sb3.append(message5.peer_id.channel_id);
                sb3.append("_");
                sb3.append(message5.id);
                sb3.append("_");
                sb3.append(DialogObject.getPeerDialogId(message5.peer_id));
                sb3.append("_");
                sb3.append(1);
                sb3.append("_");
                sb3.append(MessageObject.getMediaSize(messageMedia2));
                messagesStorage.putSentFile(str13, photo8, i4, sb3.toString());
            }
            if (messageMedia2.photo.sizes.size() == 1 && (((TLRPC.PhotoSize) messageMedia2.photo.sizes.get(0)).location instanceof TLRPC.TL_fileLocationUnavailable)) {
                messageMedia2.photo.sizes = messageMedia.photo.sizes;
            } else {
                int i5 = 0;
                while (i5 < messageMedia2.photo.sizes.size()) {
                    TLRPC.PhotoSize photoSize4 = (TLRPC.PhotoSize) messageMedia2.photo.sizes.get(i5);
                    if (photoSize4 == null || photoSize4.location == null || photoSize4.type == null) {
                        photoSize2 = photoSize;
                        str11 = str10;
                    } else {
                        int i6 = 0;
                        while (i6 < messageMedia.photo.sizes.size()) {
                            TLRPC.PhotoSize photoSize5 = (TLRPC.PhotoSize) messageMedia.photo.sizes.get(i6);
                            if (photoSize5 == null || photoSize5.location == null || (photoSize5 instanceof TLRPC.TL_photoSizeEmpty) || (str12 = photoSize5.type) == null || !((photoSize4.location.volume_id == -2147483648L && str12.equals(photoSize4.type)) || (photoSize5.w == photoSize4.w && photoSize5.h == photoSize4.h))) {
                                i6++;
                                sendMessagesHelper3 = this;
                            } else {
                                String str14 = photoSize4.location.volume_id + "_" + photoSize4.location.local_id;
                                String str15 = photoSize5.location.volume_id + "_" + photoSize5.location.local_id;
                                if (!str14.equals(str15)) {
                                    new File(FileLoader.getDirectory(4), str14 + ".jpg").renameTo((messageMedia.ttl_seconds != 0 || (messageMedia.photo.sizes.size() != 1 && photoSize5.w <= 90 && photoSize5.h <= 90) || z2) ? new File(FileLoader.getDirectory(4), str15 + ".jpg") : FileLoader.getInstance(sendMessagesHelper3.currentAccount).getPathToAttach(photoSize5));
                                    ImageLoader.getInstance().replaceImageInCache(str14, str15, ImageLocation.getForPhoto(photoSize5, messageMedia.photo), z);
                                    photoSize4.location = photoSize5.location;
                                    photoSize4.size = photoSize5.size;
                                }
                                photoSize2 = photoSize;
                                str11 = str10;
                            }
                        }
                        String str16 = photoSize4.location.volume_id + "_" + photoSize4.location.local_id;
                        new File(FileLoader.getDirectory(4), str16 + ".jpg").delete();
                        str11 = str10;
                        if (!str11.equals(photoSize4.type) || photoSize == null) {
                            photoSize2 = photoSize;
                        } else {
                            photoSize2 = photoSize;
                            messageMedia2.photo.sizes.set(i5, photoSize2);
                            ImageLocation forPhoto = ImageLocation.getForPhoto(photoSize2, messageMedia.photo);
                            ImageLoader.getInstance().replaceImageInCache(str16, forPhoto.getKey(message5, null, false), forPhoto, z);
                        }
                    }
                    i5++;
                    sendMessagesHelper3 = this;
                    photoSize = photoSize2;
                    str10 = str11;
                }
            }
            if (!z2) {
                TLRPC.Message message7 = message4;
                message7.message = message5.message;
                message5.attachPath = message7.attachPath;
            } else if (tL_messageExtendedMedia4 != null && tL_messageExtendedMedia11 != null) {
                tL_messageExtendedMedia4.attachPath = tL_messageExtendedMedia11.attachPath;
            }
            TLRPC.Photo photo9 = messageMedia2.photo;
            TLRPC.Photo photo10 = messageMedia.photo;
            photo9.id = photo10.id;
            photo9.dc_id = photo10.dc_id;
            photo9.access_hash = photo10.access_hash;
            return;
        }
        if (!(messageMedia instanceof TLRPC.TL_messageMediaDocument) || messageMedia.document == null || !(messageMedia2 instanceof TLRPC.TL_messageMediaDocument) || messageMedia2.document == null) {
            TLRPC.MessageMedia messageMedia16 = message5.media;
            if ((!(messageMedia16 instanceof TLRPC.TL_messageMediaContact) || !(message6.media instanceof TLRPC.TL_messageMediaContact)) && !(messageMedia16 instanceof TLRPC.TL_messageMediaWebPage)) {
                if (messageMedia16 instanceof TLRPC.TL_messageMediaGeo) {
                    TLRPC.GeoPoint geoPoint = messageMedia16.geo;
                    TLRPC.GeoPoint geoPoint2 = message6.media.geo;
                    geoPoint.lat = geoPoint2.lat;
                    geoPoint._long = geoPoint2._long;
                    return;
                }
                if ((messageMedia16 instanceof TLRPC.TL_messageMediaGame) || (messageMedia16 instanceof TLRPC.TL_messageMediaInvoice)) {
                    message6.media = messageMedia16;
                    if (!TextUtils.isEmpty(message5.message)) {
                        message6.entities = message5.entities;
                        message6.message = message5.message;
                    }
                    TLRPC.ReplyMarkup replyMarkup = message5.reply_markup;
                    if (replyMarkup != null) {
                        message6.reply_markup = replyMarkup;
                        message6.flags |= 64;
                        return;
                    }
                    return;
                }
                if (!(messageMedia16 instanceof TLRPC.TL_messageMediaPoll)) {
                    return;
                }
            }
            message6.media = messageMedia16;
            return;
        }
        if (messageMedia.ttl_seconds == 0 && ((videoEditedInfo = messageObject.videoEditedInfo) == null || (videoEditedInfo.mediaEntities == null && TextUtils.isEmpty(videoEditedInfo.paintPath) && messageObject.videoEditedInfo.cropState == null))) {
            boolean zIsVideoMessage = MessageObject.isVideoMessage(message);
            if ((zIsVideoMessage || MessageObject.isGifMessage(message)) && MessageObject.isGifDocument(messageMedia.document) == MessageObject.isGifDocument(messageMedia2.document)) {
                if (messageObject.scheduled) {
                    sendMessagesHelper = this;
                    str = ".jpg";
                    str2 = "s";
                    tL_messageExtendedMedia3 = tL_messageExtendedMedia2;
                } else {
                    sendMessagesHelper = this;
                    tL_messageExtendedMedia3 = tL_messageExtendedMedia2;
                    str2 = "s";
                    MessageObject messageObject3 = new MessageObject(sendMessagesHelper.currentAccount, message5, false, false);
                    MessagesStorage messagesStorage2 = getMessagesStorage();
                    TLRPC.Document document7 = messageMedia.document;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("sent_");
                    str = ".jpg";
                    sb4.append(message5.peer_id.channel_id);
                    sb4.append("_");
                    sb4.append(message5.id);
                    sb4.append("_");
                    sb4.append(DialogObject.getPeerDialogId(message5.peer_id));
                    sb4.append("_");
                    sb4.append(messageObject3.type);
                    sb4.append("_");
                    sb4.append(messageObject3.getSize());
                    messagesStorage2.putSentFile(str13, document7, 2, sb4.toString());
                }
                if (zIsVideoMessage) {
                    message5.attachPath = message6.attachPath;
                }
            } else {
                sendMessagesHelper = this;
                str = ".jpg";
                str2 = "s";
                tL_messageExtendedMedia3 = tL_messageExtendedMedia2;
                if (!MessageObject.isVoiceMessage(message) && !MessageObject.isRoundVideoMessage(message) && !messageObject.scheduled) {
                    MessageObject messageObject4 = new MessageObject(sendMessagesHelper.currentAccount, message5, false, false);
                    MessagesStorage messagesStorage3 = getMessagesStorage();
                    TLRPC.Document document8 = messageMedia.document;
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("sent_");
                    message2 = message6;
                    sb5.append(message5.peer_id.channel_id);
                    sb5.append("_");
                    sb5.append(message5.id);
                    sb5.append("_");
                    sb5.append(DialogObject.getPeerDialogId(message5.peer_id));
                    sb5.append("_");
                    sb5.append(messageObject4.type);
                    sb5.append("_");
                    sb5.append(messageObject4.getSize());
                    messagesStorage3.putSentFile(str13, document8, 1, sb5.toString());
                }
            }
            message2 = message6;
        } else {
            sendMessagesHelper = this;
            str = ".jpg";
            str2 = "s";
            message2 = message6;
            tL_messageExtendedMedia3 = tL_messageExtendedMedia2;
        }
        TLRPC.Photo photo11 = messageMedia2.video_cover;
        if (photo11 == null || (photo = messageMedia.video_cover) == null) {
            String str17 = str;
            str3 = str13;
            bArr = null;
            messageMedia3 = messageMedia2;
            TLRPC.PhotoSize closestPhotoSizeWithSize5 = FileLoader.getClosestPhotoSizeWithSize(messageMedia3.document.thumbs, 320);
            TLRPC.PhotoSize closestPhotoSizeWithSize6 = FileLoader.getClosestPhotoSizeWithSize(messageMedia.document.thumbs, 320);
            if (closestPhotoSizeWithSize5 != null && (fileLocation2 = closestPhotoSizeWithSize5.location) != null && fileLocation2.volume_id == -2147483648L && closestPhotoSizeWithSize6 != null && closestPhotoSizeWithSize6.location != null && !(closestPhotoSizeWithSize6 instanceof TLRPC.TL_photoSizeEmpty) && !(closestPhotoSizeWithSize5 instanceof TLRPC.TL_photoSizeEmpty)) {
                String str18 = closestPhotoSizeWithSize5.location.volume_id + "_" + closestPhotoSizeWithSize5.location.local_id;
                String str19 = closestPhotoSizeWithSize6.location.volume_id + "_" + closestPhotoSizeWithSize6.location.local_id;
                if (!str18.equals(str19)) {
                    new File(FileLoader.getDirectory(4), str18 + str17).renameTo(new File(FileLoader.getDirectory(4), str19 + str17));
                    ImageLoader.getInstance().replaceImageInCache(str18, str19, ImageLocation.getForDocument(closestPhotoSizeWithSize6, messageMedia.document), z);
                    closestPhotoSizeWithSize5.location = closestPhotoSizeWithSize6.location;
                    closestPhotoSizeWithSize5.size = closestPhotoSizeWithSize6.size;
                }
            } else if (closestPhotoSizeWithSize6 != null && closestPhotoSizeWithSize5 != null && MessageObject.isStickerMessage(message) && (fileLocation = closestPhotoSizeWithSize5.location) != null) {
                closestPhotoSizeWithSize6.location = fileLocation;
            } else if (closestPhotoSizeWithSize5 == null || (closestPhotoSizeWithSize5.location instanceof TLRPC.TL_fileLocationUnavailable) || (closestPhotoSizeWithSize5 instanceof TLRPC.TL_photoSizeEmpty)) {
                messageMedia3.document.thumbs = messageMedia.document.thumbs;
            }
        } else {
            FileLoader.getClosestPhotoSizeWithSize(photo11.sizes, 40);
            TLRPC.PhotoSize closestPhotoSizeWithSize7 = FileLoader.getClosestPhotoSizeWithSize(photo.sizes, 40);
            if (photo11.sizes.size() == 1 && (((TLRPC.PhotoSize) photo11.sizes.get(0)).location instanceof TLRPC.TL_fileLocationUnavailable)) {
                photo11.sizes = photo.sizes;
            } else {
                int i7 = 0;
                while (i7 < photo11.sizes.size()) {
                    TLRPC.PhotoSize photoSize6 = (TLRPC.PhotoSize) photo11.sizes.get(i7);
                    if (photoSize6 == null || photoSize6.location == null || photoSize6.type == null) {
                        str5 = str;
                        z3 = z2;
                        messageMedia4 = messageMedia2;
                        str6 = str13;
                        str7 = str2;
                    } else {
                        int i8 = 0;
                        while (i8 < photo.sizes.size()) {
                            TLRPC.PhotoSize photoSize7 = (TLRPC.PhotoSize) photo.sizes.get(i8);
                            if (photoSize7 == null || photoSize7.location == null || (photoSize7 instanceof TLRPC.TL_photoSizeEmpty) || (str9 = photoSize7.type) == null) {
                                str8 = str;
                                z4 = z2;
                                messageMedia5 = messageMedia2;
                                str6 = str13;
                            } else {
                                str6 = str13;
                                if ((photoSize6.location.volume_id == -2147483648L && str9.equals(photoSize6.type)) || (photoSize7.w == photoSize6.w && photoSize7.h == photoSize6.h)) {
                                    String str20 = photoSize6.location.volume_id + "_" + photoSize6.location.local_id;
                                    String str21 = photoSize7.location.volume_id + "_" + photoSize7.location.local_id;
                                    if (str20.equals(str21)) {
                                        str5 = str;
                                        z3 = z2;
                                        messageMedia4 = messageMedia2;
                                        str7 = str2;
                                    } else {
                                        File directory = FileLoader.getDirectory(4);
                                        messageMedia4 = messageMedia2;
                                        StringBuilder sb6 = new StringBuilder();
                                        sb6.append(str20);
                                        String str22 = str;
                                        sb6.append(str22);
                                        File file2 = new File(directory, sb6.toString());
                                        if (messageMedia.ttl_seconds != 0 || (photo.sizes.size() != 1 && photoSize7.w <= 90 && photoSize7.h <= 90)) {
                                            z3 = z2;
                                            file = new File(FileLoader.getDirectory(4), str21 + str22);
                                            file2.renameTo(file);
                                            ImageLoader.getInstance().replaceImageInCache(str20, str21, ImageLocation.getForPhoto(photoSize7, photo), z);
                                            photoSize6.location = photoSize7.location;
                                            photoSize6.size = photoSize7.size;
                                            str5 = str22;
                                            str7 = str2;
                                            message5 = message;
                                        } else {
                                            if (!z2) {
                                                file = FileLoader.getInstance(sendMessagesHelper.currentAccount).getPathToAttach(photoSize7, true);
                                                z3 = z2;
                                            }
                                            file2.renameTo(file);
                                            ImageLoader.getInstance().replaceImageInCache(str20, str21, ImageLocation.getForPhoto(photoSize7, photo), z);
                                            photoSize6.location = photoSize7.location;
                                            photoSize6.size = photoSize7.size;
                                            str5 = str22;
                                            str7 = str2;
                                            message5 = message;
                                        }
                                    }
                                } else {
                                    str8 = str;
                                    z4 = z2;
                                    messageMedia5 = messageMedia2;
                                }
                            }
                            i8++;
                            z2 = z4;
                            str = str8;
                            str13 = str6;
                            messageMedia2 = messageMedia5;
                            message5 = message;
                        }
                        String str23 = str;
                        z3 = z2;
                        messageMedia4 = messageMedia2;
                        str6 = str13;
                        String str24 = photoSize6.location.volume_id + "_" + photoSize6.location.local_id;
                        new File(FileLoader.getDirectory(4), str24 + str23).delete();
                        str7 = str2;
                        if (!str7.equals(photoSize6.type) || closestPhotoSizeWithSize7 == null) {
                            str5 = str23;
                            message5 = message;
                        } else {
                            photo11.sizes.set(i7, closestPhotoSizeWithSize7);
                            ImageLocation forPhoto2 = ImageLocation.getForPhoto(closestPhotoSizeWithSize7, photo);
                            str5 = str23;
                            message5 = message;
                            ImageLoader.getInstance().replaceImageInCache(str24, forPhoto2.getKey(message5, null, false), forPhoto2, z);
                        }
                    }
                    i7++;
                    sendMessagesHelper = this;
                    z2 = z3;
                    str2 = str7;
                    str = str5;
                    str13 = str6;
                    messageMedia2 = messageMedia4;
                }
            }
            TLRPC.MessageMedia messageMedia17 = messageMedia2;
            str3 = str13;
            bArr = null;
            photo11.id = photo.id;
            photo11.dc_id = photo.dc_id;
            photo11.access_hash = photo.access_hash;
            messageMedia3 = messageMedia17;
        }
        TLRPC.Document document9 = messageMedia3.document;
        TLRPC.Document document10 = messageMedia.document;
        document9.dc_id = document10.dc_id;
        document9.id = document10.id;
        document9.access_hash = document10.access_hash;
        int i9 = 0;
        while (true) {
            if (i9 >= messageMedia3.document.attributes.size()) {
                bArr2 = bArr;
                break;
            }
            TLRPC.DocumentAttribute documentAttribute = messageMedia3.document.attributes.get(i9);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                bArr2 = documentAttribute.waveform;
                break;
            }
            i9++;
        }
        messageMedia3.document.attributes = messageMedia.document.attributes;
        if (bArr2 != null) {
            for (int i10 = 0; i10 < messageMedia3.document.attributes.size(); i10++) {
                TLRPC.DocumentAttribute documentAttribute2 = messageMedia3.document.attributes.get(i10);
                if (documentAttribute2 instanceof TLRPC.TL_documentAttributeAudio) {
                    documentAttribute2.waveform = bArr2;
                    documentAttribute2.flags |= 4;
                }
            }
        }
        TLRPC.Document document11 = messageMedia3.document;
        TLRPC.Document document12 = messageMedia.document;
        document11.size = document12.size;
        document11.mime_type = document12.mime_type;
        if ((message5.flags & 4) != 0 || (!(MessageObject.isOut(message) || message5.dialog_id == getUserConfig().getClientUserId()) || MessageObject.isQuickReply(message))) {
            sendMessagesHelper2 = this;
        } else {
            if (MessageObject.isNewGifDocument(messageMedia.document)) {
                if (MessageObject.isDocumentHasAttachedStickers(messageMedia.document) ? getMessagesController().saveGifsWithStickers : true) {
                    getMediaDataController().addRecentGif(messageMedia.document, message5.date, true);
                }
            } else if (MessageObject.isStickerDocument(messageMedia.document) || MessageObject.isAnimatedStickerDocument(messageMedia.document, true)) {
                sendMessagesHelper2 = this;
                getMediaDataController().addRecentSticker(0, message, messageMedia.document, message5.date, false);
            }
            sendMessagesHelper2 = this;
        }
        TLRPC.TL_messageExtendedMedia tL_messageExtendedMedia12 = tL_messageExtendedMedia3;
        if (tL_messageExtendedMedia3 != null) {
            str4 = tL_messageExtendedMedia12.attachPath;
            message3 = message2;
        } else {
            message3 = message2;
            str4 = message3.attachPath;
        }
        if (str4 == null || !str4.startsWith(FileLoader.getDirectory(4).getAbsolutePath()) || MessageObject.isGifDocument(messageMedia.document)) {
            if (tL_messageExtendedMedia12 != null) {
                tL_messageExtendedMedia12.attachPath = str4;
                return;
            }
            message5.attachPath = str4;
        } else {
            File file3 = new File(str4);
            File pathToAttach = FileLoader.getInstance(sendMessagesHelper2.currentAccount).getPathToAttach(messageMedia.document, messageMedia.ttl_seconds != 0);
            if (file3.renameTo(pathToAttach)) {
                if (MessageObject.isVideoMessage(message)) {
                    messageObject.attachPathExists = true;
                    return;
                }
                messageObject.mediaExists = messageObject.attachPathExists;
                messageObject.attachPathExists = false;
                if (tL_messageExtendedMedia12 != null) {
                    tL_messageExtendedMedia12.attachPath = "";
                } else {
                    message3.attachPath = "";
                }
                if (str3 != null) {
                    String str25 = str3;
                    if (str25.startsWith("http")) {
                        getMessagesStorage().addRecentLocalFile(str25, pathToAttach.toString(), messageMedia3.document);
                        return;
                    }
                    return;
                }
                return;
            }
            if (file3.exists()) {
                if (tL_messageExtendedMedia12 != null) {
                    tL_messageExtendedMedia12.attachPath = str4;
                } else {
                    message5.attachPath = str4;
                }
                messageObject2 = messageObject;
            } else {
                messageObject2 = messageObject;
                if (tL_messageExtendedMedia12 == null) {
                    messageObject2.attachPathExists = false;
                }
            }
            if (tL_messageExtendedMedia12 == null) {
                messageObject2.mediaExists = pathToAttach.exists();
            }
        }
        message5.message = message3.message;
    }

    private void uploadMultiMedia(final DelayedMessage delayedMessage, final TLRPC.InputMedia inputMedia, TLRPC.InputEncryptedFile inputEncryptedFile, String str) {
        if (inputMedia == null) {
            if (inputEncryptedFile != null) {
                TLRPC.TL_messages_sendEncryptedMultiMedia tL_messages_sendEncryptedMultiMedia = (TLRPC.TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest;
                int i = 0;
                while (true) {
                    if (i >= tL_messages_sendEncryptedMultiMedia.files.size()) {
                        break;
                    }
                    if (tL_messages_sendEncryptedMultiMedia.files.get(i) == inputEncryptedFile) {
                        putToSendingMessages(delayedMessage.messages.get(i), delayedMessage.scheduled);
                        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileUploadProgressChanged, str, -1L, -1L, Boolean.FALSE);
                        break;
                    }
                    i++;
                }
                sendReadyToSendGroup(delayedMessage, false, true);
                return;
            }
            return;
        }
        TLRPC.TL_messages_uploadMedia tL_messages_uploadMedia = new TLRPC.TL_messages_uploadMedia();
        tL_messages_uploadMedia.media = inputMedia;
        TLObject tLObject = delayedMessage.sendRequest;
        if (tLObject instanceof TLRPC.TL_messages_sendMultiMedia) {
            TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia = (TLRPC.TL_messages_sendMultiMedia) tLObject;
            tL_messages_uploadMedia.peer = tL_messages_sendMultiMedia.peer;
            int i2 = 0;
            while (true) {
                if (i2 >= tL_messages_sendMultiMedia.multi_media.size()) {
                    break;
                }
                if (((TLRPC.TL_inputSingleMedia) tL_messages_sendMultiMedia.multi_media.get(i2)).media == inputMedia) {
                    putToSendingMessages(delayedMessage.messages.get(i2), delayedMessage.scheduled);
                    getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileUploadProgressChanged, str, -1L, -1L, Boolean.FALSE);
                    break;
                }
                i2++;
            }
        } else if (tLObject instanceof TLRPC.TL_messages_sendMedia) {
            TLRPC.TL_messages_sendMedia tL_messages_sendMedia = (TLRPC.TL_messages_sendMedia) tLObject;
            TLRPC.InputMedia inputMedia2 = tL_messages_sendMedia.media;
            if (inputMedia2 instanceof TLRPC.TL_inputMediaPaidMedia) {
                tL_messages_uploadMedia.peer = tL_messages_sendMedia.peer;
                TLRPC.TL_inputMediaPaidMedia tL_inputMediaPaidMedia = (TLRPC.TL_inputMediaPaidMedia) inputMedia2;
                int i3 = 0;
                while (true) {
                    if (i3 >= tL_inputMediaPaidMedia.extended_media.size()) {
                        break;
                    }
                    if (tL_inputMediaPaidMedia.extended_media.get(i3) == inputMedia) {
                        putToSendingMessages(delayedMessage.messages.get(i3), delayedMessage.scheduled);
                        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileUploadProgressChanged, str, -1L, -1L, Boolean.FALSE);
                        break;
                    }
                    i3++;
                }
            }
        }
        getConnectionsManager().sendRequest(tL_messages_uploadMedia, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda37
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                this.f$0.lambda$uploadMultiMedia$48(inputMedia, delayedMessage, tLObject2, tL_error);
            }
        });
    }

    private void writePreviousMessageData(TLRPC.Message message, SerializedData serializedData) {
        TLRPC.MessageMedia messageMedia = message.media;
        if (messageMedia == null) {
            new TLRPC.TL_messageMediaEmpty().serializeToStream(serializedData);
        } else {
            messageMedia.serializeToStream(serializedData);
        }
        String str = message.message;
        if (str == null) {
            str = "";
        }
        serializedData.writeString(str);
        String str2 = message.attachPath;
        serializedData.writeString(str2 != null ? str2 : "");
        int size = message.entities.size();
        serializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            ((TLRPC.MessageEntity) message.entities.get(i)).serializeToStream(serializedData);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void cancelSendingMessage(ArrayList<MessageObject> arrayList) {
        boolean z;
        ArrayList arrayList2;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList<Integer> arrayList5 = new ArrayList<>();
        long j = 0;
        int i = 0;
        boolean z2 = false;
        int quickReplyId = 0;
        int i2 = 0;
        while (i < arrayList.size()) {
            MessageObject messageObject = arrayList.get(i);
            if (messageObject.scheduled) {
                i2 = 1;
            }
            long dialogId = messageObject.getDialogId();
            arrayList5.add(Integer.valueOf(messageObject.getId()));
            if (messageObject.isQuickReply()) {
                quickReplyId = messageObject.getQuickReplyId();
            }
            TLRPC.Message messageRemoveFromSendingMessages = removeFromSendingMessages(messageObject.getId(), messageObject.scheduled);
            if (messageRemoveFromSendingMessages != null) {
                getConnectionsManager().cancelRequest(messageRemoveFromSendingMessages.reqId, true);
            }
            StarsController.getInstance(this.currentAccount).hidePaidMessageToast(messageObject);
            for (Map.Entry<String, ArrayList<DelayedMessage>> entry : this.delayedMessages.entrySet()) {
                ArrayList<DelayedMessage> value = entry.getValue();
                int i3 = 0;
                while (true) {
                    if (i3 >= value.size()) {
                        z = z2;
                        break;
                    }
                    DelayedMessage delayedMessage = value.get(i3);
                    z = z2;
                    if (delayedMessage.type == 4) {
                        MessageObject messageObject2 = null;
                        int i4 = 0;
                        while (true) {
                            if (i4 >= delayedMessage.messageObjects.size()) {
                                i4 = -1;
                                break;
                            }
                            messageObject2 = delayedMessage.messageObjects.get(i4);
                            if (messageObject2.getId() == messageObject.getId()) {
                                removeFromUploadingMessages(messageObject.getId(), messageObject.scheduled);
                                break;
                            }
                            i4++;
                        }
                        if (i4 >= 0) {
                            delayedMessage.messageObjects.remove(i4);
                            delayedMessage.messages.remove(i4);
                            delayedMessage.originalPaths.remove(i4);
                            if (!delayedMessage.parentObjects.isEmpty()) {
                                delayedMessage.parentObjects.remove(i4);
                            }
                            TLObject tLObject = delayedMessage.sendRequest;
                            if (tLObject instanceof TLRPC.TL_messages_sendMultiMedia) {
                                arrayList2 = ((TLRPC.TL_messages_sendMultiMedia) tLObject).multi_media;
                            } else if (tLObject instanceof TLRPC.TL_messages_sendMedia) {
                                TLRPC.InputMedia inputMedia = ((TLRPC.TL_messages_sendMedia) tLObject).media;
                                if (inputMedia instanceof TLRPC.TL_inputMediaPaidMedia) {
                                    arrayList2 = ((TLRPC.TL_inputMediaPaidMedia) inputMedia).extended_media;
                                } else {
                                    TLRPC.TL_messages_sendEncryptedMultiMedia tL_messages_sendEncryptedMultiMedia = (TLRPC.TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest;
                                    tL_messages_sendEncryptedMultiMedia.messages.remove(i4);
                                    arrayList2 = tL_messages_sendEncryptedMultiMedia.files;
                                }
                            }
                            arrayList2.remove(i4);
                            MediaController.getInstance().cancelVideoConvert(messageObject);
                            String str = (String) delayedMessage.extraHashMap.get(messageObject2);
                            if (str != null) {
                                arrayList3.add(str);
                            }
                            if (delayedMessage.messageObjects.isEmpty()) {
                                delayedMessage.sendDelayedRequests();
                            } else {
                                if (delayedMessage.finalGroupMessage == messageObject.getId()) {
                                    ArrayList<MessageObject> arrayList6 = delayedMessage.messageObjects;
                                    MessageObject messageObject3 = arrayList6.get(arrayList6.size() - 1);
                                    delayedMessage.finalGroupMessage = messageObject3.getId();
                                    messageObject3.messageOwner.params.put("final", "1");
                                    TLRPC.TL_messages_messages tL_messages_messages = new TLRPC.TL_messages_messages();
                                    tL_messages_messages.messages.add(messageObject3.messageOwner);
                                    getMessagesStorage().putMessages((TLRPC.messages_Messages) tL_messages_messages, delayedMessage.peer, -2, 0, false, i2, 0L);
                                }
                                if (!arrayList4.contains(delayedMessage)) {
                                    arrayList4.add(delayedMessage);
                                }
                            }
                        }
                    } else if (delayedMessage.obj.getId() == messageObject.getId()) {
                        removeFromUploadingMessages(messageObject.getId(), messageObject.scheduled);
                        value.remove(i3);
                        delayedMessage.sendDelayedRequests();
                        MediaController.getInstance().cancelVideoConvert(delayedMessage.obj);
                        if (value.size() == 0) {
                            arrayList3.add(entry.getKey());
                            if (delayedMessage.sendEncryptedRequest != null) {
                                z2 = true;
                            }
                        }
                    } else {
                        i3++;
                        z2 = z;
                    }
                }
                z2 = z;
            }
            i++;
            j = dialogId;
        }
        for (int i5 = 0; i5 < arrayList3.size(); i5++) {
            String str2 = (String) arrayList3.get(i5);
            if (str2.startsWith("http")) {
                ImageLoader.getInstance().cancelLoadHttpFile(str2);
            } else {
                getFileLoader().cancelFileUpload(str2, z2);
            }
            this.delayedMessages.remove(str2);
        }
        int size = arrayList4.size();
        for (int i6 = 0; i6 < size; i6++) {
            sendReadyToSendGroup((DelayedMessage) arrayList4.get(i6), false, true);
        }
        int i7 = 1;
        if (arrayList.size() == 1 && arrayList.get(0).isEditing() && arrayList.get(0).previousMedia != null) {
            revertEditingMessageObject(arrayList.get(0));
            return;
        }
        if (!arrayList.isEmpty() && arrayList.get(0).isQuickReply()) {
            i7 = 5;
        } else if (i2 == 0) {
            i7 = 0;
        }
        getMessagesController().deleteMessages(arrayList5, null, null, j, quickReplyId, false, i7);
    }

    public void cancelSendingMessage(MessageObject messageObject) {
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        arrayList.add(messageObject);
        if (messageObject != null && messageObject.type == 29) {
            Iterator<Map.Entry<String, ArrayList<DelayedMessage>>> it = this.delayedMessages.entrySet().iterator();
            DelayedMessage delayedMessage = null;
            while (it.hasNext()) {
                ArrayList<DelayedMessage> value = it.next().getValue();
                for (int i = 0; i < value.size(); i++) {
                    DelayedMessage delayedMessage2 = value.get(i);
                    if (delayedMessage2.type == 4) {
                        int i2 = 0;
                        while (true) {
                            if (i2 >= delayedMessage2.messageObjects.size()) {
                                break;
                            }
                            if (delayedMessage2.messageObjects.get(i2).getId() == messageObject.getId()) {
                                delayedMessage = delayedMessage2;
                                break;
                            }
                            i2++;
                        }
                    }
                    if (delayedMessage != null) {
                        break;
                    }
                }
            }
            if (delayedMessage != null) {
                arrayList.clear();
                arrayList.addAll(delayedMessage.messageObjects);
            }
        }
        cancelSendingMessage(arrayList);
    }

    public void checkUnsentMessages() {
        getMessagesStorage().getUnsentMessages(1000);
    }

    public void cleanup() {
        this.delayedMessages.clear();
        this.unsentMessages.clear();
        this.sendingMessages.clear();
        this.editingMessages.clear();
        this.sendingMessagesIdDialogs.clear();
        this.uploadMessages.clear();
        this.uploadingMessagesIdDialogs.clear();
        this.waitingForLocation.clear();
        this.waitingForCallback.clear();
        this.waitingForVote.clear();
        this.importingHistoryFiles.clear();
        this.importingHistoryMap.clear();
        this.importingStickersFiles.clear();
        this.importingStickersMap.clear();
        this.locationProvider.stop();
    }

    public TLRPC.InputReplyTo createReplyInput(int i) {
        return createReplyInput(null, i, 0, null);
    }

    public TLRPC.InputReplyTo createReplyInput(TLRPC.InputPeer inputPeer, int i, int i2, ChatActivity.ReplyQuote replyQuote) {
        MessageObject messageObject;
        TLRPC.TodoItem todoItem;
        TLRPC.TL_inputReplyToMessage tL_inputReplyToMessage = new TLRPC.TL_inputReplyToMessage();
        tL_inputReplyToMessage.reply_to_msg_id = i;
        if (i2 != 0) {
            tL_inputReplyToMessage.flags |= 1;
            tL_inputReplyToMessage.top_msg_id = i2;
        }
        if (replyQuote != null && replyQuote.todo && (todoItem = replyQuote.task) != null) {
            tL_inputReplyToMessage.flags |= 64;
            tL_inputReplyToMessage.todo_item_id = todoItem.id;
        } else if (replyQuote != null && !replyQuote.todo) {
            String text = replyQuote.getText();
            tL_inputReplyToMessage.quote_text = text;
            if (!TextUtils.isEmpty(text)) {
                tL_inputReplyToMessage.flags |= 4;
                ArrayList entities = replyQuote.getEntities();
                tL_inputReplyToMessage.quote_entities = entities;
                if (entities != null && !entities.isEmpty()) {
                    tL_inputReplyToMessage.quote_entities = new ArrayList(tL_inputReplyToMessage.quote_entities);
                    tL_inputReplyToMessage.flags |= 8;
                }
                tL_inputReplyToMessage.flags |= 16;
                tL_inputReplyToMessage.quote_offset = replyQuote.start;
            }
        }
        if (replyQuote != null && (messageObject = replyQuote.message) != null) {
            TLRPC.InputPeer inputPeer2 = getMessagesController().getInputPeer(messageObject.getDialogId());
            if (inputPeer2 != null && !MessageObject.peersEqual(inputPeer2, inputPeer)) {
                tL_inputReplyToMessage.flags |= 2;
                tL_inputReplyToMessage.reply_to_peer_id = inputPeer2;
            }
        }
        return tL_inputReplyToMessage;
    }

    public TLRPC.InputReplyTo createReplyInput(TLRPC.TL_messageReplyHeader tL_messageReplyHeader) {
        TLRPC.TL_inputReplyToMessage tL_inputReplyToMessage = new TLRPC.TL_inputReplyToMessage();
        tL_inputReplyToMessage.reply_to_msg_id = tL_messageReplyHeader.reply_to_msg_id;
        int i = tL_messageReplyHeader.flags;
        if ((i & 2) != 0) {
            tL_inputReplyToMessage.flags |= 1;
            tL_inputReplyToMessage.top_msg_id = tL_messageReplyHeader.reply_to_top_id;
        }
        if ((i & 1) != 0) {
            tL_inputReplyToMessage.flags |= 2;
            tL_inputReplyToMessage.reply_to_peer_id = MessagesController.getInstance(this.currentAccount).getInputPeer(tL_messageReplyHeader.reply_to_peer_id);
        }
        if (tL_messageReplyHeader.quote) {
            int i2 = tL_messageReplyHeader.flags;
            if ((i2 & 64) != 0) {
                tL_inputReplyToMessage.flags |= 4;
                tL_inputReplyToMessage.quote_text = tL_messageReplyHeader.quote_text;
            }
            if ((i2 & 128) != 0) {
                tL_inputReplyToMessage.flags |= 8;
                tL_inputReplyToMessage.quote_entities = tL_messageReplyHeader.quote_entities;
            }
            if ((i2 & 1024) != 0) {
                tL_inputReplyToMessage.flags |= 16;
                tL_inputReplyToMessage.quote_offset = tL_messageReplyHeader.quote_offset;
            }
        }
        if ((tL_messageReplyHeader.flags & 2048) != 0) {
            tL_inputReplyToMessage.flags |= 64;
            tL_inputReplyToMessage.todo_item_id = tL_messageReplyHeader.todo_item_id;
        }
        return tL_inputReplyToMessage;
    }

    public TLRPC.InputReplyTo createReplyInput(TL_stories$StoryItem tL_stories$StoryItem) {
        TLRPC.TL_inputReplyToStory tL_inputReplyToStory = new TLRPC.TL_inputReplyToStory();
        tL_inputReplyToStory.story_id = tL_stories$StoryItem.id;
        tL_inputReplyToStory.peer = getMessagesController().getInputPeer(tL_stories$StoryItem.dialogId);
        return tL_inputReplyToStory;
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x017e, code lost:
    
        if (r1.isSticker == false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01a9, code lost:
    
        if (r1.location != null) goto L81;
     */
    /* JADX WARN: Removed duplicated region for block: B:148:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04b7  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x050c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0168  */
    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        String str;
        ArrayList<DelayedMessage> arrayList;
        char c;
        final MessageObject messageObject;
        String str2;
        ArrayList<DelayedMessage> arrayList2;
        ArrayList<DelayedMessage> arrayList3;
        int quickReplyId;
        int i3;
        int quickReplyId2;
        int i4;
        TLRPC.InputMedia inputMedia;
        Object obj;
        TLRPC.InputFile inputFile;
        String str3;
        String str4;
        TLRPC.InputEncryptedFile inputEncryptedFile;
        int i5;
        ArrayList<DelayedMessage> arrayList4;
        Object obj2;
        TLRPC.TL_decryptedMessage tL_decryptedMessage;
        int i6;
        int i7;
        ArrayList<DelayedMessage> arrayList5;
        TLRPC.InputEncryptedFile inputEncryptedFile2;
        String str5;
        String str6;
        DelayedMessage delayedMessage;
        TLRPC.InputEncryptedFile inputEncryptedFile3;
        HashMap<Object, Object> map;
        StringBuilder sb;
        int iIndexOf;
        TLRPC.PhotoSize photoSize;
        TLRPC.PhotoSize photoSize2;
        int i8 = 2;
        int i9 = 0;
        boolean z = true;
        if (i == NotificationCenter.fileUploadProgressChanged) {
            String str7 = (String) objArr[0];
            ImportingHistory importingHistory = this.importingHistoryFiles.get(str7);
            if (importingHistory != null) {
                importingHistory.addUploadProgress(str7, ((Long) objArr[1]).longValue(), r2.longValue() / ((Long) objArr[2]).longValue());
            }
            ImportingStickers importingStickers = this.importingStickersFiles.get(str7);
            if (importingStickers != null) {
                importingStickers.addUploadProgress(str7, ((Long) objArr[1]).longValue(), r2.longValue() / ((Long) objArr[2]).longValue());
                return;
            }
            return;
        }
        String str8 = "_ct";
        String str9 = "_t";
        if (i == NotificationCenter.fileUploaded) {
            str = (String) objArr[0];
            TLRPC.InputFile inputFile2 = (TLRPC.InputFile) objArr[1];
            TLRPC.InputEncryptedFile inputEncryptedFile4 = (TLRPC.InputEncryptedFile) objArr[2];
            ImportingHistory importingHistory2 = this.importingHistoryFiles.get(str);
            if (importingHistory2 != null) {
                if (str.equals(importingHistory2.historyPath)) {
                    importingHistory2.initImport(inputFile2);
                } else {
                    importingHistory2.onMediaImport(str, ((Long) objArr[5]).longValue(), inputFile2);
                }
            }
            ImportingStickers importingStickers2 = this.importingStickersFiles.get(str);
            if (importingStickers2 != null) {
                importingStickers2.onMediaImport(str, ((Long) objArr[5]).longValue(), inputFile2);
            }
            ArrayList<DelayedMessage> arrayList6 = this.delayedMessages.get(str);
            if (arrayList6 == null) {
                return;
            }
            int i10 = 0;
            while (i10 < arrayList6.size()) {
                DelayedMessage delayedMessage2 = arrayList6.get(i10);
                TLObject tLObject = delayedMessage2.sendRequest;
                if (tLObject instanceof TLRPC.TL_messages_sendMedia) {
                    inputMedia = ((TLRPC.TL_messages_sendMedia) tLObject).media;
                    if (inputMedia instanceof TLRPC.TL_inputMediaPaidMedia) {
                        HashMap<Object, Object> map2 = delayedMessage2.extraHashMap;
                        obj = map2 == null ? ((TLRPC.TL_inputMediaPaidMedia) inputMedia).extended_media.get(i9) : map2.get(str);
                        inputMedia = (TLRPC.InputMedia) obj;
                    }
                } else if (tLObject instanceof TLRPC.TL_messages_editMessage) {
                    inputMedia = ((TLRPC.TL_messages_editMessage) tLObject).media;
                } else if (tLObject instanceof TLRPC.TL_messages_sendMultiMedia) {
                    obj = delayedMessage2.extraHashMap.get(str);
                    inputMedia = (TLRPC.InputMedia) obj;
                } else {
                    inputMedia = null;
                }
                if (inputFile2 == null || inputMedia == null) {
                    int i11 = i10;
                    ArrayList<DelayedMessage> arrayList7 = arrayList6;
                    inputFile = inputFile2;
                    str3 = str9;
                    str4 = str8;
                    inputEncryptedFile = inputEncryptedFile4;
                    if (inputEncryptedFile == null || (obj2 = delayedMessage2.sendEncryptedRequest) == null) {
                        i5 = i11;
                        arrayList4 = arrayList7;
                        inputEncryptedFile4 = inputEncryptedFile;
                        i10 = i5 + 1;
                        str8 = str4;
                        inputFile2 = inputFile;
                        str9 = str3;
                        i8 = 2;
                        i9 = 0;
                        z = true;
                        arrayList6 = arrayList4;
                    } else {
                        if (delayedMessage2.type == 4) {
                            TLRPC.TL_messages_sendEncryptedMultiMedia tL_messages_sendEncryptedMultiMedia = (TLRPC.TL_messages_sendEncryptedMultiMedia) obj2;
                            TLRPC.InputEncryptedFile inputEncryptedFile5 = (TLRPC.InputEncryptedFile) delayedMessage2.extraHashMap.get(str);
                            int iIndexOf2 = tL_messages_sendEncryptedMultiMedia.files.indexOf(inputEncryptedFile5);
                            if (iIndexOf2 >= 0) {
                                tL_messages_sendEncryptedMultiMedia.files.set(iIndexOf2, inputEncryptedFile);
                                if (inputEncryptedFile5.id == 1) {
                                    delayedMessage2.photoSize = (TLRPC.PhotoSize) delayedMessage2.extraHashMap.get(str + str3);
                                }
                                obj2 = tL_messages_sendEncryptedMultiMedia.messages.get(iIndexOf2);
                                tL_decryptedMessage = (TLRPC.TL_decryptedMessage) obj2;
                                if (tL_decryptedMessage != null) {
                                    TLRPC.DecryptedMessageMedia decryptedMessageMedia = tL_decryptedMessage.media;
                                    if ((decryptedMessageMedia instanceof TLRPC.TL_decryptedMessageMediaVideo) || (decryptedMessageMedia instanceof TLRPC.TL_decryptedMessageMediaPhoto) || (decryptedMessageMedia instanceof TLRPC.TL_decryptedMessageMediaDocument)) {
                                        tL_decryptedMessage.media.size = ((Long) objArr[5]).longValue();
                                    }
                                    TLRPC.DecryptedMessageMedia decryptedMessageMedia2 = tL_decryptedMessage.media;
                                    decryptedMessageMedia2.key = (byte[]) objArr[3];
                                    decryptedMessageMedia2.iv = (byte[]) objArr[4];
                                    if (delayedMessage2.type == 4) {
                                        uploadMultiMedia(delayedMessage2, null, inputEncryptedFile, str);
                                    } else {
                                        SecretChatHelper secretChatHelper = getSecretChatHelper();
                                        MessageObject messageObject2 = delayedMessage2.obj;
                                        secretChatHelper.performSendEncryptedRequest(tL_decryptedMessage, messageObject2.messageOwner, delayedMessage2.encryptedChat, inputEncryptedFile, delayedMessage2.originalPath, messageObject2);
                                    }
                                }
                                i6 = i11;
                                arrayList4 = arrayList7;
                            } else {
                                tL_decryptedMessage = null;
                                if (tL_decryptedMessage != null) {
                                }
                                i6 = i11;
                                arrayList4 = arrayList7;
                            }
                        } else {
                            tL_decryptedMessage = (TLRPC.TL_decryptedMessage) obj2;
                            if (tL_decryptedMessage != null) {
                            }
                            i6 = i11;
                            arrayList4 = arrayList7;
                        }
                        inputEncryptedFile4 = inputEncryptedFile;
                        i10 = i5 + 1;
                        str8 = str4;
                        inputFile2 = inputFile;
                        str9 = str3;
                        i8 = 2;
                        i9 = 0;
                        z = true;
                        arrayList6 = arrayList4;
                    }
                } else {
                    int i12 = delayedMessage2.type;
                    if (i12 == 0) {
                        inputMedia.file = inputFile2;
                        i7 = i10;
                        inputFile = inputFile2;
                        str5 = str;
                        arrayList5 = arrayList6;
                        inputEncryptedFile2 = inputEncryptedFile4;
                        str3 = str9;
                        str6 = str8;
                        lambda$performSendMessageRequest$60(delayedMessage2.sendRequest, delayedMessage2.obj, delayedMessage2.originalPath, delayedMessage2, true, null, delayedMessage2.parentObject, null, delayedMessage2.scheduled);
                    } else {
                        i7 = i10;
                        arrayList5 = arrayList6;
                        inputEncryptedFile2 = inputEncryptedFile4;
                        inputFile = inputFile2;
                        str5 = str;
                        str3 = str9;
                        str6 = str8;
                        if (i12 == z) {
                            if (inputMedia.file == null) {
                                delayedMessage = delayedMessage2;
                                TLRPC.PhotoSize photoSize3 = delayedMessage.coverPhotoSize;
                                if (photoSize3 == null || delayedMessage.performMediaUpload) {
                                    inputMedia.file = inputFile;
                                    if (delayedMessage.coverFile != null) {
                                        if (inputMedia.thumb == null) {
                                            TLRPC.PhotoSize photoSize4 = delayedMessage.photoSize;
                                            if (photoSize4 != null) {
                                                if (photoSize4.location != null) {
                                                    MessageObject messageObject3 = delayedMessage.obj;
                                                    if (messageObject3 != null) {
                                                        VideoEditedInfo videoEditedInfo = messageObject3.videoEditedInfo;
                                                        if (videoEditedInfo != null) {
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, null, delayedMessage.parentObject, null, delayedMessage.scheduled);
                                        i6 = i7;
                                        str = str5;
                                        arrayList4 = arrayList5;
                                        inputEncryptedFile = inputEncryptedFile2;
                                        str4 = str6;
                                    } else if (photoSize3 == null) {
                                    }
                                }
                                performSendDelayedMessage(delayedMessage);
                            } else {
                                delayedMessage = delayedMessage2;
                            }
                            if (delayedMessage.coverFile == null && delayedMessage.coverPhotoSize != null) {
                                delayedMessage.coverFile = inputFile;
                                delayedMessage.performCoverUpload = z;
                                performSendDelayedMessage(delayedMessage);
                            }
                            inputMedia.thumb = inputFile;
                            inputMedia.flags |= 4;
                            performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, null, delayedMessage.parentObject, null, delayedMessage.scheduled);
                            i6 = i7;
                            str = str5;
                            arrayList4 = arrayList5;
                            inputEncryptedFile = inputEncryptedFile2;
                            str4 = str6;
                        } else {
                            delayedMessage = delayedMessage2;
                            if (i12 == i8) {
                                if (inputMedia.file == null) {
                                    inputMedia.file = inputFile;
                                    if (inputMedia.thumb == null) {
                                        TLRPC.PhotoSize photoSize5 = delayedMessage.photoSize;
                                        if (photoSize5 != null) {
                                        }
                                    }
                                    performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, null, delayedMessage.parentObject, null, delayedMessage.scheduled);
                                    i6 = i7;
                                    str = str5;
                                    arrayList4 = arrayList5;
                                    inputEncryptedFile = inputEncryptedFile2;
                                    str4 = str6;
                                }
                                inputMedia.thumb = inputFile;
                                inputMedia.flags |= 4;
                                performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, null, delayedMessage.parentObject, null, delayedMessage.scheduled);
                                i6 = i7;
                                str = str5;
                                arrayList4 = arrayList5;
                                inputEncryptedFile = inputEncryptedFile2;
                                str4 = str6;
                            } else if (i12 == 3) {
                                inputMedia.file = inputFile;
                                performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, null, delayedMessage.parentObject, null, delayedMessage.scheduled);
                                i6 = i7;
                                str = str5;
                                arrayList4 = arrayList5;
                                inputEncryptedFile = inputEncryptedFile2;
                                str4 = str6;
                            } else {
                                if (i12 != 4) {
                                    str = str5;
                                    str4 = str6;
                                } else if (!(inputMedia instanceof TLRPC.TL_inputMediaUploadedDocument)) {
                                    str = str5;
                                    str4 = str6;
                                    inputEncryptedFile3 = null;
                                    if (inputMedia instanceof TLRPC.TL_inputMediaDocument) {
                                        HashMap<Object, Object> map3 = delayedMessage.extraHashMap;
                                        if (map3 != null) {
                                            StringBuilder sb2 = new StringBuilder();
                                            sb2.append(str);
                                            sb2.append("_doc");
                                            boolean z2 = map3.containsKey(sb2.toString());
                                            String str10 = z2 ? (String) delayedMessage.extraHashMap.get(str + "_doc") : str;
                                            MessageObject messageObject4 = (MessageObject) delayedMessage.extraHashMap.get(str10 + "_i");
                                            HashMap<Object, Object> map4 = delayedMessage.extraHashMap;
                                            if (map4 != null) {
                                                if (map4.containsKey(str10 + str3)) {
                                                    delayedMessage.photoSize = (TLRPC.PhotoSize) delayedMessage.extraHashMap.get(str10 + str3);
                                                }
                                            }
                                            HashMap<Object, Object> map5 = delayedMessage.extraHashMap;
                                            if (map5 != null) {
                                                if (map5.containsKey(str10 + str4)) {
                                                    delayedMessage.coverPhotoSize = (TLRPC.PhotoSize) delayedMessage.extraHashMap.get(str10 + str4);
                                                }
                                            }
                                            int iIndexOf3 = delayedMessage.messageObjects.indexOf(messageObject4);
                                            if (z2 && delayedMessage.coverFile == null && delayedMessage.coverPhotoSize != null) {
                                                iIndexOf = iIndexOf3;
                                                delayedMessage.coverFile = inputFile;
                                                delayedMessage.performCoverUpload = z;
                                                performSendDelayedMessage(delayedMessage, iIndexOf);
                                            } else if (delayedMessage.photoSize != null && inputMedia.thumb == null) {
                                                inputMedia.thumb = inputFile;
                                                inputMedia.flags |= 4;
                                                map = delayedMessage.extraHashMap;
                                                sb = new StringBuilder();
                                                sb.append(str);
                                                sb.append("_o");
                                                uploadMultiMedia(delayedMessage, inputMedia, inputEncryptedFile3, (String) map.get(sb.toString()));
                                            }
                                        }
                                    }
                                    inputMedia.file = inputFile;
                                    uploadMultiMedia(delayedMessage, inputMedia, inputEncryptedFile3, str);
                                } else if (inputMedia.file == null) {
                                    inputMedia.file = inputFile;
                                    HashMap<Object, Object> map6 = delayedMessage.extraHashMap;
                                    StringBuilder sb3 = new StringBuilder();
                                    str = str5;
                                    sb3.append(str);
                                    sb3.append("_i");
                                    int iIndexOf4 = delayedMessage.messageObjects.indexOf((MessageObject) map6.get(sb3.toString()));
                                    if (delayedMessage.extraHashMap.containsKey(str + str3)) {
                                        delayedMessage.photoSize = (TLRPC.PhotoSize) delayedMessage.extraHashMap.get(str + str3);
                                    }
                                    HashMap<Object, Object> map7 = delayedMessage.extraHashMap;
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append(str);
                                    str4 = str6;
                                    sb4.append(str4);
                                    if (map7.containsKey(sb4.toString())) {
                                        delayedMessage.coverPhotoSize = (TLRPC.PhotoSize) delayedMessage.extraHashMap.get(str + str4);
                                    }
                                    if (inputMedia.video_cover == null && (photoSize2 = delayedMessage.coverPhotoSize) != null && photoSize2.location != null) {
                                        delayedMessage.performCoverUpload = z;
                                    } else if (inputMedia.thumb != null || (photoSize = delayedMessage.photoSize) == null || photoSize.location == null) {
                                        inputEncryptedFile3 = null;
                                        uploadMultiMedia(delayedMessage, inputMedia, inputEncryptedFile3, str);
                                    } else {
                                        delayedMessage.performMediaUpload = z;
                                    }
                                    performSendDelayedMessage(delayedMessage, iIndexOf4);
                                    i6 = i7;
                                    arrayList4 = arrayList5;
                                    inputEncryptedFile = inputEncryptedFile2;
                                } else {
                                    str = str5;
                                    str4 = str6;
                                    inputEncryptedFile3 = null;
                                    String str11 = (String) delayedMessage.extraHashMap.get(str + "_doc");
                                    MessageObject messageObject5 = (MessageObject) delayedMessage.extraHashMap.get(str11 + "_i");
                                    if (delayedMessage.extraHashMap.containsKey(str11 + str3)) {
                                        delayedMessage.photoSize = (TLRPC.PhotoSize) delayedMessage.extraHashMap.get(str11 + str3);
                                    }
                                    if (delayedMessage.extraHashMap.containsKey(str11 + str4)) {
                                        delayedMessage.coverPhotoSize = (TLRPC.PhotoSize) delayedMessage.extraHashMap.get(str11 + str4);
                                    }
                                    iIndexOf = delayedMessage.messageObjects.indexOf(messageObject5);
                                    if (delayedMessage.coverFile != null || delayedMessage.coverPhotoSize == null) {
                                        inputMedia.thumb = inputFile;
                                        inputMedia.flags |= 4;
                                        map = delayedMessage.extraHashMap;
                                        sb = new StringBuilder();
                                        sb.append(str);
                                        sb.append("_o");
                                        uploadMultiMedia(delayedMessage, inputMedia, inputEncryptedFile3, (String) map.get(sb.toString()));
                                    }
                                    delayedMessage.coverFile = inputFile;
                                    delayedMessage.performCoverUpload = z;
                                    performSendDelayedMessage(delayedMessage, iIndexOf);
                                }
                                i6 = i7;
                                arrayList4 = arrayList5;
                                inputEncryptedFile = inputEncryptedFile2;
                            }
                        }
                        inputEncryptedFile4 = inputEncryptedFile;
                        i10 = i5 + 1;
                        str8 = str4;
                        inputFile2 = inputFile;
                        str9 = str3;
                        i8 = 2;
                        i9 = 0;
                        z = true;
                        arrayList6 = arrayList4;
                    }
                    i6 = i7;
                    str = str5;
                    arrayList4 = arrayList5;
                    inputEncryptedFile = inputEncryptedFile2;
                    str4 = str6;
                }
                arrayList4.remove(i6);
                i5 = i6 - 1;
                inputEncryptedFile4 = inputEncryptedFile;
                i10 = i5 + 1;
                str8 = str4;
                inputFile2 = inputFile;
                str9 = str3;
                i8 = 2;
                i9 = 0;
                z = true;
                arrayList6 = arrayList4;
            }
            if (!arrayList6.isEmpty()) {
                return;
            }
        } else if (i == NotificationCenter.fileUploadFailed) {
            str = (String) objArr[0];
            boolean zBooleanValue = ((Boolean) objArr[1]).booleanValue();
            ImportingHistory importingHistory3 = this.importingHistoryFiles.get(str);
            if (importingHistory3 != null) {
                importingHistory3.onFileFailedToUpload(str);
            }
            ImportingStickers importingStickers3 = this.importingStickersFiles.get(str);
            if (importingStickers3 != null) {
                importingStickers3.onFileFailedToUpload(str);
            }
            ArrayList<DelayedMessage> arrayList8 = this.delayedMessages.get(str);
            if (arrayList8 == null) {
                return;
            }
            int i13 = 0;
            while (i13 < arrayList8.size()) {
                DelayedMessage delayedMessage3 = arrayList8.get(i13);
                if ((zBooleanValue && delayedMessage3.sendEncryptedRequest != null) || (!zBooleanValue && delayedMessage3.sendRequest != null)) {
                    delayedMessage3.markAsError();
                    arrayList8.remove(i13);
                    i13--;
                }
                i13++;
            }
            if (!arrayList8.isEmpty()) {
                return;
            }
        } else {
            if (i == NotificationCenter.filePreparingStarted) {
                MessageObject messageObject6 = (MessageObject) objArr[0];
                if (messageObject6.getId() == 0) {
                    return;
                }
                ArrayList<DelayedMessage> arrayList9 = this.delayedMessages.get(messageObject6.messageOwner.attachPath);
                if (arrayList9 != null) {
                    for (int i14 = 0; i14 < arrayList9.size(); i14++) {
                        DelayedMessage delayedMessage4 = arrayList9.get(i14);
                        if (delayedMessage4.type == 4) {
                            int iIndexOf5 = delayedMessage4.messageObjects.indexOf(messageObject6);
                            delayedMessage4.photoSize = (TLRPC.PhotoSize) delayedMessage4.extraHashMap.get(messageObject6.messageOwner.attachPath + "_t");
                            if (delayedMessage4.extraHashMap.containsKey(messageObject6.messageOwner.attachPath + "_ct")) {
                                delayedMessage4.coverPhotoSize = (TLRPC.PhotoSize) delayedMessage4.extraHashMap.get(messageObject6.messageOwner.attachPath + "_ct");
                            }
                            delayedMessage4.performMediaUpload = true;
                            performSendDelayedMessage(delayedMessage4, iIndexOf5);
                        } else if (delayedMessage4.obj == messageObject6) {
                            delayedMessage4.videoEditedInfo = null;
                            performSendDelayedMessage(delayedMessage4);
                        }
                        arrayList9.remove(i14);
                    }
                    if (arrayList9.isEmpty()) {
                        this.delayedMessages.remove(messageObject6.messageOwner.attachPath);
                        return;
                    }
                    return;
                }
                return;
            }
            if (i == NotificationCenter.fileNewChunkAvailable) {
                MessageObject messageObject7 = (MessageObject) objArr[0];
                if (messageObject7.getId() == 0) {
                    return;
                }
                String str12 = (String) objArr[1];
                long jLongValue = ((Long) objArr[2]).longValue();
                long jLongValue2 = ((Long) objArr[3]).longValue();
                getFileLoader().checkUploadNewDataAvailable(str12, DialogObject.isEncryptedDialog(messageObject7.getDialogId()), jLongValue, jLongValue2, (Float) objArr[4]);
                if (jLongValue2 == 0 || (arrayList3 = this.delayedMessages.get(messageObject7.messageOwner.attachPath)) == null) {
                    return;
                }
                for (int i15 = 0; i15 < arrayList3.size(); i15++) {
                    DelayedMessage delayedMessage5 = arrayList3.get(i15);
                    if (delayedMessage5.type == 4) {
                        int i16 = 0;
                        while (true) {
                            if (i16 >= delayedMessage5.messageObjects.size()) {
                                break;
                            }
                            MessageObject messageObject8 = delayedMessage5.messageObjects.get(i16);
                            if (messageObject8 == messageObject7) {
                                delayedMessage5.obj.shouldRemoveVideoEditedInfo = true;
                                messageObject8.messageOwner.params.remove("ve");
                                TLRPC.Document document = delayedMessage5.obj.getDocument();
                                if (document != null) {
                                    document.size = jLongValue2;
                                }
                                ArrayList<TLRPC.Message> arrayList10 = new ArrayList<>();
                                arrayList10.add(messageObject8.messageOwner);
                                if (messageObject8.isQuickReply()) {
                                    quickReplyId2 = messageObject8.getQuickReplyId();
                                    i4 = 5;
                                } else if (messageObject8.scheduled) {
                                    quickReplyId2 = 0;
                                    i4 = 1;
                                } else {
                                    quickReplyId2 = 0;
                                    i4 = 0;
                                }
                                if (!delayedMessage5.paidMedia || i16 == 0) {
                                    getMessagesStorage().putMessages(arrayList10, false, true, false, 0, i4, quickReplyId2);
                                }
                            } else {
                                i16++;
                            }
                        }
                    } else {
                        MessageObject messageObject9 = delayedMessage5.obj;
                        if (messageObject9 == messageObject7) {
                            messageObject9.shouldRemoveVideoEditedInfo = true;
                            messageObject9.messageOwner.params.remove("ve");
                            TLRPC.Document document2 = delayedMessage5.obj.getDocument();
                            if (document2 != null) {
                                document2.size = jLongValue2;
                            }
                            ArrayList<TLRPC.Message> arrayList11 = new ArrayList<>();
                            arrayList11.add(delayedMessage5.obj.messageOwner);
                            if (delayedMessage5.obj.isQuickReply()) {
                                quickReplyId = delayedMessage5.obj.getQuickReplyId();
                                i3 = 5;
                            } else if (delayedMessage5.obj.scheduled) {
                                quickReplyId = 0;
                                i3 = 1;
                            } else {
                                quickReplyId = 0;
                                i3 = 0;
                            }
                            getMessagesStorage().putMessages(arrayList11, false, true, false, 0, i3, quickReplyId);
                            return;
                        }
                    }
                }
                return;
            }
            if (i == NotificationCenter.filePreparingFailed) {
                MessageObject messageObject10 = (MessageObject) objArr[0];
                if (messageObject10.getId() == 0 || (arrayList2 = this.delayedMessages.get((str2 = (String) objArr[1]))) == null) {
                    return;
                }
                int i17 = 0;
                while (i17 < arrayList2.size()) {
                    DelayedMessage delayedMessage6 = arrayList2.get(i17);
                    if (delayedMessage6.type != 4) {
                        if (delayedMessage6.obj == messageObject10) {
                            delayedMessage6.markAsError();
                            arrayList2.remove(i17);
                            i17--;
                            break;
                            break;
                        }
                    } else {
                        for (int i18 = 0; i18 < delayedMessage6.messages.size(); i18++) {
                            if (delayedMessage6.messageObjects.get(i18) == messageObject10) {
                                delayedMessage6.markAsError();
                                arrayList2.remove(i17);
                                i17--;
                                break;
                            }
                        }
                    }
                    i17++;
                }
                if (arrayList2.isEmpty()) {
                    this.delayedMessages.remove(str2);
                    return;
                }
                return;
            }
            if (i == NotificationCenter.httpFileDidLoad) {
                final String str13 = (String) objArr[0];
                ArrayList<DelayedMessage> arrayList12 = this.delayedMessages.get(str13);
                if (arrayList12 == null) {
                    return;
                }
                for (int i19 = 0; i19 < arrayList12.size(); i19++) {
                    final DelayedMessage delayedMessage7 = arrayList12.get(i19);
                    int i20 = delayedMessage7.type;
                    if (i20 == 0) {
                        messageObject = delayedMessage7.obj;
                        c = 0;
                    } else {
                        if (i20 == 2) {
                            messageObject = delayedMessage7.obj;
                        } else if (i20 == 4) {
                            MessageObject messageObject11 = (MessageObject) delayedMessage7.extraHashMap.get(str13);
                            messageObject = messageObject11;
                            if (messageObject11.getDocument() == null) {
                                c = 0;
                            }
                        } else {
                            c = 65535;
                            messageObject = null;
                        }
                        c = 1;
                    }
                    if (c == 0) {
                        final File file = new File(FileLoader.getDirectory(4), Utilities.MD5(str13) + "." + ImageLoader.getHttpUrlExtension(str13, "file"));
                        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda57
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$didReceivedNotification$2(file, messageObject, delayedMessage7, str13);
                            }
                        });
                    } else if (c == 1) {
                        final File file2 = new File(FileLoader.getDirectory(4), Utilities.MD5(str13) + ".gif");
                        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda58
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$didReceivedNotification$4(delayedMessage7, file2, messageObject);
                            }
                        });
                    }
                }
                str = str13;
            } else if (i == NotificationCenter.fileLoaded) {
                str = (String) objArr[0];
                ArrayList<DelayedMessage> arrayList13 = this.delayedMessages.get(str);
                if (arrayList13 == null) {
                    return;
                }
                for (int i21 = 0; i21 < arrayList13.size(); i21++) {
                    performSendDelayedMessage(arrayList13.get(i21));
                }
            } else {
                if ((i != NotificationCenter.httpFileDidFailedLoad && i != NotificationCenter.fileLoadFailed) || (arrayList = this.delayedMessages.get((str = (String) objArr[0]))) == null) {
                    return;
                }
                for (int i22 = 0; i22 < arrayList.size(); i22++) {
                    arrayList.get(i22).markAsError();
                }
            }
        }
        this.delayedMessages.remove(str);
    }

    public int editMessage(MessageObject messageObject, String str, boolean z, final BaseFragment baseFragment, ArrayList<TLRPC.MessageEntity> arrayList, int i) {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return 0;
        }
        final TLRPC.TL_messages_editMessage tL_messages_editMessage = new TLRPC.TL_messages_editMessage();
        tL_messages_editMessage.peer = getMessagesController().getInputPeer(messageObject.getDialogId());
        if (str != null) {
            tL_messages_editMessage.message = str;
            tL_messages_editMessage.flags |= 2048;
            tL_messages_editMessage.no_webpage = !z;
        }
        tL_messages_editMessage.id = messageObject.getId();
        TLRPC.Message message = messageObject.messageOwner;
        if (message != null && (message.flags & 1073741824) != 0) {
            tL_messages_editMessage.quick_reply_shortcut_id = message.quick_reply_shortcut_id;
            tL_messages_editMessage.flags |= 131072;
        }
        if (arrayList != null) {
            tL_messages_editMessage.entities = arrayList;
            tL_messages_editMessage.flags |= 8;
        }
        if (i != 0) {
            tL_messages_editMessage.schedule_date = i;
            tL_messages_editMessage.flags |= LiteMode.FLAG_CHAT_SCALE;
        }
        return getConnectionsManager().sendRequest(tL_messages_editMessage, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda85
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$editMessage$19(baseFragment, tL_messages_editMessage, tLObject, tL_error);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:336:0x069c, code lost:
    
        if (r1 == false) goto L324;
     */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0298 A[Catch: Exception -> 0x004b, TryCatch #0 {Exception -> 0x004b, blocks: (B:9:0x0024, B:11:0x002e, B:13:0x0040, B:23:0x0057, B:26:0x0061, B:29:0x0066, B:31:0x006a, B:46:0x0097, B:49:0x009d, B:51:0x00a3, B:53:0x00aa, B:87:0x01c4, B:89:0x01c8, B:90:0x01cc, B:98:0x01e4, B:103:0x01ed, B:105:0x01f1, B:107:0x01ff, B:109:0x0203, B:113:0x0214, B:114:0x0216, B:116:0x021a, B:132:0x0262, B:133:0x0265, B:135:0x0298, B:137:0x02a0, B:140:0x02a5, B:141:0x02ac, B:142:0x02af, B:145:0x02dd, B:147:0x02e5, B:162:0x0305, B:164:0x0309, B:166:0x030d, B:174:0x0327, B:176:0x032b, B:277:0x05a1, B:279:0x05a5, B:284:0x05ae, B:286:0x05cb, B:290:0x05db, B:292:0x05df, B:293:0x05eb, B:295:0x05f2, B:296:0x05fd, B:298:0x0601, B:300:0x0617, B:306:0x063d, B:307:0x063f, B:301:0x061c, B:303:0x0630, B:305:0x0636, B:309:0x0646, B:312:0x064b, B:318:0x066b, B:337:0x069e, B:324:0x0687, B:341:0x06a7, B:287:0x05d4, B:289:0x05d8, B:168:0x0313, B:170:0x0317, B:181:0x034c, B:183:0x0355, B:185:0x035d, B:187:0x036e, B:188:0x0385, B:189:0x038e, B:196:0x03be, B:198:0x03d4, B:200:0x03da, B:202:0x03e0, B:203:0x03e3, B:192:0x039b, B:194:0x03b5, B:195:0x03ba, B:208:0x0404, B:210:0x040d, B:212:0x0417, B:214:0x0428, B:215:0x0439, B:218:0x0448, B:221:0x0458, B:226:0x0465, B:228:0x046b, B:230:0x0474, B:237:0x04aa, B:239:0x04c2, B:241:0x04cf, B:242:0x04d3, B:244:0x04dd, B:250:0x04f5, B:246:0x04ec, B:248:0x04f0, B:233:0x0483, B:235:0x04a1, B:236:0x04a6, B:253:0x0508, B:260:0x0548, B:263:0x055e, B:267:0x0565, B:269:0x0572, B:270:0x0577, B:256:0x0524, B:258:0x053f, B:259:0x0544, B:273:0x0586, B:275:0x0590, B:110:0x020a, B:112:0x0210, B:120:0x0226, B:122:0x022a, B:131:0x0260, B:123:0x0233, B:125:0x0247, B:127:0x024d, B:128:0x0254, B:130:0x025c, B:95:0x01d9, B:97:0x01e1, B:32:0x0072, B:34:0x0076, B:40:0x0086, B:41:0x0089, B:54:0x00b9, B:56:0x00cb, B:57:0x00d0, B:59:0x00fa, B:61:0x010d, B:63:0x0113, B:65:0x0119, B:86:0x01b2, B:66:0x011c, B:69:0x0142, B:76:0x0161, B:77:0x016a, B:79:0x0170, B:81:0x0182, B:82:0x01a6), top: B:345:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:283:0x05ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void editMessage(MessageObject messageObject, TLRPC.TL_photo tL_photo, VideoEditedInfo videoEditedInfo, TLRPC.TL_document tL_document, String str, TLRPC.PhotoSize photoSize, HashMap<String, String> map, boolean z, boolean z2, Object obj) {
        long j;
        char c;
        Object obj2;
        String str2;
        char c2;
        HashMap<String, String> map2;
        VideoEditedInfo videoEditedInfo2;
        TLRPC.TL_document tL_document2;
        boolean z3;
        VideoEditedInfo videoEditedInfo3;
        long j2;
        HashMap<String, String> map3;
        char c3;
        Object obj3;
        TLRPC.InputMedia inputMedia;
        boolean z4;
        DelayedMessage delayedMessage;
        VideoEditedInfo videoEditedInfo4;
        char c4;
        VideoEditedInfo videoEditedInfo5;
        TLRPC.InputMedia inputMedia2;
        boolean z5;
        boolean z6;
        TLRPC.InputMedia inputMedia3;
        TLRPC.InputMedia inputMedia4;
        boolean z7;
        String str3;
        TLRPC.InputMedia inputMedia5;
        int i;
        TLRPC.InputMedia inputMedia6;
        TLRPC.InputMedia tL_inputMediaEmpty;
        int i2;
        int i3;
        TLRPC.Message message;
        TLRPC.EncryptedChat encryptedChat;
        TLRPC.TL_photo tL_photo2 = tL_photo;
        TLRPC.TL_document tL_document3 = tL_document;
        if (messageObject == null) {
            return;
        }
        HashMap<String, String> map4 = map == null ? new HashMap<>() : map;
        TLRPC.Message message2 = messageObject.messageOwner;
        messageObject.cancelEditing = false;
        try {
            long dialogId = messageObject.getDialogId();
            boolean z8 = !DialogObject.isEncryptedDialog(dialogId) || ((encryptedChat = getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(dialogId)))) != null && AndroidUtilities.getPeerLayerVersion(encryptedChat.layer) >= 101);
            if (z) {
                TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
                if ((messageMedia instanceof TLRPC.TL_messageMediaWebPage) || messageMedia == null || (messageMedia instanceof TLRPC.TL_messageMediaEmpty)) {
                    videoEditedInfo2 = videoEditedInfo;
                    c2 = 1;
                } else if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
                    tL_photo2 = (TLRPC.TL_photo) messageMedia.photo;
                    videoEditedInfo2 = videoEditedInfo;
                    c2 = 2;
                } else if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
                    tL_document3 = (TLRPC.TL_document) messageMedia.document;
                    c2 = (MessageObject.isVideoDocument(tL_document3) || videoEditedInfo != null) ? (char) 3 : (char) 7;
                    videoEditedInfo2 = messageObject.videoEditedInfo;
                } else {
                    videoEditedInfo2 = videoEditedInfo;
                    c2 = messageMedia instanceof TLRPC.TL_messageMediaToDo ? '\n' : (char) 65535;
                }
                HashMap<String, String> map5 = message2.params;
                obj2 = (obj == null && map5 != null && map5.containsKey("parentObject")) ? map5.get("parentObject") : obj;
                messageObject.editingMessage = message2.message;
                messageObject.editingMessageEntities = message2.entities;
                str2 = message2.attachPath;
                j = dialogId;
                map2 = map5;
            } else {
                TLRPC.MessageMedia messageMedia2 = message2.media;
                messageObject.previousMedia = messageMedia2;
                messageObject.previousMessage = message2.message;
                messageObject.previousMessageEntities = message2.entities;
                messageObject.previousAttachPath = message2.attachPath;
                if (messageMedia2 == null) {
                    new TLRPC.TL_messageMediaEmpty();
                }
                SerializedData serializedData = new SerializedData(true);
                writePreviousMessageData(message2, serializedData);
                SerializedData serializedData2 = new SerializedData(serializedData.length());
                writePreviousMessageData(message2, serializedData2);
                j = dialogId;
                map4.put("prevMedia", Base64.encodeToString(serializedData2.toByteArray(), 0));
                serializedData2.cleanup();
                if (tL_photo2 != null) {
                    TLRPC.TL_messageMediaPhoto tL_messageMediaPhoto = new TLRPC.TL_messageMediaPhoto();
                    message2.media = tL_messageMediaPhoto;
                    tL_messageMediaPhoto.flags |= 3;
                    tL_messageMediaPhoto.photo = tL_photo2;
                    tL_messageMediaPhoto.spoiler = z2;
                    if (str == null || str.length() <= 0 || !str.startsWith("http")) {
                        ArrayList arrayList = tL_photo2.sizes;
                        message2.attachPath = FileLoader.getInstance(this.currentAccount).getPathToAttach(((TLRPC.PhotoSize) arrayList.get(arrayList.size() - 1)).location, true).toString();
                    } else {
                        message2.attachPath = str;
                    }
                    c = 2;
                } else if (tL_document3 != null) {
                    TLRPC.TL_messageMediaDocument tL_messageMediaDocument = new TLRPC.TL_messageMediaDocument();
                    message2.media = tL_messageMediaDocument;
                    tL_messageMediaDocument.flags |= 3;
                    tL_messageMediaDocument.document = tL_document3;
                    tL_messageMediaDocument.spoiler = z2;
                    c = (MessageObject.isVideoDocument(tL_document) || videoEditedInfo != null) ? (char) 3 : (char) 7;
                    if (videoEditedInfo != null) {
                        map4.put("ve", videoEditedInfo.getString());
                    }
                    message2.attachPath = str;
                    if (photoSize instanceof ImageLoader.PhotoSizeFromPhoto) {
                        TLRPC.MessageMedia messageMedia3 = message2.media;
                        messageMedia3.flags |= LiteMode.FLAG_CALLS_ANIMATIONS;
                        messageMedia3.video_cover = ((ImageLoader.PhotoSizeFromPhoto) photoSize).photo;
                    } else if (photoSize != null) {
                        TLRPC.TL_photo tL_photo3 = new TLRPC.TL_photo();
                        tL_photo3.date = getConnectionsManager().getCurrentTime();
                        tL_photo3.sizes.add(photoSize);
                        tL_photo3.file_reference = new byte[0];
                        TLRPC.MessageMedia messageMedia4 = message2.media;
                        messageMedia4.video_cover = tL_photo3;
                        messageMedia4.flags |= LiteMode.FLAG_CALLS_ANIMATIONS;
                    }
                } else {
                    c = messageObject.messageOwner.media instanceof TLRPC.TL_messageMediaToDo ? '\n' : (char) 1;
                }
                message2.params = map4;
                message2.send_state = 3;
                message2.errorNewPriceStars = 0L;
                message2.errorAllowedPriceStars = 0L;
                obj2 = obj;
                str2 = str;
                c2 = c;
                map2 = map4;
                videoEditedInfo2 = videoEditedInfo;
            }
            if (message2.attachPath == null) {
                message2.attachPath = "";
            }
            message2.local_id = 0;
            int i4 = messageObject.type;
            if ((i4 == 3 || videoEditedInfo2 != null || i4 == 2) && !TextUtils.isEmpty(message2.attachPath)) {
                messageObject.attachPathExists = true;
            }
            VideoEditedInfo videoEditedInfo6 = messageObject.videoEditedInfo;
            if (videoEditedInfo6 != null && videoEditedInfo2 == null) {
                videoEditedInfo2 = videoEditedInfo6;
            }
            if (z) {
                tL_document2 = tL_document3;
                z3 = z8;
                videoEditedInfo3 = videoEditedInfo2;
            } else {
                CharSequence charSequence = messageObject.editingMessage;
                if (charSequence != null) {
                    String str4 = message2.message;
                    String string = charSequence.toString();
                    message2.message = string;
                    messageObject.caption = null;
                    if (c2 == 1) {
                        ArrayList<TLRPC.MessageEntity> arrayList2 = messageObject.editingMessageEntities;
                        if (arrayList2 != null) {
                            message2.entities = arrayList2;
                            i3 = message2.flags | 128;
                        } else {
                            if (!TextUtils.equals(str4, string)) {
                                i3 = message2.flags & (-129);
                            }
                            message = messageObject.messageOwner;
                            if (message != null && (message.media instanceof TLRPC.TL_messageMediaPaidMedia)) {
                                videoEditedInfo3 = videoEditedInfo2;
                            }
                            videoEditedInfo3 = videoEditedInfo2;
                            ArrayList<TLRPC.Message> arrayList3 = new ArrayList<>();
                            arrayList3.add(message2);
                            getMessagesStorage().putMessages(arrayList3, false, true, false, 0, messageObject.scheduled ? 1 : 0, 0L);
                            getMessagesController().getTopicsController().processEditedMessage(message2);
                            messageObject.type = -1;
                            messageObject.setType();
                            if (c2 == 1) {
                                TLRPC.MessageMedia messageMedia5 = messageObject.messageOwner.media;
                                if ((messageMedia5 instanceof TLRPC.TL_messageMediaPhoto) || (messageMedia5 instanceof TLRPC.TL_messageMediaDocument)) {
                                    messageObject.generateCaption();
                                } else {
                                    messageObject.resetLayout();
                                    messageObject.checkLayout();
                                }
                            }
                            messageObject.createMessageSendInfo();
                            ArrayList arrayList4 = new ArrayList();
                            arrayList4.add(messageObject);
                            tL_document2 = tL_document3;
                            z3 = z8;
                            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.replaceMessagesObjects, Long.valueOf(j), arrayList4);
                        }
                        message2.flags = i3;
                        message = messageObject.messageOwner;
                        if (message != null) {
                            videoEditedInfo3 = videoEditedInfo2;
                        }
                        videoEditedInfo3 = videoEditedInfo2;
                        ArrayList<TLRPC.Message> arrayList32 = new ArrayList<>();
                        arrayList32.add(message2);
                        getMessagesStorage().putMessages(arrayList32, false, true, false, 0, messageObject.scheduled ? 1 : 0, 0L);
                        getMessagesController().getTopicsController().processEditedMessage(message2);
                        messageObject.type = -1;
                        messageObject.setType();
                        if (c2 == 1) {
                        }
                        messageObject.createMessageSendInfo();
                        ArrayList arrayList42 = new ArrayList();
                        arrayList42.add(messageObject);
                        tL_document2 = tL_document3;
                        z3 = z8;
                        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.replaceMessagesObjects, Long.valueOf(j), arrayList42);
                    } else {
                        ArrayList<TLRPC.MessageEntity> arrayList5 = messageObject.editingMessageEntities;
                        if (arrayList5 != null) {
                            message2.entities = arrayList5;
                            i2 = message2.flags | 128;
                            videoEditedInfo3 = videoEditedInfo2;
                        } else {
                            videoEditedInfo3 = videoEditedInfo2;
                            ArrayList<TLRPC.MessageEntity> entities = getMediaDataController().getEntities(new CharSequence[]{messageObject.editingMessage}, z8);
                            if (entities != null && !entities.isEmpty()) {
                                message2.entities = entities;
                                i2 = message2.flags | 128;
                            } else if (!TextUtils.equals(str4, message2.message)) {
                                i2 = message2.flags & (-129);
                            }
                        }
                        message2.flags = i2;
                    }
                    messageObject.generateCaption();
                    ArrayList<TLRPC.Message> arrayList322 = new ArrayList<>();
                    arrayList322.add(message2);
                    getMessagesStorage().putMessages(arrayList322, false, true, false, 0, messageObject.scheduled ? 1 : 0, 0L);
                    getMessagesController().getTopicsController().processEditedMessage(message2);
                    messageObject.type = -1;
                    messageObject.setType();
                    if (c2 == 1) {
                    }
                    messageObject.createMessageSendInfo();
                    ArrayList arrayList422 = new ArrayList();
                    arrayList422.add(messageObject);
                    tL_document2 = tL_document3;
                    z3 = z8;
                    getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.replaceMessagesObjects, Long.valueOf(j), arrayList422);
                } else {
                    videoEditedInfo3 = videoEditedInfo2;
                    ArrayList<TLRPC.Message> arrayList3222 = new ArrayList<>();
                    arrayList3222.add(message2);
                    getMessagesStorage().putMessages(arrayList3222, false, true, false, 0, messageObject.scheduled ? 1 : 0, 0L);
                    getMessagesController().getTopicsController().processEditedMessage(message2);
                    messageObject.type = -1;
                    messageObject.setType();
                    if (c2 == 1) {
                    }
                    messageObject.createMessageSendInfo();
                    ArrayList arrayList4222 = new ArrayList();
                    arrayList4222.add(messageObject);
                    tL_document2 = tL_document3;
                    z3 = z8;
                    getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.replaceMessagesObjects, Long.valueOf(j), arrayList4222);
                }
            }
            String str5 = (map2 == null || !map2.containsKey("originalPath")) ? null : map2.get("originalPath");
            if (c2 < 1 || c2 > 3) {
                if ((c2 < 5 || c2 > '\b') && c2 != '\n') {
                    return;
                }
            }
            if (c2 == 1) {
                TLRPC.MessageMedia messageMedia6 = message2.media;
                if ((messageMedia6 == null || (messageMedia6 instanceof TLRPC.TL_messageMediaEmpty) || (messageMedia6.webpage instanceof TLRPC.TL_webPageEmpty)) && !messageObject.editingMessageSearchWebPage) {
                    tL_inputMediaEmpty = new TLRPC.TL_inputMediaEmpty();
                } else if (messageMedia6 == null || messageMedia6.webpage == null) {
                    c3 = c2;
                    map3 = map2;
                    j2 = j;
                    delayedMessage = null;
                    z6 = false;
                    z4 = false;
                    inputMedia5 = null;
                } else {
                    TLRPC.TL_inputMediaWebPage tL_inputMediaWebPage = new TLRPC.TL_inputMediaWebPage();
                    TLRPC.MessageMedia messageMedia7 = message2.media;
                    tL_inputMediaWebPage.url = messageMedia7.webpage.url;
                    tL_inputMediaWebPage.force_small_media = messageMedia7.force_small_media;
                    tL_inputMediaWebPage.force_large_media = messageMedia7.force_large_media;
                    tL_inputMediaEmpty = tL_inputMediaWebPage;
                }
                c3 = c2;
                map3 = map2;
                j2 = j;
                inputMedia6 = tL_inputMediaEmpty;
                delayedMessage = null;
                z6 = false;
                z4 = false;
                inputMedia5 = inputMedia6;
            } else {
                if (c2 == 2) {
                    TLRPC.InputMedia tL_inputMediaUploadedPhoto = new TLRPC.TL_inputMediaUploadedPhoto();
                    tL_inputMediaUploadedPhoto.spoiler = z2;
                    if (map2 != null && (str3 = map2.get("masks")) != null) {
                        SerializedData serializedData3 = new SerializedData(Utilities.hexToBytes(str3));
                        boolean z9 = false;
                        int int32 = serializedData3.readInt32(false);
                        int i5 = 0;
                        while (i5 < int32) {
                            tL_inputMediaUploadedPhoto.stickers.add(TLRPC.InputDocument.TLdeserialize(serializedData3, serializedData3.readInt32(z9), z9));
                            i5++;
                            int32 = int32;
                            z9 = false;
                        }
                        tL_inputMediaUploadedPhoto.flags |= 1;
                        serializedData3.cleanup();
                    }
                    HashMap<String, String> map6 = map2;
                    if (tL_photo2.access_hash == 0) {
                        inputMedia4 = tL_inputMediaUploadedPhoto;
                        z7 = true;
                    } else {
                        TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto = new TLRPC.TL_inputMediaPhoto();
                        TLRPC.TL_inputPhoto tL_inputPhoto = new TLRPC.TL_inputPhoto();
                        tL_inputMediaPhoto.id = tL_inputPhoto;
                        tL_inputPhoto.id = tL_photo2.id;
                        tL_inputPhoto.access_hash = tL_photo2.access_hash;
                        byte[] bArr = tL_photo2.file_reference;
                        tL_inputPhoto.file_reference = bArr;
                        if (bArr == null) {
                            tL_inputPhoto.file_reference = new byte[0];
                        }
                        tL_inputMediaPhoto.spoiler = z2;
                        inputMedia4 = tL_inputMediaPhoto;
                        z7 = false;
                    }
                    j2 = j;
                    DelayedMessage delayedMessage2 = new DelayedMessage(j2);
                    delayedMessage2.type = 0;
                    delayedMessage2.obj = messageObject;
                    delayedMessage2.originalPath = str5;
                    delayedMessage2.parentObject = obj2;
                    delayedMessage2.inputUploadMedia = tL_inputMediaUploadedPhoto;
                    delayedMessage2.performMediaUpload = z7;
                    if (str2 == null || str2.length() <= 0 || !str2.startsWith("http")) {
                        ArrayList arrayList6 = tL_photo2.sizes;
                        delayedMessage2.photoSize = (TLRPC.PhotoSize) arrayList6.get(arrayList6.size() - 1);
                        delayedMessage2.locationParent = tL_photo2;
                    } else {
                        delayedMessage2.httpLocation = str2;
                    }
                    map3 = map6;
                    c3 = c2;
                    delayedMessage = delayedMessage2;
                    z4 = z7;
                    inputMedia3 = inputMedia4;
                } else {
                    HashMap<String, String> map7 = map2;
                    j2 = j;
                    if (c2 == 3) {
                        TLRPC.InputMedia tL_inputMediaUploadedDocument = new TLRPC.TL_inputMediaUploadedDocument();
                        tL_inputMediaUploadedDocument.spoiler = z2;
                        if (map7 != null) {
                            map3 = map7;
                            String str6 = map3.get("masks");
                            if (str6 != null) {
                                SerializedData serializedData4 = new SerializedData(Utilities.hexToBytes(str6));
                                boolean z10 = false;
                                int int322 = serializedData4.readInt32(false);
                                int i6 = 0;
                                while (i6 < int322) {
                                    tL_inputMediaUploadedDocument.stickers.add(TLRPC.InputDocument.TLdeserialize(serializedData4, serializedData4.readInt32(z10), z10));
                                    i6++;
                                    z10 = false;
                                }
                                tL_inputMediaUploadedDocument.flags |= 1;
                                serializedData4.cleanup();
                            }
                        } else {
                            map3 = map7;
                        }
                        TLRPC.TL_document tL_document4 = tL_document2;
                        tL_inputMediaUploadedDocument.mime_type = tL_document4.mime_type;
                        tL_inputMediaUploadedDocument.attributes = tL_document4.attributes;
                        if (messageObject.isGif()) {
                            videoEditedInfo4 = videoEditedInfo3;
                        } else {
                            if (videoEditedInfo3 != null) {
                                videoEditedInfo4 = videoEditedInfo3;
                                if (!videoEditedInfo4.muted) {
                                }
                            } else {
                                videoEditedInfo4 = videoEditedInfo3;
                            }
                            tL_inputMediaUploadedDocument.nosound_video = true;
                            if (BuildVars.DEBUG_VERSION) {
                                FileLog.d("nosound_video = true");
                            }
                        }
                        char c5 = c2;
                        if (tL_document4.access_hash == 0) {
                            inputMedia2 = tL_inputMediaUploadedDocument;
                            c4 = c5;
                            videoEditedInfo5 = videoEditedInfo4;
                            z4 = true;
                        } else {
                            TLRPC.TL_inputMediaDocument tL_inputMediaDocument = new TLRPC.TL_inputMediaDocument();
                            TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
                            tL_inputMediaDocument.id = tL_inputDocument;
                            c4 = c5;
                            videoEditedInfo5 = videoEditedInfo4;
                            tL_inputDocument.id = tL_document4.id;
                            tL_inputDocument.access_hash = tL_document4.access_hash;
                            byte[] bArr2 = tL_document4.file_reference;
                            tL_inputDocument.file_reference = bArr2;
                            if (bArr2 == null) {
                                tL_inputDocument.file_reference = new byte[0];
                            }
                            tL_inputMediaDocument.spoiler = z2;
                            inputMedia2 = tL_inputMediaDocument;
                            z4 = false;
                        }
                        DelayedMessage delayedMessage3 = new DelayedMessage(j2);
                        delayedMessage3.type = 1;
                        delayedMessage3.obj = messageObject;
                        delayedMessage3.originalPath = str5;
                        delayedMessage3.parentObject = obj2;
                        delayedMessage3.inputUploadMedia = tL_inputMediaUploadedDocument;
                        if (!tL_document4.thumbs.isEmpty()) {
                            TLRPC.PhotoSize photoSize2 = tL_document4.thumbs.get(0);
                            if (!(photoSize2 instanceof TLRPC.TL_photoStrippedSize)) {
                                delayedMessage3.photoSize = photoSize2;
                                delayedMessage3.locationParent = tL_document4;
                            }
                        }
                        delayedMessage3.videoEditedInfo = videoEditedInfo5;
                        if (photoSize instanceof ImageLoader.PhotoSizeFromPhoto) {
                            tL_inputMediaUploadedDocument.video_cover = ((ImageLoader.PhotoSizeFromPhoto) photoSize).inputPhoto;
                            tL_inputMediaUploadedDocument.flags |= 64;
                        } else {
                            if (photoSize != null && !(photoSize instanceof TLRPC.TL_photoStrippedSize)) {
                                delayedMessage3.coverPhotoSize = photoSize;
                                z5 = true;
                            }
                            delayedMessage3.performMediaUpload = z4;
                            delayedMessage3.performCoverUpload = z5;
                            c3 = c4;
                            z6 = z5;
                            delayedMessage = delayedMessage3;
                            inputMedia5 = inputMedia2;
                        }
                        z5 = false;
                        delayedMessage3.performMediaUpload = z4;
                        delayedMessage3.performCoverUpload = z5;
                        c3 = c4;
                        z6 = z5;
                        delayedMessage = delayedMessage3;
                        inputMedia5 = inputMedia2;
                    } else {
                        VideoEditedInfo videoEditedInfo7 = videoEditedInfo3;
                        map3 = map7;
                        TLRPC.TL_document tL_document5 = tL_document2;
                        if (c2 == 7) {
                            TLRPC.InputMedia tL_inputMediaUploadedDocument2 = new TLRPC.TL_inputMediaUploadedDocument();
                            tL_inputMediaUploadedDocument2.mime_type = tL_document5.mime_type;
                            tL_inputMediaUploadedDocument2.attributes = tL_document5.attributes;
                            tL_inputMediaUploadedDocument2.spoiler = z2;
                            char c6 = c2;
                            if (tL_document5.access_hash == 0) {
                                inputMedia = tL_inputMediaUploadedDocument2;
                                obj3 = obj2;
                                z4 = true;
                            } else {
                                TLRPC.TL_inputMediaDocument tL_inputMediaDocument2 = new TLRPC.TL_inputMediaDocument();
                                TLRPC.TL_inputDocument tL_inputDocument2 = new TLRPC.TL_inputDocument();
                                tL_inputMediaDocument2.id = tL_inputDocument2;
                                obj3 = obj2;
                                tL_inputDocument2.id = tL_document5.id;
                                tL_inputDocument2.access_hash = tL_document5.access_hash;
                                byte[] bArr3 = tL_document5.file_reference;
                                tL_inputDocument2.file_reference = bArr3;
                                if (bArr3 == null) {
                                    tL_inputDocument2.file_reference = new byte[0];
                                }
                                tL_inputMediaDocument2.spoiler = z2;
                                inputMedia = tL_inputMediaDocument2;
                                z4 = false;
                            }
                            DelayedMessage delayedMessage4 = new DelayedMessage(j2);
                            delayedMessage4.originalPath = str5;
                            delayedMessage4.type = 2;
                            delayedMessage4.obj = messageObject;
                            if (!tL_document5.thumbs.isEmpty() && (videoEditedInfo7 == null || !videoEditedInfo7.isSticker)) {
                                TLRPC.PhotoSize photoSize3 = tL_document5.thumbs.get(0);
                                if (!(photoSize3 instanceof TLRPC.TL_photoStrippedSize)) {
                                    delayedMessage4.photoSize = photoSize3;
                                    delayedMessage4.locationParent = tL_document5;
                                }
                            }
                            obj2 = obj3;
                            delayedMessage4.parentObject = obj2;
                            delayedMessage4.inputUploadMedia = tL_inputMediaUploadedDocument2;
                            delayedMessage4.performMediaUpload = z4;
                            delayedMessage = delayedMessage4;
                            c3 = c6;
                            inputMedia3 = inputMedia;
                        } else {
                            c3 = c2;
                            if (c3 == '\n') {
                                TLRPC.MessageMedia media = MessageObject.getMedia(messageObject.messageOwner);
                                if (media instanceof TLRPC.TL_messageMediaToDo) {
                                    TLRPC.TL_inputMediaTodo tL_inputMediaTodo = new TLRPC.TL_inputMediaTodo();
                                    tL_inputMediaTodo.todo = ((TLRPC.TL_messageMediaToDo) media).todo;
                                    inputMedia6 = tL_inputMediaTodo;
                                    delayedMessage = null;
                                    z6 = false;
                                    z4 = false;
                                    inputMedia5 = inputMedia6;
                                }
                            }
                            delayedMessage = null;
                            z6 = false;
                            z4 = false;
                            inputMedia5 = null;
                        }
                    }
                }
                z6 = false;
                inputMedia5 = inputMedia3;
            }
            boolean z11 = inputMedia5 instanceof TLRPC.TL_inputMediaEmpty;
            TLRPC.InputMedia inputMedia7 = inputMedia5;
            if (z11) {
                int i7 = messageObject.type;
                if (i7 != 0) {
                    inputMedia7 = inputMedia5;
                    if (i7 == 19) {
                        inputMedia7 = null;
                    }
                }
            }
            TLRPC.TL_messages_editMessage tL_messages_editMessage = new TLRPC.TL_messages_editMessage();
            tL_messages_editMessage.id = messageObject.getId();
            tL_messages_editMessage.peer = getMessagesController().getInputPeer(j2);
            TLRPC.Message message3 = messageObject.messageOwner;
            tL_messages_editMessage.invert_media = message3.invert_media;
            if (inputMedia7 != null) {
                tL_messages_editMessage.flags |= LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM;
                tL_messages_editMessage.media = inputMedia7;
            } else if (!messageObject.editingMessageSearchWebPage) {
                tL_messages_editMessage.no_webpage = true;
            }
            if (messageObject.scheduled) {
                tL_messages_editMessage.schedule_date = message3.date;
                tL_messages_editMessage.flags |= LiteMode.FLAG_CHAT_SCALE;
            }
            if ((message3.flags & 1073741824) != 0) {
                tL_messages_editMessage.quick_reply_shortcut_id = message3.quick_reply_shortcut_id;
                tL_messages_editMessage.flags |= 131072;
            }
            CharSequence charSequence2 = messageObject.editingMessage;
            if (charSequence2 != null) {
                tL_messages_editMessage.message = charSequence2.toString();
                int i8 = tL_messages_editMessage.flags;
                tL_messages_editMessage.flags = i8 | 2048;
                tL_messages_editMessage.no_webpage = !messageObject.editingMessageSearchWebPage;
                ArrayList<TLRPC.MessageEntity> arrayList7 = messageObject.editingMessageEntities;
                if (arrayList7 != null) {
                    tL_messages_editMessage.entities = arrayList7;
                    i = i8 | 2056;
                } else {
                    ArrayList<TLRPC.MessageEntity> entities2 = getMediaDataController().getEntities(new CharSequence[]{messageObject.editingMessage}, z3);
                    if (entities2 != null && !entities2.isEmpty()) {
                        tL_messages_editMessage.entities = entities2;
                        i = tL_messages_editMessage.flags | 8;
                    }
                    messageObject.editingMessage = null;
                    messageObject.editingMessageEntities = null;
                }
                tL_messages_editMessage.flags = i;
                messageObject.editingMessage = null;
                messageObject.editingMessageEntities = null;
            }
            if (delayedMessage != null) {
                delayedMessage.sendRequest = tL_messages_editMessage;
            }
            if (c3 == 1) {
                performSendMessageRequest(tL_messages_editMessage, messageObject, null, delayedMessage, obj2, map3, messageObject.scheduled);
                return;
            }
            if (c3 == 2) {
                if (!z4 && !z6) {
                    lambda$performSendMessageRequest$60(tL_messages_editMessage, messageObject, str5, null, true, delayedMessage, obj2, map3, messageObject.scheduled);
                    return;
                }
            } else {
                if (c3 != 3) {
                    if (c3 != 6) {
                        if (c3 == 7) {
                            if (!z4) {
                                if (z6) {
                                }
                            }
                        } else if (c3 == '\b') {
                            if (!z4) {
                            }
                        } else if (c3 != '\n') {
                            return;
                        }
                    }
                    performSendMessageRequest(tL_messages_editMessage, messageObject, str5, delayedMessage, obj2, map3, messageObject.scheduled);
                    return;
                }
                if (!z4) {
                    if (z6) {
                    }
                    performSendMessageRequest(tL_messages_editMessage, messageObject, str5, delayedMessage, obj2, map3, messageObject.scheduled);
                    return;
                }
            }
            performSendDelayedMessage(delayedMessage);
        } catch (Exception e) {
            FileLog.e(e);
            revertEditingMessageObject(messageObject);
        }
    }

    public TLRPC.TL_photo generatePhotoSizes(String str, Uri uri) {
        return generatePhotoSizes(null, str, uri, false);
    }

    public TLRPC.TL_photo generatePhotoSizes(TLRPC.TL_photo tL_photo, String str, Uri uri, boolean z) {
        Bitmap bitmapLoadBitmap = ImageLoader.loadBitmap(str, uri, AndroidUtilities.getPhotoSize(z), AndroidUtilities.getPhotoSize(z), true);
        if (bitmapLoadBitmap == null) {
            bitmapLoadBitmap = ImageLoader.loadBitmap(str, uri, 800.0f, 800.0f, true);
        }
        ArrayList arrayList = new ArrayList();
        TLRPC.PhotoSize photoSizeScaleAndSaveImage = ImageLoader.scaleAndSaveImage(bitmapLoadBitmap, 90.0f, 90.0f, 55, true);
        if (photoSizeScaleAndSaveImage != null) {
            arrayList.add(photoSizeScaleAndSaveImage);
        }
        TLRPC.PhotoSize photoSizeScaleAndSaveImage2 = z ? ImageLoader.scaleAndSaveImage(null, bitmapLoadBitmap, Bitmap.CompressFormat.JPEG, true, AndroidUtilities.getPhotoSize(z), AndroidUtilities.getPhotoSize(z), 99, false, 101, 101, false) : ImageLoader.scaleAndSaveImage(bitmapLoadBitmap, AndroidUtilities.getPhotoSize(z), AndroidUtilities.getPhotoSize(z), true, 80, false, 101, 101);
        if (photoSizeScaleAndSaveImage2 != null) {
            arrayList.add(photoSizeScaleAndSaveImage2);
        }
        if (bitmapLoadBitmap != null) {
            bitmapLoadBitmap.recycle();
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        getUserConfig().saveConfig(false);
        TLRPC.TL_photo tL_photo2 = tL_photo == null ? new TLRPC.TL_photo() : tL_photo;
        tL_photo2.date = getConnectionsManager().getCurrentTime();
        tL_photo2.sizes = arrayList;
        tL_photo2.file_reference = new byte[0];
        return tL_photo2;
    }

    protected ArrayList<DelayedMessage> getDelayedMessages(String str) {
        return this.delayedMessages.get(str);
    }

    public ImportingHistory getImportingHistory(long j) {
        return (ImportingHistory) this.importingHistoryMap.get(j);
    }

    public ImportingStickers getImportingStickers(String str) {
        return this.importingStickersMap.get(str);
    }

    public TLRPC.Message getMessageFromUpdate(TLRPC.Update update) {
        if (update instanceof TLRPC.TL_updateNewMessage) {
            return ((TLRPC.TL_updateNewMessage) update).message;
        }
        if (update instanceof TLRPC.TL_updateNewChannelMessage) {
            return ((TLRPC.TL_updateNewChannelMessage) update).message;
        }
        if (update instanceof TLRPC.TL_updateNewScheduledMessage) {
            return ((TLRPC.TL_updateNewScheduledMessage) update).message;
        }
        if (update instanceof TLRPC.TL_updateQuickReplyMessage) {
            return ((TLRPC.TL_updateQuickReplyMessage) update).message;
        }
        return null;
    }

    public long getNextRandomId() {
        long jNextLong = 0;
        while (jNextLong == 0) {
            jNextLong = Utilities.random.nextLong();
        }
        return jNextLong;
    }

    public int getSendingMessageId(long j) {
        for (int i = 0; i < this.sendingMessages.size(); i++) {
            TLRPC.Message messageValueAt = this.sendingMessages.valueAt(i);
            if (messageValueAt.dialog_id == j) {
                return messageValueAt.id;
            }
        }
        for (int i2 = 0; i2 < this.uploadMessages.size(); i2++) {
            TLRPC.Message messageValueAt2 = this.uploadMessages.valueAt(i2);
            if (messageValueAt2.dialog_id == j) {
                return messageValueAt2.id;
            }
        }
        return 0;
    }

    public Boolean getSendingTodoValue(MessageObject messageObject, TLRPC.TodoItem todoItem) {
        return this.waitingForTodoUpdate.get(Integer.valueOf(Objects.hash(Long.valueOf(messageObject.getDialogId()), Integer.valueOf(messageObject.getId()), Integer.valueOf(todoItem.id))));
    }

    protected long getVoteSendTime(long j) {
        return ((Long) this.voteSendTime.get(j, 0L)).longValue();
    }

    public boolean isImportingHistory() {
        return this.importingHistoryMap.size() != 0;
    }

    public boolean isImportingStickers() {
        return this.importingStickersMap.size() != 0;
    }

    public boolean isSendingCallback(MessageObject messageObject, TLRPC.KeyboardButton keyboardButton) {
        int i = 0;
        if (messageObject == null || keyboardButton == null) {
            return false;
        }
        if (keyboardButton instanceof TLRPC.TL_keyboardButtonUrlAuth) {
            i = 3;
        } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonGame) {
            i = 1;
        } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonBuy) {
            i = 2;
        }
        return this.waitingForCallback.containsKey(messageObject.getDialogId() + "_" + messageObject.getId() + "_" + Utilities.bytesToHex(keyboardButton.data) + "_" + i);
    }

    public boolean isSendingCurrentLocation(MessageObject messageObject, TLRPC.KeyboardButton keyboardButton) {
        if (messageObject == null || keyboardButton == null) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(messageObject.getDialogId());
        sb.append("_");
        sb.append(messageObject.getId());
        sb.append("_");
        sb.append(Utilities.bytesToHex(keyboardButton.data));
        sb.append("_");
        sb.append(keyboardButton instanceof TLRPC.TL_keyboardButtonGame ? "1" : "0");
        return this.waitingForLocation.containsKey(sb.toString());
    }

    public boolean isSendingMessage(int i) {
        return this.sendingMessages.indexOfKey(i) >= 0 || this.editingMessages.indexOfKey(i) >= 0;
    }

    public boolean isSendingMessageIdDialog(long j) {
        return ((Integer) this.sendingMessagesIdDialogs.get(j, 0)).intValue() > 0;
    }

    public boolean isSendingPaidMessage(int i, int i2) {
        HashMap<String, ArrayList<DelayedMessage>> map = this.delayedMessages;
        DelayedMessage delayedMessage = null;
        if (map != null) {
            for (ArrayList<DelayedMessage> arrayList : map.values()) {
                if (arrayList != null) {
                    Iterator<DelayedMessage> it = arrayList.iterator();
                    while (it.hasNext()) {
                        DelayedMessage next = it.next();
                        ArrayList<TLRPC.Message> arrayList2 = next.messages;
                        if (arrayList2 != null) {
                            Iterator<TLRPC.Message> it2 = arrayList2.iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    break;
                                }
                                TLRPC.Message next2 = it2.next();
                                if (next2 != null && next2.id == i) {
                                    delayedMessage = next;
                                    break;
                                }
                            }
                            if (delayedMessage != null) {
                                break;
                            }
                        }
                    }
                    if (delayedMessage != null) {
                        break;
                    }
                }
            }
        }
        if (delayedMessage != null && i2 >= 0 && i2 < delayedMessage.messages.size()) {
            i = delayedMessage.messages.get(i2).id;
        }
        return this.sendingMessages.indexOfKey(i) >= 0 || this.editingMessages.indexOfKey(i) >= 0;
    }

    public byte[] isSendingVote(MessageObject messageObject) {
        if (messageObject == null) {
            return null;
        }
        return this.waitingForVote.get("poll_" + messageObject.getPollId());
    }

    public boolean isUploadingMessageIdDialog(long j) {
        return ((Integer) this.uploadingMessagesIdDialogs.get(j, 0)).intValue() > 0;
    }

    public void onMessageEdited(TLRPC.Message message) {
        if (message == null || message.reply_markup == null) {
            return;
        }
        List<String> listRemove = this.waitingForCallbackMap.remove(message.dialog_id + "_" + message.id);
        if (listRemove != null) {
            Iterator<String> it = listRemove.iterator();
            while (it.hasNext()) {
                this.waitingForCallback.remove(it.next());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: performSendMessageRequest, reason: merged with bridge method [inline-methods] */
    public void lambda$performSendMessageRequest$60(final TLObject tLObject, final MessageObject messageObject, final String str, final DelayedMessage delayedMessage, final boolean z, final DelayedMessage delayedMessage2, final Object obj, final HashMap<String, String> map, final boolean z2) {
        DelayedMessage delayedMessageFindMaxDelayedMessageForMessageId;
        ArrayList<DelayedMessageSendAfterRequest> arrayList;
        if (!(tLObject instanceof TLRPC.TL_messages_editMessage) && z && (delayedMessageFindMaxDelayedMessageForMessageId = findMaxDelayedMessageForMessageId(messageObject.getId(), messageObject.getDialogId())) != null) {
            delayedMessageFindMaxDelayedMessageForMessageId.addDelayedRequest(tLObject, messageObject, str, obj, delayedMessage2, delayedMessage != null ? delayedMessage.scheduled : false);
            if (delayedMessage == null || (arrayList = delayedMessage.requests) == null) {
                return;
            }
            delayedMessageFindMaxDelayedMessageForMessageId.requests.addAll(arrayList);
            return;
        }
        final TLRPC.Message message = messageObject.messageOwner;
        putToSendingMessages(message, z2);
        if (StarsController.getInstance(this.currentAccount).beforeSendingFinalRequest(tLObject, messageObject, new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda82
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequest$60(tLObject, messageObject, str, delayedMessage, z, delayedMessage2, obj, map, z2);
            }
        })) {
            message.reqId = getConnectionsManager().sendRequest(tLObject, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda83
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$performSendMessageRequest$75(tLObject, messageObject, str, delayedMessage, z, delayedMessage2, obj, map, z2, message, tLObject2, tL_error);
                }
            }, new QuickAckDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda84
                @Override // org.telegram.tgnet.QuickAckDelegate
                public final void run() {
                    this.f$0.lambda$performSendMessageRequest$77(message);
                }
            }, (tLObject instanceof TLRPC.TL_messages_sendMessage ? 128 : 0) | 68);
            if (delayedMessage != null) {
                delayedMessage.sendDelayedRequests();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: performSendMessageRequestMulti, reason: merged with bridge method [inline-methods] */
    public void lambda$performSendMessageRequestMulti$50(final TLObject tLObject, final ArrayList<MessageObject> arrayList, final ArrayList<String> arrayList2, final ArrayList<Object> arrayList3, final DelayedMessage delayedMessage, final boolean z) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            putToSendingMessages(arrayList.get(i).messageOwner, z);
        }
        if (StarsController.getInstance(this.currentAccount).beforeSendingFinalRequest(tLObject, arrayList, new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSendMessageRequestMulti$50(tLObject, arrayList, arrayList2, arrayList3, delayedMessage, z);
            }
        })) {
            getConnectionsManager().sendRequest(tLObject, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda60
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$performSendMessageRequestMulti$59(arrayList3, tLObject, arrayList, arrayList2, delayedMessage, z, tLObject2, tL_error);
                }
            }, (QuickAckDelegate) null, 68);
        }
    }

    public void prepareImportHistory(final long j, final Uri uri, final ArrayList<Uri> arrayList, final MessagesStorage.LongCallback longCallback) {
        if (this.importingHistoryMap.get(j) != null) {
            longCallback.run(0L);
            return;
        }
        if (DialogObject.isChatDialog(j)) {
            long j2 = -j;
            TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(j2));
            if (chat != null && !chat.megagroup) {
                getMessagesController().convertToMegaGroup(null, j2, null, new MessagesStorage.LongCallback() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda34
                    @Override // org.telegram.messenger.MessagesStorage.LongCallback
                    public final void run(long j3) {
                        this.f$0.lambda$prepareImportHistory$79(uri, arrayList, longCallback, j3);
                    }
                });
                return;
            }
        }
        new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() throws IOException {
                this.f$0.lambda$prepareImportHistory$84(arrayList, j, uri, longCallback);
            }
        }).start();
    }

    public void prepareImportStickers(final String str, final String str2, final String str3, final ArrayList<ImportingSticker> arrayList, final MessagesStorage.StringCallback stringCallback) {
        if (this.importingStickersMap.get(str2) != null) {
            stringCallback.run(null);
        } else {
            new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$prepareImportStickers$87(str, str2, str3, arrayList, stringCallback);
                }
            }).start();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void processForwardFromMyName(MessageObject messageObject, long j, long j2, long j3, MessageSuggestionParams messageSuggestionParams) {
        long j4;
        long j5;
        ArrayList<MessageObject> arrayList;
        SendMessageParams sendMessageParamsOf;
        HashMap map;
        SendMessagesHelper sendMessagesHelper = this;
        if (messageObject == null) {
            return;
        }
        TLRPC.Message message = messageObject.messageOwner;
        TLRPC.MessageMedia messageMedia = message.media;
        ArrayList arrayList2 = null;
        if (messageMedia != null && !(messageMedia instanceof TLRPC.TL_messageMediaEmpty) && !(messageMedia instanceof TLRPC.TL_messageMediaWebPage) && !(messageMedia instanceof TLRPC.TL_messageMediaGame) && !(messageMedia instanceof TLRPC.TL_messageMediaInvoice)) {
            if (DialogObject.isEncryptedDialog(j)) {
                TLRPC.Message message2 = messageObject.messageOwner;
                if (message2.peer_id != null) {
                    TLRPC.MessageMedia messageMedia2 = message2.media;
                    if ((messageMedia2.photo instanceof TLRPC.TL_photo) || (messageMedia2.document instanceof TLRPC.TL_document)) {
                        HashMap map2 = new HashMap();
                        map2.put("parentObject", "sent_" + messageObject.messageOwner.peer_id.channel_id + "_" + messageObject.getId() + "_" + messageObject.getDialogId() + "_" + messageObject.type + "_" + messageObject.getSize());
                        map = map2;
                    } else {
                        map = null;
                    }
                    TLRPC.Message message3 = messageObject.messageOwner;
                    TLRPC.MessageMedia messageMedia3 = message3.media;
                    TLRPC.Photo photo = messageMedia3.photo;
                    if (photo instanceof TLRPC.TL_photo) {
                        sendMessageParamsOf = SendMessageParams.of((TLRPC.TL_photo) photo, null, j, messageObject.replyMessageObject, null, message3.message, message3.entities, null, map, true, 0, messageMedia3.ttl_seconds, messageObject, false);
                        sendMessageParamsOf.payStars = j2;
                        sendMessageParamsOf.monoForumPeer = j3;
                        sendMessageParamsOf.suggestionParams = messageSuggestionParams;
                        sendMessagesHelper = this;
                    } else {
                        j4 = j3;
                        j5 = j2;
                        TLRPC.Document document = messageMedia3.document;
                        if (document instanceof TLRPC.TL_document) {
                            sendMessageParamsOf = SendMessageParams.of((TLRPC.TL_document) document, null, message3.attachPath, j, messageObject.replyMessageObject, null, message3.message, message3.entities, null, map, true, 0, messageMedia3.ttl_seconds, messageObject, null, false);
                            sendMessageParamsOf.payStars = j5;
                        } else if ((messageMedia3 instanceof TLRPC.TL_messageMediaVenue) || (messageMedia3 instanceof TLRPC.TL_messageMediaGeo)) {
                            sendMessageParamsOf = SendMessageParams.of(messageMedia3, j, messageObject.replyMessageObject, (MessageObject) null, (TLRPC.ReplyMarkup) null, (HashMap<String, String>) null, true, 0);
                            sendMessageParamsOf.payStars = j5;
                            j4 = j3;
                        } else {
                            if (messageMedia3.phone_number == null) {
                                if (DialogObject.isEncryptedDialog(j)) {
                                    return;
                                }
                                arrayList = new ArrayList<>();
                                arrayList.add(messageObject);
                                sendMessage(arrayList, j, true, false, true, 0, null, -1, j2, j3, messageSuggestionParams);
                                return;
                            }
                            TLRPC.TL_userContact_old2 tL_userContact_old2 = new TLRPC.TL_userContact_old2();
                            TLRPC.MessageMedia messageMedia4 = messageObject.messageOwner.media;
                            tL_userContact_old2.phone = messageMedia4.phone_number;
                            tL_userContact_old2.first_name = messageMedia4.first_name;
                            tL_userContact_old2.last_name = messageMedia4.last_name;
                            tL_userContact_old2.id = messageMedia4.user_id;
                            sendMessageParamsOf = SendMessageParams.of((TLRPC.User) tL_userContact_old2, j, messageObject.replyMessageObject, (MessageObject) null, (TLRPC.ReplyMarkup) null, (HashMap<String, String>) null, true, 0);
                            sendMessageParamsOf.monoForumPeer = j4;
                            sendMessageParamsOf.suggestionParams = messageSuggestionParams;
                            sendMessageParamsOf.payStars = j5;
                        }
                    }
                }
            }
            sendMessagesHelper.sendMessage(sendMessageParamsOf);
        }
        j4 = j3;
        j5 = j2;
        if (message.message == null) {
            if (DialogObject.isEncryptedDialog(j)) {
                arrayList = new ArrayList<>();
                arrayList.add(messageObject);
                sendMessage(arrayList, j, true, false, true, 0, null, -1, j2, j3, messageSuggestionParams);
                return;
            }
            return;
        }
        TLRPC.WebPage webPage = messageMedia instanceof TLRPC.TL_messageMediaWebPage ? messageMedia.webpage : null;
        ArrayList arrayList3 = message.entities;
        if (arrayList3 != null && !arrayList3.isEmpty()) {
            arrayList2 = new ArrayList();
            for (int i = 0; i < messageObject.messageOwner.entities.size(); i++) {
                TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) messageObject.messageOwner.entities.get(i);
                if ((messageEntity instanceof TLRPC.TL_messageEntityBold) || (messageEntity instanceof TLRPC.TL_messageEntityItalic) || (messageEntity instanceof TLRPC.TL_messageEntityPre) || (messageEntity instanceof TLRPC.TL_messageEntityCode) || (messageEntity instanceof TLRPC.TL_messageEntityTextUrl) || (messageEntity instanceof TLRPC.TL_messageEntitySpoiler) || (messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji)) {
                    arrayList2.add(messageEntity);
                }
            }
        }
        sendMessageParamsOf = SendMessageParams.of(messageObject.messageOwner.message, j, messageObject.replyMessageObject, null, webPage, true, arrayList2, null, null, true, 0, null, false);
        sendMessageParamsOf.payStars = j5;
        sendMessageParamsOf.monoForumPeer = j4;
        sendMessageParamsOf.suggestionParams = messageSuggestionParams;
        sendMessagesHelper.sendMessage(sendMessageParamsOf);
    }

    protected void processSentMessage(int i) {
        int size = this.unsentMessages.size();
        this.unsentMessages.remove(i);
        if (size == 0 || this.unsentMessages.size() != 0) {
            return;
        }
        checkUnsentMessages();
    }

    protected void processUnsentMessages(final ArrayList<TLRPC.Message> arrayList, final ArrayList<TLRPC.Message> arrayList2, final ArrayList<TLRPC.User> arrayList3, final ArrayList<TLRPC.Chat> arrayList4, final ArrayList<TLRPC.EncryptedChat> arrayList5) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda81
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processUnsentMessages$78(arrayList3, arrayList4, arrayList5, arrayList, arrayList2);
            }
        });
    }

    protected void putToSendingMessages(final TLRPC.Message message, final boolean z) {
        if (Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda108
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$putToSendingMessages$49(message, z);
                }
            });
        } else {
            putToSendingMessages(message, z, true);
        }
    }

    protected void putToSendingMessages(TLRPC.Message message, boolean z, boolean z2) {
        if (message == null) {
            return;
        }
        int i = message.id;
        if (i > 0) {
            this.editingMessages.put(i, message);
            return;
        }
        boolean z3 = this.sendingMessages.indexOfKey(i) >= 0;
        removeFromUploadingMessages(message.id, z);
        this.sendingMessages.put(message.id, message);
        if (z || z3) {
            return;
        }
        long dialogId = MessageObject.getDialogId(message);
        LongSparseArray longSparseArray = this.sendingMessagesIdDialogs;
        longSparseArray.put(dialogId, Integer.valueOf(((Integer) longSparseArray.get(dialogId, 0)).intValue() + 1));
        if (z2) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.sendingMessagesChanged, new Object[0]);
        }
    }

    protected void putToUploadingMessages(MessageObject messageObject) {
        if (messageObject == null || messageObject.getId() > 0 || messageObject.scheduled) {
            return;
        }
        TLRPC.Message message = messageObject.messageOwner;
        boolean z = this.uploadMessages.indexOfKey(message.id) >= 0;
        this.uploadMessages.put(message.id, message);
        if (z) {
            return;
        }
        long dialogId = MessageObject.getDialogId(message);
        LongSparseArray longSparseArray = this.uploadingMessagesIdDialogs;
        longSparseArray.put(dialogId, Integer.valueOf(((Integer) longSparseArray.get(dialogId, 0)).intValue() + 1));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.sendingMessagesChanged, new Object[0]);
    }

    protected TLRPC.Message removeFromSendingMessages(int i, boolean z) {
        if (i > 0) {
            TLRPC.Message message = this.editingMessages.get(i);
            if (message == null) {
                return message;
            }
            this.editingMessages.remove(i);
            return message;
        }
        TLRPC.Message message2 = this.sendingMessages.get(i);
        if (message2 != null) {
            this.sendingMessages.remove(i);
            if (!z) {
                long dialogId = MessageObject.getDialogId(message2);
                Integer num = (Integer) this.sendingMessagesIdDialogs.get(dialogId);
                if (num != null) {
                    int iIntValue = num.intValue() - 1;
                    if (iIntValue <= 0) {
                        this.sendingMessagesIdDialogs.remove(dialogId);
                    } else {
                        this.sendingMessagesIdDialogs.put(dialogId, Integer.valueOf(iIntValue));
                    }
                    getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.sendingMessagesChanged, new Object[0]);
                }
            }
        }
        return message2;
    }

    protected void removeFromUploadingMessages(int i, boolean z) {
        TLRPC.Message message;
        if (i > 0 || z || (message = this.uploadMessages.get(i)) == null) {
            return;
        }
        this.uploadMessages.remove(i);
        long dialogId = MessageObject.getDialogId(message);
        Integer num = (Integer) this.uploadingMessagesIdDialogs.get(dialogId);
        if (num != null) {
            int iIntValue = num.intValue() - 1;
            if (iIntValue <= 0) {
                this.uploadingMessagesIdDialogs.remove(dialogId);
            } else {
                this.uploadingMessagesIdDialogs.put(dialogId, Integer.valueOf(iIntValue));
            }
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.sendingMessagesChanged, new Object[0]);
        }
    }

    public void requestUrlAuth(final String str, final ChatActivity chatActivity, final boolean z) {
        final TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth = new TLRPC.TL_messages_requestUrlAuth();
        tL_messages_requestUrlAuth.url = str;
        tL_messages_requestUrlAuth.flags |= 4;
        getConnectionsManager().sendRequest(tL_messages_requestUrlAuth, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda92
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                SendMessagesHelper.lambda$requestUrlAuth$29(chatActivity, tL_messages_requestUrlAuth, str, z, tLObject, tL_error);
            }
        }, 2);
    }

    public boolean retrySendMessage(MessageObject messageObject, boolean z, long j) {
        if (messageObject.getId() >= 0) {
            if (messageObject.isEditing()) {
                editMessage(messageObject, null, null, null, null, null, null, true, messageObject.hasMediaSpoilers(), messageObject);
            }
            return false;
        }
        TLRPC.MessageAction messageAction = messageObject.messageOwner.action;
        if (!(messageAction instanceof TLRPC.TL_messageEncryptedAction)) {
            if (messageAction instanceof TLRPC.TL_messageActionScreenshotTaken) {
                sendScreenshotMessage(getMessagesController().getUser(Long.valueOf(messageObject.getDialogId())), messageObject.getReplyMsgId(), messageObject.messageOwner);
            }
            if (z) {
                this.unsentMessages.put(messageObject.getId(), messageObject);
            }
            SendMessageParams sendMessageParamsOf = SendMessageParams.of(messageObject);
            sendMessageParamsOf.payStars = j;
            sendMessage(sendMessageParamsOf);
            return true;
        }
        TLRPC.EncryptedChat encryptedChat = getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(messageObject.getDialogId())));
        if (encryptedChat == null) {
            getMessagesStorage().markMessageAsSendError(messageObject.messageOwner, messageObject.scheduled ? 1 : 0);
            messageObject.messageOwner.send_state = 2;
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageSendError, Integer.valueOf(messageObject.getId()));
            processSentMessage(messageObject.getId());
            return false;
        }
        TLRPC.Message message = messageObject.messageOwner;
        if (message.random_id == 0) {
            message.random_id = getNextRandomId();
        }
        TLRPC.DecryptedMessageAction decryptedMessageAction = messageObject.messageOwner.action.encryptedAction;
        if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionSetMessageTTL) {
            getSecretChatHelper().sendTTLMessage(encryptedChat, messageObject.messageOwner);
        } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionDeleteMessages) {
            getSecretChatHelper().sendMessagesDeleteMessage(encryptedChat, null, messageObject.messageOwner);
        } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionFlushHistory) {
            getSecretChatHelper().sendClearHistoryMessage(encryptedChat, messageObject.messageOwner);
        } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionNotifyLayer) {
            getSecretChatHelper().sendNotifyLayerMessage(encryptedChat, messageObject.messageOwner);
        } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionReadMessages) {
            getSecretChatHelper().sendMessagesReadMessage(encryptedChat, null, messageObject.messageOwner);
        } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionScreenshotMessages) {
            getSecretChatHelper().sendScreenshotMessage(encryptedChat, null, messageObject.messageOwner);
        } else if (!(decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionTyping)) {
            if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionResend) {
                getSecretChatHelper().sendResendMessage(encryptedChat, 0, 0, messageObject.messageOwner);
            } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionCommitKey) {
                getSecretChatHelper().sendCommitKeyMessage(encryptedChat, messageObject.messageOwner);
            } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionAbortKey) {
                getSecretChatHelper().sendAbortKeyMessage(encryptedChat, messageObject.messageOwner, 0L);
            } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionRequestKey) {
                getSecretChatHelper().sendRequestKeyMessage(encryptedChat, messageObject.messageOwner);
            } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionAcceptKey) {
                getSecretChatHelper().sendAcceptKeyMessage(encryptedChat, messageObject.messageOwner);
            } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionNoop) {
                getSecretChatHelper().sendNoopMessage(encryptedChat, messageObject.messageOwner);
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d8  */
    /* renamed from: sendCallback, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void lambda$sendCallback$32(final boolean z, final MessageObject messageObject, final TLRPC.KeyboardButton keyboardButton, final TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, final TwoStepVerificationActivity twoStepVerificationActivity, final ChatActivity chatActivity) {
        boolean z2;
        int i;
        List<String> list;
        final List<String> list2;
        TLRPC.TL_messages_getBotCallbackAnswer tL_messages_getBotCallbackAnswer;
        if (messageObject == null || keyboardButton == null || chatActivity == null) {
            return;
        }
        boolean z3 = keyboardButton instanceof TLRPC.TL_keyboardButtonUrlAuth;
        if (z3) {
            i = 3;
        } else {
            if (!(keyboardButton instanceof TLRPC.TL_keyboardButtonGame)) {
                z2 = z;
                i = keyboardButton instanceof TLRPC.TL_keyboardButtonBuy ? 2 : 0;
                final String str = messageObject.getDialogId() + "_" + messageObject.getId() + "_" + Utilities.bytesToHex(keyboardButton.data) + "_" + i;
                this.waitingForCallback.put(str, Boolean.TRUE);
                list = this.waitingForCallbackMap.get(messageObject.getDialogId() + "_" + messageObject.getId());
                if (list != null) {
                    HashMap<String, List<String>> map = this.waitingForCallbackMap;
                    String str2 = messageObject.getDialogId() + "_" + messageObject.getId();
                    ArrayList arrayList = new ArrayList();
                    map.put(str2, arrayList);
                    list2 = arrayList;
                } else {
                    list2 = list;
                }
                list2.add(str);
                final TLObject[] tLObjectArr = new TLObject[1];
                final boolean z4 = z2;
                RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda107
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$sendCallback$38(str, list2, z4, messageObject, keyboardButton, chatActivity, twoStepVerificationActivity, tLObjectArr, inputCheckPasswordSRP, z, tLObject, tL_error);
                    }
                };
                if (!z2) {
                    getMessagesStorage().getBotCache(str, requestDelegate);
                    return;
                }
                if (z3) {
                    TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth = new TLRPC.TL_messages_requestUrlAuth();
                    tL_messages_requestUrlAuth.peer = getMessagesController().getInputPeer(messageObject.getDialogId());
                    tL_messages_requestUrlAuth.msg_id = messageObject.getId();
                    tL_messages_requestUrlAuth.button_id = keyboardButton.button_id;
                    tL_messages_requestUrlAuth.flags |= 2;
                    tLObjectArr[0] = tL_messages_requestUrlAuth;
                    getConnectionsManager().sendRequest(tL_messages_requestUrlAuth, requestDelegate, 2);
                    return;
                }
                if (!(keyboardButton instanceof TLRPC.TL_keyboardButtonBuy)) {
                    TLRPC.TL_messages_getBotCallbackAnswer tL_messages_getBotCallbackAnswer2 = new TLRPC.TL_messages_getBotCallbackAnswer();
                    tL_messages_getBotCallbackAnswer2.peer = getMessagesController().getInputPeer(messageObject.getDialogId());
                    tL_messages_getBotCallbackAnswer2.msg_id = messageObject.getId();
                    tL_messages_getBotCallbackAnswer2.game = keyboardButton instanceof TLRPC.TL_keyboardButtonGame;
                    if (keyboardButton.requires_password) {
                        tL_messages_getBotCallbackAnswer2.password = inputCheckPasswordSRP != null ? inputCheckPasswordSRP : new TLRPC.TL_inputCheckPasswordEmpty();
                        tL_messages_getBotCallbackAnswer2.flags |= 4;
                    }
                    byte[] bArr = keyboardButton.data;
                    tL_messages_getBotCallbackAnswer = tL_messages_getBotCallbackAnswer2;
                    if (bArr != null) {
                        tL_messages_getBotCallbackAnswer2.flags |= 1;
                        tL_messages_getBotCallbackAnswer2.data = bArr;
                        tL_messages_getBotCallbackAnswer = tL_messages_getBotCallbackAnswer2;
                    }
                } else if ((messageObject.messageOwner.media.flags & 4) == 0) {
                    TLRPC.TL_payments_getPaymentForm tL_payments_getPaymentForm = new TLRPC.TL_payments_getPaymentForm();
                    TLRPC.TL_inputInvoiceMessage tL_inputInvoiceMessage = new TLRPC.TL_inputInvoiceMessage();
                    tL_inputInvoiceMessage.msg_id = messageObject.getId();
                    tL_inputInvoiceMessage.peer = getMessagesController().getInputPeer(messageObject.messageOwner.peer_id);
                    tL_payments_getPaymentForm.invoice = tL_inputInvoiceMessage;
                    JSONObject jSONObjectMakeThemeParams = BotWebViewSheet.makeThemeParams(null);
                    if (jSONObjectMakeThemeParams != null) {
                        TLRPC.TL_dataJSON tL_dataJSON = new TLRPC.TL_dataJSON();
                        tL_payments_getPaymentForm.theme_params = tL_dataJSON;
                        tL_dataJSON.data = jSONObjectMakeThemeParams.toString();
                        tL_payments_getPaymentForm.flags |= 1;
                    }
                    tLObjectArr[0] = tL_payments_getPaymentForm;
                    tL_messages_getBotCallbackAnswer = tL_payments_getPaymentForm;
                } else {
                    TLRPC.TL_payments_getPaymentReceipt tL_payments_getPaymentReceipt = new TLRPC.TL_payments_getPaymentReceipt();
                    tL_payments_getPaymentReceipt.msg_id = messageObject.messageOwner.media.receipt_msg_id;
                    tL_payments_getPaymentReceipt.peer = getMessagesController().getInputPeer(messageObject.messageOwner.peer_id);
                    tLObjectArr[0] = tL_payments_getPaymentReceipt;
                    tL_messages_getBotCallbackAnswer = tL_payments_getPaymentReceipt;
                }
                getConnectionsManager().sendRequest(tL_messages_getBotCallbackAnswer, requestDelegate, 2);
                return;
            }
            i = 1;
        }
        z2 = false;
        final String str3 = messageObject.getDialogId() + "_" + messageObject.getId() + "_" + Utilities.bytesToHex(keyboardButton.data) + "_" + i;
        this.waitingForCallback.put(str3, Boolean.TRUE);
        list = this.waitingForCallbackMap.get(messageObject.getDialogId() + "_" + messageObject.getId());
        if (list != null) {
        }
        list2.add(str3);
        final TLObject[] tLObjectArr2 = new TLObject[1];
        final boolean z42 = z2;
        RequestDelegate requestDelegate2 = new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda107
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendCallback$38(str3, list2, z42, messageObject, keyboardButton, chatActivity, twoStepVerificationActivity, tLObjectArr2, inputCheckPasswordSRP, z, tLObject, tL_error);
            }
        };
        if (!z2) {
        }
    }

    public void sendCallback(boolean z, MessageObject messageObject, TLRPC.KeyboardButton keyboardButton, ChatActivity chatActivity) {
        lambda$sendCallback$32(z, messageObject, keyboardButton, null, null, chatActivity);
    }

    public void sendCurrentLocation(MessageObject messageObject, TLRPC.KeyboardButton keyboardButton) {
        if (messageObject == null || keyboardButton == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(messageObject.getDialogId());
        sb.append("_");
        sb.append(messageObject.getId());
        sb.append("_");
        sb.append(Utilities.bytesToHex(keyboardButton.data));
        sb.append("_");
        sb.append(keyboardButton instanceof TLRPC.TL_keyboardButtonGame ? "1" : "0");
        this.waitingForLocation.put(sb.toString(), messageObject);
        this.locationProvider.start();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void sendGame(TLRPC.InputPeer inputPeer, TLRPC.TL_inputMediaGame tL_inputMediaGame, long j, final long j2) {
        SharedPreferences notificationsSettings;
        StringBuilder sb;
        long j3;
        long j4;
        long sendAsPeerId;
        long sendPaidMessagesStars;
        NativeByteBuffer nativeByteBuffer;
        if (inputPeer == null || tL_inputMediaGame == null) {
            return;
        }
        TLRPC.TL_messages_sendMedia tL_messages_sendMedia = new TLRPC.TL_messages_sendMedia();
        tL_messages_sendMedia.peer = inputPeer;
        if (inputPeer instanceof TLRPC.TL_inputPeerChannel) {
            notificationsSettings = MessagesController.getNotificationsSettings(this.currentAccount);
            sb = new StringBuilder();
            sb.append(NotificationsSettingsFacade.PROPERTY_SILENT);
            j4 = inputPeer.channel_id;
        } else {
            if (!(inputPeer instanceof TLRPC.TL_inputPeerChat)) {
                notificationsSettings = MessagesController.getNotificationsSettings(this.currentAccount);
                sb = new StringBuilder();
                sb.append(NotificationsSettingsFacade.PROPERTY_SILENT);
                j3 = inputPeer.user_id;
                sb.append(j3);
                tL_messages_sendMedia.silent = notificationsSettings.getBoolean(sb.toString(), false);
                tL_messages_sendMedia.random_id = j == 0 ? j : getNextRandomId();
                tL_messages_sendMedia.message = "";
                tL_messages_sendMedia.media = tL_inputMediaGame;
                sendAsPeerId = ChatObject.getSendAsPeerId(getMessagesController().getChat(Long.valueOf(inputPeer.chat_id)), getMessagesController().getChatFull(inputPeer.chat_id));
                if (sendAsPeerId != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                    tL_messages_sendMedia.send_as = getMessagesController().getInputPeer(sendAsPeerId);
                }
                sendPaidMessagesStars = getMessagesController().getSendPaidMessagesStars(DialogObject.getPeerDialogId(inputPeer));
                if (sendPaidMessagesStars <= 0) {
                    sendPaidMessagesStars = DialogObject.getMessagesStarsPrice(getMessagesController().isUserContactBlocked(DialogObject.getPeerDialogId(inputPeer)));
                }
                if (sendPaidMessagesStars > 0) {
                    tL_messages_sendMedia.flags |= 2097152;
                    tL_messages_sendMedia.allow_paid_stars = sendPaidMessagesStars;
                }
                if (j2 == 0) {
                    try {
                        nativeByteBuffer = new NativeByteBuffer(inputPeer.getObjectSize() + tL_inputMediaGame.getObjectSize() + 12);
                        try {
                            nativeByteBuffer.writeInt32(3);
                            nativeByteBuffer.writeInt64(j);
                            inputPeer.serializeToStream(nativeByteBuffer);
                            tL_inputMediaGame.serializeToStream(nativeByteBuffer);
                        } catch (Exception e) {
                            e = e;
                            FileLog.e(e);
                            j2 = getMessagesStorage().createPendingTask(nativeByteBuffer);
                            getConnectionsManager().sendRequest(tL_messages_sendMedia, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda102
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$sendGame$39(j2, tLObject, tL_error);
                                }
                            });
                        }
                    } catch (Exception e2) {
                        e = e2;
                        nativeByteBuffer = null;
                    }
                    j2 = getMessagesStorage().createPendingTask(nativeByteBuffer);
                }
                getConnectionsManager().sendRequest(tL_messages_sendMedia, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda102
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$sendGame$39(j2, tLObject, tL_error);
                    }
                });
            }
            notificationsSettings = MessagesController.getNotificationsSettings(this.currentAccount);
            sb = new StringBuilder();
            sb.append(NotificationsSettingsFacade.PROPERTY_SILENT);
            j4 = inputPeer.chat_id;
        }
        j3 = -j4;
        sb.append(j3);
        tL_messages_sendMedia.silent = notificationsSettings.getBoolean(sb.toString(), false);
        tL_messages_sendMedia.random_id = j == 0 ? j : getNextRandomId();
        tL_messages_sendMedia.message = "";
        tL_messages_sendMedia.media = tL_inputMediaGame;
        sendAsPeerId = ChatObject.getSendAsPeerId(getMessagesController().getChat(Long.valueOf(inputPeer.chat_id)), getMessagesController().getChatFull(inputPeer.chat_id));
        if (sendAsPeerId != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
        }
        sendPaidMessagesStars = getMessagesController().getSendPaidMessagesStars(DialogObject.getPeerDialogId(inputPeer));
        if (sendPaidMessagesStars <= 0) {
        }
        if (sendPaidMessagesStars > 0) {
        }
        if (j2 == 0) {
        }
        getConnectionsManager().sendRequest(tL_messages_sendMedia, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda102
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendGame$39(j2, tLObject, tL_error);
            }
        });
    }

    public int sendMessage(ArrayList<MessageObject> arrayList, long j, boolean z, boolean z2, boolean z3, int i, long j2) {
        return sendMessage(arrayList, j, z, z2, z3, i, null, -1, j2);
    }

    public int sendMessage(ArrayList<MessageObject> arrayList, long j, boolean z, boolean z2, boolean z3, int i, MessageObject messageObject, int i2, long j2) {
        return sendMessage(arrayList, j, z, z2, z3, i, messageObject, i2, j2, 0L, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:166:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0443  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x04f9  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0518  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x06b9  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x06c3  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x06dc  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x0723  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0737  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x0749  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0766  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x078d  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x078f  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x07b5  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x07e4  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x07f5  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x0829  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x083d  */
    /* JADX WARN: Removed duplicated region for block: B:361:0x0844  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x0854  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x0868  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x087d  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x087f  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x089f  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x08d5  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x08dd  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x08df  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x08e7  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x0944  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x094e  */
    /* JADX WARN: Removed duplicated region for block: B:406:0x09a2  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x09a5  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x09be  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x09c0  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x09e0  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x0a01  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int sendMessage(final ArrayList<MessageObject> arrayList, final long j, final boolean z, final boolean z2, final boolean z3, final int i, final MessageObject messageObject, final int i2, long j2, final long j3, final MessageSuggestionParams messageSuggestionParams) {
        ArrayList<MessageObject> arrayList2;
        TLRPC.UserFull userFull;
        long j4;
        boolean z4;
        boolean z5;
        long j5;
        String adminRank;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean zCanSendDocument;
        boolean zCanSendEmbed;
        boolean zCanSendPolls;
        boolean zCanSendRoundVideo;
        boolean zCanSendVoice;
        boolean zCanSendMusic;
        boolean z9;
        boolean z10;
        TLRPC.Chat chat;
        String str;
        long j6;
        final TLRPC.Peer peer;
        String str2;
        LongSparseArray longSparseArray;
        long j7;
        TLRPC.Chat chat2;
        boolean z11;
        ArrayList arrayList3;
        ArrayList arrayList4;
        LongSparseArray longSparseArray2;
        int i3;
        ArrayList<MessageObject> arrayList5;
        final ArrayList arrayList6;
        TLRPC.InputPeer inputPeer;
        TLRPC.WebPage webPage;
        SendMessagesHelper sendMessagesHelper;
        long j8;
        MessageObject messageObject2;
        ArrayList arrayList7;
        ArrayList arrayList8;
        TLRPC.Peer peer2;
        String str3;
        long j9;
        TLRPC.Chat chat3;
        ArrayList arrayList9;
        long j10;
        long j11;
        long j12;
        TLRPC.Peer peer3;
        TLRPC.Chat chat4;
        long sendAsPeerId;
        String str4;
        LongSparseArray longSparseArray3;
        TLRPC.InputPeer inputPeer2;
        boolean z12;
        LongSparseArray longSparseArray4;
        TLRPC.Message message;
        LongSparseArray longSparseArray5;
        TLRPC.Peer peer4;
        ArrayList<MessageObject> arrayList10;
        ArrayList arrayList11;
        ArrayList arrayList12;
        ArrayList arrayList13;
        ArrayList<MessageObject> arrayList14;
        TLRPC.InputPeer inputPeer3;
        TLRPC.TL_keyboardButtonRow tL_keyboardButtonRow;
        TLRPC.User user;
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLRPC.Peer peer5;
        int i4;
        boolean z13 = z;
        boolean z14 = z2;
        if (arrayList == null || arrayList.isEmpty()) {
            return 0;
        }
        long clientUserId = getUserConfig().getClientUserId();
        if (DialogObject.isEncryptedDialog(j)) {
            long j13 = getMessagesController().getEncryptedChat(Integer.valueOf((int) j)).user_id;
            boolean z15 = (!DialogObject.isUserDialog(j13) || getMessagesController().getUser(Long.valueOf(j13)) == null || (userFull = getMessagesController().getUserFull(j13)) == null) ? true : !userFull.voice_messages_forbidden;
            int i5 = 0;
            int i6 = 0;
            while (true) {
                arrayList2 = arrayList;
                if (i5 >= arrayList.size()) {
                    break;
                }
                MessageObject messageObject3 = arrayList2.get(i5);
                if (z15 || !MessageObject.isVoiceMessage(messageObject3.messageOwner)) {
                    if (!z15 && MessageObject.isRoundVideoMessage(messageObject3.messageOwner) && i6 == 0) {
                        i6 = 8;
                    }
                } else if (i6 == 0) {
                    i6 = 7;
                }
                i5++;
            }
            if (i6 == 0) {
                int i7 = 0;
                while (i7 < arrayList.size()) {
                    processForwardFromMyName(arrayList2.get(i7), j, j2, j3, messageSuggestionParams);
                    i7++;
                    arrayList2 = arrayList;
                }
            }
            return i6;
        }
        TLRPC.Peer peer6 = getMessagesController().getPeer(j);
        long sendPaidMessagesStars = getMessagesController().getSendPaidMessagesStars(j);
        if (sendPaidMessagesStars <= 0) {
            sendPaidMessagesStars = DialogObject.getMessagesStarsPrice(getMessagesController().isUserContactBlocked(j));
        }
        if (sendPaidMessagesStars != j2) {
            AlertsCreator.ensurePaidMessageConfirmation(this.currentAccount, j, Math.max(1, arrayList.size()), new Utilities.Callback() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda94
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$sendMessage$7(arrayList, j, z, z2, z3, i, messageObject, i2, j3, messageSuggestionParams, (Long) obj);
                }
            });
            return 0;
        }
        long j14 = j;
        if (!DialogObject.isUserDialog(j)) {
            TLRPC.Chat chat5 = getMessagesController().getChat(Long.valueOf(-j14));
            if (ChatObject.isChannel(chat5)) {
                boolean z16 = chat5.signatures;
                boolean z17 = !chat5.megagroup;
                if (z17 && chat5.has_link) {
                    z4 = z16;
                    z5 = z17;
                    TLRPC.ChatFull chatFull = getMessagesController().getChatFull(chat5.id);
                    if (chatFull != null) {
                        j4 = chatFull.linked_chat_id;
                    }
                } else {
                    z4 = z16;
                    z5 = z17;
                }
                j4 = 0;
            } else {
                j4 = 0;
                z4 = false;
                z5 = false;
            }
            if (chat5 != null) {
                j5 = j4;
                adminRank = getMessagesController().getAdminRank(chat5.id, clientUserId);
            } else {
                j5 = j4;
                adminRank = null;
            }
            boolean zCanSendStickers = ChatObject.canSendStickers(chat5);
            boolean zCanSendPhoto = ChatObject.canSendPhoto(chat5);
            boolean zCanSendVideo = ChatObject.canSendVideo(chat5);
            z6 = zCanSendPhoto;
            z7 = z5;
            z8 = zCanSendVideo;
            zCanSendDocument = ChatObject.canSendDocument(chat5);
            zCanSendEmbed = ChatObject.canSendEmbed(chat5);
            zCanSendPolls = ChatObject.canSendPolls(chat5);
            zCanSendRoundVideo = ChatObject.canSendRoundVideo(chat5);
            zCanSendVoice = ChatObject.canSendVoice(chat5);
            zCanSendMusic = ChatObject.canSendMusic(chat5);
            z9 = zCanSendStickers;
            z10 = z4;
            chat = chat5;
            str = adminRank;
            j6 = j5;
        } else {
            if (getMessagesController().getUser(Long.valueOf(j)) == null) {
                return 0;
            }
            TLRPC.UserFull userFull2 = getMessagesController().getUserFull(j14);
            if (userFull2 != null) {
                zCanSendVoice = !userFull2.voice_messages_forbidden;
                zCanSendRoundVideo = zCanSendVoice;
                j6 = 0;
                str = null;
                chat = null;
                z7 = false;
                z10 = false;
                z9 = true;
                z6 = true;
                z8 = true;
                zCanSendMusic = true;
                zCanSendPolls = true;
            } else {
                j6 = 0;
                str = null;
                chat = null;
                z7 = false;
                z10 = false;
                z9 = true;
                z6 = true;
                z8 = true;
                zCanSendMusic = true;
                zCanSendPolls = true;
                zCanSendVoice = true;
                zCanSendRoundVideo = true;
            }
            zCanSendDocument = true;
            zCanSendEmbed = true;
        }
        LongSparseArray longSparseArray6 = new LongSparseArray();
        ArrayList<MessageObject> arrayList15 = new ArrayList<>();
        ArrayList arrayList16 = new ArrayList();
        ArrayList arrayList17 = new ArrayList();
        ArrayList arrayList18 = new ArrayList();
        LongSparseArray longSparseArray7 = new LongSparseArray();
        TLRPC.InputPeer inputPeer4 = getMessagesController().getInputPeer(j14);
        boolean z18 = j14 == clientUserId;
        TLRPC.InputPeer inputPeer5 = inputPeer4;
        ArrayList<MessageObject> arrayList19 = arrayList15;
        ArrayList arrayList20 = arrayList16;
        ArrayList arrayList21 = arrayList17;
        ArrayList arrayList22 = arrayList18;
        LongSparseArray longSparseArray8 = longSparseArray7;
        int i8 = 0;
        int i9 = 0;
        while (i8 < arrayList.size()) {
            int i10 = i8;
            final MessageObject messageObject4 = arrayList.get(i8);
            if (messageObject4.getId() <= 0) {
                peer = peer6;
                str2 = str;
                longSparseArray = longSparseArray6;
                j7 = clientUserId;
                chat2 = chat;
                z11 = z7;
                arrayList3 = arrayList21;
                arrayList4 = arrayList22;
                longSparseArray2 = longSparseArray8;
                i3 = i10;
                arrayList5 = arrayList19;
                arrayList6 = arrayList20;
                inputPeer = inputPeer5;
                webPage = null;
                sendMessagesHelper = this;
                j8 = j6;
                messageObject2 = messageObject4;
            } else if (messageObject4.needDrawBluredPreview()) {
                peer = peer6;
                str2 = str;
                longSparseArray = longSparseArray6;
                j7 = clientUserId;
                messageObject2 = messageObject4;
                chat2 = chat;
                z11 = z7;
                arrayList3 = arrayList21;
                arrayList4 = arrayList22;
                longSparseArray2 = longSparseArray8;
                i3 = i10;
                arrayList5 = arrayList19;
                arrayList6 = arrayList20;
                inputPeer = inputPeer5;
                webPage = null;
                sendMessagesHelper = this;
                j8 = j6;
            } else {
                boolean z19 = messageObject4.isSticker() || messageObject4.isAnimatedSticker() || messageObject4.isGif() || messageObject4.isGame();
                if (!z9 && z19) {
                    if (i9 == 0) {
                        i4 = ChatObject.isActionBannedByDefault(chat, 8) ? 4 : 1;
                        peer = peer6;
                        str2 = str;
                        longSparseArray = longSparseArray6;
                        j7 = clientUserId;
                        i9 = i4;
                        chat2 = chat;
                        z11 = z7;
                        i3 = i10;
                        arrayList7 = arrayList20;
                        inputPeer = inputPeer5;
                        j8 = j6;
                    }
                    peer = peer6;
                    str2 = str;
                    longSparseArray = longSparseArray6;
                    j7 = clientUserId;
                    chat2 = chat;
                    z11 = z7;
                    arrayList3 = arrayList21;
                    longSparseArray2 = longSparseArray8;
                    i3 = i10;
                    arrayList5 = arrayList19;
                    arrayList6 = arrayList20;
                    inputPeer = inputPeer5;
                    j8 = j6;
                    arrayList8 = arrayList22;
                    arrayList22 = arrayList8;
                    arrayList21 = arrayList3;
                    arrayList7 = arrayList6;
                    arrayList19 = arrayList5;
                    longSparseArray8 = longSparseArray2;
                } else if (!z6 && (messageObject4.messageOwner.media instanceof TLRPC.TL_messageMediaPhoto) && !messageObject4.isVideo() && !z19) {
                    if (i9 == 0) {
                        i4 = ChatObject.isActionBannedByDefault(chat, 16) ? 10 : 12;
                        peer = peer6;
                        str2 = str;
                        longSparseArray = longSparseArray6;
                        j7 = clientUserId;
                        i9 = i4;
                        chat2 = chat;
                        z11 = z7;
                        i3 = i10;
                        arrayList7 = arrayList20;
                        inputPeer = inputPeer5;
                        j8 = j6;
                    }
                    peer = peer6;
                    str2 = str;
                    longSparseArray = longSparseArray6;
                    j7 = clientUserId;
                    chat2 = chat;
                    z11 = z7;
                    arrayList3 = arrayList21;
                    longSparseArray2 = longSparseArray8;
                    i3 = i10;
                    arrayList5 = arrayList19;
                    arrayList6 = arrayList20;
                    inputPeer = inputPeer5;
                    j8 = j6;
                    arrayList8 = arrayList22;
                    arrayList22 = arrayList8;
                    arrayList21 = arrayList3;
                    arrayList7 = arrayList6;
                    arrayList19 = arrayList5;
                    longSparseArray8 = longSparseArray2;
                } else if (!zCanSendMusic && messageObject4.isMusic()) {
                    if (i9 == 0) {
                        i4 = ChatObject.isActionBannedByDefault(chat, 18) ? 19 : 20;
                        peer = peer6;
                        str2 = str;
                        longSparseArray = longSparseArray6;
                        j7 = clientUserId;
                        i9 = i4;
                        chat2 = chat;
                        z11 = z7;
                        i3 = i10;
                        arrayList7 = arrayList20;
                        inputPeer = inputPeer5;
                        j8 = j6;
                    }
                    peer = peer6;
                    str2 = str;
                    longSparseArray = longSparseArray6;
                    j7 = clientUserId;
                    chat2 = chat;
                    z11 = z7;
                    arrayList3 = arrayList21;
                    longSparseArray2 = longSparseArray8;
                    i3 = i10;
                    arrayList5 = arrayList19;
                    arrayList6 = arrayList20;
                    inputPeer = inputPeer5;
                    j8 = j6;
                    arrayList8 = arrayList22;
                    arrayList22 = arrayList8;
                    arrayList21 = arrayList3;
                    arrayList7 = arrayList6;
                    arrayList19 = arrayList5;
                    longSparseArray8 = longSparseArray2;
                } else if (!z8 && (messageObject4.messageOwner.media instanceof TLRPC.TL_messageMediaPhoto) && messageObject4.isVideo() && !z19) {
                    if (i9 == 0) {
                        i4 = ChatObject.isActionBannedByDefault(chat, 17) ? 9 : 11;
                        peer = peer6;
                        str2 = str;
                        longSparseArray = longSparseArray6;
                        j7 = clientUserId;
                        i9 = i4;
                        chat2 = chat;
                        z11 = z7;
                        i3 = i10;
                        arrayList7 = arrayList20;
                        inputPeer = inputPeer5;
                        j8 = j6;
                    }
                    peer = peer6;
                    str2 = str;
                    longSparseArray = longSparseArray6;
                    j7 = clientUserId;
                    chat2 = chat;
                    z11 = z7;
                    arrayList3 = arrayList21;
                    longSparseArray2 = longSparseArray8;
                    i3 = i10;
                    arrayList5 = arrayList19;
                    arrayList6 = arrayList20;
                    inputPeer = inputPeer5;
                    j8 = j6;
                    arrayList8 = arrayList22;
                    arrayList22 = arrayList8;
                    arrayList21 = arrayList3;
                    arrayList7 = arrayList6;
                    arrayList19 = arrayList5;
                    longSparseArray8 = longSparseArray2;
                } else if (!zCanSendPolls && (messageObject4.messageOwner.media instanceof TLRPC.TL_messageMediaPoll)) {
                    if (i9 == 0) {
                        i4 = ChatObject.isActionBannedByDefault(chat, 10) ? 6 : 3;
                        peer = peer6;
                        str2 = str;
                        longSparseArray = longSparseArray6;
                        j7 = clientUserId;
                        i9 = i4;
                        chat2 = chat;
                        z11 = z7;
                        i3 = i10;
                        arrayList7 = arrayList20;
                        inputPeer = inputPeer5;
                        j8 = j6;
                    }
                    peer = peer6;
                    str2 = str;
                    longSparseArray = longSparseArray6;
                    j7 = clientUserId;
                    chat2 = chat;
                    z11 = z7;
                    arrayList3 = arrayList21;
                    longSparseArray2 = longSparseArray8;
                    i3 = i10;
                    arrayList5 = arrayList19;
                    arrayList6 = arrayList20;
                    inputPeer = inputPeer5;
                    j8 = j6;
                    arrayList8 = arrayList22;
                    arrayList22 = arrayList8;
                    arrayList21 = arrayList3;
                    arrayList7 = arrayList6;
                    arrayList19 = arrayList5;
                    longSparseArray8 = longSparseArray2;
                } else if (!zCanSendPolls && (messageObject4.messageOwner.media instanceof TLRPC.TL_messageMediaToDo)) {
                    if (i9 == 0) {
                        i4 = ChatObject.isActionBannedByDefault(chat, 10) ? 21 : 22;
                        peer = peer6;
                        str2 = str;
                        longSparseArray = longSparseArray6;
                        j7 = clientUserId;
                        i9 = i4;
                        chat2 = chat;
                        z11 = z7;
                        i3 = i10;
                        arrayList7 = arrayList20;
                        inputPeer = inputPeer5;
                        j8 = j6;
                    }
                    peer = peer6;
                    str2 = str;
                    longSparseArray = longSparseArray6;
                    j7 = clientUserId;
                    chat2 = chat;
                    z11 = z7;
                    arrayList3 = arrayList21;
                    longSparseArray2 = longSparseArray8;
                    i3 = i10;
                    arrayList5 = arrayList19;
                    arrayList6 = arrayList20;
                    inputPeer = inputPeer5;
                    j8 = j6;
                    arrayList8 = arrayList22;
                    arrayList22 = arrayList8;
                    arrayList21 = arrayList3;
                    arrayList7 = arrayList6;
                    arrayList19 = arrayList5;
                    longSparseArray8 = longSparseArray2;
                } else if (zCanSendVoice || !MessageObject.isVoiceMessage(messageObject4.messageOwner)) {
                    if (zCanSendRoundVideo || !MessageObject.isRoundVideoMessage(messageObject4.messageOwner)) {
                        if (zCanSendDocument || !(messageObject4.messageOwner.media instanceof TLRPC.TL_messageMediaDocument) || z19) {
                            TLRPC.TL_message tL_message = new TLRPC.TL_message();
                            if (z13) {
                                peer2 = peer6;
                                str3 = str;
                                j9 = j6;
                                chat3 = chat;
                                z11 = z7;
                                arrayList9 = arrayList21;
                            } else {
                                if (messageObject4.getDialogId() == clientUserId && messageObject4.isFromUser()) {
                                    arrayList9 = arrayList21;
                                    boolean z20 = messageObject4.messageOwner.from_id.user_id == clientUserId;
                                    if (messageObject4.isForwarded()) {
                                        str3 = str;
                                        if (!z20) {
                                            long fromChatId = messageObject4.getFromChatId();
                                            TLRPC.TL_messageFwdHeader tL_messageFwdHeader = new TLRPC.TL_messageFwdHeader();
                                            tL_message.fwd_from = tL_messageFwdHeader;
                                            chat3 = chat;
                                            tL_messageFwdHeader.channel_post = messageObject4.getId();
                                            tL_message.fwd_from.flags |= 4;
                                            if (messageObject4.isFromUser()) {
                                                TLRPC.MessageFwdHeader messageFwdHeader2 = tL_message.fwd_from;
                                                messageFwdHeader2.from_id = messageObject4.messageOwner.from_id;
                                                messageFwdHeader2.flags |= 1;
                                                peer2 = peer6;
                                                j9 = j6;
                                                z11 = z7;
                                            } else {
                                                tL_message.fwd_from.from_id = new TLRPC.TL_peerChannel();
                                                TLRPC.MessageFwdHeader messageFwdHeader3 = tL_message.fwd_from;
                                                TLRPC.Peer peer7 = messageFwdHeader3.from_id;
                                                z11 = z7;
                                                TLRPC.Message message2 = messageObject4.messageOwner;
                                                peer2 = peer6;
                                                TLRPC.Peer peer8 = message2.peer_id;
                                                j9 = j6;
                                                peer7.channel_id = peer8.channel_id;
                                                messageFwdHeader3.flags |= 1;
                                                if (message2.post && fromChatId > 0) {
                                                    TLRPC.Peer peer9 = message2.from_id;
                                                    if (peer9 != null) {
                                                        peer8 = peer9;
                                                    }
                                                    messageFwdHeader3.from_id = peer8;
                                                }
                                            }
                                            if (messageObject4.messageOwner.post_author == null && !messageObject4.isOutOwner() && fromChatId > 0 && messageObject4.messageOwner.post && (user = getMessagesController().getUser(Long.valueOf(fromChatId))) != null) {
                                                tL_message.fwd_from.post_author = ContactsController.formatName(user.first_name, user.last_name);
                                                tL_message.fwd_from.flags |= 8;
                                            }
                                            tL_message.date = messageObject4.messageOwner.date;
                                            tL_message.flags = 4;
                                        }
                                        if (j14 == clientUserId && (messageFwdHeader = tL_message.fwd_from) != null) {
                                            messageFwdHeader.flags |= 16;
                                            messageFwdHeader.saved_from_msg_id = messageObject4.getId();
                                            TLRPC.MessageFwdHeader messageFwdHeader4 = tL_message.fwd_from;
                                            peer5 = messageObject4.messageOwner.peer_id;
                                            messageFwdHeader4.saved_from_peer = peer5;
                                            if (peer5.user_id == clientUserId) {
                                                peer5.user_id = messageObject4.getDialogId();
                                            }
                                        }
                                    } else {
                                        TLRPC.TL_messageFwdHeader tL_messageFwdHeader2 = new TLRPC.TL_messageFwdHeader();
                                        tL_message.fwd_from = tL_messageFwdHeader2;
                                        TLRPC.MessageFwdHeader messageFwdHeader5 = messageObject4.messageOwner.fwd_from;
                                        str3 = str;
                                        if ((messageFwdHeader5.flags & 1) != 0) {
                                            tL_messageFwdHeader2.flags |= 1;
                                            tL_messageFwdHeader2.from_id = messageFwdHeader5.from_id;
                                        }
                                        if ((messageFwdHeader5.flags & 32) != 0) {
                                            tL_messageFwdHeader2.flags |= 32;
                                            tL_messageFwdHeader2.from_name = messageFwdHeader5.from_name;
                                        }
                                        if ((messageFwdHeader5.flags & 4) != 0) {
                                            tL_messageFwdHeader2.flags |= 4;
                                            tL_messageFwdHeader2.channel_post = messageFwdHeader5.channel_post;
                                        }
                                        if ((messageFwdHeader5.flags & 8) != 0) {
                                            tL_messageFwdHeader2.flags |= 8;
                                            tL_messageFwdHeader2.post_author = messageFwdHeader5.post_author;
                                        }
                                        if ((j14 == clientUserId || z7) && (messageFwdHeader5.flags & 16) != 0 && !UserObject.isReplyUser(messageObject4.getDialogId())) {
                                            TLRPC.MessageFwdHeader messageFwdHeader6 = tL_message.fwd_from;
                                            messageFwdHeader6.flags |= 16;
                                            TLRPC.MessageFwdHeader messageFwdHeader7 = messageObject4.messageOwner.fwd_from;
                                            messageFwdHeader6.saved_from_peer = messageFwdHeader7.saved_from_peer;
                                            messageFwdHeader6.saved_from_msg_id = messageFwdHeader7.saved_from_msg_id;
                                        }
                                        tL_message.fwd_from.date = messageObject4.messageOwner.fwd_from.date;
                                        tL_message.flags = 4;
                                    }
                                    peer2 = peer6;
                                    j9 = j6;
                                    chat3 = chat;
                                    z11 = z7;
                                    if (j14 == clientUserId) {
                                        messageFwdHeader.flags |= 16;
                                        messageFwdHeader.saved_from_msg_id = messageObject4.getId();
                                        TLRPC.MessageFwdHeader messageFwdHeader42 = tL_message.fwd_from;
                                        peer5 = messageObject4.messageOwner.peer_id;
                                        messageFwdHeader42.saved_from_peer = peer5;
                                        if (peer5.user_id == clientUserId) {
                                        }
                                    }
                                } else {
                                    arrayList9 = arrayList21;
                                }
                                if (messageObject4.isForwarded()) {
                                }
                                peer2 = peer6;
                                j9 = j6;
                                chat3 = chat;
                                z11 = z7;
                                if (j14 == clientUserId) {
                                }
                            }
                            HashMap map = new HashMap();
                            tL_message.params = map;
                            map.put("fwd_id", "" + messageObject4.getId());
                            tL_message.params.put("fwd_peer", "" + messageObject4.getDialogId());
                            if (!messageObject4.messageOwner.restriction_reason.isEmpty()) {
                                tL_message.restriction_reason = messageObject4.messageOwner.restriction_reason;
                                tL_message.flags |= 4194304;
                            }
                            tL_message.media = (zCanSendEmbed || !(messageObject4.messageOwner.media instanceof TLRPC.TL_messageMediaWebPage)) ? messageObject4.messageOwner.media : new TLRPC.TL_messageMediaEmpty();
                            TLRPC.Message message3 = messageObject4.messageOwner;
                            tL_message.invert_media = message3.invert_media;
                            if (tL_message.media != null) {
                                tL_message.flags |= LiteMode.FLAG_CALLS_ANIMATIONS;
                            }
                            long j15 = message3.via_bot_id;
                            if (j15 != 0) {
                                tL_message.via_bot_id = j15;
                                tL_message.flags |= 2048;
                            }
                            if (j9 != 0) {
                                TLRPC.TL_messageReplies tL_messageReplies = new TLRPC.TL_messageReplies();
                                tL_message.replies = tL_messageReplies;
                                tL_messageReplies.comments = true;
                                j10 = j9;
                                tL_messageReplies.channel_id = j10;
                                tL_messageReplies.flags |= 1;
                                tL_message.flags |= 8388608;
                            } else {
                                j10 = j9;
                            }
                            if (!z14 || tL_message.media == null) {
                                tL_message.message = messageObject4.messageOwner.message;
                            }
                            if (tL_message.message == null) {
                                tL_message.message = "";
                            }
                            tL_message.fwd_msg_id = messageObject4.getId();
                            TLRPC.Message message4 = messageObject4.messageOwner;
                            tL_message.attachPath = message4.attachPath;
                            tL_message.entities = message4.entities;
                            if (message4.reply_markup instanceof TLRPC.TL_replyInlineMarkup) {
                                tL_message.reply_markup = new TLRPC.TL_replyInlineMarkup();
                                int size = messageObject4.messageOwner.reply_markup.rows.size();
                                int i11 = 0;
                                boolean z21 = false;
                                while (true) {
                                    if (i11 >= size) {
                                        j11 = j10;
                                        break;
                                    }
                                    TLRPC.TL_keyboardButtonRow tL_keyboardButtonRow2 = (TLRPC.TL_keyboardButtonRow) messageObject4.messageOwner.reply_markup.rows.get(i11);
                                    int size2 = tL_keyboardButtonRow2.buttons.size();
                                    int i12 = size;
                                    int i13 = 0;
                                    TLRPC.TL_keyboardButtonRow tL_keyboardButtonRow3 = null;
                                    while (true) {
                                        boolean z22 = z21;
                                        if (i13 >= size2) {
                                            j11 = j10;
                                            break;
                                        }
                                        TLRPC.KeyboardButton keyboardButton = (TLRPC.KeyboardButton) tL_keyboardButtonRow2.buttons.get(i13);
                                        j11 = j10;
                                        boolean z23 = keyboardButton instanceof TLRPC.TL_keyboardButtonUrlAuth;
                                        if (!z23 && !(keyboardButton instanceof TLRPC.TL_keyboardButtonUrl) && !(keyboardButton instanceof TLRPC.TL_keyboardButtonSwitchInline) && !(keyboardButton instanceof TLRPC.TL_keyboardButtonBuy)) {
                                            z21 = true;
                                            break;
                                        }
                                        if (z23) {
                                            TLRPC.TL_keyboardButtonUrlAuth tL_keyboardButtonUrlAuth = new TLRPC.TL_keyboardButtonUrlAuth();
                                            tL_keyboardButtonUrlAuth.flags = keyboardButton.flags;
                                            String str5 = keyboardButton.fwd_text;
                                            if (str5 != null) {
                                                tL_keyboardButtonUrlAuth.fwd_text = str5;
                                            } else {
                                                str5 = keyboardButton.text;
                                            }
                                            tL_keyboardButtonUrlAuth.text = str5;
                                            tL_keyboardButtonUrlAuth.url = keyboardButton.url;
                                            tL_keyboardButtonUrlAuth.button_id = keyboardButton.button_id;
                                            keyboardButton = tL_keyboardButtonUrlAuth;
                                        }
                                        if (tL_keyboardButtonRow3 == null) {
                                            tL_keyboardButtonRow = new TLRPC.TL_keyboardButtonRow();
                                            tL_message.reply_markup.rows.add(tL_keyboardButtonRow);
                                        } else {
                                            tL_keyboardButtonRow = tL_keyboardButtonRow3;
                                        }
                                        tL_keyboardButtonRow.buttons.add(keyboardButton);
                                        i13++;
                                        tL_keyboardButtonRow3 = tL_keyboardButtonRow;
                                        z21 = z22;
                                        j10 = j11;
                                    }
                                    if (z21) {
                                        break;
                                    }
                                    i11++;
                                    size = i12;
                                    j10 = j11;
                                }
                                if (z21) {
                                    messageObject4.messageOwner.reply_markup = null;
                                    tL_message.flags &= -65;
                                    if (!tL_message.entities.isEmpty()) {
                                        tL_message.flags |= 128;
                                    }
                                    if (tL_message.attachPath == null) {
                                        tL_message.attachPath = "";
                                    }
                                    int newMessageId = getUserConfig().getNewMessageId();
                                    tL_message.id = newMessageId;
                                    tL_message.local_id = newMessageId;
                                    tL_message.out = true;
                                    j12 = messageObject4.messageOwner.grouped_id;
                                    if (j12 != 0) {
                                        Long lValueOf = (Long) longSparseArray6.get(j12);
                                        if (lValueOf == null) {
                                            lValueOf = Long.valueOf(Utilities.random.nextLong());
                                            longSparseArray6.put(messageObject4.messageOwner.grouped_id, lValueOf);
                                        }
                                        tL_message.grouped_id = lValueOf.longValue();
                                        tL_message.flags |= 131072;
                                    }
                                    peer3 = peer2;
                                    if (peer3.channel_id == 0 && z11) {
                                        if (z10) {
                                            TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                                            tL_message.from_id = tL_peerUser;
                                            tL_peerUser.user_id = clientUserId;
                                        } else {
                                            tL_message.from_id = peer3;
                                        }
                                        tL_message.post = true;
                                        str4 = str3;
                                        chat4 = chat3;
                                    } else {
                                        chat4 = chat3;
                                        sendAsPeerId = ChatObject.getSendAsPeerId(chat4, getMessagesController().getChatFull(-j14), true);
                                        if (sendAsPeerId != clientUserId) {
                                            TLRPC.TL_peerUser tL_peerUser2 = new TLRPC.TL_peerUser();
                                            tL_message.from_id = tL_peerUser2;
                                            tL_peerUser2.user_id = clientUserId;
                                            tL_message.flags |= 256;
                                            str4 = str3;
                                        } else {
                                            tL_message.from_id = getMessagesController().getPeer(sendAsPeerId);
                                            str4 = str3;
                                            if (str3 != null) {
                                                tL_message.post_author = str4;
                                                tL_message.flags |= 65536;
                                            }
                                        }
                                    }
                                    if (tL_message.random_id == 0) {
                                        tL_message.random_id = getNextRandomId();
                                    }
                                    ArrayList arrayList23 = arrayList9;
                                    arrayList23.add(Long.valueOf(tL_message.random_id));
                                    longSparseArray3 = longSparseArray8;
                                    longSparseArray3.put(tL_message.random_id, tL_message);
                                    ArrayList arrayList24 = arrayList22;
                                    arrayList24.add(Integer.valueOf(tL_message.fwd_msg_id));
                                    tL_message.date = i == 0 ? i : getConnectionsManager().getCurrentTime();
                                    String str6 = str4;
                                    inputPeer2 = inputPeer5;
                                    z12 = inputPeer2 instanceof TLRPC.TL_inputPeerChannel;
                                    if (z12 || !z11) {
                                        longSparseArray4 = longSparseArray3;
                                        message = messageObject4.messageOwner;
                                        longSparseArray5 = longSparseArray6;
                                        if ((message.flags & 1024) != 0 && i == 0) {
                                            tL_message.views = message.views;
                                            tL_message.flags |= 1024;
                                        }
                                        tL_message.unread = true;
                                    } else {
                                        longSparseArray4 = longSparseArray3;
                                        if (i == 0) {
                                            tL_message.views = 1;
                                            tL_message.flags |= 1024;
                                        }
                                        longSparseArray5 = longSparseArray6;
                                    }
                                    tL_message.dialog_id = j14;
                                    tL_message.peer_id = peer3;
                                    if (!MessageObject.isVoiceMessage(tL_message) || MessageObject.isRoundVideoMessage(tL_message)) {
                                        tL_message.media_unread = (z12 || messageObject4.getChannelId() == 0) ? true : messageObject4.isContentUnread();
                                    }
                                    if (messageObject == null || messageSuggestionParams != null) {
                                        peer4 = peer3;
                                    } else {
                                        TLRPC.Message message5 = messageObject4.messageOwner;
                                        peer4 = peer3;
                                        TLRPC.MessageReplyHeader messageReplyHeader = message5.reply_to;
                                        if (messageReplyHeader != null) {
                                            TLRPC.Peer peer10 = messageReplyHeader.reply_to_peer_id;
                                            if (peer10 == null || MessageObject.peersEqual(peer10, message5.peer_id)) {
                                                TLRPC.MessageReplyHeader messageReplyHeader2 = messageObject4.messageOwner.reply_to;
                                                if ((messageReplyHeader2.flags & 16) != 0 && arrayList24.contains(Integer.valueOf(messageReplyHeader2.reply_to_msg_id))) {
                                                    tL_message.flags |= 8;
                                                    tL_message.reply_to = messageObject4.messageOwner.reply_to;
                                                }
                                            }
                                        }
                                    }
                                    long j16 = clientUserId;
                                    j8 = j11;
                                    if (j2 > 0) {
                                        tL_message.flags2 |= 64;
                                        tL_message.paid_message_stars = j2;
                                    }
                                    if (j3 != 0) {
                                        tL_message.saved_peer_id = getMessagesController().getPeer(j3);
                                        tL_message.flags |= 268435456;
                                    }
                                    if (messageSuggestionParams != null) {
                                        tL_message.suggested_post = messageSuggestionParams.toTl();
                                    }
                                    TLRPC.Chat chat6 = chat4;
                                    MessageObject messageObject5 = new MessageObject(this.currentAccount, tL_message, true, true);
                                    messageObject5.scheduled = i == 0;
                                    messageObject5.messageOwner.send_state = 1;
                                    messageObject5.wasJustSent = true;
                                    arrayList10 = arrayList19;
                                    arrayList10.add(messageObject5);
                                    arrayList11 = arrayList20;
                                    arrayList11.add(tL_message);
                                    StarsController.getInstance(this.currentAccount).beforeSendingMessage(messageObject5);
                                    if (messageObject4.replyMessageObject == null) {
                                        arrayList13 = arrayList24;
                                        int i14 = 0;
                                        while (true) {
                                            if (i14 >= arrayList.size()) {
                                                arrayList14 = arrayList;
                                                arrayList12 = arrayList23;
                                                break;
                                            }
                                            arrayList14 = arrayList;
                                            arrayList12 = arrayList23;
                                            if (arrayList14.get(i14).getId() == messageObject4.replyMessageObject.getId()) {
                                                TLRPC.Message message6 = messageObject5.messageOwner;
                                                MessageObject messageObject6 = messageObject4.replyMessageObject;
                                                message6.replyMessage = messageObject6.messageOwner;
                                                messageObject5.replyMessageObject = messageObject6;
                                                break;
                                            }
                                            i14++;
                                            arrayList23 = arrayList12;
                                        }
                                    } else {
                                        arrayList12 = arrayList23;
                                        arrayList13 = arrayList24;
                                        arrayList14 = arrayList;
                                    }
                                    putToSendingMessages(tL_message, i == 0);
                                    if (BuildVars.LOGS_ENABLED) {
                                        FileLog.d("forward message user_id = " + inputPeer2.user_id + " chat_id = " + inputPeer2.chat_id + " channel_id = " + inputPeer2.channel_id + " access_hash = " + inputPeer2.access_hash);
                                    }
                                    if (messageObject == null && messageSuggestionParams == null) {
                                        TLRPC.TL_messageReplyHeader tL_messageReplyHeader = new TLRPC.TL_messageReplyHeader();
                                        tL_message.reply_to = tL_messageReplyHeader;
                                        tL_messageReplyHeader.flags |= 16;
                                        tL_messageReplyHeader.reply_to_msg_id = messageObject.getId();
                                        if (messageObject.isTopicMainMessage) {
                                            TLRPC.MessageReplyHeader messageReplyHeader3 = tL_message.reply_to;
                                            messageReplyHeader3.forum_topic = true;
                                            messageReplyHeader3.flags |= 8;
                                        }
                                        if (arrayList11.size() == 100) {
                                        }
                                        getMessagesStorage().putMessages(new ArrayList<>(arrayList11), false, true, false, 0, i != 0 ? 1 : 0, 0L);
                                        getMessagesController().updateInterfaceWithMessages(j, arrayList10, i != 0 ? 1 : 0);
                                        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
                                        getUserConfig().saveConfig(false);
                                        final TLRPC.TL_messages_forwardMessages tL_messages_forwardMessages = new TLRPC.TL_messages_forwardMessages();
                                        tL_messages_forwardMessages.to_peer = inputPeer2;
                                        if (z3) {
                                        }
                                    } else if (arrayList11.size() == 100 && i10 != arrayList.size() - 1 && (i10 == arrayList.size() - 1 || arrayList14.get(i10 + 1).getDialogId() == messageObject4.getDialogId())) {
                                        inputPeer = inputPeer2;
                                        i3 = i10;
                                        arrayList6 = arrayList11;
                                        arrayList5 = arrayList10;
                                        longSparseArray2 = longSparseArray4;
                                        longSparseArray = longSparseArray5;
                                        str2 = str6;
                                        j7 = j16;
                                        chat2 = chat6;
                                        peer = peer4;
                                        arrayList8 = arrayList13;
                                        arrayList3 = arrayList12;
                                        arrayList22 = arrayList8;
                                        arrayList21 = arrayList3;
                                        arrayList7 = arrayList6;
                                        arrayList19 = arrayList5;
                                        longSparseArray8 = longSparseArray2;
                                    } else {
                                        getMessagesStorage().putMessages(new ArrayList<>(arrayList11), false, true, false, 0, i != 0 ? 1 : 0, 0L);
                                        getMessagesController().updateInterfaceWithMessages(j, arrayList10, i != 0 ? 1 : 0);
                                        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
                                        getUserConfig().saveConfig(false);
                                        final TLRPC.TL_messages_forwardMessages tL_messages_forwardMessages2 = new TLRPC.TL_messages_forwardMessages();
                                        tL_messages_forwardMessages2.to_peer = inputPeer2;
                                        if (z3) {
                                            SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(this.currentAccount);
                                            StringBuilder sb = new StringBuilder();
                                            sb.append(NotificationsSettingsFacade.PROPERTY_SILENT);
                                            sb.append(j);
                                            boolean z24 = notificationsSettings.getBoolean(sb.toString(), false);
                                            tL_messages_forwardMessages2.silent = z24;
                                            if (messageObject != null) {
                                                tL_messages_forwardMessages2.top_msg_id = messageObject.getId();
                                                tL_messages_forwardMessages2.flags |= LiteMode.FLAG_CALLS_ANIMATIONS;
                                            }
                                            if (i != 0) {
                                                tL_messages_forwardMessages2.schedule_date = i;
                                                tL_messages_forwardMessages2.flags |= 1024;
                                            }
                                            if (messageObject4.messageOwner.peer_id instanceof TLRPC.TL_peerChannel) {
                                                TLRPC.Chat chat7 = getMessagesController().getChat(Long.valueOf(messageObject4.messageOwner.peer_id.channel_id));
                                                TLRPC.TL_inputPeerChannel tL_inputPeerChannel = new TLRPC.TL_inputPeerChannel();
                                                tL_messages_forwardMessages2.from_peer = tL_inputPeerChannel;
                                                inputPeer3 = inputPeer2;
                                                tL_inputPeerChannel.channel_id = messageObject4.messageOwner.peer_id.channel_id;
                                                if (chat7 != null) {
                                                    tL_inputPeerChannel.access_hash = chat7.access_hash;
                                                }
                                            } else {
                                                inputPeer3 = inputPeer2;
                                                tL_messages_forwardMessages2.from_peer = new TLRPC.TL_inputPeerEmpty();
                                            }
                                            ArrayList arrayList25 = arrayList12;
                                            tL_messages_forwardMessages2.random_id = arrayList25;
                                            ArrayList arrayList26 = arrayList13;
                                            tL_messages_forwardMessages2.id = arrayList26;
                                            tL_messages_forwardMessages2.drop_author = z;
                                            tL_messages_forwardMessages2.drop_media_captions = z2;
                                            tL_messages_forwardMessages2.with_my_score = arrayList.size() == 1 && arrayList14.get(0).messageOwner.with_my_score;
                                            if (i2 >= 0) {
                                                tL_messages_forwardMessages2.flags |= FileLoaderPriorityQueue.PRIORITY_VALUE_MAX;
                                                tL_messages_forwardMessages2.video_timestamp = i2;
                                            }
                                            if (j2 > 0) {
                                                tL_messages_forwardMessages2.flags |= 2097152;
                                                tL_messages_forwardMessages2.allow_paid_stars = tL_messages_forwardMessages2.id.size() * j2;
                                            }
                                            if (messageSuggestionParams != null) {
                                                tL_messages_forwardMessages2.suggested_post = messageSuggestionParams.toTl();
                                                if (messageObject != null) {
                                                    TLRPC.TL_inputReplyToMessage tL_inputReplyToMessage = new TLRPC.TL_inputReplyToMessage();
                                                    tL_messages_forwardMessages2.reply_to = tL_inputReplyToMessage;
                                                    tL_inputReplyToMessage.reply_to_msg_id = messageObject.getId();
                                                }
                                            }
                                            applyMonoForumPeerId(tL_messages_forwardMessages2, j3);
                                            final ArrayList arrayList27 = new ArrayList(arrayList10);
                                            peer = peer4;
                                            arrayList4 = arrayList26;
                                            str2 = str6;
                                            inputPeer = inputPeer3;
                                            arrayList3 = arrayList25;
                                            longSparseArray = longSparseArray5;
                                            final boolean z25 = i == 2147483646;
                                            arrayList6 = arrayList11;
                                            j7 = j16;
                                            final boolean z26 = z18;
                                            arrayList5 = arrayList10;
                                            final LongSparseArray longSparseArray9 = longSparseArray4;
                                            longSparseArray2 = longSparseArray4;
                                            chat2 = chat6;
                                            sendMessagesHelper = this;
                                            Runnable runnable = new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda95
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    this.f$0.lambda$sendMessage$17(tL_messages_forwardMessages2, j, i, z25, z26, longSparseArray9, arrayList6, arrayList27, messageObject4, peer);
                                                }
                                            };
                                            if (StarsController.getInstance(sendMessagesHelper.currentAccount).beforeSendingFinalRequest(tL_messages_forwardMessages2, arrayList27, runnable)) {
                                                runnable.run();
                                            }
                                            i3 = i10;
                                            if (i3 != arrayList.size() - 1) {
                                                ArrayList<MessageObject> arrayList28 = new ArrayList<>();
                                                arrayList7 = new ArrayList();
                                                arrayList19 = arrayList28;
                                                arrayList21 = new ArrayList();
                                                arrayList22 = new ArrayList();
                                                longSparseArray8 = new LongSparseArray();
                                            }
                                            arrayList8 = arrayList4;
                                            arrayList22 = arrayList8;
                                            arrayList21 = arrayList3;
                                            arrayList7 = arrayList6;
                                            arrayList19 = arrayList5;
                                            longSparseArray8 = longSparseArray2;
                                        }
                                    }
                                } else {
                                    tL_message.flags |= 64;
                                }
                            } else {
                                j11 = j10;
                            }
                            if (!tL_message.entities.isEmpty()) {
                            }
                            if (tL_message.attachPath == null) {
                            }
                            int newMessageId2 = getUserConfig().getNewMessageId();
                            tL_message.id = newMessageId2;
                            tL_message.local_id = newMessageId2;
                            tL_message.out = true;
                            j12 = messageObject4.messageOwner.grouped_id;
                            if (j12 != 0) {
                            }
                            peer3 = peer2;
                            if (peer3.channel_id == 0) {
                                chat4 = chat3;
                                sendAsPeerId = ChatObject.getSendAsPeerId(chat4, getMessagesController().getChatFull(-j14), true);
                                if (sendAsPeerId != clientUserId) {
                                }
                                if (tL_message.random_id == 0) {
                                }
                                ArrayList arrayList232 = arrayList9;
                                arrayList232.add(Long.valueOf(tL_message.random_id));
                                longSparseArray3 = longSparseArray8;
                                longSparseArray3.put(tL_message.random_id, tL_message);
                                ArrayList arrayList242 = arrayList22;
                                arrayList242.add(Integer.valueOf(tL_message.fwd_msg_id));
                                tL_message.date = i == 0 ? i : getConnectionsManager().getCurrentTime();
                                String str62 = str4;
                                inputPeer2 = inputPeer5;
                                z12 = inputPeer2 instanceof TLRPC.TL_inputPeerChannel;
                                if (z12) {
                                    longSparseArray4 = longSparseArray3;
                                    message = messageObject4.messageOwner;
                                    longSparseArray5 = longSparseArray6;
                                    if ((message.flags & 1024) != 0) {
                                        tL_message.views = message.views;
                                        tL_message.flags |= 1024;
                                    }
                                    tL_message.unread = true;
                                    tL_message.dialog_id = j14;
                                    tL_message.peer_id = peer3;
                                    if (!MessageObject.isVoiceMessage(tL_message)) {
                                        if (z12) {
                                            tL_message.media_unread = (z12 || messageObject4.getChannelId() == 0) ? true : messageObject4.isContentUnread();
                                            if (messageObject == null) {
                                                peer4 = peer3;
                                                long j162 = clientUserId;
                                                j8 = j11;
                                                if (j2 > 0) {
                                                }
                                                if (j3 != 0) {
                                                }
                                                if (messageSuggestionParams != null) {
                                                }
                                                TLRPC.Chat chat62 = chat4;
                                                MessageObject messageObject52 = new MessageObject(this.currentAccount, tL_message, true, true);
                                                messageObject52.scheduled = i == 0;
                                                messageObject52.messageOwner.send_state = 1;
                                                messageObject52.wasJustSent = true;
                                                arrayList10 = arrayList19;
                                                arrayList10.add(messageObject52);
                                                arrayList11 = arrayList20;
                                                arrayList11.add(tL_message);
                                                StarsController.getInstance(this.currentAccount).beforeSendingMessage(messageObject52);
                                                if (messageObject4.replyMessageObject == null) {
                                                }
                                                putToSendingMessages(tL_message, i == 0);
                                                if (BuildVars.LOGS_ENABLED) {
                                                }
                                                if (messageObject == null) {
                                                    if (arrayList11.size() == 100) {
                                                    }
                                                    getMessagesStorage().putMessages(new ArrayList<>(arrayList11), false, true, false, 0, i != 0 ? 1 : 0, 0L);
                                                    getMessagesController().updateInterfaceWithMessages(j, arrayList10, i != 0 ? 1 : 0);
                                                    getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
                                                    getUserConfig().saveConfig(false);
                                                    final TLRPC.TL_messages_forwardMessages tL_messages_forwardMessages22 = new TLRPC.TL_messages_forwardMessages();
                                                    tL_messages_forwardMessages22.to_peer = inputPeer2;
                                                    if (z3) {
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            if (i9 == 0) {
                                i4 = ChatObject.isActionBannedByDefault(chat, 19) ? 17 : 18;
                                peer = peer6;
                                str2 = str;
                                longSparseArray = longSparseArray6;
                                j7 = clientUserId;
                                i9 = i4;
                                chat2 = chat;
                                z11 = z7;
                                i3 = i10;
                                arrayList7 = arrayList20;
                                inputPeer = inputPeer5;
                                j8 = j6;
                            }
                            peer = peer6;
                            str2 = str;
                            longSparseArray = longSparseArray6;
                            j7 = clientUserId;
                            chat2 = chat;
                            z11 = z7;
                            arrayList3 = arrayList21;
                            longSparseArray2 = longSparseArray8;
                            i3 = i10;
                            arrayList5 = arrayList19;
                            arrayList6 = arrayList20;
                            inputPeer = inputPeer5;
                            j8 = j6;
                            arrayList8 = arrayList22;
                            arrayList22 = arrayList8;
                            arrayList21 = arrayList3;
                            arrayList7 = arrayList6;
                            arrayList19 = arrayList5;
                            longSparseArray8 = longSparseArray2;
                        }
                    } else if (chat != null) {
                        if (i9 == 0) {
                            i4 = ChatObject.isActionBannedByDefault(chat, 21) ? 15 : 16;
                            peer = peer6;
                            str2 = str;
                            longSparseArray = longSparseArray6;
                            j7 = clientUserId;
                            i9 = i4;
                            chat2 = chat;
                            z11 = z7;
                            i3 = i10;
                            arrayList7 = arrayList20;
                            inputPeer = inputPeer5;
                            j8 = j6;
                        }
                        peer = peer6;
                        str2 = str;
                        longSparseArray = longSparseArray6;
                        j7 = clientUserId;
                        chat2 = chat;
                        z11 = z7;
                        arrayList3 = arrayList21;
                        longSparseArray2 = longSparseArray8;
                        i3 = i10;
                        arrayList5 = arrayList19;
                        arrayList6 = arrayList20;
                        inputPeer = inputPeer5;
                        j8 = j6;
                        arrayList8 = arrayList22;
                        arrayList22 = arrayList8;
                        arrayList21 = arrayList3;
                        arrayList7 = arrayList6;
                        arrayList19 = arrayList5;
                        longSparseArray8 = longSparseArray2;
                    } else {
                        if (i9 == 0) {
                            i4 = 8;
                            peer = peer6;
                            str2 = str;
                            longSparseArray = longSparseArray6;
                            j7 = clientUserId;
                            i9 = i4;
                            chat2 = chat;
                            z11 = z7;
                            i3 = i10;
                            arrayList7 = arrayList20;
                            inputPeer = inputPeer5;
                            j8 = j6;
                        }
                        peer = peer6;
                        str2 = str;
                        longSparseArray = longSparseArray6;
                        j7 = clientUserId;
                        chat2 = chat;
                        z11 = z7;
                        arrayList3 = arrayList21;
                        longSparseArray2 = longSparseArray8;
                        i3 = i10;
                        arrayList5 = arrayList19;
                        arrayList6 = arrayList20;
                        inputPeer = inputPeer5;
                        j8 = j6;
                        arrayList8 = arrayList22;
                        arrayList22 = arrayList8;
                        arrayList21 = arrayList3;
                        arrayList7 = arrayList6;
                        arrayList19 = arrayList5;
                        longSparseArray8 = longSparseArray2;
                    }
                } else if (chat != null) {
                    if (i9 == 0) {
                        i4 = ChatObject.isActionBannedByDefault(chat, 20) ? 13 : 14;
                        peer = peer6;
                        str2 = str;
                        longSparseArray = longSparseArray6;
                        j7 = clientUserId;
                        i9 = i4;
                        chat2 = chat;
                        z11 = z7;
                        i3 = i10;
                        arrayList7 = arrayList20;
                        inputPeer = inputPeer5;
                        j8 = j6;
                    }
                    peer = peer6;
                    str2 = str;
                    longSparseArray = longSparseArray6;
                    j7 = clientUserId;
                    chat2 = chat;
                    z11 = z7;
                    arrayList3 = arrayList21;
                    longSparseArray2 = longSparseArray8;
                    i3 = i10;
                    arrayList5 = arrayList19;
                    arrayList6 = arrayList20;
                    inputPeer = inputPeer5;
                    j8 = j6;
                    arrayList8 = arrayList22;
                    arrayList22 = arrayList8;
                    arrayList21 = arrayList3;
                    arrayList7 = arrayList6;
                    arrayList19 = arrayList5;
                    longSparseArray8 = longSparseArray2;
                } else {
                    if (i9 == 0) {
                        i4 = 7;
                        peer = peer6;
                        str2 = str;
                        longSparseArray = longSparseArray6;
                        j7 = clientUserId;
                        i9 = i4;
                        chat2 = chat;
                        z11 = z7;
                        i3 = i10;
                        arrayList7 = arrayList20;
                        inputPeer = inputPeer5;
                        j8 = j6;
                    }
                    peer = peer6;
                    str2 = str;
                    longSparseArray = longSparseArray6;
                    j7 = clientUserId;
                    chat2 = chat;
                    z11 = z7;
                    arrayList3 = arrayList21;
                    longSparseArray2 = longSparseArray8;
                    i3 = i10;
                    arrayList5 = arrayList19;
                    arrayList6 = arrayList20;
                    inputPeer = inputPeer5;
                    j8 = j6;
                    arrayList8 = arrayList22;
                    arrayList22 = arrayList8;
                    arrayList21 = arrayList3;
                    arrayList7 = arrayList6;
                    arrayList19 = arrayList5;
                    longSparseArray8 = longSparseArray2;
                }
                z13 = z;
                z14 = z2;
                i8 = i3 + 1;
                arrayList20 = arrayList7;
                j6 = j8;
                z7 = z11;
                peer6 = peer;
                str = str2;
                inputPeer5 = inputPeer;
                longSparseArray6 = longSparseArray;
                clientUserId = j7;
                chat = chat2;
                j14 = j;
            }
            if (messageObject2.type != 0 || TextUtils.isEmpty(messageObject2.messageText)) {
                arrayList8 = arrayList4;
            } else {
                TLRPC.MessageMedia messageMedia = messageObject2.messageOwner.media;
                TLRPC.WebPage webPage2 = messageMedia != null ? messageMedia.webpage : webPage;
                arrayList8 = arrayList4;
                SendMessageParams sendMessageParamsOf = SendMessageParams.of(messageObject2.messageText.toString(), j, null, messageObject, webPage2, webPage2 != null, messageObject2.messageOwner.entities, null, null, z3, i, null, false);
                sendMessageParamsOf.suggestionParams = messageSuggestionParams;
                sendMessageParamsOf.monoForumPeer = j3;
                sendMessageParamsOf.quick_reply_shortcut = messageObject2.getQuickReplyName();
                sendMessageParamsOf.quick_reply_shortcut_id = messageObject2.getQuickReplyId();
                sendMessagesHelper.sendMessage(sendMessageParamsOf);
            }
            arrayList22 = arrayList8;
            arrayList21 = arrayList3;
            arrayList7 = arrayList6;
            arrayList19 = arrayList5;
            longSparseArray8 = longSparseArray2;
            z13 = z;
            z14 = z2;
            i8 = i3 + 1;
            arrayList20 = arrayList7;
            j6 = j8;
            z7 = z11;
            peer6 = peer;
            str = str2;
            inputPeer5 = inputPeer;
            longSparseArray6 = longSparseArray;
            clientUserId = j7;
            chat = chat2;
            j14 = j;
        }
        return i9;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public void sendMessage(org.telegram.messenger.SendMessagesHelper.SendMessageParams r115) {
        /*
            Method dump skipped, instructions count: 10279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.sendMessage(org.telegram.messenger.SendMessagesHelper$SendMessageParams):void");
    }

    public void sendNotificationCallback(final long j, final int i, final byte[] bArr) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendNotificationCallback$22(j, i, bArr);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void sendReaction(MessageObject messageObject, ArrayList<ReactionsLayoutInBubble.VisibleReaction> arrayList, ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z, boolean z2, BaseFragment baseFragment, final Runnable runnable) {
        int id;
        TLRPC.TL_reactionEmoji tL_reactionEmoji;
        if (messageObject == null || baseFragment == null) {
            return;
        }
        TLRPC.TL_messages_sendReaction tL_messages_sendReaction = new TLRPC.TL_messages_sendReaction();
        TLRPC.Message message = messageObject.messageOwner;
        if (!message.isThreadMessage || message.fwd_from == null) {
            tL_messages_sendReaction.peer = getMessagesController().getInputPeer(messageObject.getDialogId());
            id = messageObject.getId();
        } else {
            tL_messages_sendReaction.peer = getMessagesController().getInputPeer(messageObject.getFromChatId());
            id = messageObject.messageOwner.fwd_from.saved_from_msg_id;
        }
        tL_messages_sendReaction.msg_id = id;
        tL_messages_sendReaction.add_to_recent = z2;
        if (z2 && visibleReaction != null) {
            MediaDataController.getInstance(this.currentAccount).recentReactions.add(0, ReactionsUtils.toTLReaction(visibleReaction));
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            for (int i = 0; i < arrayList.size(); i++) {
                ReactionsLayoutInBubble.VisibleReaction visibleReaction2 = arrayList.get(i);
                if (visibleReaction2.documentId != 0) {
                    TLRPC.TL_reactionCustomEmoji tL_reactionCustomEmoji = new TLRPC.TL_reactionCustomEmoji();
                    tL_reactionCustomEmoji.document_id = visibleReaction2.documentId;
                    tL_reactionEmoji = tL_reactionCustomEmoji;
                } else if (visibleReaction2.emojicon != null) {
                    TLRPC.TL_reactionEmoji tL_reactionEmoji2 = new TLRPC.TL_reactionEmoji();
                    tL_reactionEmoji2.emoticon = visibleReaction2.emojicon;
                    tL_reactionEmoji = tL_reactionEmoji2;
                }
                tL_messages_sendReaction.reaction.add(tL_reactionEmoji);
                tL_messages_sendReaction.flags |= 1;
            }
        }
        if (z) {
            tL_messages_sendReaction.flags |= 2;
            tL_messages_sendReaction.big = true;
        }
        getConnectionsManager().sendRequest(tL_messages_sendReaction, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda98
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendReaction$27(runnable, tLObject, tL_error);
            }
        });
    }

    public void sendScreenshotMessage(TLRPC.User user, int i, TLRPC.Message message) {
        TLRPC.Message tL_messageService = message;
        if (user == null || i == 0 || user.id == getUserConfig().getClientUserId()) {
            return;
        }
        TLRPC.TL_messages_sendScreenshotNotification tL_messages_sendScreenshotNotification = new TLRPC.TL_messages_sendScreenshotNotification();
        TLRPC.TL_inputPeerUser tL_inputPeerUser = new TLRPC.TL_inputPeerUser();
        tL_messages_sendScreenshotNotification.peer = tL_inputPeerUser;
        tL_inputPeerUser.access_hash = user.access_hash;
        tL_inputPeerUser.user_id = user.id;
        if (tL_messageService != null) {
            tL_messages_sendScreenshotNotification.reply_to = createReplyInput(i);
            tL_messages_sendScreenshotNotification.random_id = tL_messageService.random_id;
        } else {
            tL_messageService = new TLRPC.TL_messageService();
            tL_messageService.random_id = getNextRandomId();
            tL_messageService.dialog_id = user.id;
            tL_messageService.unread = true;
            tL_messageService.out = true;
            int newMessageId = getUserConfig().getNewMessageId();
            tL_messageService.id = newMessageId;
            tL_messageService.local_id = newMessageId;
            TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
            tL_messageService.from_id = tL_peerUser;
            tL_peerUser.user_id = getUserConfig().getClientUserId();
            tL_messageService.flags |= 264;
            TLRPC.TL_messageReplyHeader tL_messageReplyHeader = new TLRPC.TL_messageReplyHeader();
            tL_messageService.reply_to = tL_messageReplyHeader;
            tL_messageReplyHeader.flags |= 16;
            tL_messageReplyHeader.reply_to_msg_id = i;
            TLRPC.TL_peerUser tL_peerUser2 = new TLRPC.TL_peerUser();
            tL_messageService.peer_id = tL_peerUser2;
            tL_peerUser2.user_id = user.id;
            tL_messageService.date = getConnectionsManager().getCurrentTime();
            tL_messageService.action = new TLRPC.TL_messageActionScreenshotTaken();
            getUserConfig().saveConfig(false);
        }
        tL_messages_sendScreenshotNotification.random_id = tL_messageService.random_id;
        MessageObject messageObject = new MessageObject(this.currentAccount, tL_messageService, false, true);
        messageObject.messageOwner.send_state = 1;
        messageObject.wasJustSent = true;
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        arrayList.add(messageObject);
        getMessagesController().updateInterfaceWithMessages(tL_messageService.dialog_id, arrayList, 0);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
        ArrayList<TLRPC.Message> arrayList2 = new ArrayList<>();
        arrayList2.add(tL_messageService);
        getMessagesStorage().putMessages(arrayList2, false, true, false, 0, false, 0, 0L);
        performSendMessageRequest(tL_messages_sendScreenshotNotification, messageObject, null, null, null, null, false);
    }

    public void sendSticker(TLRPC.Document document, String str, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories$StoryItem tL_stories$StoryItem, final ChatActivity.ReplyQuote replyQuote, final MessageObject.SendAnimationData sendAnimationData, final boolean z, final int i, boolean z2, final Object obj, final String str2, final int i2, final long j2, final long j3, final MessageSuggestionParams messageSuggestionParams) {
        final TLRPC.Document document2;
        HashMap map;
        TLRPC.PhotoSize tL_photoStrippedSize;
        byte[] bArr;
        if (document == null) {
            return;
        }
        if (DialogObject.isEncryptedDialog(j)) {
            if (getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j))) == null) {
                return;
            }
            TLRPC.TL_document_layer82 tL_document_layer82 = new TLRPC.TL_document_layer82();
            tL_document_layer82.id = document.id;
            tL_document_layer82.access_hash = document.access_hash;
            tL_document_layer82.date = document.date;
            tL_document_layer82.mime_type = document.mime_type;
            byte[] bArr2 = document.file_reference;
            tL_document_layer82.file_reference = bArr2;
            if (bArr2 == null) {
                tL_document_layer82.file_reference = new byte[0];
            }
            tL_document_layer82.size = document.size;
            tL_document_layer82.dc_id = document.dc_id;
            tL_document_layer82.attributes = new ArrayList<>();
            for (int i3 = 0; i3 < document.attributes.size(); i3++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i3);
                if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                    TLRPC.TL_documentAttributeVideo_layer159 tL_documentAttributeVideo_layer159 = new TLRPC.TL_documentAttributeVideo_layer159();
                    tL_documentAttributeVideo_layer159.flags = documentAttribute.flags;
                    tL_documentAttributeVideo_layer159.round_message = documentAttribute.round_message;
                    tL_documentAttributeVideo_layer159.supports_streaming = documentAttribute.supports_streaming;
                    tL_documentAttributeVideo_layer159.duration = documentAttribute.duration;
                    tL_documentAttributeVideo_layer159.w = documentAttribute.w;
                    tL_documentAttributeVideo_layer159.h = documentAttribute.h;
                    tL_document_layer82.attributes.add(tL_documentAttributeVideo_layer159);
                } else {
                    tL_document_layer82.attributes.add(documentAttribute);
                }
            }
            if (tL_document_layer82.mime_type == null) {
                tL_document_layer82.mime_type = "";
            }
            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 10);
            if ((closestPhotoSizeWithSize instanceof TLRPC.TL_photoSize) || (closestPhotoSizeWithSize instanceof TLRPC.TL_photoSizeProgressive) || (closestPhotoSizeWithSize instanceof TLRPC.TL_photoStrippedSize)) {
                File pathToAttach = FileLoader.getInstance(this.currentAccount).getPathToAttach(closestPhotoSizeWithSize, true);
                if ((closestPhotoSizeWithSize instanceof TLRPC.TL_photoStrippedSize) || pathToAttach.exists()) {
                    try {
                        if (closestPhotoSizeWithSize instanceof TLRPC.TL_photoStrippedSize) {
                            tL_photoStrippedSize = new TLRPC.TL_photoStrippedSize();
                            bArr = closestPhotoSizeWithSize.bytes;
                        } else {
                            TLRPC.TL_photoCachedSize tL_photoCachedSize = new TLRPC.TL_photoCachedSize();
                            pathToAttach.length();
                            byte[] bArr3 = new byte[(int) pathToAttach.length()];
                            new RandomAccessFile(pathToAttach, "r").readFully(bArr3);
                            tL_photoStrippedSize = tL_photoCachedSize;
                            bArr = bArr3;
                        }
                        TLRPC.TL_fileLocation_layer82 tL_fileLocation_layer82 = new TLRPC.TL_fileLocation_layer82();
                        TLRPC.FileLocation fileLocation = closestPhotoSizeWithSize.location;
                        tL_fileLocation_layer82.dc_id = fileLocation.dc_id;
                        tL_fileLocation_layer82.volume_id = fileLocation.volume_id;
                        tL_fileLocation_layer82.local_id = fileLocation.local_id;
                        tL_fileLocation_layer82.secret = fileLocation.secret;
                        tL_photoStrippedSize.location = tL_fileLocation_layer82;
                        tL_photoStrippedSize.size = closestPhotoSizeWithSize.size;
                        tL_photoStrippedSize.w = closestPhotoSizeWithSize.w;
                        tL_photoStrippedSize.h = closestPhotoSizeWithSize.h;
                        tL_photoStrippedSize.type = closestPhotoSizeWithSize.type;
                        tL_photoStrippedSize.bytes = bArr;
                        tL_document_layer82.thumbs.add(tL_photoStrippedSize);
                        tL_document_layer82.flags |= 1;
                    } catch (Exception e) {
                        FileLog.e(e);
                    }
                }
            }
            if (tL_document_layer82.thumbs.isEmpty()) {
                TLRPC.TL_photoSizeEmpty tL_photoSizeEmpty = new TLRPC.TL_photoSizeEmpty();
                tL_photoSizeEmpty.type = "s";
                tL_document_layer82.thumbs.add(tL_photoSizeEmpty);
            }
            document2 = tL_document_layer82;
        } else {
            document2 = document;
        }
        if (MessageObject.isGifDocument(document2)) {
            mediaSendQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendSticker$6(document2, j, messageObject, messageObject2, z, i, obj, sendAnimationData, tL_stories$StoryItem, replyQuote, str2, i2, j2, j3, messageSuggestionParams);
                }
            });
            return;
        }
        if (TextUtils.isEmpty(str)) {
            map = null;
        } else {
            map = new HashMap();
            map.put(SearchIntents.EXTRA_QUERY, str);
        }
        SendMessageParams sendMessageParamsOf = SendMessageParams.of((TLRPC.TL_document) document2, null, null, j, messageObject, messageObject2, null, null, null, map, z, i, 0, obj, sendAnimationData, z2);
        sendMessageParamsOf.replyToStoryItem = tL_stories$StoryItem;
        sendMessageParamsOf.replyQuote = replyQuote;
        sendMessageParamsOf.quick_reply_shortcut = str2;
        sendMessageParamsOf.quick_reply_shortcut_id = i2;
        sendMessageParamsOf.payStars = j2;
        sendMessageParamsOf.monoForumPeer = j3;
        sendMessageParamsOf.suggestionParams = messageSuggestionParams;
        sendMessage(sendMessageParamsOf);
    }

    public int sendVote(final MessageObject messageObject, ArrayList<TLRPC.PollAnswer> arrayList, final Runnable runnable) {
        byte[] bArr;
        if (messageObject == null) {
            return 0;
        }
        final String str = "poll_" + messageObject.getPollId();
        if (this.waitingForCallback.containsKey(str)) {
            return 0;
        }
        TLRPC.TL_messages_sendVote tL_messages_sendVote = new TLRPC.TL_messages_sendVote();
        tL_messages_sendVote.msg_id = messageObject.getId();
        tL_messages_sendVote.peer = getMessagesController().getInputPeer(messageObject.getDialogId());
        if (arrayList != null) {
            bArr = new byte[arrayList.size()];
            for (int i = 0; i < arrayList.size(); i++) {
                TLRPC.PollAnswer pollAnswer = arrayList.get(i);
                if (pollAnswer != null) {
                    tL_messages_sendVote.options.add(pollAnswer.option);
                    bArr[i] = pollAnswer.option[0];
                }
            }
        } else {
            bArr = new byte[0];
        }
        this.waitingForVote.put(str, bArr);
        return getConnectionsManager().sendRequest(tL_messages_sendVote, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda11
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendVote$24(messageObject, str, runnable, tLObject, tL_error);
            }
        });
    }

    public int toggleTodo(final MessageObject messageObject, final TLRPC.TodoItem todoItem, final boolean z, final Runnable runnable) {
        if (messageObject == null) {
            return 0;
        }
        final int iHash = Objects.hash(Long.valueOf(messageObject.getDialogId()), Integer.valueOf(messageObject.getId()), Integer.valueOf(todoItem.id));
        this.waitingForTodoUpdate.put(Integer.valueOf(iHash), Boolean.valueOf(z));
        TLRPC.TL_messages_toggleTodoCompleted tL_messages_toggleTodoCompleted = new TLRPC.TL_messages_toggleTodoCompleted();
        tL_messages_toggleTodoCompleted.msg_id = messageObject.getId();
        tL_messages_toggleTodoCompleted.peer = getMessagesController().getInputPeer(messageObject.getDialogId());
        (z ? tL_messages_toggleTodoCompleted.completed : tL_messages_toggleTodoCompleted.incompleted).add(Integer.valueOf(todoItem.id));
        return getConnectionsManager().sendRequest(tL_messages_toggleTodoCompleted, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda28
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$toggleTodo$26(messageObject, todoItem, z, iHash, runnable, tLObject, tL_error);
            }
        });
    }
}
