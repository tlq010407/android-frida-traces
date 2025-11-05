package org.telegram.messenger;

import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Scanner;
import java.util.concurrent.CountDownLatch;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipException;
import org.telegram.messenger.FileLoadOperation;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FilePathDatabase;
import org.telegram.messenger.utils.ImmutableByteArrayOutputStream;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_stories$TL_storyItem;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Storage.CacheModel;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class FileLoadOperation {
    private static final int FINISH_CODE_DEFAULT = 0;
    private static final int FINISH_CODE_FILE_ALREADY_EXIST = 1;
    public static ImmutableByteArrayOutputStream filesQueueByteBuffer = null;
    private static int globalRequestPointer = 0;
    private static final int preloadMaxBytes = 2097152;
    private static final int stateCanceled = 4;
    private static final int stateCancelling = 5;
    private static final int stateDownloading = 1;
    private static final int stateFailed = 2;
    private static final int stateFinished = 3;
    private static final int stateIdle = 0;
    private final boolean FULL_LOGS;
    private boolean allowDisordererFileSave;
    private int bigFileSizeFrom;
    private long bytesCountPadding;
    private File cacheFileFinal;
    private boolean cacheFileFinalReady;
    private File cacheFileGzipTemp;
    private File cacheFileParts;
    private File cacheFilePreload;
    private File cacheFileTemp;
    private File cacheIvTemp;
    private final Runnable cancelAfterNoStreamListeners;
    private ArrayList<RequestInfo> cancelledRequestInfos;
    public volatile boolean caughtPremiumFloodWait;
    private byte[] cdnCheckBytes;
    private int cdnChunkCheckSize;
    private int cdnDatacenterId;
    private HashMap<Long, TLRPC.TL_fileHash> cdnHashes;
    private byte[] cdnIv;
    private byte[] cdnKey;
    private byte[] cdnToken;
    private volatile boolean closeFilePartsStreamOnWriteEnd;
    public int currentAccount;
    private int currentDownloadChunkSize;
    private int currentMaxDownloadRequests;
    private int currentType;
    private int datacenterId;
    private ArrayList<RequestInfo> delayedRequestInfos;
    private FileLoadOperationDelegate delegate;
    private long documentId;
    private int downloadChunkSize;
    private int downloadChunkSizeAnimation;
    private int downloadChunkSizeBig;
    private long downloadedBytes;
    private boolean encryptFile;
    private byte[] encryptIv;
    private byte[] encryptKey;
    private String ext;
    private FilePathDatabase.FileMeta fileMetadata;
    private String fileName;
    private RandomAccessFile fileOutputStream;
    private RandomAccessFile filePartsStream;
    private RandomAccessFile fileReadStream;
    private Runnable fileWriteRunnable;
    private RandomAccessFile fiv;
    private boolean forceSmallChunk;
    private long foundMoovSize;
    private int initialDatacenterId;
    private boolean isCdn;
    private boolean isForceRequest;
    private boolean isPreloadVideoOperation;
    public boolean isStory;
    private boolean isStream;
    private byte[] iv;
    private byte[] key;
    protected long lastProgressUpdateTime;
    protected TLRPC.InputFileLocation location;
    private int maxCdnParts;
    private int maxDownloadRequests;
    private int maxDownloadRequestsAnimation;
    private int maxDownloadRequestsBig;
    private int moovFound;
    private long nextAtomOffset;
    private boolean nextPartWasPreloaded;
    private long nextPreloadDownloadOffset;
    private ArrayList<Range> notCheckedCdnRanges;
    private ArrayList<Range> notLoadedBytesRanges;
    private volatile ArrayList<Range> notLoadedBytesRangesCopy;
    private ArrayList<Range> notRequestedBytesRanges;
    public Object parentObject;
    public FilePathDatabase.PathData pathSaveData;
    private volatile boolean paused;
    public boolean preFinished;
    private boolean preloadFinished;
    private long preloadNotRequestedBytesCount;
    private int preloadPrefixSize;
    private RandomAccessFile preloadStream;
    private int preloadStreamFileOffset;
    private byte[] preloadTempBuffer;
    private int preloadTempBufferCount;
    private HashMap<Long, PreloadRange> preloadedBytesRanges;
    private int priority;
    private FileLoaderPriorityQueue priorityQueue;
    private RequestInfo priorityRequestInfo;
    private int renameRetryCount;
    public ArrayList<RequestInfo> requestInfos;
    private long requestedBytesCount;
    private HashMap<Long, Integer> requestedPreloadedBytesRanges;
    private boolean requestedReference;
    private boolean requestingCdnOffsets;
    protected boolean requestingReference;
    private int requestsCount;
    private boolean reuploadingCdn;
    private long startTime;
    private boolean started;
    private volatile int state;
    private String storeFileName;
    private File storePath;
    FileLoadOperationStream stream;
    private ArrayList<FileLoadOperationStream> streamListeners;
    long streamOffset;
    boolean streamPriority;
    private long streamPriorityStartOffset;
    private long streamStartOffset;
    private boolean supportsPreloading;
    private File tempPath;
    public long totalBytesCount;
    private int totalPreloadedBytes;
    long totalTime;
    public final ArrayList<Integer> uiRequestTokens;
    private boolean ungzip;
    private WebFile webFile;
    private TLRPC.InputWebFileLocation webLocation;
    private volatile boolean writingToFilePartsStream;
    public static volatile DispatchQueue filesQueue = new DispatchQueue("writeFileQueue");
    private static final Object lockObject = new Object();

    public interface FileLoadOperationDelegate {
        void didChangedLoadProgress(FileLoadOperation fileLoadOperation, long j, long j2);

        void didFailedLoadingFile(FileLoadOperation fileLoadOperation, int i);

        void didFinishLoadingFile(FileLoadOperation fileLoadOperation, File file);

        void didPreFinishLoading(FileLoadOperation fileLoadOperation, File file);

        boolean hasAnotherRefOnFile(String str);

        boolean isLocallyCreatedFile(String str);

        void saveFilePath(FilePathDatabase.PathData pathData, File file);
    }

    private static class PreloadRange {
        private long fileOffset;
        private long length;

        private PreloadRange(long j, long j2) {
            this.fileOffset = j;
            this.length = j2;
        }
    }

    public static class Range {
        private long end;
        private long start;

        private Range(long j, long j2) {
            this.start = j;
            this.end = j2;
        }

        public String toString() {
            return "Range{start=" + this.start + ", end=" + this.end + '}';
        }
    }

    protected static class RequestInfo {
        public boolean cancelled;
        public boolean cancelling;
        public int chunkSize;
        public int connectionType;
        private boolean forceSmallChunk;
        private long offset;
        public long requestStartTime;
        public int requestToken;
        private TLRPC.TL_upload_file response;
        private TLRPC.TL_upload_cdnFile responseCdn;
        private TLRPC.TL_upload_webFile responseWeb;
        public Runnable whenCancelled;

        protected RequestInfo() {
        }
    }

    public FileLoadOperation(int i, WebFile webFile) {
        this.FULL_LOGS = false;
        this.downloadChunkSize = LiteMode.FLAG_CHAT_SCALE;
        this.downloadChunkSizeBig = 131072;
        this.cdnChunkCheckSize = 131072;
        this.maxDownloadRequests = 4;
        this.maxDownloadRequestsBig = 4;
        this.bigFileSizeFrom = 10485760;
        this.maxCdnParts = (int) (FileLoader.DEFAULT_MAX_FILE_SIZE / 131072);
        this.downloadChunkSizeAnimation = 131072;
        this.maxDownloadRequestsAnimation = 4;
        this.preloadTempBuffer = new byte[24];
        this.state = 0;
        this.uiRequestTokens = new ArrayList<>();
        this.cancelAfterNoStreamListeners = new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$6();
            }
        };
        updateParams();
        this.currentAccount = i;
        this.webFile = webFile;
        this.webLocation = webFile.location;
        this.totalBytesCount = webFile.size;
        int i2 = MessagesController.getInstance(i).webFileDatacenterId;
        this.datacenterId = i2;
        this.initialDatacenterId = i2;
        String mimeTypePart = FileLoader.getMimeTypePart(webFile.mime_type);
        this.currentType = webFile.mime_type.startsWith("image/") ? ConnectionsManager.FileTypePhoto : webFile.mime_type.equals("audio/ogg") ? ConnectionsManager.FileTypeAudio : webFile.mime_type.startsWith("video/") ? ConnectionsManager.FileTypeVideo : ConnectionsManager.FileTypeFile;
        this.allowDisordererFileSave = true;
        this.ext = ImageLoader.getHttpUrlExtension(webFile.url, mimeTypePart);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FileLoadOperation(ImageLocation imageLocation, Object obj, String str, long j) {
        TLRPC.TL_inputStickerSetThumb tL_inputStickerSetThumb;
        this.FULL_LOGS = false;
        this.downloadChunkSize = LiteMode.FLAG_CHAT_SCALE;
        this.downloadChunkSizeBig = 131072;
        this.cdnChunkCheckSize = 131072;
        this.maxDownloadRequests = 4;
        this.maxDownloadRequestsBig = 4;
        this.bigFileSizeFrom = 10485760;
        this.maxCdnParts = (int) (FileLoader.DEFAULT_MAX_FILE_SIZE / 131072);
        this.downloadChunkSizeAnimation = 131072;
        this.maxDownloadRequestsAnimation = 4;
        this.preloadTempBuffer = new byte[24];
        this.state = 0;
        this.uiRequestTokens = new ArrayList<>();
        this.cancelAfterNoStreamListeners = new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$6();
            }
        };
        updateParams();
        this.parentObject = obj;
        this.isStory = obj instanceof TL_stories$TL_storyItem;
        this.fileMetadata = FileLoader.getFileMetadataFromParent(this.currentAccount, obj);
        this.isStream = imageLocation.imageType == 2;
        if (imageLocation.isEncrypted()) {
            TLRPC.TL_inputEncryptedFileLocation tL_inputEncryptedFileLocation = new TLRPC.TL_inputEncryptedFileLocation();
            this.location = tL_inputEncryptedFileLocation;
            TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated = imageLocation.location;
            long j2 = tL_fileLocationToBeDeprecated.volume_id;
            tL_inputEncryptedFileLocation.id = j2;
            tL_inputEncryptedFileLocation.volume_id = j2;
            tL_inputEncryptedFileLocation.local_id = tL_fileLocationToBeDeprecated.local_id;
            tL_inputEncryptedFileLocation.access_hash = imageLocation.access_hash;
            byte[] bArr = new byte[32];
            this.iv = bArr;
            System.arraycopy(imageLocation.iv, 0, bArr, 0, 32);
            this.key = imageLocation.key;
        } else {
            if (imageLocation.photoPeer != null) {
                TLRPC.TL_inputPeerPhotoFileLocation tL_inputPeerPhotoFileLocation = new TLRPC.TL_inputPeerPhotoFileLocation();
                TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated2 = imageLocation.location;
                long j3 = tL_fileLocationToBeDeprecated2.volume_id;
                tL_inputPeerPhotoFileLocation.id = j3;
                tL_inputPeerPhotoFileLocation.volume_id = j3;
                tL_inputPeerPhotoFileLocation.local_id = tL_fileLocationToBeDeprecated2.local_id;
                tL_inputPeerPhotoFileLocation.photo_id = imageLocation.photoId;
                tL_inputPeerPhotoFileLocation.big = imageLocation.photoPeerType == 0;
                tL_inputPeerPhotoFileLocation.peer = imageLocation.photoPeer;
                tL_inputStickerSetThumb = tL_inputPeerPhotoFileLocation;
            } else if (imageLocation.stickerSet != null) {
                TLRPC.TL_inputStickerSetThumb tL_inputStickerSetThumb2 = new TLRPC.TL_inputStickerSetThumb();
                TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated3 = imageLocation.location;
                long j4 = tL_fileLocationToBeDeprecated3.volume_id;
                tL_inputStickerSetThumb2.id = j4;
                tL_inputStickerSetThumb2.volume_id = j4;
                tL_inputStickerSetThumb2.local_id = tL_fileLocationToBeDeprecated3.local_id;
                tL_inputStickerSetThumb2.thumb_version = imageLocation.thumbVersion;
                tL_inputStickerSetThumb2.stickerset = imageLocation.stickerSet;
                tL_inputStickerSetThumb = tL_inputStickerSetThumb2;
            } else if (imageLocation.thumbSize != null) {
                if (imageLocation.photoId != 0) {
                    TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation = new TLRPC.TL_inputPhotoFileLocation();
                    this.location = tL_inputPhotoFileLocation;
                    tL_inputPhotoFileLocation.id = imageLocation.photoId;
                    TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated4 = imageLocation.location;
                    tL_inputPhotoFileLocation.volume_id = tL_fileLocationToBeDeprecated4.volume_id;
                    tL_inputPhotoFileLocation.local_id = tL_fileLocationToBeDeprecated4.local_id;
                    tL_inputPhotoFileLocation.access_hash = imageLocation.access_hash;
                    tL_inputPhotoFileLocation.file_reference = imageLocation.file_reference;
                    tL_inputPhotoFileLocation.thumb_size = imageLocation.thumbSize;
                    if (imageLocation.imageType == 2) {
                        this.allowDisordererFileSave = true;
                    }
                } else {
                    TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation = new TLRPC.TL_inputDocumentFileLocation();
                    this.location = tL_inputDocumentFileLocation;
                    long j5 = imageLocation.documentId;
                    tL_inputDocumentFileLocation.id = j5;
                    this.documentId = j5;
                    TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated5 = imageLocation.location;
                    tL_inputDocumentFileLocation.volume_id = tL_fileLocationToBeDeprecated5.volume_id;
                    tL_inputDocumentFileLocation.local_id = tL_fileLocationToBeDeprecated5.local_id;
                    tL_inputDocumentFileLocation.access_hash = imageLocation.access_hash;
                    tL_inputDocumentFileLocation.file_reference = imageLocation.file_reference;
                    tL_inputDocumentFileLocation.thumb_size = imageLocation.thumbSize;
                }
                TLRPC.InputFileLocation inputFileLocation = this.location;
                if (inputFileLocation.file_reference == null) {
                    inputFileLocation.file_reference = new byte[0];
                }
            } else {
                TLRPC.TL_inputFileLocation tL_inputFileLocation = new TLRPC.TL_inputFileLocation();
                this.location = tL_inputFileLocation;
                TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated6 = imageLocation.location;
                tL_inputFileLocation.volume_id = tL_fileLocationToBeDeprecated6.volume_id;
                tL_inputFileLocation.local_id = tL_fileLocationToBeDeprecated6.local_id;
                tL_inputFileLocation.secret = imageLocation.access_hash;
                byte[] bArr2 = imageLocation.file_reference;
                tL_inputFileLocation.file_reference = bArr2;
                if (bArr2 == null) {
                    tL_inputFileLocation.file_reference = new byte[0];
                }
                this.allowDisordererFileSave = true;
            }
            this.location = tL_inputStickerSetThumb;
        }
        int i = imageLocation.imageType;
        this.ungzip = i == 1 || i == 3;
        int i2 = imageLocation.dc_id;
        this.datacenterId = i2;
        this.initialDatacenterId = i2;
        this.currentType = ConnectionsManager.FileTypePhoto;
        this.totalBytesCount = j;
        this.ext = str == null ? "jpg" : str;
    }

    public FileLoadOperation(SecureDocument secureDocument) {
        this.FULL_LOGS = false;
        this.downloadChunkSize = LiteMode.FLAG_CHAT_SCALE;
        this.downloadChunkSizeBig = 131072;
        this.cdnChunkCheckSize = 131072;
        this.maxDownloadRequests = 4;
        this.maxDownloadRequestsBig = 4;
        this.bigFileSizeFrom = 10485760;
        this.maxCdnParts = (int) (FileLoader.DEFAULT_MAX_FILE_SIZE / 131072);
        this.downloadChunkSizeAnimation = 131072;
        this.maxDownloadRequestsAnimation = 4;
        this.preloadTempBuffer = new byte[24];
        this.state = 0;
        this.uiRequestTokens = new ArrayList<>();
        this.cancelAfterNoStreamListeners = new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$6();
            }
        };
        updateParams();
        TLRPC.TL_inputSecureFileLocation tL_inputSecureFileLocation = new TLRPC.TL_inputSecureFileLocation();
        this.location = tL_inputSecureFileLocation;
        TLRPC.TL_secureFile tL_secureFile = secureDocument.secureFile;
        tL_inputSecureFileLocation.id = tL_secureFile.id;
        tL_inputSecureFileLocation.access_hash = tL_secureFile.access_hash;
        this.datacenterId = tL_secureFile.dc_id;
        this.totalBytesCount = tL_secureFile.size;
        this.allowDisordererFileSave = true;
        this.currentType = ConnectionsManager.FileTypeFile;
        this.ext = ".jpg";
    }

    public FileLoadOperation(TLRPC.Document document, Object obj) {
        int iLastIndexOf;
        this.FULL_LOGS = false;
        this.downloadChunkSize = LiteMode.FLAG_CHAT_SCALE;
        this.downloadChunkSizeBig = 131072;
        this.cdnChunkCheckSize = 131072;
        this.maxDownloadRequests = 4;
        this.maxDownloadRequestsBig = 4;
        this.bigFileSizeFrom = 10485760;
        this.maxCdnParts = (int) (FileLoader.DEFAULT_MAX_FILE_SIZE / 131072);
        this.downloadChunkSizeAnimation = 131072;
        this.maxDownloadRequestsAnimation = 4;
        this.preloadTempBuffer = new byte[24];
        this.state = 0;
        this.uiRequestTokens = new ArrayList<>();
        this.cancelAfterNoStreamListeners = new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$6();
            }
        };
        updateParams();
        try {
            this.parentObject = obj;
            this.isStory = obj instanceof TL_stories$TL_storyItem;
            this.fileMetadata = FileLoader.getFileMetadataFromParent(this.currentAccount, obj);
            String strSubstring = "";
            if (document instanceof TLRPC.TL_documentEncrypted) {
                TLRPC.TL_inputEncryptedFileLocation tL_inputEncryptedFileLocation = new TLRPC.TL_inputEncryptedFileLocation();
                this.location = tL_inputEncryptedFileLocation;
                tL_inputEncryptedFileLocation.id = document.id;
                tL_inputEncryptedFileLocation.access_hash = document.access_hash;
                int i = document.dc_id;
                this.datacenterId = i;
                this.initialDatacenterId = i;
                byte[] bArr = new byte[32];
                this.iv = bArr;
                System.arraycopy(document.iv, 0, bArr, 0, 32);
                this.key = document.key;
            } else if (document instanceof TLRPC.TL_document) {
                TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation = new TLRPC.TL_inputDocumentFileLocation();
                this.location = tL_inputDocumentFileLocation;
                long j = document.id;
                tL_inputDocumentFileLocation.id = j;
                this.documentId = j;
                tL_inputDocumentFileLocation.access_hash = document.access_hash;
                byte[] bArr2 = document.file_reference;
                tL_inputDocumentFileLocation.file_reference = bArr2;
                tL_inputDocumentFileLocation.thumb_size = "";
                if (bArr2 == null) {
                    tL_inputDocumentFileLocation.file_reference = new byte[0];
                }
                int i2 = document.dc_id;
                this.datacenterId = i2;
                this.initialDatacenterId = i2;
                this.allowDisordererFileSave = true;
                int size = document.attributes.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size) {
                        break;
                    }
                    if (document.attributes.get(i3) instanceof TLRPC.TL_documentAttributeVideo) {
                        this.supportsPreloading = true;
                        this.preloadPrefixSize = document.attributes.get(i3).preload_prefix_size;
                        break;
                    }
                    i3++;
                }
            }
            this.ungzip = "application/x-tgsticker".equals(document.mime_type) || "application/x-tgwallpattern".equals(document.mime_type);
            long j2 = document.size;
            this.totalBytesCount = j2;
            if (this.key != null && j2 % 16 != 0) {
                long j3 = 16 - (j2 % 16);
                this.bytesCountPadding = j3;
                this.totalBytesCount = j2 + j3;
            }
            String documentFileName = FileLoader.getDocumentFileName(document);
            this.ext = documentFileName;
            if (documentFileName != null && (iLastIndexOf = documentFileName.lastIndexOf(46)) != -1) {
                strSubstring = this.ext.substring(iLastIndexOf);
            }
            this.ext = strSubstring;
            if ("audio/ogg".equals(document.mime_type)) {
                this.currentType = ConnectionsManager.FileTypeAudio;
            } else if (FileLoader.isVideoMimeType(document.mime_type)) {
                this.currentType = ConnectionsManager.FileTypeVideo;
            } else {
                this.currentType = ConnectionsManager.FileTypeFile;
            }
            if (this.ext.length() <= 1) {
                this.ext = FileLoader.getExtensionByMimeType(document.mime_type);
            }
        } catch (Exception e) {
            FileLog.e(e);
            onFail(true, 0);
        }
    }

    private void addPart(ArrayList<Range> arrayList, long j, long j2, boolean z) {
        if (arrayList == null || j2 < j) {
            return;
        }
        int size = arrayList.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            Range range = arrayList.get(i);
            long j3 = range.start;
            long j4 = range.end;
            if (j <= j3) {
                if (j2 >= j4) {
                    arrayList.remove(i);
                    z2 = true;
                    break;
                } else {
                    if (j2 > range.start) {
                        range.start = j2;
                        z2 = true;
                        break;
                    }
                }
            } else if (j2 < j4) {
                arrayList.add(0, new Range(range.start, j));
                range.start = j2;
                z2 = true;
                break;
            } else {
                if (j < range.end) {
                    range.end = j;
                    z2 = true;
                    break;
                }
            }
        }
        if (z) {
            if (!z2) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.e(this.cacheFileFinal + " downloaded duplicate file part " + j + " - " + j2);
                    return;
                }
                return;
            }
            final ArrayList arrayList2 = new ArrayList(arrayList);
            if (this.fileWriteRunnable != null) {
                filesQueue.cancelRunnable(this.fileWriteRunnable);
            }
            synchronized (this) {
                this.writingToFilePartsStream = true;
            }
            DispatchQueue dispatchQueue = filesQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$addPart$2(arrayList2);
                }
            };
            this.fileWriteRunnable = runnable;
            dispatchQueue.postRunnable(runnable);
            notifyStreamListeners();
        }
    }

    private boolean canFinishPreload() {
        return this.isStory && this.priority < 3;
    }

    private void cancel(final boolean z) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cancel$13(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cancelOnStage, reason: merged with bridge method [inline-methods] */
    public void lambda$cancel$13(boolean z) {
        if (this.state != 3 && this.state != 2) {
            this.state = 5;
            cancelRequests(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$cancelOnStage$14();
                }
            });
        }
        if (z) {
            File file = this.cacheFileFinal;
            if (file != null) {
                try {
                    if (!file.delete()) {
                        this.cacheFileFinal.deleteOnExit();
                    }
                } catch (Exception e) {
                    FileLog.e(e);
                }
            }
            File file2 = this.cacheFileTemp;
            if (file2 != null) {
                try {
                    if (!file2.delete()) {
                        this.cacheFileTemp.deleteOnExit();
                    }
                } catch (Exception e2) {
                    FileLog.e(e2);
                }
            }
            File file3 = this.cacheFileParts;
            if (file3 != null) {
                try {
                    if (!file3.delete()) {
                        this.cacheFileParts.deleteOnExit();
                    }
                } catch (Exception e3) {
                    FileLog.e(e3);
                }
            }
            File file4 = this.cacheIvTemp;
            if (file4 != null) {
                try {
                    if (!file4.delete()) {
                        this.cacheIvTemp.deleteOnExit();
                    }
                } catch (Exception e4) {
                    FileLog.e(e4);
                }
            }
            File file5 = this.cacheFilePreload;
            if (file5 != null) {
                try {
                    if (file5.delete()) {
                        return;
                    }
                    this.cacheFilePreload.deleteOnExit();
                } catch (Exception e5) {
                    FileLog.e(e5);
                }
            }
        }
    }

    private void cancelRequests(final Runnable runnable) {
        StringBuilder sb = new StringBuilder();
        sb.append("cancelRequests");
        sb.append(runnable != null ? " with callback" : "");
        FileLog.d(sb.toString());
        if (this.requestInfos != null) {
            final int[] iArr = new int[1];
            int[] iArr2 = new int[2];
            int i = 0;
            for (int i2 = 0; i2 < this.requestInfos.size(); i2++) {
                final RequestInfo requestInfo = this.requestInfos.get(i2);
                if (requestInfo.requestToken != 0) {
                    requestInfo.cancelling = true;
                    if (runnable == null) {
                        requestInfo.cancelled = true;
                        FileLog.d("cancelRequests cancel " + requestInfo.requestToken);
                        ConnectionsManager.getInstance(this.currentAccount).cancelRequest(requestInfo.requestToken, true);
                    } else {
                        requestInfo.whenCancelled = new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda7
                            @Override // java.lang.Runnable
                            public final void run() {
                                FileLoadOperation.lambda$cancelRequests$15(requestInfo, iArr, runnable);
                            }
                        };
                        iArr[0] = iArr[0] + 1;
                        FileLog.d("cancelRequests cancel " + requestInfo.requestToken + " with callback");
                        ConnectionsManager.getInstance(this.currentAccount).cancelRequest(requestInfo.requestToken, true, new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda8
                            @Override // java.lang.Runnable
                            public final void run() {
                                FileLoadOperation.lambda$cancelRequests$16(requestInfo);
                            }
                        });
                    }
                    char c = requestInfo.connectionType == 2 ? (char) 0 : (char) 1;
                    iArr2[c] = iArr2[c] + requestInfo.chunkSize;
                }
            }
            while (i < 2) {
                int i3 = i == 0 ? 2 : ConnectionsManager.ConnectionTypeDownload2;
                if (iArr2[i] > 1048576) {
                    ConnectionsManager.getInstance(this.currentAccount).discardConnection(this.isCdn ? this.cdnDatacenterId : this.datacenterId, i3);
                }
                i++;
            }
        }
    }

    private void cleanup() throws IOException {
        try {
            RandomAccessFile randomAccessFile = this.fileOutputStream;
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.getChannel().close();
                } catch (Exception e) {
                    FileLog.e(e);
                }
                this.fileOutputStream.close();
                this.fileOutputStream = null;
            }
        } catch (Exception e2) {
            FileLog.e(e2);
        }
        try {
            RandomAccessFile randomAccessFile2 = this.preloadStream;
            if (randomAccessFile2 != null) {
                try {
                    randomAccessFile2.getChannel().close();
                } catch (Exception e3) {
                    FileLog.e(e3);
                }
                this.preloadStream.close();
                this.preloadStream = null;
            }
        } catch (Exception e4) {
            FileLog.e(e4);
        }
        try {
            RandomAccessFile randomAccessFile3 = this.fileReadStream;
            if (randomAccessFile3 != null) {
                try {
                    randomAccessFile3.getChannel().close();
                } catch (Exception e5) {
                    FileLog.e(e5);
                }
                this.fileReadStream.close();
                this.fileReadStream = null;
            }
        } catch (Exception e6) {
            FileLog.e(e6);
        }
        try {
            if (this.filePartsStream != null) {
                synchronized (this) {
                    if (this.writingToFilePartsStream) {
                        this.closeFilePartsStreamOnWriteEnd = true;
                    } else {
                        try {
                            this.filePartsStream.getChannel().close();
                        } catch (Exception e7) {
                            FileLog.e(e7);
                        }
                        this.filePartsStream.close();
                        this.filePartsStream = null;
                    }
                }
            }
        } catch (Exception e8) {
            FileLog.e(e8);
        }
        try {
            RandomAccessFile randomAccessFile4 = this.fiv;
            if (randomAccessFile4 != null) {
                randomAccessFile4.close();
                this.fiv = null;
            }
        } catch (Exception e9) {
            FileLog.e(e9);
        }
        if (this.delayedRequestInfos != null) {
            for (int i = 0; i < this.delayedRequestInfos.size(); i++) {
                RequestInfo requestInfo = this.delayedRequestInfos.get(i);
                if (requestInfo.response != null) {
                    requestInfo.response.disableFree = false;
                    requestInfo.response.freeResources();
                } else if (requestInfo.responseWeb != null) {
                    requestInfo.responseWeb.disableFree = false;
                    requestInfo.responseWeb.freeResources();
                } else if (requestInfo.responseCdn != null) {
                    requestInfo.responseCdn.disableFree = false;
                    requestInfo.responseCdn.freeResources();
                }
            }
            this.delayedRequestInfos.clear();
        }
    }

    private void clearOperation(RequestInfo requestInfo, boolean z, boolean z2) {
        int[] iArr = new int[2];
        long j = Long.MAX_VALUE;
        int i = 0;
        while (i < this.requestInfos.size()) {
            final RequestInfo requestInfo2 = this.requestInfos.get(i);
            long jMin = Math.min(requestInfo2.offset, j);
            if (this.isPreloadVideoOperation) {
                this.requestedPreloadedBytesRanges.remove(Long.valueOf(requestInfo2.offset));
            } else {
                removePart(this.notRequestedBytesRanges, requestInfo2.offset, requestInfo2.offset + requestInfo2.chunkSize);
            }
            if (requestInfo != requestInfo2 && requestInfo2.requestToken != 0) {
                requestInfo2.cancelling = true;
                if (z2) {
                    this.cancelledRequestInfos.add(requestInfo2);
                    requestInfo2.whenCancelled = new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$clearOperation$24(requestInfo2);
                        }
                    };
                    ConnectionsManager.getInstance(this.currentAccount).cancelRequest(requestInfo2.requestToken, true, new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            FileLoadOperation.lambda$clearOperation$25(requestInfo2);
                        }
                    });
                } else {
                    ConnectionsManager.getInstance(this.currentAccount).cancelRequest(requestInfo2.requestToken, true);
                    requestInfo2.cancelled = true;
                }
            }
            i++;
            j = jMin;
        }
        int i2 = 0;
        while (i2 < 2) {
            int i3 = i2 == 0 ? 2 : ConnectionsManager.ConnectionTypeDownload2;
            if (iArr[i2] > 1048576) {
                ConnectionsManager.getInstance(this.currentAccount).discardConnection(this.isCdn ? this.cdnDatacenterId : this.datacenterId, i3);
            }
            i2++;
        }
        this.requestInfos.clear();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$clearOperation$26();
            }
        });
        long jMin2 = j;
        for (int i4 = 0; i4 < this.delayedRequestInfos.size(); i4++) {
            RequestInfo requestInfo3 = this.delayedRequestInfos.get(i4);
            if (this.isPreloadVideoOperation) {
                this.requestedPreloadedBytesRanges.remove(Long.valueOf(requestInfo3.offset));
            } else {
                removePart(this.notRequestedBytesRanges, requestInfo3.offset, requestInfo3.offset + requestInfo3.chunkSize);
            }
            if (requestInfo3.response != null) {
                requestInfo3.response.disableFree = false;
                requestInfo3.response.freeResources();
            } else if (requestInfo3.responseWeb != null) {
                requestInfo3.responseWeb.disableFree = false;
                requestInfo3.responseWeb.freeResources();
            } else if (requestInfo3.responseCdn != null) {
                requestInfo3.responseCdn.disableFree = false;
                requestInfo3.responseCdn.freeResources();
            }
            jMin2 = Math.min(requestInfo3.offset, jMin2);
        }
        this.delayedRequestInfos.clear();
        this.requestsCount = 0;
        if (!z && this.isPreloadVideoOperation) {
            this.requestedBytesCount = this.totalPreloadedBytes;
        } else if (this.notLoadedBytesRanges == null) {
            this.downloadedBytes = jMin2;
            this.requestedBytesCount = jMin2;
        }
    }

    private void copyNotLoadedRanges() {
        if (this.notLoadedBytesRanges == null) {
            return;
        }
        this.notLoadedBytesRangesCopy = new ArrayList<>(this.notLoadedBytesRanges);
    }

    private void delayRequestInfo(RequestInfo requestInfo) {
        TLObject tLObject;
        this.delayedRequestInfos.add(requestInfo);
        if (requestInfo.response != null) {
            tLObject = requestInfo.response;
        } else if (requestInfo.responseWeb != null) {
            tLObject = requestInfo.responseWeb;
        } else if (requestInfo.responseCdn == null) {
            return;
        } else {
            tLObject = requestInfo.responseCdn;
        }
        tLObject.disableFree = true;
    }

    private long findNextPreloadDownloadOffset(long j, long j2, NativeByteBuffer nativeByteBuffer) {
        long j3;
        int iLimit = nativeByteBuffer.limit();
        long j4 = j;
        do {
            if (j4 >= j2 - (this.preloadTempBuffer != null ? 16 : 0)) {
                j3 = j2 + iLimit;
                if (j4 < j3) {
                    if (j4 >= j3 - 16) {
                        long j5 = j3 - j4;
                        if (j5 > 2147483647L) {
                            throw new RuntimeException("!!!");
                        }
                        this.preloadTempBufferCount = (int) j5;
                        nativeByteBuffer.position(nativeByteBuffer.limit() - this.preloadTempBufferCount);
                        nativeByteBuffer.readBytes(this.preloadTempBuffer, 0, this.preloadTempBufferCount, false);
                        return j3;
                    }
                    if (this.preloadTempBufferCount != 0) {
                        nativeByteBuffer.position(0);
                        byte[] bArr = this.preloadTempBuffer;
                        int i = this.preloadTempBufferCount;
                        nativeByteBuffer.readBytes(bArr, i, 16 - i, false);
                        this.preloadTempBufferCount = 0;
                    } else {
                        long j6 = j4 - j2;
                        if (j6 > 2147483647L) {
                            throw new RuntimeException("!!!");
                        }
                        nativeByteBuffer.position((int) j6);
                        nativeByteBuffer.readBytes(this.preloadTempBuffer, 0, 16, false);
                    }
                    byte[] bArr2 = this.preloadTempBuffer;
                    int i2 = ((bArr2[0] & 255) << 24) + ((bArr2[1] & 255) << 16) + ((bArr2[2] & 255) << 8) + (bArr2[3] & 255);
                    if (i2 == 0) {
                        return 0L;
                    }
                    if (i2 == 1) {
                        i2 = ((bArr2[12] & 255) << 24) + ((bArr2[13] & 255) << 16) + ((bArr2[14] & 255) << 8) + (bArr2[15] & 255);
                    }
                    if (bArr2[4] == 109 && bArr2[5] == 111 && bArr2[6] == 111 && bArr2[7] == 118) {
                        return -i2;
                    }
                    j4 += i2;
                }
            }
            return 0L;
        } while (j4 < j3);
        return j4;
    }

    public static long floorDiv(long j, long j2) {
        long j3 = j / j2;
        return ((j ^ j2) >= 0 || j2 * j3 == j) ? j3 : j3 - 1;
    }

    private long getDownloadedLengthFromOffsetInternal(ArrayList<Range> arrayList, long j, long j2) {
        long j3;
        long jMax;
        long j4;
        if (arrayList != null && this.state != 3 && !arrayList.isEmpty()) {
            int size = arrayList.size();
            Range range = null;
            int i = 0;
            while (true) {
                if (i >= size) {
                    j4 = j2;
                    break;
                }
                Range range2 = arrayList.get(i);
                if (j <= range2.start && (range == null || range2.start < range.start)) {
                    range = range2;
                }
                if (range2.start <= j && range2.end > j) {
                    j4 = 0;
                    break;
                }
                i++;
            }
            if (j4 == 0) {
                return 0L;
            }
            if (range != null) {
                jMax = range.start - j;
                return Math.min(j2, jMax);
            }
            j3 = this.totalBytesCount;
        } else {
            if (this.state == 3) {
                return j2;
            }
            j3 = this.downloadedBytes;
            if (j3 == 0) {
                return 0L;
            }
        }
        jMax = Math.max(j3 - j, 0L);
        return Math.min(j2, jMax);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addPart$2(ArrayList arrayList) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
        } catch (Exception e) {
            FileLog.e((Throwable) e, false);
            if (AndroidUtilities.isENOSPC(e)) {
                LaunchActivity.checkFreeDiscSpaceStatic(1);
            } else if (AndroidUtilities.isEROFS(e)) {
                SharedConfig.checkSdCard(this.cacheFileFinal);
            }
        }
        if (this.filePartsStream == null) {
            return;
        }
        int size = arrayList.size();
        int i = (size * 16) + 4;
        ImmutableByteArrayOutputStream immutableByteArrayOutputStream = filesQueueByteBuffer;
        if (immutableByteArrayOutputStream == null) {
            filesQueueByteBuffer = new ImmutableByteArrayOutputStream(i);
        } else {
            immutableByteArrayOutputStream.reset();
        }
        filesQueueByteBuffer.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            Range range = (Range) arrayList.get(i2);
            filesQueueByteBuffer.writeLong(range.start);
            filesQueueByteBuffer.writeLong(range.end);
        }
        synchronized (this) {
            try {
                RandomAccessFile randomAccessFile = this.filePartsStream;
                if (randomAccessFile == null) {
                    return;
                }
                randomAccessFile.seek(0L);
                this.filePartsStream.write(filesQueueByteBuffer.buf, 0, i);
                this.writingToFilePartsStream = false;
                if (this.closeFilePartsStreamOnWriteEnd) {
                    try {
                        this.filePartsStream.getChannel().close();
                    } catch (Exception e2) {
                        FileLog.e(e2);
                    }
                    this.filePartsStream.close();
                    this.filePartsStream = null;
                }
                this.totalTime += System.currentTimeMillis() - jCurrentTimeMillis;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelOnStage$14() {
        if (this.state == 5) {
            onFail(false, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$cancelRequests$15(RequestInfo requestInfo, int[] iArr, Runnable runnable) {
        requestInfo.whenCancelled = null;
        requestInfo.cancelled = true;
        int i = iArr[0] - 1;
        iArr[0] = i;
        if (i == 0) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$cancelRequests$16(RequestInfo requestInfo) {
        Runnable runnable = requestInfo.whenCancelled;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearOperation$24(RequestInfo requestInfo) {
        requestInfo.whenCancelled = null;
        this.cancelledRequestInfos.remove(requestInfo);
        requestInfo.cancelled = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$clearOperation$25(RequestInfo requestInfo) {
        Runnable runnable = requestInfo.whenCancelled;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearOperation$26() {
        this.uiRequestTokens.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getCurrentFile$3(File[] fileArr, CountDownLatch countDownLatch) {
        if (this.state != 3 || this.preloadFinished) {
            fileArr[0] = this.cacheFileTemp;
        } else {
            fileArr[0] = this.cacheFileFinal;
        }
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getDownloadedLengthFromOffset$4(long[] jArr, long j, long j2, CountDownLatch countDownLatch) {
        try {
            jArr[0] = getDownloadedLengthFromOffsetInternal(this.notLoadedBytesRanges, j, j2);
        } catch (Throwable th) {
            FileLog.e(th);
            jArr[0] = 0;
        }
        if (this.state == 3) {
            jArr[1] = 1;
        }
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6() {
        pause();
        FileLoader.getInstance(this.currentAccount).cancelLoadFile(getFileName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFail$23(int i) {
        FileLoadOperationDelegate fileLoadOperationDelegate = this.delegate;
        if (fileLoadOperationDelegate != null) {
            fileLoadOperationDelegate.didFailedLoadingFile(this, i);
        }
        notifyStreamListeners();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFinishLoadingFile$17(boolean z) {
        try {
            onFinishLoadingFile(z, 0, false);
        } catch (Exception unused) {
            onFail(false, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFinishLoadingFile$18() {
        onFail(false, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFinishLoadingFile$19(boolean z) {
        StatsController statsController;
        int currentNetworkType;
        int i;
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("finished downloading file to " + this.cacheFileFinal + " time = " + (System.currentTimeMillis() - this.startTime) + " dc = " + this.datacenterId + " size = " + AndroidUtilities.formatFileSize(this.totalBytesCount));
        }
        if (z) {
            int i2 = this.currentType;
            if (i2 == 50331648) {
                statsController = StatsController.getInstance(this.currentAccount);
                currentNetworkType = ApplicationLoader.getCurrentNetworkType();
                i = 3;
            } else if (i2 == 33554432) {
                statsController = StatsController.getInstance(this.currentAccount);
                currentNetworkType = ApplicationLoader.getCurrentNetworkType();
                i = 2;
            } else if (i2 == 16777216) {
                statsController = StatsController.getInstance(this.currentAccount);
                currentNetworkType = ApplicationLoader.getCurrentNetworkType();
                i = 4;
            } else if (i2 == 67108864) {
                String str = this.ext;
                if (str == null || !(str.toLowerCase().endsWith("mp3") || this.ext.toLowerCase().endsWith("m4a"))) {
                    statsController = StatsController.getInstance(this.currentAccount);
                    currentNetworkType = ApplicationLoader.getCurrentNetworkType();
                    i = 5;
                } else {
                    statsController = StatsController.getInstance(this.currentAccount);
                    currentNetworkType = ApplicationLoader.getCurrentNetworkType();
                    i = 7;
                }
            }
            statsController.incrementReceivedItemsCount(currentNetworkType, i, 1);
        }
        this.delegate.didFinishLoadingFile(this, this.cacheFileFinal);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0176  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$onFinishLoadingFile$20(File file, File file2, File file3, File file4, final boolean z) {
        Throwable th;
        File file5;
        boolean zCopyFile;
        StringBuilder sb;
        String strSubstring;
        if (file != null) {
            file.delete();
        }
        if (file2 != null) {
            file2.delete();
        }
        if (file3 != null) {
            file3.delete();
        }
        if (file4 != null) {
            if (this.ungzip) {
                try {
                    GZIPInputStream gZIPInputStream = new GZIPInputStream(new FileInputStream(file4));
                    FileLoader.copyFile(gZIPInputStream, this.cacheFileGzipTemp, preloadMaxBytes);
                    gZIPInputStream.close();
                    file4.delete();
                    file5 = this.cacheFileGzipTemp;
                    try {
                        this.ungzip = false;
                    } catch (ZipException unused) {
                        file4 = file5;
                        this.ungzip = false;
                        if (this.ungzip) {
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        FileLog.e(th, !AndroidUtilities.isFilNotFoundException(th));
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.e("unable to ungzip temp = " + file4 + " to final = " + this.cacheFileFinal);
                        }
                        file4 = file5;
                        if (this.ungzip) {
                        }
                    }
                } catch (ZipException unused2) {
                } catch (Throwable th3) {
                    th = th3;
                    file5 = file4;
                }
                file4 = file5;
            }
            if (this.ungzip) {
                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda29
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onFinishLoadingFile$18();
                    }
                });
                return;
            }
            try {
                if (this.parentObject instanceof TLRPC.TL_theme) {
                    zCopyFile = AndroidUtilities.copyFile(file4, this.cacheFileFinal);
                } else {
                    if (this.pathSaveData != null) {
                        synchronized (lockObject) {
                            try {
                                this.cacheFileFinal = new File(this.storePath, this.storeFileName);
                                int i = 1;
                                while (this.cacheFileFinal.exists()) {
                                    int iLastIndexOf = this.storeFileName.lastIndexOf(46);
                                    if (iLastIndexOf > 0) {
                                        sb = new StringBuilder();
                                        sb.append(this.storeFileName.substring(0, iLastIndexOf));
                                        sb.append(" (");
                                        sb.append(i);
                                        sb.append(")");
                                        strSubstring = this.storeFileName.substring(iLastIndexOf);
                                    } else {
                                        sb = new StringBuilder();
                                        sb.append(this.storeFileName);
                                        sb.append(" (");
                                        sb.append(i);
                                        strSubstring = ")";
                                    }
                                    sb.append(strSubstring);
                                    this.cacheFileFinal = new File(this.storePath, sb.toString());
                                    i++;
                                }
                            } finally {
                            }
                        }
                    }
                    zCopyFile = file4.renameTo(this.cacheFileFinal);
                }
            } catch (Exception e) {
                FileLog.e(e);
                zCopyFile = false;
            }
            if (!zCopyFile && this.renameRetryCount == 3) {
                try {
                    zCopyFile = AndroidUtilities.copyFile(file4, this.cacheFileFinal);
                    if (zCopyFile) {
                        this.cacheFileFinal.delete();
                    }
                } catch (Throwable th4) {
                    FileLog.e(th4);
                }
            }
            if (zCopyFile) {
                this.cacheFileFinalReady = true;
                if (this.pathSaveData != null && this.cacheFileFinal.exists()) {
                    this.delegate.saveFilePath(this.pathSaveData, this.cacheFileFinal);
                }
            } else {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.e("unable to rename temp = " + file4 + " to final = " + this.cacheFileFinal + " retry = " + this.renameRetryCount);
                }
                int i2 = this.renameRetryCount + 1;
                this.renameRetryCount = i2;
                if (i2 < 3) {
                    this.state = 1;
                    Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda28
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onFinishLoadingFile$17(z);
                        }
                    }, 200L);
                    return;
                } else {
                    this.cacheFileFinal = file4;
                    this.cacheFileFinalReady = false;
                }
            }
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onFinishLoadingFile$19(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$pause$7() {
        if (!this.isStory) {
            for (int i = 0; i < this.requestInfos.size(); i++) {
                ConnectionsManager.getInstance(this.currentAccount).failNotRunningRequest(this.requestInfos.get(i).requestToken);
            }
            return;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("debug_loading: " + this.cacheFileFinal.getName() + " pause operation, clear requests");
        }
        clearOperation(null, false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processRequestResult$22(int i) {
        this.uiRequestTokens.remove(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$removePart$1(Range range, Range range2) {
        if (range.start > range2.start) {
            return 1;
        }
        return range.start < range2.start ? -1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeStreamListener$5(FileLoadOperationStream fileLoadOperationStream) {
        if (this.streamListeners == null) {
            return;
        }
        FileLog.e("FileLoadOperation " + getFileName() + " removing stream listener " + fileLoadOperationStream);
        this.streamListeners.remove(fileLoadOperationStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestFileOffsets$21(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error != null) {
            onFail(false, 0);
            return;
        }
        if (tLObject instanceof Vector) {
            this.requestingCdnOffsets = false;
            Vector vector = (Vector) tLObject;
            if (!vector.objects.isEmpty()) {
                if (this.cdnHashes == null) {
                    this.cdnHashes = new HashMap<>();
                }
                for (int i = 0; i < vector.objects.size(); i++) {
                    TLRPC.TL_fileHash tL_fileHash = (TLRPC.TL_fileHash) vector.objects.get(i);
                    this.cdnHashes.put(Long.valueOf(tL_fileHash.offset), tL_fileHash);
                }
            }
            for (int i2 = 0; i2 < this.delayedRequestInfos.size(); i2++) {
                RequestInfo requestInfo = this.delayedRequestInfos.get(i2);
                if (this.notLoadedBytesRanges != null || this.downloadedBytes == requestInfo.offset) {
                    this.delayedRequestInfos.remove(i2);
                    if (processRequestResult(requestInfo, null)) {
                        return;
                    }
                    if (requestInfo.response != null) {
                        requestInfo.response.disableFree = false;
                        requestInfo.response.freeResources();
                        return;
                    } else if (requestInfo.responseWeb != null) {
                        requestInfo.responseWeb.disableFree = false;
                        requestInfo.responseWeb.freeResources();
                        return;
                    } else {
                        if (requestInfo.responseCdn != null) {
                            requestInfo.responseCdn.disableFree = false;
                            requestInfo.responseCdn.freeResources();
                            return;
                        }
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setIsPreloadVideoOperation$12(boolean z) {
        this.requestedBytesCount = 0L;
        clearOperation(null, true, true);
        this.isPreloadVideoOperation = z;
        startDownloadRequest(-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setStream$0(FileLoadOperationStream fileLoadOperationStream) {
        if (this.streamListeners == null) {
            this.streamListeners = new ArrayList<>();
        }
        if (fileLoadOperationStream != null && !this.streamListeners.contains(fileLoadOperationStream)) {
            this.streamListeners.add(fileLoadOperationStream);
        }
        if (!this.streamListeners.isEmpty()) {
            Utilities.stageQueue.cancelRunnable(this.cancelAfterNoStreamListeners);
        }
        if (fileLoadOperationStream == null || this.state == 1 || this.state == 0) {
            return;
        }
        fileLoadOperationStream.newDataAvailable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$10() {
        startDownloadRequest(-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$11(boolean[] zArr) {
        boolean z = this.isPreloadVideoOperation && zArr[0];
        int i = this.preloadPrefixSize;
        boolean z2 = i > 0 && this.downloadedBytes >= ((long) i) && canFinishPreload();
        long j = this.totalBytesCount;
        if (j == 0 || !(z || this.downloadedBytes == j || z2)) {
            startDownloadRequest(-1);
            return;
        }
        try {
            onFinishLoadingFile(false, 1, true);
        } catch (Exception unused) {
            onFail(true, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$8(int i) {
        this.uiRequestTokens.remove(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$9(boolean z, long j, FileLoadOperationStream fileLoadOperationStream, boolean z2) {
        if (this.streamListeners == null) {
            this.streamListeners = new ArrayList<>();
        }
        if (z) {
            long j2 = this.currentDownloadChunkSize;
            long j3 = (j / j2) * j2;
            RequestInfo requestInfo = this.priorityRequestInfo;
            if (requestInfo != null && requestInfo.offset != j3) {
                RequestInfo requestInfo2 = this.priorityRequestInfo;
                final int i = requestInfo2.requestToken;
                this.requestInfos.remove(requestInfo2);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda20
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$start$8(i);
                    }
                });
                this.requestedBytesCount -= this.currentDownloadChunkSize;
                removePart(this.notRequestedBytesRanges, this.priorityRequestInfo.offset, this.currentDownloadChunkSize + this.priorityRequestInfo.offset);
                if (this.priorityRequestInfo.requestToken != 0) {
                    ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.priorityRequestInfo.requestToken, true);
                    this.requestsCount--;
                }
                if (BuildVars.DEBUG_VERSION) {
                    FileLog.d("frame get cancel request at offset " + this.priorityRequestInfo.offset);
                }
                this.priorityRequestInfo = null;
            }
            if (this.priorityRequestInfo == null) {
                this.streamPriorityStartOffset = j3;
            }
        } else {
            long j4 = this.currentDownloadChunkSize;
            this.streamStartOffset = (j / j4) * j4;
        }
        if (!this.streamListeners.contains(fileLoadOperationStream)) {
            this.streamListeners.add(fileLoadOperationStream);
            FileLog.e("FileLoadOperation " + getFileName() + " start, adding stream " + fileLoadOperationStream);
        }
        if (!this.streamListeners.isEmpty()) {
            Utilities.stageQueue.cancelRunnable(this.cancelAfterNoStreamListeners);
        }
        if (z2) {
            if (this.preloadedBytesRanges != null && getDownloadedLengthFromOffsetInternal(this.notLoadedBytesRanges, this.streamStartOffset, 1L) == 0 && this.preloadedBytesRanges.get(Long.valueOf(this.streamStartOffset)) != null) {
                this.nextPartWasPreloaded = true;
            }
            startDownloadRequest(-1);
            this.nextPartWasPreloaded = false;
        }
        if (this.notLoadedBytesRanges != null) {
            notifyStreamListeners();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDownloadRequest$27(RequestInfo requestInfo) throws IOException {
        processRequestResult(requestInfo, null);
        requestInfo.response.freeResources();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDownloadRequest$28(int i, RequestInfo requestInfo, TLObject tLObject, TLRPC.TL_error tL_error) {
        this.reuploadingCdn = false;
        if (tLObject instanceof Vector) {
            Vector vector = (Vector) tLObject;
            if (!vector.objects.isEmpty()) {
                if (this.cdnHashes == null) {
                    this.cdnHashes = new HashMap<>();
                }
                for (int i2 = 0; i2 < vector.objects.size(); i2++) {
                    TLRPC.TL_fileHash tL_fileHash = (TLRPC.TL_fileHash) vector.objects.get(i2);
                    this.cdnHashes.put(Long.valueOf(tL_fileHash.offset), tL_fileHash);
                }
            }
        } else {
            if (tL_error == null) {
                return;
            }
            if (!tL_error.text.equals("FILE_TOKEN_INVALID") && !tL_error.text.equals("REQUEST_TOKEN_INVALID")) {
                onFail(false, 0);
                return;
            } else {
                this.isCdn = false;
                clearOperation(requestInfo, false, false);
            }
        }
        startDownloadRequest(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDownloadRequest$29(final RequestInfo requestInfo, int i, final int i2, TLObject tLObject, TLObject tLObject2, TLRPC.TL_error tL_error) throws IOException {
        StatsController statsController;
        int i3;
        long objectSize;
        int i4;
        byte[] bArr;
        if (requestInfo.cancelled) {
            FileLog.e("received chunk but definitely cancelled offset=" + requestInfo.offset + " size=" + requestInfo.chunkSize + " token=" + requestInfo.requestToken);
            return;
        }
        if (requestInfo.cancelling) {
            FileLog.e("received cancelled chunk after cancelRequests! offset=" + requestInfo.offset + " size=" + requestInfo.chunkSize + " token=" + requestInfo.requestToken);
        }
        if (!this.requestInfos.contains(requestInfo)) {
            if (!this.cancelledRequestInfos.contains(requestInfo)) {
                return;
            }
            int i5 = 0;
            boolean z = false;
            while (i5 < this.requestInfos.size()) {
                RequestInfo requestInfo2 = this.requestInfos.get(i5);
                if (requestInfo2 != null && requestInfo2 != requestInfo && requestInfo2.offset == requestInfo.offset && requestInfo2.chunkSize == requestInfo.chunkSize) {
                    FileLog.e("received cancelled chunk faster than new one! received=" + requestInfo.requestToken + " new=" + requestInfo2.requestToken);
                    if (z) {
                        this.requestInfos.remove(i5);
                        i5--;
                    } else {
                        this.requestInfos.set(i5, requestInfo);
                        z = true;
                    }
                }
                i5++;
            }
        }
        int i6 = 0;
        while (i6 < this.cancelledRequestInfos.size()) {
            RequestInfo requestInfo3 = this.cancelledRequestInfos.get(i6);
            if (requestInfo3 != null && requestInfo3 != requestInfo && requestInfo3.offset == requestInfo.offset && requestInfo3.chunkSize == requestInfo.chunkSize) {
                FileLog.e("received new chunk faster than cancelled one! received=" + requestInfo.requestToken + " cancelled=" + requestInfo3.requestToken);
                this.cancelledRequestInfos.remove(i6);
                i6 += -1;
            }
            i6++;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("debug_loading: " + this.cacheFileFinal.getName() + " time=" + (System.currentTimeMillis() - requestInfo.requestStartTime) + " dcId=" + i + " cdn=" + this.isCdn + " conType=" + i2 + " reqId" + requestInfo.requestToken);
        }
        if (requestInfo == this.priorityRequestInfo) {
            if (BuildVars.DEBUG_VERSION) {
                FileLog.d("frame get request completed " + this.priorityRequestInfo.offset);
            }
            this.priorityRequestInfo = null;
        }
        if (tL_error != null) {
            Runnable runnable = requestInfo.whenCancelled;
            if (runnable != null) {
                runnable.run();
            }
            if (tL_error.code == -2000) {
                this.requestInfos.remove(requestInfo);
                this.requestedBytesCount -= requestInfo.chunkSize;
                removePart(this.notRequestedBytesRanges, requestInfo.offset, requestInfo.offset + requestInfo.chunkSize);
                return;
            } else if (FileRefController.isFileRefError(tL_error.text)) {
                requestReference(requestInfo);
                return;
            } else if ((tLObject instanceof TLRPC.TL_upload_getCdnFile) && tL_error.text.equals("FILE_TOKEN_INVALID")) {
                this.isCdn = false;
                clearOperation(requestInfo, false, false);
                startDownloadRequest(i2);
                return;
            }
        }
        if (tLObject2 instanceof TLRPC.TL_upload_fileCdnRedirect) {
            TLRPC.TL_upload_fileCdnRedirect tL_upload_fileCdnRedirect = (TLRPC.TL_upload_fileCdnRedirect) tLObject2;
            if (!tL_upload_fileCdnRedirect.file_hashes.isEmpty()) {
                if (this.cdnHashes == null) {
                    this.cdnHashes = new HashMap<>();
                }
                for (int i7 = 0; i7 < tL_upload_fileCdnRedirect.file_hashes.size(); i7++) {
                    TLRPC.TL_fileHash tL_fileHash = (TLRPC.TL_fileHash) tL_upload_fileCdnRedirect.file_hashes.get(i7);
                    this.cdnHashes.put(Long.valueOf(tL_fileHash.offset), tL_fileHash);
                }
            }
            byte[] bArr2 = tL_upload_fileCdnRedirect.encryption_iv;
            if (bArr2 == null || (bArr = tL_upload_fileCdnRedirect.encryption_key) == null || bArr2.length != 16 || bArr.length != 32) {
                Runnable runnable2 = requestInfo.whenCancelled;
                if (runnable2 != null) {
                    runnable2.run();
                }
                TLRPC.TL_error tL_error2 = new TLRPC.TL_error();
                tL_error2.text = "bad redirect response";
                tL_error2.code = 400;
                processRequestResult(requestInfo, tL_error2);
                return;
            }
            this.isCdn = true;
            if (this.notCheckedCdnRanges == null) {
                ArrayList<Range> arrayList = new ArrayList<>();
                this.notCheckedCdnRanges = arrayList;
                arrayList.add(new Range(0L, this.maxCdnParts));
            }
            this.cdnDatacenterId = tL_upload_fileCdnRedirect.dc_id;
            this.cdnIv = tL_upload_fileCdnRedirect.encryption_iv;
            this.cdnKey = tL_upload_fileCdnRedirect.encryption_key;
            this.cdnToken = tL_upload_fileCdnRedirect.file_token;
            clearOperation(requestInfo, false, false);
            startDownloadRequest(i2);
            return;
        }
        if (tLObject2 instanceof TLRPC.TL_upload_cdnFileReuploadNeeded) {
            if (this.reuploadingCdn) {
                return;
            }
            clearOperation(requestInfo, false, false);
            this.reuploadingCdn = true;
            TLRPC.TL_upload_reuploadCdnFile tL_upload_reuploadCdnFile = new TLRPC.TL_upload_reuploadCdnFile();
            tL_upload_reuploadCdnFile.file_token = this.cdnToken;
            tL_upload_reuploadCdnFile.request_token = ((TLRPC.TL_upload_cdnFileReuploadNeeded) tLObject2).request_token;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_upload_reuploadCdnFile, new RequestDelegate() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda5
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject3, TLRPC.TL_error tL_error3) {
                    this.f$0.lambda$startDownloadRequest$28(i2, requestInfo, tLObject3, tL_error3);
                }
            }, null, null, 0, this.datacenterId, 1, true);
            return;
        }
        if (tLObject2 instanceof TLRPC.TL_upload_file) {
            requestInfo.response = (TLRPC.TL_upload_file) tLObject2;
        } else if (tLObject2 instanceof TLRPC.TL_upload_webFile) {
            requestInfo.responseWeb = (TLRPC.TL_upload_webFile) tLObject2;
            if (this.totalBytesCount == 0 && requestInfo.responseWeb.size != 0) {
                this.totalBytesCount = requestInfo.responseWeb.size;
            }
        } else {
            requestInfo.responseCdn = (TLRPC.TL_upload_cdnFile) tLObject2;
        }
        if (tLObject2 != null) {
            int i8 = this.currentType;
            if (i8 == 50331648) {
                statsController = StatsController.getInstance(this.currentAccount);
                i3 = tLObject2.networkType;
                objectSize = tLObject2.getObjectSize() + 4;
                i4 = 3;
            } else if (i8 == 33554432) {
                statsController = StatsController.getInstance(this.currentAccount);
                i3 = tLObject2.networkType;
                objectSize = tLObject2.getObjectSize() + 4;
                i4 = 2;
            } else if (i8 == 16777216) {
                StatsController.getInstance(this.currentAccount).incrementReceivedBytesCount(tLObject2.networkType, 4, tLObject2.getObjectSize() + 4);
            } else if (i8 == 67108864) {
                String str = this.ext;
                if (str == null || !(str.toLowerCase().endsWith("mp3") || this.ext.toLowerCase().endsWith("m4a"))) {
                    statsController = StatsController.getInstance(this.currentAccount);
                    i3 = tLObject2.networkType;
                    objectSize = tLObject2.getObjectSize() + 4;
                    i4 = 5;
                } else {
                    statsController = StatsController.getInstance(this.currentAccount);
                    i3 = tLObject2.networkType;
                    objectSize = tLObject2.getObjectSize() + 4;
                    i4 = 7;
                }
            }
            statsController.incrementReceivedBytesCount(i3, i4, objectSize);
        }
        processRequestResult(requestInfo, tL_error);
        Runnable runnable3 = requestInfo.whenCancelled;
        if (runnable3 != null) {
            runnable3.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDownloadRequest$30(int i) {
        this.uiRequestTokens.add(Integer.valueOf(i));
    }

    private void notifyStreamListeners() {
        ArrayList<FileLoadOperationStream> arrayList = this.streamListeners;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.streamListeners.get(i).newDataAvailable();
            }
        }
    }

    private void onFinishLoadingFile(final boolean z, int i, boolean z2) throws IOException {
        StringBuilder sb;
        if (this.state == 1 || this.state == 5) {
            this.state = 3;
            notifyStreamListeners();
            cleanup();
            if (!this.isPreloadVideoOperation && !z2) {
                final File file = this.cacheIvTemp;
                final File file2 = this.cacheFileParts;
                final File file3 = this.cacheFilePreload;
                final File file4 = this.cacheFileTemp;
                filesQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onFinishLoadingFile$20(file, file2, file3, file4, z);
                    }
                });
                this.cacheIvTemp = null;
                this.cacheFileParts = null;
                this.cacheFilePreload = null;
                this.delegate.didPreFinishLoading(this, this.cacheFileFinal);
                return;
            }
            this.preloadFinished = true;
            if (BuildVars.DEBUG_VERSION) {
                if (i == 1) {
                    sb = new StringBuilder();
                    sb.append("file already exist ");
                    sb.append(this.cacheFileTemp);
                } else {
                    sb = new StringBuilder();
                    sb.append("finished preloading file to ");
                    sb.append(this.cacheFileTemp);
                    sb.append(" loaded ");
                    sb.append(this.downloadedBytes);
                    sb.append(" of ");
                    sb.append(this.totalBytesCount);
                    sb.append(" prefSize=");
                    sb.append(this.preloadPrefixSize);
                }
                FileLog.d(sb.toString());
            }
            if (this.fileMetadata != null) {
                if (this.cacheFileTemp != null) {
                    FileLoader.getInstance(this.currentAccount).getFileDatabase().removeFiles(Collections.singletonList(new CacheModel.FileInfo(this.cacheFileTemp)));
                }
                if (this.cacheFileParts != null) {
                    FileLoader.getInstance(this.currentAccount).getFileDatabase().removeFiles(Collections.singletonList(new CacheModel.FileInfo(this.cacheFileParts)));
                }
            }
            this.delegate.didPreFinishLoading(this, this.cacheFileFinal);
            this.delegate.didFinishLoadingFile(this, this.cacheFileFinal);
        }
    }

    private void removePart(ArrayList<Range> arrayList, long j, long j2) {
        boolean z;
        if (arrayList == null || j2 < j) {
            return;
        }
        int size = arrayList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Range range = arrayList.get(i2);
            if (j == range.end) {
                range.end = j2;
            } else if (j2 == range.start) {
                range.start = j;
            }
            z = true;
        }
        z = false;
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda21
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return FileLoadOperation.lambda$removePart$1((FileLoadOperation.Range) obj, (FileLoadOperation.Range) obj2);
            }
        });
        while (i < arrayList.size() - 1) {
            Range range2 = arrayList.get(i);
            int i3 = i + 1;
            Range range3 = arrayList.get(i3);
            if (range2.end == range3.start) {
                range2.end = range3.end;
                arrayList.remove(i3);
                i--;
            }
            i++;
        }
        if (z) {
            return;
        }
        arrayList.add(new Range(j, j2));
    }

    private void requestFileOffsets(long j) {
        if (this.requestingCdnOffsets) {
            return;
        }
        this.requestingCdnOffsets = true;
        TLRPC.TL_upload_getCdnFileHashes tL_upload_getCdnFileHashes = new TLRPC.TL_upload_getCdnFileHashes();
        tL_upload_getCdnFileHashes.file_token = this.cdnToken;
        tL_upload_getCdnFileHashes.offset = j;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_upload_getCdnFileHashes, new RequestDelegate() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda22
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$requestFileOffsets$21(tLObject, tL_error);
            }
        }, null, null, 0, this.datacenterId, 1, true);
    }

    private void requestReference(RequestInfo requestInfo) {
        TLRPC.Message message;
        TLRPC.MessageMedia messageMedia;
        TLRPC.WebPage webPage;
        if (this.requestingReference) {
            return;
        }
        clearOperation(null, false, false);
        this.requestingReference = true;
        this.requestedReference = true;
        Object obj = this.parentObject;
        if (obj instanceof MessageObject) {
            MessageObject messageObject = (MessageObject) obj;
            if (messageObject.getId() < 0 && (message = messageObject.messageOwner) != null && (messageMedia = message.media) != null && (webPage = messageMedia.webpage) != null) {
                this.parentObject = webPage;
                this.isStory = false;
            }
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("debug_loading: " + this.cacheFileFinal.getName() + " file reference expired ");
        }
        FileRefController.getInstance(this.currentAccount).requestReference(this.parentObject, this.location, this, requestInfo);
    }

    private void updateParams() {
        int i;
        if ((this.preloadPrefixSize > 0 || MessagesController.getInstance(this.currentAccount).getfileExperimentalParams) && !this.forceSmallChunk) {
            this.downloadChunkSizeBig = 524288;
            i = 8;
        } else {
            this.downloadChunkSizeBig = 131072;
            i = 4;
        }
        this.maxDownloadRequests = i;
        this.maxDownloadRequestsBig = i;
        this.maxCdnParts = (int) (FileLoader.DEFAULT_MAX_FILE_SIZE / this.downloadChunkSizeBig);
    }

    public void cancel() {
        cancel(false);
    }

    public boolean checkPrefixPreloadFinished() {
        int i = this.preloadPrefixSize;
        if (i > 0 && this.downloadedBytes > i) {
            ArrayList<Range> arrayList = this.notLoadedBytesRanges;
            if (arrayList == null) {
                return true;
            }
            long jMin = Long.MAX_VALUE;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                try {
                    jMin = Math.min(jMin, arrayList.get(i2).start);
                } catch (Throwable th) {
                    FileLog.e(th);
                    return true;
                }
            }
            if (jMin > this.preloadPrefixSize) {
                return true;
            }
        }
        return false;
    }

    protected File getCacheFileFinal() {
        return this.cacheFileFinal;
    }

    protected File getCurrentFile() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final File[] fileArr = new File[1];
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getCurrentFile$3(fileArr, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception e) {
            FileLog.e(e);
        }
        return fileArr[0];
    }

    protected File getCurrentFileFast() {
        return (this.state == 3 && !this.preloadFinished && this.cacheFileFinalReady) ? this.cacheFileFinal : this.cacheFileTemp;
    }

    public int getCurrentType() {
        return this.currentType;
    }

    public int getDatacenterId() {
        return this.initialDatacenterId;
    }

    public long getDocumentId() {
        return this.documentId;
    }

    protected float getDownloadedLengthFromOffset(float f) {
        ArrayList<Range> arrayList = this.notLoadedBytesRangesCopy;
        return (this.totalBytesCount == 0 || arrayList == null) ? BitmapDescriptorFactory.HUE_RED : f + (getDownloadedLengthFromOffsetInternal(arrayList, (int) (r4 * f), r4) / this.totalBytesCount);
    }

    protected long[] getDownloadedLengthFromOffset(final long j, final long j2) throws InterruptedException {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final long[] jArr = new long[2];
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getDownloadedLengthFromOffset$4(jArr, j, j2, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception unused) {
        }
        return jArr;
    }

    public String getFileName() {
        return this.fileName;
    }

    public int getPositionInQueue() {
        return getQueue().getPosition(this);
    }

    public int getPriority() {
        return this.priority;
    }

    public FileLoaderPriorityQueue getQueue() {
        return this.priorityQueue;
    }

    public boolean isFinished() {
        return this.state == 3;
    }

    public boolean isForceRequest() {
        return this.isForceRequest;
    }

    public boolean isPaused() {
        return this.paused;
    }

    public boolean isPreloadFinished() {
        return this.preloadFinished;
    }

    public boolean isPreloadVideoOperation() {
        return this.isPreloadVideoOperation;
    }

    protected void onFail(boolean z, final int i) {
        StringBuilder sb;
        cleanup();
        this.state = i == 1 ? 4 : 2;
        if (this.delegate != null && BuildVars.LOGS_ENABLED) {
            long jCurrentTimeMillis = this.startTime != 0 ? System.currentTimeMillis() - this.startTime : 0L;
            if (i == 1) {
                sb = new StringBuilder();
                sb.append("cancel downloading file to ");
                sb.append(this.cacheFileFinal);
            } else {
                sb = new StringBuilder();
                sb.append("failed downloading file to ");
                sb.append(this.cacheFileFinal);
                sb.append(" reason = ");
                sb.append(i);
            }
            sb.append(" time = ");
            sb.append(jCurrentTimeMillis);
            sb.append(" dc = ");
            sb.append(this.datacenterId);
            sb.append(" size = ");
            sb.append(AndroidUtilities.formatFileSize(this.totalBytesCount));
            FileLog.d(sb.toString());
        }
        if (z) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onFail$23(i);
                }
            });
            return;
        }
        FileLoadOperationDelegate fileLoadOperationDelegate = this.delegate;
        if (fileLoadOperationDelegate != null) {
            fileLoadOperationDelegate.didFailedLoadingFile(this, i);
        }
        notifyStreamListeners();
    }

    public void pause() {
        if (this.state != 1) {
            return;
        }
        this.paused = true;
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$pause$7();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x02d5 A[Catch: Exception -> 0x0098, TryCatch #1 {Exception -> 0x0098, blocks: (B:14:0x0086, B:16:0x008a, B:18:0x0094, B:22:0x009b, B:24:0x00a1, B:34:0x00c6, B:37:0x00d0, B:39:0x00d8, B:41:0x00e6, B:44:0x00f4, B:46:0x00fb, B:48:0x010f, B:49:0x0144, B:51:0x0148, B:53:0x016c, B:54:0x0194, B:56:0x0198, B:57:0x019f, B:59:0x01ca, B:61:0x01dc, B:63:0x01f1, B:64:0x01fa, B:66:0x0206, B:68:0x0210, B:65:0x01fd, B:67:0x0209, B:69:0x0212, B:71:0x0235, B:73:0x0239, B:75:0x023f, B:77:0x0245, B:83:0x0251, B:206:0x05a6, B:208:0x05ae, B:210:0x05ba, B:213:0x05c5, B:214:0x05c8, B:216:0x05d4, B:218:0x05da, B:219:0x05e9, B:221:0x05ef, B:222:0x05fe, B:224:0x0604, B:226:0x0614, B:228:0x061c, B:230:0x0621, B:232:0x0626, B:84:0x0260, B:86:0x0264, B:87:0x026e, B:91:0x0280, B:93:0x0284, B:95:0x0289, B:97:0x028f, B:102:0x029b, B:122:0x02cf, B:124:0x02d5, B:126:0x02ee, B:128:0x02f6, B:133:0x030a, B:134:0x0320, B:135:0x0321, B:136:0x0325, B:138:0x0329, B:139:0x0361, B:141:0x0365, B:143:0x0372, B:144:0x03a8, B:146:0x03cd, B:148:0x03df, B:150:0x03ef, B:152:0x03f7, B:154:0x040c, B:156:0x0413, B:158:0x041b, B:166:0x0431, B:168:0x0441, B:169:0x0452, B:174:0x0463, B:175:0x046a, B:176:0x046b, B:178:0x0478, B:180:0x04ba, B:182:0x04c9, B:184:0x04cd, B:186:0x04d1, B:187:0x0516, B:191:0x0537, B:188:0x051b, B:190:0x051f, B:192:0x053a, B:194:0x0544, B:196:0x0577, B:198:0x057b, B:199:0x0587, B:201:0x058f, B:203:0x0594, B:195:0x055c, B:106:0x02aa, B:110:0x02b4, B:233:0x062c, B:25:0x00a8, B:27:0x00ae, B:28:0x00b5, B:30:0x00bb), top: B:296:0x0086 }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0329 A[Catch: Exception -> 0x0098, TryCatch #1 {Exception -> 0x0098, blocks: (B:14:0x0086, B:16:0x008a, B:18:0x0094, B:22:0x009b, B:24:0x00a1, B:34:0x00c6, B:37:0x00d0, B:39:0x00d8, B:41:0x00e6, B:44:0x00f4, B:46:0x00fb, B:48:0x010f, B:49:0x0144, B:51:0x0148, B:53:0x016c, B:54:0x0194, B:56:0x0198, B:57:0x019f, B:59:0x01ca, B:61:0x01dc, B:63:0x01f1, B:64:0x01fa, B:66:0x0206, B:68:0x0210, B:65:0x01fd, B:67:0x0209, B:69:0x0212, B:71:0x0235, B:73:0x0239, B:75:0x023f, B:77:0x0245, B:83:0x0251, B:206:0x05a6, B:208:0x05ae, B:210:0x05ba, B:213:0x05c5, B:214:0x05c8, B:216:0x05d4, B:218:0x05da, B:219:0x05e9, B:221:0x05ef, B:222:0x05fe, B:224:0x0604, B:226:0x0614, B:228:0x061c, B:230:0x0621, B:232:0x0626, B:84:0x0260, B:86:0x0264, B:87:0x026e, B:91:0x0280, B:93:0x0284, B:95:0x0289, B:97:0x028f, B:102:0x029b, B:122:0x02cf, B:124:0x02d5, B:126:0x02ee, B:128:0x02f6, B:133:0x030a, B:134:0x0320, B:135:0x0321, B:136:0x0325, B:138:0x0329, B:139:0x0361, B:141:0x0365, B:143:0x0372, B:144:0x03a8, B:146:0x03cd, B:148:0x03df, B:150:0x03ef, B:152:0x03f7, B:154:0x040c, B:156:0x0413, B:158:0x041b, B:166:0x0431, B:168:0x0441, B:169:0x0452, B:174:0x0463, B:175:0x046a, B:176:0x046b, B:178:0x0478, B:180:0x04ba, B:182:0x04c9, B:184:0x04cd, B:186:0x04d1, B:187:0x0516, B:191:0x0537, B:188:0x051b, B:190:0x051f, B:192:0x053a, B:194:0x0544, B:196:0x0577, B:198:0x057b, B:199:0x0587, B:201:0x058f, B:203:0x0594, B:195:0x055c, B:106:0x02aa, B:110:0x02b4, B:233:0x062c, B:25:0x00a8, B:27:0x00ae, B:28:0x00b5, B:30:0x00bb), top: B:296:0x0086 }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0365 A[Catch: Exception -> 0x0098, TryCatch #1 {Exception -> 0x0098, blocks: (B:14:0x0086, B:16:0x008a, B:18:0x0094, B:22:0x009b, B:24:0x00a1, B:34:0x00c6, B:37:0x00d0, B:39:0x00d8, B:41:0x00e6, B:44:0x00f4, B:46:0x00fb, B:48:0x010f, B:49:0x0144, B:51:0x0148, B:53:0x016c, B:54:0x0194, B:56:0x0198, B:57:0x019f, B:59:0x01ca, B:61:0x01dc, B:63:0x01f1, B:64:0x01fa, B:66:0x0206, B:68:0x0210, B:65:0x01fd, B:67:0x0209, B:69:0x0212, B:71:0x0235, B:73:0x0239, B:75:0x023f, B:77:0x0245, B:83:0x0251, B:206:0x05a6, B:208:0x05ae, B:210:0x05ba, B:213:0x05c5, B:214:0x05c8, B:216:0x05d4, B:218:0x05da, B:219:0x05e9, B:221:0x05ef, B:222:0x05fe, B:224:0x0604, B:226:0x0614, B:228:0x061c, B:230:0x0621, B:232:0x0626, B:84:0x0260, B:86:0x0264, B:87:0x026e, B:91:0x0280, B:93:0x0284, B:95:0x0289, B:97:0x028f, B:102:0x029b, B:122:0x02cf, B:124:0x02d5, B:126:0x02ee, B:128:0x02f6, B:133:0x030a, B:134:0x0320, B:135:0x0321, B:136:0x0325, B:138:0x0329, B:139:0x0361, B:141:0x0365, B:143:0x0372, B:144:0x03a8, B:146:0x03cd, B:148:0x03df, B:150:0x03ef, B:152:0x03f7, B:154:0x040c, B:156:0x0413, B:158:0x041b, B:166:0x0431, B:168:0x0441, B:169:0x0452, B:174:0x0463, B:175:0x046a, B:176:0x046b, B:178:0x0478, B:180:0x04ba, B:182:0x04c9, B:184:0x04cd, B:186:0x04d1, B:187:0x0516, B:191:0x0537, B:188:0x051b, B:190:0x051f, B:192:0x053a, B:194:0x0544, B:196:0x0577, B:198:0x057b, B:199:0x0587, B:201:0x058f, B:203:0x0594, B:195:0x055c, B:106:0x02aa, B:110:0x02b4, B:233:0x062c, B:25:0x00a8, B:27:0x00ae, B:28:0x00b5, B:30:0x00bb), top: B:296:0x0086 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x03cd A[Catch: Exception -> 0x0098, TryCatch #1 {Exception -> 0x0098, blocks: (B:14:0x0086, B:16:0x008a, B:18:0x0094, B:22:0x009b, B:24:0x00a1, B:34:0x00c6, B:37:0x00d0, B:39:0x00d8, B:41:0x00e6, B:44:0x00f4, B:46:0x00fb, B:48:0x010f, B:49:0x0144, B:51:0x0148, B:53:0x016c, B:54:0x0194, B:56:0x0198, B:57:0x019f, B:59:0x01ca, B:61:0x01dc, B:63:0x01f1, B:64:0x01fa, B:66:0x0206, B:68:0x0210, B:65:0x01fd, B:67:0x0209, B:69:0x0212, B:71:0x0235, B:73:0x0239, B:75:0x023f, B:77:0x0245, B:83:0x0251, B:206:0x05a6, B:208:0x05ae, B:210:0x05ba, B:213:0x05c5, B:214:0x05c8, B:216:0x05d4, B:218:0x05da, B:219:0x05e9, B:221:0x05ef, B:222:0x05fe, B:224:0x0604, B:226:0x0614, B:228:0x061c, B:230:0x0621, B:232:0x0626, B:84:0x0260, B:86:0x0264, B:87:0x026e, B:91:0x0280, B:93:0x0284, B:95:0x0289, B:97:0x028f, B:102:0x029b, B:122:0x02cf, B:124:0x02d5, B:126:0x02ee, B:128:0x02f6, B:133:0x030a, B:134:0x0320, B:135:0x0321, B:136:0x0325, B:138:0x0329, B:139:0x0361, B:141:0x0365, B:143:0x0372, B:144:0x03a8, B:146:0x03cd, B:148:0x03df, B:150:0x03ef, B:152:0x03f7, B:154:0x040c, B:156:0x0413, B:158:0x041b, B:166:0x0431, B:168:0x0441, B:169:0x0452, B:174:0x0463, B:175:0x046a, B:176:0x046b, B:178:0x0478, B:180:0x04ba, B:182:0x04c9, B:184:0x04cd, B:186:0x04d1, B:187:0x0516, B:191:0x0537, B:188:0x051b, B:190:0x051f, B:192:0x053a, B:194:0x0544, B:196:0x0577, B:198:0x057b, B:199:0x0587, B:201:0x058f, B:203:0x0594, B:195:0x055c, B:106:0x02aa, B:110:0x02b4, B:233:0x062c, B:25:0x00a8, B:27:0x00ae, B:28:0x00b5, B:30:0x00bb), top: B:296:0x0086 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x042a A[EDGE_INSN: B:302:0x042a->B:164:0x042a BREAK  A[LOOP:1: B:147:0x03dd->B:195:0x055c], PHI: r11 r12
      0x042a: PHI (r11v8 boolean) = (r11v7 boolean), (r11v9 boolean), (r11v9 boolean), (r11v9 boolean), (r11v9 boolean) binds: [B:145:0x03cb, B:302:0x042a, B:153:0x040a, B:161:0x0425, B:162:0x0427] A[DONT_GENERATE, DONT_INLINE]
      0x042a: PHI (r12v3 boolean) = (r12v2 boolean), (r12v4 boolean), (r12v4 boolean), (r12v4 boolean), (r12v4 boolean) binds: [B:145:0x03cb, B:302:0x042a, B:153:0x040a, B:161:0x0425, B:162:0x0427] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x057b A[Catch: Exception -> 0x0098, TryCatch #1 {Exception -> 0x0098, blocks: (B:14:0x0086, B:16:0x008a, B:18:0x0094, B:22:0x009b, B:24:0x00a1, B:34:0x00c6, B:37:0x00d0, B:39:0x00d8, B:41:0x00e6, B:44:0x00f4, B:46:0x00fb, B:48:0x010f, B:49:0x0144, B:51:0x0148, B:53:0x016c, B:54:0x0194, B:56:0x0198, B:57:0x019f, B:59:0x01ca, B:61:0x01dc, B:63:0x01f1, B:64:0x01fa, B:66:0x0206, B:68:0x0210, B:65:0x01fd, B:67:0x0209, B:69:0x0212, B:71:0x0235, B:73:0x0239, B:75:0x023f, B:77:0x0245, B:83:0x0251, B:206:0x05a6, B:208:0x05ae, B:210:0x05ba, B:213:0x05c5, B:214:0x05c8, B:216:0x05d4, B:218:0x05da, B:219:0x05e9, B:221:0x05ef, B:222:0x05fe, B:224:0x0604, B:226:0x0614, B:228:0x061c, B:230:0x0621, B:232:0x0626, B:84:0x0260, B:86:0x0264, B:87:0x026e, B:91:0x0280, B:93:0x0284, B:95:0x0289, B:97:0x028f, B:102:0x029b, B:122:0x02cf, B:124:0x02d5, B:126:0x02ee, B:128:0x02f6, B:133:0x030a, B:134:0x0320, B:135:0x0321, B:136:0x0325, B:138:0x0329, B:139:0x0361, B:141:0x0365, B:143:0x0372, B:144:0x03a8, B:146:0x03cd, B:148:0x03df, B:150:0x03ef, B:152:0x03f7, B:154:0x040c, B:156:0x0413, B:158:0x041b, B:166:0x0431, B:168:0x0441, B:169:0x0452, B:174:0x0463, B:175:0x046a, B:176:0x046b, B:178:0x0478, B:180:0x04ba, B:182:0x04c9, B:184:0x04cd, B:186:0x04d1, B:187:0x0516, B:191:0x0537, B:188:0x051b, B:190:0x051f, B:192:0x053a, B:194:0x0544, B:196:0x0577, B:198:0x057b, B:199:0x0587, B:201:0x058f, B:203:0x0594, B:195:0x055c, B:106:0x02aa, B:110:0x02b4, B:233:0x062c, B:25:0x00a8, B:27:0x00ae, B:28:0x00b5, B:30:0x00bb), top: B:296:0x0086 }] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0614 A[Catch: Exception -> 0x0098, TryCatch #1 {Exception -> 0x0098, blocks: (B:14:0x0086, B:16:0x008a, B:18:0x0094, B:22:0x009b, B:24:0x00a1, B:34:0x00c6, B:37:0x00d0, B:39:0x00d8, B:41:0x00e6, B:44:0x00f4, B:46:0x00fb, B:48:0x010f, B:49:0x0144, B:51:0x0148, B:53:0x016c, B:54:0x0194, B:56:0x0198, B:57:0x019f, B:59:0x01ca, B:61:0x01dc, B:63:0x01f1, B:64:0x01fa, B:66:0x0206, B:68:0x0210, B:65:0x01fd, B:67:0x0209, B:69:0x0212, B:71:0x0235, B:73:0x0239, B:75:0x023f, B:77:0x0245, B:83:0x0251, B:206:0x05a6, B:208:0x05ae, B:210:0x05ba, B:213:0x05c5, B:214:0x05c8, B:216:0x05d4, B:218:0x05da, B:219:0x05e9, B:221:0x05ef, B:222:0x05fe, B:224:0x0604, B:226:0x0614, B:228:0x061c, B:230:0x0621, B:232:0x0626, B:84:0x0260, B:86:0x0264, B:87:0x026e, B:91:0x0280, B:93:0x0284, B:95:0x0289, B:97:0x028f, B:102:0x029b, B:122:0x02cf, B:124:0x02d5, B:126:0x02ee, B:128:0x02f6, B:133:0x030a, B:134:0x0320, B:135:0x0321, B:136:0x0325, B:138:0x0329, B:139:0x0361, B:141:0x0365, B:143:0x0372, B:144:0x03a8, B:146:0x03cd, B:148:0x03df, B:150:0x03ef, B:152:0x03f7, B:154:0x040c, B:156:0x0413, B:158:0x041b, B:166:0x0431, B:168:0x0441, B:169:0x0452, B:174:0x0463, B:175:0x046a, B:176:0x046b, B:178:0x0478, B:180:0x04ba, B:182:0x04c9, B:184:0x04cd, B:186:0x04d1, B:187:0x0516, B:191:0x0537, B:188:0x051b, B:190:0x051f, B:192:0x053a, B:194:0x0544, B:196:0x0577, B:198:0x057b, B:199:0x0587, B:201:0x058f, B:203:0x0594, B:195:0x055c, B:106:0x02aa, B:110:0x02b4, B:233:0x062c, B:25:0x00a8, B:27:0x00ae, B:28:0x00b5, B:30:0x00bb), top: B:296:0x0086 }] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x061c A[Catch: Exception -> 0x0098, TryCatch #1 {Exception -> 0x0098, blocks: (B:14:0x0086, B:16:0x008a, B:18:0x0094, B:22:0x009b, B:24:0x00a1, B:34:0x00c6, B:37:0x00d0, B:39:0x00d8, B:41:0x00e6, B:44:0x00f4, B:46:0x00fb, B:48:0x010f, B:49:0x0144, B:51:0x0148, B:53:0x016c, B:54:0x0194, B:56:0x0198, B:57:0x019f, B:59:0x01ca, B:61:0x01dc, B:63:0x01f1, B:64:0x01fa, B:66:0x0206, B:68:0x0210, B:65:0x01fd, B:67:0x0209, B:69:0x0212, B:71:0x0235, B:73:0x0239, B:75:0x023f, B:77:0x0245, B:83:0x0251, B:206:0x05a6, B:208:0x05ae, B:210:0x05ba, B:213:0x05c5, B:214:0x05c8, B:216:0x05d4, B:218:0x05da, B:219:0x05e9, B:221:0x05ef, B:222:0x05fe, B:224:0x0604, B:226:0x0614, B:228:0x061c, B:230:0x0621, B:232:0x0626, B:84:0x0260, B:86:0x0264, B:87:0x026e, B:91:0x0280, B:93:0x0284, B:95:0x0289, B:97:0x028f, B:102:0x029b, B:122:0x02cf, B:124:0x02d5, B:126:0x02ee, B:128:0x02f6, B:133:0x030a, B:134:0x0320, B:135:0x0321, B:136:0x0325, B:138:0x0329, B:139:0x0361, B:141:0x0365, B:143:0x0372, B:144:0x03a8, B:146:0x03cd, B:148:0x03df, B:150:0x03ef, B:152:0x03f7, B:154:0x040c, B:156:0x0413, B:158:0x041b, B:166:0x0431, B:168:0x0441, B:169:0x0452, B:174:0x0463, B:175:0x046a, B:176:0x046b, B:178:0x0478, B:180:0x04ba, B:182:0x04c9, B:184:0x04cd, B:186:0x04d1, B:187:0x0516, B:191:0x0537, B:188:0x051b, B:190:0x051f, B:192:0x053a, B:194:0x0544, B:196:0x0577, B:198:0x057b, B:199:0x0587, B:201:0x058f, B:203:0x0594, B:195:0x055c, B:106:0x02aa, B:110:0x02b4, B:233:0x062c, B:25:0x00a8, B:27:0x00ae, B:28:0x00b5, B:30:0x00bb), top: B:296:0x0086 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected boolean processRequestResult(RequestInfo requestInfo, TLRPC.TL_error tL_error) throws IOException {
        NativeByteBuffer nativeByteBuffer;
        NativeByteBuffer nativeByteBuffer2;
        String str;
        boolean z;
        long j;
        byte[] bArr;
        boolean z2;
        boolean z3;
        RandomAccessFile randomAccessFile;
        boolean z4;
        long j2;
        StringBuilder sb;
        int i;
        int i2;
        long j3;
        int i3;
        StringBuilder sb2;
        Integer numValueOf;
        boolean z5 = false;
        if (this.state != 1 && this.state != 5) {
            if (BuildVars.DEBUG_VERSION && this.state == 3) {
                FileLog.e(new FileLog.IgnoreSentException("trying to write to finished file " + this.fileName + " offset " + requestInfo.offset + " " + this.totalBytesCount + " reqToken=" + requestInfo.requestToken + " (state=" + this.state + ")"));
            }
            return false;
        }
        final int i4 = requestInfo.requestToken;
        this.requestInfos.remove(requestInfo);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processRequestResult$22(i4);
            }
        });
        String str2 = " secret = ";
        if (tL_error != null) {
            if (!tL_error.text.contains("LIMIT_INVALID") || requestInfo.forceSmallChunk) {
                if (tL_error.text.contains("FILE_MIGRATE_")) {
                    Scanner scanner = new Scanner(tL_error.text.replace("FILE_MIGRATE_", ""));
                    scanner.useDelimiter("");
                    try {
                        numValueOf = Integer.valueOf(scanner.nextInt());
                    } catch (Exception unused) {
                        numValueOf = null;
                    }
                    if (numValueOf != null) {
                        this.datacenterId = numValueOf.intValue();
                        this.downloadedBytes = 0L;
                        this.requestedBytesCount = 0L;
                    }
                } else if (tL_error.text.contains("OFFSET_INVALID")) {
                    if (this.downloadedBytes % this.currentDownloadChunkSize == 0) {
                        try {
                            onFinishLoadingFile(true, 0, false);
                        } catch (Exception e) {
                            FileLog.e(e);
                            onFail(false, 0);
                        }
                        return false;
                    }
                } else {
                    if (tL_error.text.contains("RETRY_LIMIT")) {
                        onFail(false, 2);
                        return false;
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        TLRPC.InputFileLocation inputFileLocation = this.location;
                        if (inputFileLocation != null) {
                            if (inputFileLocation instanceof TLRPC.TL_inputPeerPhotoFileLocation) {
                                sb2 = new StringBuilder();
                                sb2.append(tL_error.text);
                                sb2.append(" ");
                                sb2.append(this.location);
                                sb2.append(" peer_did = ");
                                sb2.append(DialogObject.getPeerDialogId(((TLRPC.TL_inputPeerPhotoFileLocation) this.location).peer));
                                sb2.append(" peer_access_hash=");
                                sb2.append(((TLRPC.TL_inputPeerPhotoFileLocation) this.location).peer.access_hash);
                                sb2.append(" photo_id=");
                                sb2.append(((TLRPC.TL_inputPeerPhotoFileLocation) this.location).photo_id);
                                sb2.append(" big=");
                                sb2.append(((TLRPC.TL_inputPeerPhotoFileLocation) this.location).big);
                            } else {
                                sb2 = new StringBuilder();
                                sb2.append(tL_error.text);
                                sb2.append(" ");
                                sb2.append(this.location);
                                sb2.append(" id = ");
                                sb2.append(this.location.id);
                                sb2.append(" local_id = ");
                                sb2.append(this.location.local_id);
                                sb2.append(" access_hash = ");
                                sb2.append(this.location.access_hash);
                                sb2.append(" volume_id = ");
                                sb2.append(this.location.volume_id);
                                sb2.append(str2);
                                sb2.append(this.location.secret);
                            }
                        } else if (this.webLocation != null) {
                            sb2 = new StringBuilder();
                            sb2.append(tL_error.text);
                            sb2.append(" ");
                            sb2.append(this.webLocation);
                            sb2.append(" id = ");
                            sb2.append(this.fileName);
                        }
                        FileLog.e(sb2.toString());
                    }
                }
                onFail(false, 0);
                return false;
            }
            Runnable runnable = requestInfo.whenCancelled;
            if (runnable != null) {
                runnable.run();
            }
            removePart(this.notRequestedBytesRanges, requestInfo.offset, requestInfo.offset + requestInfo.chunkSize);
            if (!this.forceSmallChunk) {
                this.forceSmallChunk = true;
                this.currentDownloadChunkSize = LiteMode.FLAG_CHAT_SCALE;
                this.currentMaxDownloadRequests = 4;
            }
            startDownloadRequest(requestInfo.connectionType);
            return false;
        }
        try {
        } catch (Exception e2) {
            FileLog.e(e2, (AndroidUtilities.isFilNotFoundException(e2) || AndroidUtilities.isENOSPC(e2)) ? false : true);
            if (AndroidUtilities.isENOSPC(e2)) {
                onFail(false, -1);
                return false;
            }
            if (AndroidUtilities.isEROFS(e2)) {
                SharedConfig.checkSdCard(this.cacheFileFinal);
                onFail(true, -1);
            }
        }
        if (this.notLoadedBytesRanges == null && this.downloadedBytes != requestInfo.offset) {
            delayRequestInfo(requestInfo);
            return false;
        }
        if (requestInfo.response != null) {
            nativeByteBuffer2 = requestInfo.response.bytes;
        } else if (requestInfo.responseWeb != null) {
            nativeByteBuffer2 = requestInfo.responseWeb.bytes;
        } else {
            if (requestInfo.responseCdn == null) {
                nativeByteBuffer = null;
                if (nativeByteBuffer != null || nativeByteBuffer.limit() == 0) {
                    onFinishLoadingFile(true, 0, false);
                    return false;
                }
                int iLimit = nativeByteBuffer.limit();
                if (this.isCdn) {
                    long j4 = requestInfo.offset;
                    long j5 = this.cdnChunkCheckSize;
                    long j6 = (j4 / j5) * j5;
                    HashMap<Long, TLRPC.TL_fileHash> map = this.cdnHashes;
                    if ((map != null ? map.get(Long.valueOf(j6)) : null) == null) {
                        delayRequestInfo(requestInfo);
                        requestFileOffsets(j6);
                        return true;
                    }
                }
                if (requestInfo.responseCdn != null) {
                    long j7 = requestInfo.offset / 16;
                    byte[] bArr2 = this.cdnIv;
                    bArr2[15] = (byte) (j7 & 255);
                    bArr2[14] = (byte) ((j7 >> 8) & 255);
                    bArr2[13] = (byte) ((j7 >> 16) & 255);
                    bArr2[12] = (byte) ((j7 >> 24) & 255);
                    Utilities.aesCtrDecryption(nativeByteBuffer.buffer, this.cdnKey, bArr2, 0, nativeByteBuffer.limit());
                }
                if (!this.isPreloadVideoOperation) {
                    long j8 = iLimit;
                    long j9 = this.downloadedBytes + j8;
                    this.downloadedBytes = j9;
                    long j10 = this.totalBytesCount;
                    if (j10 > 0) {
                        z = j9 >= j10 || ((i = this.preloadPrefixSize) > 0 && j9 >= ((long) i) && canFinishPreload() && this.requestInfos.isEmpty());
                        str = " volume_id = ";
                        boolean z6 = this.downloadedBytes < this.totalBytesCount;
                        boolean z7 = BuildVars.DEBUG_VERSION;
                        bArr = this.key;
                        if (bArr != null) {
                            Utilities.aesIgeEncryption(nativeByteBuffer.buffer, bArr, this.iv, false, true, 0, nativeByteBuffer.limit());
                            if (z && this.bytesCountPadding != 0) {
                                long jLimit = nativeByteBuffer.limit() - this.bytesCountPadding;
                                if (BuildVars.DEBUG_VERSION && jLimit > 2147483647L) {
                                    throw new RuntimeException("Out of limit" + jLimit);
                                }
                                nativeByteBuffer.limit((int) jLimit);
                            }
                        }
                        if (this.encryptFile) {
                            long j11 = requestInfo.offset / 16;
                            byte[] bArr3 = this.encryptIv;
                            bArr3[15] = (byte) (j11 & 255);
                            bArr3[14] = (byte) ((j11 >> 8) & 255);
                            bArr3[13] = (byte) ((j11 >> 16) & 255);
                            bArr3[12] = (byte) ((j11 >> 24) & 255);
                            Utilities.aesCtrDecryption(nativeByteBuffer.buffer, this.encryptKey, bArr3, 0, nativeByteBuffer.limit());
                        }
                        if (this.notLoadedBytesRanges != null) {
                            this.fileOutputStream.seek(requestInfo.offset);
                            if (BuildVars.DEBUG_VERSION) {
                                FileLog.d("save file part " + this.fileName + " offset=" + requestInfo.offset + " chunk_size=" + this.currentDownloadChunkSize + " isCdn=" + this.isCdn);
                            }
                        }
                        this.fileOutputStream.getChannel().write(nativeByteBuffer.buffer);
                        addPart(this.notLoadedBytesRanges, requestInfo.offset, j8 + requestInfo.offset, true);
                        if (this.isCdn) {
                            z2 = z;
                            z3 = z6;
                            randomAccessFile = this.fiv;
                            if (randomAccessFile != null) {
                            }
                            if (this.totalBytesCount > 0) {
                                copyNotLoadedRanges();
                                this.delegate.didChangedLoadProgress(this, this.downloadedBytes, this.totalBytesCount);
                            }
                            z4 = z2;
                            z5 = z3;
                        } else {
                            long j12 = requestInfo.offset / this.cdnChunkCheckSize;
                            int size = this.notCheckedCdnRanges.size();
                            int i5 = 0;
                            while (true) {
                                if (i5 >= size) {
                                    break;
                                }
                                Range range = this.notCheckedCdnRanges.get(i5);
                                if (range.start > j12 || j12 > range.end) {
                                    i5++;
                                    str = str;
                                    str2 = str2;
                                    z = z;
                                    z6 = z6;
                                } else {
                                    long j13 = this.cdnChunkCheckSize;
                                    long j14 = j12 * j13;
                                    long downloadedLengthFromOffsetInternal = getDownloadedLengthFromOffsetInternal(this.notLoadedBytesRanges, j14, j13);
                                    if (downloadedLengthFromOffsetInternal == 0) {
                                        break;
                                    }
                                    if (downloadedLengthFromOffsetInternal != this.cdnChunkCheckSize) {
                                        long j15 = this.totalBytesCount;
                                        j2 = j14;
                                        if ((j15 <= 0 || downloadedLengthFromOffsetInternal != j15 - j2) && (j15 > 0 || !z)) {
                                            break;
                                        }
                                    } else {
                                        j2 = j14;
                                    }
                                    TLRPC.TL_fileHash tL_fileHash = this.cdnHashes.get(Long.valueOf(j2));
                                    if (this.fileReadStream == null) {
                                        this.cdnCheckBytes = new byte[this.cdnChunkCheckSize];
                                        this.fileReadStream = new RandomAccessFile(this.cacheFileTemp, "r");
                                    }
                                    this.fileReadStream.seek(j2);
                                    if (BuildVars.DEBUG_VERSION && downloadedLengthFromOffsetInternal > 2147483647L) {
                                        throw new RuntimeException("!!!");
                                    }
                                    this.fileReadStream.readFully(this.cdnCheckBytes, 0, (int) downloadedLengthFromOffsetInternal);
                                    if (this.encryptFile) {
                                        long j16 = j2 / 16;
                                        byte[] bArr4 = this.encryptIv;
                                        z2 = z;
                                        z3 = z6;
                                        bArr4[15] = (byte) (j16 & 255);
                                        bArr4[14] = (byte) ((j16 >> 8) & 255);
                                        bArr4[13] = (byte) ((j16 >> 16) & 255);
                                        bArr4[12] = (byte) ((j16 >> 24) & 255);
                                        Utilities.aesCtrDecryptionByteArray(this.cdnCheckBytes, this.encryptKey, bArr4, 0, downloadedLengthFromOffsetInternal, 0);
                                    } else {
                                        z2 = z;
                                        z3 = z6;
                                    }
                                    if (!Arrays.equals(Utilities.computeSHA256(this.cdnCheckBytes, 0, downloadedLengthFromOffsetInternal), tL_fileHash.hash)) {
                                        if (BuildVars.LOGS_ENABLED) {
                                            if (this.location != null) {
                                                sb = new StringBuilder();
                                                sb.append("invalid cdn hash ");
                                                sb.append(this.location);
                                                sb.append(" id = ");
                                                sb.append(this.location.id);
                                                sb.append(" local_id = ");
                                                sb.append(this.location.local_id);
                                                sb.append(" access_hash = ");
                                                sb.append(this.location.access_hash);
                                                sb.append(str);
                                                sb.append(this.location.volume_id);
                                                sb.append(str2);
                                                sb.append(this.location.secret);
                                            } else if (this.webLocation != null) {
                                                sb = new StringBuilder();
                                                sb.append("invalid cdn hash  ");
                                                sb.append(this.webLocation);
                                                sb.append(" id = ");
                                                sb.append(this.fileName);
                                            }
                                            FileLog.e(sb.toString());
                                        }
                                        onFail(false, 0);
                                        this.cacheFileTemp.delete();
                                        return false;
                                    }
                                    this.cdnHashes.remove(Long.valueOf(j2));
                                    addPart(this.notCheckedCdnRanges, j12, j12 + 1, false);
                                }
                            }
                            z2 = z;
                            z3 = z6;
                            randomAccessFile = this.fiv;
                            if (randomAccessFile != null) {
                                randomAccessFile.seek(0L);
                                this.fiv.write(this.iv);
                            }
                            if (this.totalBytesCount > 0 && this.state == 1) {
                                copyNotLoadedRanges();
                                this.delegate.didChangedLoadProgress(this, this.downloadedBytes, this.totalBytesCount);
                            }
                            z4 = z2;
                            z5 = z3;
                        }
                        return false;
                    }
                    int i6 = this.currentDownloadChunkSize;
                    if (iLimit == i6) {
                        str = " volume_id = ";
                        if (j10 != j9) {
                            j = 0;
                            if (j9 % i6 != 0) {
                            }
                            z = false;
                        } else {
                            j = 0;
                        }
                        if (j10 > j && j10 > j9) {
                            z = false;
                        }
                    } else {
                        str = " volume_id = ";
                    }
                    z = true;
                    boolean z72 = BuildVars.DEBUG_VERSION;
                    bArr = this.key;
                    if (bArr != null) {
                    }
                    if (this.encryptFile) {
                    }
                    if (this.notLoadedBytesRanges != null) {
                    }
                    this.fileOutputStream.getChannel().write(nativeByteBuffer.buffer);
                    addPart(this.notLoadedBytesRanges, requestInfo.offset, j8 + requestInfo.offset, true);
                    if (this.isCdn) {
                    }
                    return false;
                }
                this.preloadStream.writeLong(requestInfo.offset);
                long j17 = iLimit;
                this.preloadStream.writeLong(j17);
                this.preloadStreamFileOffset += 16;
                this.preloadStream.getChannel().write(nativeByteBuffer.buffer);
                if (BuildVars.DEBUG_VERSION) {
                    FileLog.d("save preload file part " + this.cacheFilePreload + " offset " + requestInfo.offset + " size " + iLimit);
                }
                if (this.preloadedBytesRanges == null) {
                    this.preloadedBytesRanges = new HashMap<>();
                }
                this.preloadedBytesRanges.put(Long.valueOf(requestInfo.offset), new PreloadRange(this.preloadStreamFileOffset, j17));
                this.totalPreloadedBytes += iLimit;
                this.preloadStreamFileOffset += iLimit;
                if (this.moovFound == 0) {
                    long jFindNextPreloadDownloadOffset = findNextPreloadDownloadOffset(this.nextAtomOffset, requestInfo.offset, nativeByteBuffer);
                    if (jFindNextPreloadDownloadOffset < 0) {
                        j3 = -1;
                        jFindNextPreloadDownloadOffset *= -1;
                        long j18 = this.nextPreloadDownloadOffset + this.currentDownloadChunkSize;
                        this.nextPreloadDownloadOffset = j18;
                        if (j18 < this.totalBytesCount / 2) {
                            long j19 = 1048576 + jFindNextPreloadDownloadOffset;
                            this.foundMoovSize = j19;
                            this.preloadNotRequestedBytesCount = j19;
                            i3 = 1;
                        } else {
                            this.foundMoovSize = 2097152L;
                            this.preloadNotRequestedBytesCount = 2097152L;
                            i3 = 2;
                        }
                        this.moovFound = i3;
                    } else {
                        j3 = this.nextPreloadDownloadOffset + this.currentDownloadChunkSize;
                    }
                    this.nextPreloadDownloadOffset = j3;
                    this.nextAtomOffset = jFindNextPreloadDownloadOffset;
                }
                this.preloadStream.writeLong(this.foundMoovSize);
                this.preloadStream.writeLong(this.nextPreloadDownloadOffset);
                this.preloadStream.writeLong(this.nextAtomOffset);
                this.preloadStreamFileOffset += 24;
                long j20 = this.nextPreloadDownloadOffset;
                z4 = j20 == 0 || (this.moovFound != 0 && this.foundMoovSize < 0) || this.totalPreloadedBytes > preloadMaxBytes || j20 >= this.totalBytesCount;
                if (z4) {
                    this.preloadStream.seek(0L);
                    this.preloadStream.write(1);
                } else if (this.moovFound != 0) {
                    this.foundMoovSize -= this.currentDownloadChunkSize;
                }
                while (i2 < this.delayedRequestInfos.size()) {
                    RequestInfo requestInfo2 = this.delayedRequestInfos.get(i2);
                    i2 = (this.notLoadedBytesRanges == null && this.downloadedBytes != requestInfo2.offset) ? i2 + 1 : 0;
                    this.delayedRequestInfos.remove(i2);
                    if (!processRequestResult(requestInfo2, null)) {
                        if (requestInfo2.response != null) {
                            requestInfo2.response.disableFree = false;
                            requestInfo2.response.freeResources();
                        } else if (requestInfo2.responseWeb != null) {
                            requestInfo2.responseWeb.disableFree = false;
                            requestInfo2.responseWeb.freeResources();
                        } else if (requestInfo2.responseCdn != null) {
                            requestInfo2.responseCdn.disableFree = false;
                            requestInfo2.responseCdn.freeResources();
                        }
                    }
                    if (!z4) {
                        onFinishLoadingFile(true, 0, z5);
                    } else if (this.state != 4 && this.state != 5) {
                        startDownloadRequest(requestInfo.connectionType);
                    }
                    return false;
                }
                if (!z4) {
                }
                return false;
            }
            nativeByteBuffer2 = requestInfo.responseCdn.bytes;
        }
        nativeByteBuffer = nativeByteBuffer2;
        if (nativeByteBuffer != null) {
        }
        onFinishLoadingFile(true, 0, false);
        return false;
    }

    protected void removeStreamListener(final FileLoadOperationStream fileLoadOperationStream) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeStreamListener$5(fileLoadOperationStream);
            }
        });
    }

    public void setDelegate(FileLoadOperationDelegate fileLoadOperationDelegate) {
        this.delegate = fileLoadOperationDelegate;
    }

    public void setEncryptFile(boolean z) {
        this.encryptFile = z;
        if (z) {
            this.allowDisordererFileSave = false;
        }
    }

    public void setForceRequest(boolean z) {
        this.isForceRequest = z;
    }

    public void setIsPreloadVideoOperation(final boolean z) {
        if (this.isPreloadVideoOperation != z) {
            if (!z || this.totalBytesCount > 2097152) {
                FileLog.e("setIsPreloadVideoOperation " + z + " file=" + this.fileName);
                if (!z && this.isPreloadVideoOperation) {
                    if (this.state == 3) {
                        this.isPreloadVideoOperation = z;
                        this.state = 0;
                        this.preloadFinished = false;
                        start();
                        return;
                    }
                    if (this.state == 1) {
                        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda13
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$setIsPreloadVideoOperation$12(z);
                            }
                        });
                        return;
                    }
                }
                this.isPreloadVideoOperation = z;
            }
        }
    }

    public void setPaths(int i, String str, FileLoaderPriorityQueue fileLoaderPriorityQueue, File file, File file2, String str2) {
        this.storePath = file;
        this.tempPath = file2;
        this.currentAccount = i;
        this.fileName = str;
        this.storeFileName = str2;
        this.priorityQueue = fileLoaderPriorityQueue;
    }

    public void setPriority(int i) {
        this.priority = i;
    }

    public void setStream(final FileLoadOperationStream fileLoadOperationStream, boolean z, long j) {
        this.stream = fileLoadOperationStream;
        this.streamOffset = j;
        this.streamPriority = z;
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setStream$0(fileLoadOperationStream);
            }
        });
    }

    public boolean start() {
        return start(this.stream, this.streamOffset, this.streamPriority);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:120:0x03b8  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0400  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x041c  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0476  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0540 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:242:0x068b  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x06b0  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x06b8  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x073b  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0741  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x076b  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x07d2  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0802  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x082e  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x086f  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x08fe A[Catch: Exception -> 0x0904, TRY_LEAVE, TryCatch #12 {Exception -> 0x0904, blocks: (B:345:0x08ed, B:347:0x08fe), top: B:405:0x08ed }] */
    /* JADX WARN: Removed duplicated region for block: B:360:0x092d  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x0931  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x093f  */
    /* JADX WARN: Removed duplicated region for block: B:398:0x0696 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v37, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v41 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean start(final FileLoadOperationStream fileLoadOperationStream, final long j, final boolean z) throws IOException {
        String str;
        String str2;
        String str3;
        String str4;
        StringBuilder sb;
        String str5;
        StringBuilder sb2;
        String string;
        String string2;
        Object obj;
        boolean zExists;
        boolean z2;
        int i;
        int i2;
        boolean z3;
        String str6;
        String str7;
        String str8;
        boolean z4;
        String str9;
        ArrayList<Range> arrayList;
        Range range;
        ArrayList<Range> arrayList2;
        ?? r1;
        boolean z5;
        int i3;
        long j2;
        boolean z6;
        StringBuilder sb3;
        RandomAccessFile randomAccessFile;
        long length;
        long j3;
        RandomAccessFile randomAccessFile2;
        int i4;
        this.startTime = System.currentTimeMillis();
        updateParams();
        if (this.currentDownloadChunkSize == 0) {
            if (this.forceSmallChunk) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.d("debug_loading: restart with small chunk");
                }
                this.currentDownloadChunkSize = LiteMode.FLAG_CHAT_SCALE;
                i4 = 4;
            } else {
                if (this.isStory) {
                    this.currentDownloadChunkSize = this.downloadChunkSizeBig;
                } else if (this.isStream) {
                    this.currentDownloadChunkSize = this.downloadChunkSizeAnimation;
                    i4 = this.maxDownloadRequestsAnimation;
                } else {
                    boolean z7 = this.totalBytesCount >= ((long) this.bigFileSizeFrom);
                    this.currentDownloadChunkSize = z7 ? this.downloadChunkSizeBig : this.downloadChunkSize;
                    if (!z7) {
                        i4 = this.maxDownloadRequests;
                    }
                }
                i4 = this.maxDownloadRequestsBig;
            }
            this.currentMaxDownloadRequests = i4;
        }
        boolean z8 = this.state != 0;
        boolean z9 = this.paused;
        this.paused = false;
        if (fileLoadOperationStream != null) {
            final boolean z10 = z8;
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$start$9(z, j, fileLoadOperationStream, z10);
                }
            });
        } else if (z8) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$start$10();
                }
            });
        }
        if (z8) {
            return z9;
        }
        if (this.location == null && this.webLocation == null) {
            if (BuildVars.DEBUG_VERSION) {
                FileLog.d("loadOperation: no location, failing");
            }
            onFail(true, 0);
            return false;
        }
        long j4 = this.currentDownloadChunkSize;
        this.streamStartOffset = (j / j4) * j4;
        if (this.allowDisordererFileSave) {
            long j5 = this.totalBytesCount;
            if (j5 > 0 && j5 > j4) {
                this.notLoadedBytesRanges = new ArrayList<>();
                this.notRequestedBytesRanges = new ArrayList<>();
            }
        }
        if (this.webLocation == null) {
            TLRPC.InputFileLocation inputFileLocation = this.location;
            long j6 = inputFileLocation.volume_id;
            if (j6 == 0 || inputFileLocation.local_id == 0) {
                if (this.datacenterId == 0 || inputFileLocation.id == 0) {
                    onFail(true, 0);
                    return false;
                }
                if (this.encryptFile) {
                    str5 = this.datacenterId + "_" + this.location.id + ".temp.enc";
                    str2 = this.datacenterId + "_" + this.location.id + this.ext + ".enc";
                    if (this.key != null) {
                        sb2 = new StringBuilder();
                        sb2.append(this.datacenterId);
                        sb2.append("_");
                        sb2.append(this.location.id);
                        sb2.append("_64.iv.enc");
                        string2 = sb2.toString();
                        str4 = null;
                        string = null;
                        String str10 = str5;
                        str3 = string2;
                        str = str10;
                    }
                    str = str5;
                    str3 = null;
                } else {
                    str = this.datacenterId + "_" + this.location.id + ".temp";
                    str2 = this.datacenterId + "_" + this.location.id + this.ext;
                    str3 = this.key != null ? this.datacenterId + "_" + this.location.id + "_64.iv" : null;
                    str4 = this.notLoadedBytesRanges != null ? this.datacenterId + "_" + this.location.id + "_64.pt" : null;
                    sb = new StringBuilder();
                    sb.append(this.datacenterId);
                    sb.append("_");
                    sb.append(this.location.id);
                    sb.append("_64.preload");
                    string = sb.toString();
                }
            } else {
                int i5 = this.datacenterId;
                if (i5 == Integer.MIN_VALUE || j6 == -2147483648L || i5 == 0) {
                    onFail(true, 0);
                    return false;
                }
                if (this.encryptFile) {
                    str5 = this.location.volume_id + "_" + this.location.local_id + ".temp.enc";
                    str2 = this.location.volume_id + "_" + this.location.local_id + "." + this.ext + ".enc";
                    if (this.key != null) {
                        sb2 = new StringBuilder();
                        sb2.append(this.location.volume_id);
                        sb2.append("_");
                        sb2.append(this.location.local_id);
                        sb2.append("_64.iv.enc");
                        string2 = sb2.toString();
                        str4 = null;
                        string = null;
                        String str102 = str5;
                        str3 = string2;
                        str = str102;
                    }
                    str = str5;
                    str3 = null;
                } else {
                    str = this.location.volume_id + "_" + this.location.local_id + ".temp";
                    str2 = this.location.volume_id + "_" + this.location.local_id + "." + this.ext;
                    str3 = this.key != null ? this.location.volume_id + "_" + this.location.local_id + "_64.iv" : null;
                    str4 = this.notLoadedBytesRanges != null ? this.location.volume_id + "_" + this.location.local_id + "_64.pt" : null;
                    sb = new StringBuilder();
                    sb.append(this.location.volume_id);
                    sb.append("_");
                    sb.append(this.location.local_id);
                    sb.append("_64.preload");
                    string = sb.toString();
                }
            }
            this.requestInfos = new ArrayList<>(this.currentMaxDownloadRequests);
            this.cancelledRequestInfos = new ArrayList<>();
            this.delayedRequestInfos = new ArrayList<>(this.currentMaxDownloadRequests - 1);
            this.state = 1;
            obj = this.parentObject;
            if (obj instanceof TLRPC.TL_theme) {
            }
            zExists = this.cacheFileFinal.exists();
            this.cacheFileFinalReady = zExists;
            if (zExists) {
            }
            if (zExists) {
            }
            return true;
        }
        String strMD5 = Utilities.MD5(this.webFile.url);
        if (this.encryptFile) {
            str5 = strMD5 + ".temp.enc";
            str2 = strMD5 + "." + this.ext + ".enc";
            if (this.key != null) {
                string2 = strMD5 + "_64.iv.enc";
                str4 = null;
                string = null;
                String str1022 = str5;
                str3 = string2;
                str = str1022;
                this.requestInfos = new ArrayList<>(this.currentMaxDownloadRequests);
                this.cancelledRequestInfos = new ArrayList<>();
                this.delayedRequestInfos = new ArrayList<>(this.currentMaxDownloadRequests - 1);
                this.state = 1;
                obj = this.parentObject;
                if (obj instanceof TLRPC.TL_theme) {
                    this.cacheFileFinal = new File(ApplicationLoader.getFilesDirFixed(), "remote" + ((TLRPC.TL_theme) obj).id + ".attheme");
                } else {
                    this.cacheFileFinal = !this.encryptFile ? new File(this.storePath, this.storeFileName) : new File(this.storePath, str2);
                }
                zExists = this.cacheFileFinal.exists();
                this.cacheFileFinalReady = zExists;
                if (zExists) {
                    if (!(this.parentObject instanceof TLRPC.TL_theme)) {
                        long j7 = this.totalBytesCount;
                        if (j7 != 0 && !this.ungzip && j7 != this.cacheFileFinal.length()) {
                            if (!this.delegate.isLocallyCreatedFile(this.cacheFileFinal.toString())) {
                                if (BuildVars.LOGS_ENABLED) {
                                    FileLog.d("debug_loading: delete existing file cause file size mismatch " + this.cacheFileFinal.getName() + " totalSize=" + this.totalBytesCount + " existingFileSize=" + this.cacheFileFinal.length());
                                }
                                if (!this.delegate.hasAnotherRefOnFile(this.cacheFileFinal.toString())) {
                                    this.cacheFileFinal.delete();
                                }
                                zExists = false;
                            }
                        }
                    }
                }
                if (zExists) {
                    this.started = true;
                    try {
                        onFinishLoadingFile(false, 1, false);
                        FilePathDatabase.PathData pathData = this.pathSaveData;
                        if (pathData != null) {
                            this.delegate.saveFilePath(pathData, this.cacheFileFinal);
                        }
                    } catch (Exception e) {
                        FileLog.e((Throwable) e, false);
                        if (AndroidUtilities.isENOSPC(e)) {
                            z2 = true;
                            LaunchActivity.checkFreeDiscSpaceStatic(1);
                            i = -1;
                            onFail(true, -1);
                        } else {
                            z2 = true;
                            i = -1;
                        }
                        if (!AndroidUtilities.isEROFS(e)) {
                            onFail(z2, 0);
                            return z2;
                        }
                        SharedConfig.checkSdCard(this.cacheFileFinal);
                        onFail(z2, i);
                        return false;
                    }
                } else {
                    this.cacheFileTemp = new File(this.tempPath, str);
                    if (this.ungzip) {
                        this.cacheFileGzipTemp = new File(this.tempPath, str + ".gz");
                    }
                    String str11 = "rws";
                    if (this.encryptFile) {
                        File file = new File(FileLoader.getInternalCacheDir(), str2 + ".key");
                        try {
                            randomAccessFile2 = new RandomAccessFile(file, "rws");
                            long length2 = file.length();
                            byte[] bArr = new byte[32];
                            this.encryptKey = bArr;
                            this.encryptIv = new byte[16];
                            if (length2 <= 0 || length2 % 48 != 0) {
                                Utilities.random.nextBytes(bArr);
                                Utilities.random.nextBytes(this.encryptIv);
                                randomAccessFile2.write(this.encryptKey);
                                randomAccessFile2.write(this.encryptIv);
                                z3 = true;
                            } else {
                                randomAccessFile2.read(bArr, 0, 32);
                                randomAccessFile2.read(this.encryptIv, 0, 16);
                                z3 = false;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            z3 = false;
                        }
                        try {
                            try {
                                randomAccessFile2.getChannel().close();
                            } catch (Exception e3) {
                                FileLog.e(e3);
                            }
                            randomAccessFile2.close();
                        } catch (Exception e4) {
                            e = e4;
                            if (AndroidUtilities.isENOSPC(e)) {
                                LaunchActivity.checkFreeDiscSpaceStatic(1);
                            } else {
                                if (!AndroidUtilities.isEROFS(e)) {
                                    FileLog.e(e);
                                    i2 = 1;
                                    final boolean[] zArr = new boolean[i2];
                                    zArr[0] = false;
                                    if (this.supportsPreloading) {
                                        str6 = str3;
                                        str7 = str4;
                                        str8 = "rws";
                                        z4 = z3;
                                        if (str7 == null) {
                                        }
                                        if (this.fileMetadata != null) {
                                        }
                                        if (this.cacheFileTemp.exists()) {
                                        }
                                    }
                                    return true;
                                }
                                SharedConfig.checkSdCard(this.cacheFileFinal);
                            }
                            FileLog.e((Throwable) e, false);
                            i2 = 1;
                            final boolean[] zArr2 = new boolean[i2];
                            zArr2[0] = false;
                            if (this.supportsPreloading) {
                            }
                            return true;
                        }
                        i2 = 1;
                    } else {
                        i2 = 1;
                        z3 = false;
                    }
                    final boolean[] zArr22 = new boolean[i2];
                    zArr22[0] = false;
                    if (!this.supportsPreloading || string == null) {
                        str6 = str3;
                        str7 = str4;
                        str8 = "rws";
                        z4 = z3;
                    } else {
                        this.cacheFilePreload = new File(this.tempPath, string);
                        try {
                            RandomAccessFile randomAccessFile3 = new RandomAccessFile(this.cacheFilePreload, "rws");
                            this.preloadStream = randomAccessFile3;
                            length = randomAccessFile3.length();
                            this.preloadStreamFileOffset = 1;
                            j3 = 1;
                        } catch (Exception e5) {
                            e = e5;
                            str6 = str3;
                            str7 = str4;
                            str8 = str11;
                            z4 = z3;
                        }
                        if (length <= 1) {
                            str6 = str3;
                            str7 = str4;
                            str8 = str11;
                            z4 = z3;
                            this.preloadStream.seek(this.preloadStreamFileOffset);
                            if (!this.isPreloadVideoOperation && this.preloadedBytesRanges == null) {
                                this.cacheFilePreload = null;
                                try {
                                    randomAccessFile = this.preloadStream;
                                    if (randomAccessFile != null) {
                                        try {
                                            randomAccessFile.getChannel().close();
                                        } catch (Exception e6) {
                                            FileLog.e(e6);
                                        }
                                        this.preloadStream.close();
                                        this.preloadStream = null;
                                    }
                                } catch (Exception e7) {
                                    FileLog.e(e7);
                                }
                            }
                        } else {
                            zArr22[0] = this.preloadStream.readByte() != 0;
                            while (j3 < length) {
                                if (length - j3 < 8) {
                                    break;
                                }
                                long j8 = this.preloadStream.readLong();
                                if (length - (j3 + 8) < 8 || j8 < 0) {
                                    break;
                                }
                                boolean z11 = z3;
                                try {
                                    if (j8 <= this.totalBytesCount) {
                                        long j9 = this.preloadStream.readLong();
                                        long j10 = j3 + 16;
                                        if (length - j10 >= j9 && j9 <= this.currentDownloadChunkSize) {
                                            PreloadRange preloadRange = new PreloadRange(j10, j9);
                                            long j11 = j10 + j9;
                                            this.preloadStream.seek(j11);
                                            if (length - j11 >= 24) {
                                                long j12 = length;
                                                long j13 = this.preloadStream.readLong();
                                                this.foundMoovSize = j13;
                                                if (j13 != 0) {
                                                    str6 = str3;
                                                    z4 = z11;
                                                    try {
                                                        str7 = str4;
                                                        str8 = str11;
                                                    } catch (Exception e8) {
                                                        e = e8;
                                                        str7 = str4;
                                                        str8 = str11;
                                                        FileLog.e((Throwable) e, false);
                                                        if (!this.isPreloadVideoOperation) {
                                                        }
                                                        if (str7 == null) {
                                                        }
                                                        if (this.fileMetadata != null) {
                                                        }
                                                        if (this.cacheFileTemp.exists()) {
                                                        }
                                                        return true;
                                                    }
                                                    try {
                                                        this.moovFound = this.nextPreloadDownloadOffset > this.totalBytesCount / 2 ? 2 : 1;
                                                        this.preloadNotRequestedBytesCount = j13;
                                                    } catch (Exception e9) {
                                                        e = e9;
                                                        FileLog.e((Throwable) e, false);
                                                        if (!this.isPreloadVideoOperation) {
                                                        }
                                                        if (str7 == null) {
                                                        }
                                                        if (this.fileMetadata != null) {
                                                        }
                                                        if (this.cacheFileTemp.exists()) {
                                                        }
                                                        return true;
                                                    }
                                                } else {
                                                    str6 = str3;
                                                    z4 = z11;
                                                    str7 = str4;
                                                    str8 = str11;
                                                }
                                                this.nextPreloadDownloadOffset = this.preloadStream.readLong();
                                                this.nextAtomOffset = this.preloadStream.readLong();
                                                long j14 = j11 + 24;
                                                if (this.preloadedBytesRanges == null) {
                                                    this.preloadedBytesRanges = new HashMap<>();
                                                }
                                                if (this.requestedPreloadedBytesRanges == null) {
                                                    this.requestedPreloadedBytesRanges = new HashMap<>();
                                                }
                                                this.preloadedBytesRanges.put(Long.valueOf(j8), preloadRange);
                                                this.requestedPreloadedBytesRanges.put(Long.valueOf(j8), 1);
                                                this.totalPreloadedBytes = (int) (this.totalPreloadedBytes + j9);
                                                this.preloadStreamFileOffset = (int) (this.preloadStreamFileOffset + j9 + 36);
                                                z3 = z4;
                                                length = j12;
                                                str4 = str7;
                                                str11 = str8;
                                                j3 = j14;
                                                str3 = str6;
                                            }
                                        }
                                    }
                                    str6 = str3;
                                    z4 = z11;
                                    str7 = str4;
                                    str8 = str11;
                                    break;
                                } catch (Exception e10) {
                                    e = e10;
                                    str6 = str3;
                                    z4 = z11;
                                }
                            }
                            str6 = str3;
                            str7 = str4;
                            str8 = str11;
                            z4 = z3;
                            this.preloadStream.seek(this.preloadStreamFileOffset);
                            if (!this.isPreloadVideoOperation) {
                                this.cacheFilePreload = null;
                                randomAccessFile = this.preloadStream;
                                if (randomAccessFile != null) {
                                }
                            }
                        }
                    }
                    if (str7 == null) {
                        this.cacheFileParts = new File(this.tempPath, str7);
                        if (!this.cacheFileTemp.exists()) {
                            this.cacheFileParts.delete();
                        }
                        try {
                            str9 = str8;
                        } catch (Exception e11) {
                            e = e11;
                            str9 = str8;
                        }
                        try {
                            RandomAccessFile randomAccessFile4 = new RandomAccessFile(this.cacheFileParts, str9);
                            this.filePartsStream = randomAccessFile4;
                            long length3 = randomAccessFile4.length();
                            if (length3 % 8 == 4) {
                                int i6 = this.filePartsStream.readInt();
                                if (i6 <= (length3 - 4) / 2) {
                                    for (int i7 = 0; i7 < i6; i7++) {
                                        long j15 = this.filePartsStream.readLong();
                                        long j16 = this.filePartsStream.readLong();
                                        this.notLoadedBytesRanges.add(new Range(j15, j16));
                                        this.notRequestedBytesRanges.add(new Range(j15, j16));
                                    }
                                }
                            }
                        } catch (Exception e12) {
                            e = e12;
                            FileLog.e(e, !AndroidUtilities.isFilNotFoundException(e));
                            if (this.fileMetadata != null) {
                            }
                            if (this.cacheFileTemp.exists()) {
                            }
                            return true;
                        }
                    } else {
                        str9 = str8;
                    }
                    if (this.fileMetadata != null) {
                        FileLoader.getInstance(this.currentAccount).getFileDatabase().saveFileDialogId(this.cacheFileParts, this.fileMetadata);
                        FileLoader.getInstance(this.currentAccount).getFileDatabase().saveFileDialogId(this.cacheFileTemp, this.fileMetadata);
                    }
                    if (this.cacheFileTemp.exists()) {
                        File file2 = this.cacheFileTemp;
                        if (z4) {
                            file2.delete();
                        } else {
                            long length4 = file2.length();
                            if (str6 == null || length4 % this.currentDownloadChunkSize == 0) {
                                long jFloorDiv = floorDiv(this.cacheFileTemp.length(), this.currentDownloadChunkSize) * this.currentDownloadChunkSize;
                                this.downloadedBytes = jFloorDiv;
                                this.requestedBytesCount = jFloorDiv;
                            } else {
                                this.requestedBytesCount = 0L;
                            }
                            ArrayList<Range> arrayList3 = this.notLoadedBytesRanges;
                            if (arrayList3 != null && arrayList3.isEmpty()) {
                                this.notLoadedBytesRanges.add(new Range(this.downloadedBytes, this.totalBytesCount));
                                arrayList = this.notRequestedBytesRanges;
                                range = new Range(this.downloadedBytes, this.totalBytesCount);
                                arrayList.add(range);
                            }
                        }
                        arrayList2 = this.notLoadedBytesRanges;
                        if (arrayList2 != null) {
                            this.downloadedBytes = this.totalBytesCount;
                            int size = arrayList2.size();
                            for (int i8 = 0; i8 < size; i8++) {
                                Range range2 = this.notLoadedBytesRanges.get(i8);
                                this.downloadedBytes -= range2.end - range2.start;
                            }
                            this.requestedBytesCount = this.downloadedBytes;
                        }
                        if (BuildVars.LOGS_ENABLED) {
                            if (this.isPreloadVideoOperation) {
                                sb3 = new StringBuilder();
                                sb3.append("start preloading file to temp = ");
                                sb3.append(this.cacheFileTemp);
                            } else {
                                sb3 = new StringBuilder();
                                sb3.append("start loading file to temp = ");
                                sb3.append(this.cacheFileTemp);
                                sb3.append(" final = ");
                                sb3.append(this.cacheFileFinal);
                                sb3.append(" priority");
                                sb3.append(this.priority);
                            }
                            FileLog.d(sb3.toString());
                        }
                        if (str6 != null) {
                            this.cacheIvTemp = new File(this.tempPath, str6);
                            try {
                                this.fiv = new RandomAccessFile(this.cacheIvTemp, str9);
                                long j17 = 0;
                                if (this.downloadedBytes != 0 && !z4) {
                                    long length5 = this.cacheIvTemp.length();
                                    if (length5 <= 0) {
                                        this.downloadedBytes = j17;
                                        this.requestedBytesCount = j17;
                                    } else if (length5 % 64 == 0) {
                                        this.fiv.read(this.iv, 0, 64);
                                    } else {
                                        j17 = 0;
                                        this.downloadedBytes = j17;
                                        this.requestedBytesCount = j17;
                                    }
                                }
                            } catch (Exception e13) {
                                this.downloadedBytes = 0L;
                                this.requestedBytesCount = 0L;
                                if (AndroidUtilities.isENOSPC(e13)) {
                                    LaunchActivity.checkFreeDiscSpaceStatic(1);
                                    z6 = false;
                                } else {
                                    z6 = false;
                                    if (AndroidUtilities.isEROFS(e13)) {
                                        SharedConfig.checkSdCard(this.cacheFileFinal);
                                    } else {
                                        FileLog.e(e13);
                                    }
                                }
                                FileLog.e(e13, z6);
                            }
                        }
                        if (!this.isPreloadVideoOperation && this.downloadedBytes != 0 && this.totalBytesCount > 0) {
                            copyNotLoadedRanges();
                        }
                        updateProgress();
                        try {
                            RandomAccessFile randomAccessFile5 = new RandomAccessFile(this.cacheFileTemp, str9);
                            this.fileOutputStream = randomAccessFile5;
                            j2 = this.downloadedBytes;
                            if (j2 != 0) {
                                randomAccessFile5.seek(j2);
                            }
                            r1 = 0;
                            z5 = true;
                        } catch (Exception e14) {
                            r1 = 0;
                            FileLog.e((Throwable) e14, false);
                            if (AndroidUtilities.isENOSPC(e14)) {
                                z5 = true;
                                LaunchActivity.checkFreeDiscSpaceStatic(1);
                                i3 = -1;
                            } else {
                                z5 = true;
                                i3 = -1;
                                if (AndroidUtilities.isEROFS(e14)) {
                                    SharedConfig.checkSdCard(this.cacheFileFinal);
                                    FileLog.e((Throwable) e14, false);
                                }
                            }
                            onFail(z5, i3);
                            return false;
                        }
                        if (this.fileOutputStream != null) {
                            onFail(z5, r1);
                            return r1;
                        }
                        this.started = z5;
                        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda19
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$start$11(zArr22);
                            }
                        });
                    } else {
                        ArrayList<Range> arrayList4 = this.notLoadedBytesRanges;
                        if (arrayList4 != null && arrayList4.isEmpty()) {
                            long j18 = 0;
                            this.notLoadedBytesRanges.add(new Range(j18, this.totalBytesCount));
                            arrayList = this.notRequestedBytesRanges;
                            range = new Range(j18, this.totalBytesCount);
                            arrayList.add(range);
                        }
                        arrayList2 = this.notLoadedBytesRanges;
                        if (arrayList2 != null) {
                        }
                        if (BuildVars.LOGS_ENABLED) {
                        }
                        if (str6 != null) {
                        }
                        if (!this.isPreloadVideoOperation) {
                            copyNotLoadedRanges();
                        }
                        updateProgress();
                        RandomAccessFile randomAccessFile52 = new RandomAccessFile(this.cacheFileTemp, str9);
                        this.fileOutputStream = randomAccessFile52;
                        j2 = this.downloadedBytes;
                        if (j2 != 0) {
                        }
                        r1 = 0;
                        z5 = true;
                        if (this.fileOutputStream != null) {
                        }
                    }
                }
                return true;
            }
            str = str5;
            str3 = null;
        } else {
            String str12 = strMD5 + ".temp";
            String str13 = strMD5 + "." + this.ext;
            if (this.key != null) {
                str3 = strMD5 + "_64.iv";
                str = str12;
                str2 = str13;
            } else {
                str = str12;
                str2 = str13;
                str3 = null;
            }
        }
        str4 = null;
        string = null;
        this.requestInfos = new ArrayList<>(this.currentMaxDownloadRequests);
        this.cancelledRequestInfos = new ArrayList<>();
        this.delayedRequestInfos = new ArrayList<>(this.currentMaxDownloadRequests - 1);
        this.state = 1;
        obj = this.parentObject;
        if (obj instanceof TLRPC.TL_theme) {
        }
        zExists = this.cacheFileFinal.exists();
        this.cacheFileFinalReady = zExists;
        if (zExists) {
        }
        if (zExists) {
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:136:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0391  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x03ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void startDownloadRequest(int i) {
        long j;
        long jMin;
        int i2;
        long j2;
        long j3;
        int i3;
        int i4;
        boolean z;
        int i5;
        int i6;
        TLRPC.TL_upload_getFile tL_upload_getFile;
        final TLRPC.TL_upload_getFile tL_upload_getFile2;
        final RequestInfo requestInfo;
        long j4;
        TLRPC.InputFileLocation inputFileLocation;
        long j5;
        HashMap<Long, PreloadRange> map;
        PreloadRange preloadRange;
        NativeByteBuffer nativeByteBuffer;
        ArrayList<Range> arrayList;
        int i7 = -1;
        int i8 = 2;
        boolean z2 = false;
        if (BuildVars.DEBUG_PRIVATE_VERSION && Utilities.stageQueue != null && Utilities.stageQueue.getHandler() != null && Thread.currentThread() != Utilities.stageQueue.getHandler().getLooper().getThread()) {
            throw new RuntimeException("Wrong thread!!!");
        }
        if (this.state == 5) {
            this.state = 1;
        }
        if (this.paused || this.reuploadingCdn || this.state != 1 || this.requestingReference) {
            return;
        }
        long j6 = 0;
        if (this.isStory || this.streamPriorityStartOffset != 0 || this.nextPartWasPreloaded || this.requestInfos.size() + this.delayedRequestInfos.size() < this.currentMaxDownloadRequests) {
            if (this.isPreloadVideoOperation) {
                if (this.requestedBytesCount > 2097152) {
                    return;
                }
                if (this.moovFound != 0 && this.requestInfos.size() > 0) {
                    return;
                }
            }
            int iMax = (!this.isStory && (this.streamPriorityStartOffset != 0 || this.nextPartWasPreloaded || ((this.isPreloadVideoOperation && this.moovFound == 0) || this.totalBytesCount <= 0))) ? 1 : Math.max(0, this.currentMaxDownloadRequests - this.requestInfos.size());
            if (!this.requestedReference && FileRefController.getInstance(this.currentAccount).applyCachedFileReference(this.parentObject, this.location, this)) {
                FileLog.d(this.fileName + " before download updated file ref from file ref cache!");
            }
            int i9 = 0;
            while (i9 < iMax) {
                if (!this.isPreloadVideoOperation) {
                    ArrayList<Range> arrayList2 = this.notRequestedBytesRanges;
                    if (arrayList2 != null) {
                        long j7 = this.streamPriorityStartOffset;
                        if (j7 == 0) {
                            j7 = this.streamStartOffset;
                        }
                        int size = arrayList2.size();
                        long j8 = Long.MAX_VALUE;
                        jMin = Long.MAX_VALUE;
                        int i10 = 0;
                        while (true) {
                            if (i10 >= size) {
                                j = j8;
                                break;
                            }
                            Range range = this.notRequestedBytesRanges.get(i10);
                            if (j7 != 0) {
                                if (range.start <= j7 && range.end > j7) {
                                    j = j7;
                                    jMin = Long.MAX_VALUE;
                                    break;
                                } else if (j7 < range.start && range.start < j8) {
                                    j8 = range.start;
                                }
                            }
                            jMin = Math.min(jMin, range.start);
                            i10++;
                            j8 = j8;
                        }
                        if (j == Long.MAX_VALUE) {
                            if (jMin != Long.MAX_VALUE) {
                            }
                            boolean z3 = BuildVars.DEBUG_VERSION;
                            return;
                        }
                        i2 = this.preloadPrefixSize;
                        if (i2 > 0 || jMin < i2 || !canFinishPreload()) {
                            j2 = this.totalBytesCount;
                            if (j2 > 0 || jMin <= 0 || jMin < j2) {
                                if (!this.isPreloadVideoOperation && (arrayList = this.notRequestedBytesRanges) != null) {
                                    addPart(arrayList, jMin, jMin + this.currentDownloadChunkSize, false);
                                    boolean z4 = BuildVars.DEBUG_VERSION;
                                }
                                j3 = this.totalBytesCount;
                                if (j3 > 0 || i9 == iMax - 1 || (j3 > 0 && this.currentDownloadChunkSize + jMin >= j3)) {
                                    i3 = i;
                                    i4 = -1;
                                    z = true;
                                } else {
                                    i3 = i;
                                    i4 = -1;
                                    z = false;
                                }
                                if (i3 != i4) {
                                    i8 = 2;
                                    i5 = this.requestsCount % 2 == 0 ? 2 : ConnectionsManager.ConnectionTypeDownload2;
                                } else {
                                    i8 = 2;
                                    i5 = i3;
                                }
                                i6 = !this.isForceRequest ? 32 : 0;
                                if (!this.isCdn) {
                                    TLRPC.TL_upload_getCdnFile tL_upload_getCdnFile = new TLRPC.TL_upload_getCdnFile();
                                    tL_upload_getCdnFile.file_token = this.cdnToken;
                                    tL_upload_getCdnFile.offset = jMin;
                                    tL_upload_getCdnFile.limit = this.currentDownloadChunkSize;
                                    i6 |= 1;
                                    tL_upload_getFile = tL_upload_getCdnFile;
                                } else if (this.webLocation != null) {
                                    TLRPC.TL_upload_getWebFile tL_upload_getWebFile = new TLRPC.TL_upload_getWebFile();
                                    tL_upload_getWebFile.location = this.webLocation;
                                    tL_upload_getWebFile.offset = (int) jMin;
                                    tL_upload_getWebFile.limit = this.currentDownloadChunkSize;
                                    tL_upload_getFile = tL_upload_getWebFile;
                                } else {
                                    TLRPC.TL_upload_getFile tL_upload_getFile3 = new TLRPC.TL_upload_getFile();
                                    tL_upload_getFile3.location = this.location;
                                    tL_upload_getFile3.offset = jMin;
                                    tL_upload_getFile3.limit = this.currentDownloadChunkSize;
                                    tL_upload_getFile3.cdn_supported = true;
                                    tL_upload_getFile = tL_upload_getFile3;
                                }
                                tL_upload_getFile2 = tL_upload_getFile;
                                this.requestedBytesCount += this.currentDownloadChunkSize;
                                requestInfo = new RequestInfo();
                                this.requestInfos.add(requestInfo);
                                requestInfo.offset = jMin;
                                requestInfo.chunkSize = this.currentDownloadChunkSize;
                                requestInfo.forceSmallChunk = this.forceSmallChunk;
                                requestInfo.connectionType = i5;
                                if (!this.isPreloadVideoOperation || !this.supportsPreloading || this.preloadStream == null || (map = this.preloadedBytesRanges) == null || (preloadRange = map.get(Long.valueOf(requestInfo.offset))) == null) {
                                    if (this.streamPriorityStartOffset != 0) {
                                        if (BuildVars.DEBUG_VERSION) {
                                            FileLog.d("frame get offset = " + this.streamPriorityStartOffset);
                                        }
                                        j4 = 0;
                                        this.streamPriorityStartOffset = 0L;
                                        this.priorityRequestInfo = requestInfo;
                                    } else {
                                        j4 = 0;
                                    }
                                    inputFileLocation = this.location;
                                    if ((inputFileLocation instanceof TLRPC.TL_inputPeerPhotoFileLocation) && ((TLRPC.TL_inputPeerPhotoFileLocation) inputFileLocation).photo_id == j4) {
                                        requestReference(requestInfo);
                                        j5 = j4;
                                    } else {
                                        requestInfo.forceSmallChunk = this.forceSmallChunk;
                                        if (BuildVars.LOGS_ENABLED) {
                                            requestInfo.requestStartTime = System.currentTimeMillis();
                                        }
                                        int i11 = i6 | 2048;
                                        final int i12 = !this.isCdn ? this.cdnDatacenterId : this.datacenterId;
                                        j5 = j4;
                                        final int i13 = i5;
                                        final int iSendRequestSync = ConnectionsManager.getInstance(this.currentAccount).sendRequestSync(tL_upload_getFile2, new RequestDelegate() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda2
                                            @Override // org.telegram.tgnet.RequestDelegate
                                            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) throws IOException {
                                                this.f$0.lambda$startDownloadRequest$29(requestInfo, i12, i13, tL_upload_getFile2, tLObject, tL_error);
                                            }
                                        }, null, null, i11, i12, i5, z);
                                        requestInfo.requestToken = iSendRequestSync;
                                        if (BuildVars.LOGS_ENABLED) {
                                            FileLog.d("debug_loading: " + this.cacheFileFinal.getName() + " dc=" + i12 + " send reqId " + requestInfo.requestToken + " offset=" + requestInfo.offset + " conType=" + i5 + " priority=" + this.priority);
                                        }
                                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda3
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                this.f$0.lambda$startDownloadRequest$30(iSendRequestSync);
                                            }
                                        });
                                        this.requestsCount++;
                                    }
                                } else {
                                    requestInfo.response = new TLRPC.TL_upload_file();
                                    try {
                                        if (BuildVars.DEBUG_VERSION) {
                                            try {
                                                if (preloadRange.length > 2147483647L) {
                                                    throw new RuntimeException("cast long to integer");
                                                }
                                            } catch (Exception unused) {
                                            }
                                        }
                                        nativeByteBuffer = new NativeByteBuffer((int) preloadRange.length);
                                        this.preloadStream.seek(preloadRange.fileOffset);
                                        this.preloadStream.getChannel().read(nativeByteBuffer.buffer);
                                    } catch (Exception unused2) {
                                    }
                                    try {
                                        nativeByteBuffer.buffer.position(0);
                                        requestInfo.response.bytes = nativeByteBuffer;
                                        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda1
                                            @Override // java.lang.Runnable
                                            public final void run() throws IOException {
                                                this.f$0.lambda$startDownloadRequest$27(requestInfo);
                                            }
                                        });
                                        j5 = 0;
                                    } catch (Exception unused3) {
                                        if (this.streamPriorityStartOffset != 0) {
                                        }
                                        inputFileLocation = this.location;
                                        if (inputFileLocation instanceof TLRPC.TL_inputPeerPhotoFileLocation) {
                                        }
                                        i9++;
                                        j6 = j5;
                                        i7 = -1;
                                        z2 = false;
                                    }
                                }
                                i9++;
                                j6 = j5;
                                i7 = -1;
                                z2 = false;
                            }
                        }
                        boolean z32 = BuildVars.DEBUG_VERSION;
                        return;
                    }
                    j = this.requestedBytesCount;
                } else {
                    if (this.moovFound != 0 && this.preloadNotRequestedBytesCount <= j6) {
                        boolean z5 = BuildVars.DEBUG_VERSION;
                        return;
                    }
                    j = this.nextPreloadDownloadOffset;
                    if (j == -1) {
                        int i14 = (preloadMaxBytes / this.currentDownloadChunkSize) + i8;
                        long j9 = j6;
                        while (true) {
                            if (i14 == 0) {
                                j = j9;
                                z2 = false;
                                break;
                            }
                            if (!this.requestedPreloadedBytesRanges.containsKey(Long.valueOf(j9))) {
                                j = j9;
                                z2 = true;
                                break;
                            }
                            long j10 = this.currentDownloadChunkSize;
                            j9 += j10;
                            long j11 = this.totalBytesCount;
                            if (j9 > j11) {
                                j = j9;
                                break;
                            }
                            if (this.moovFound == i8 && j9 == r0 * 8) {
                                j9 = ((j11 - 1048576) / j10) * j10;
                            }
                            i14 += i7;
                            i8 = 2;
                            z2 = false;
                        }
                        if (!z2 && this.requestInfos.isEmpty()) {
                            onFinishLoadingFile(false, 0, false);
                        }
                    }
                    if (this.requestedPreloadedBytesRanges == null) {
                        this.requestedPreloadedBytesRanges = new HashMap<>();
                    }
                    this.requestedPreloadedBytesRanges.put(Long.valueOf(j), 1);
                    if (BuildVars.DEBUG_VERSION) {
                        FileLog.d("start next preload from " + j + " size " + this.totalBytesCount + " for " + this.cacheFilePreload);
                    }
                    this.preloadNotRequestedBytesCount -= this.currentDownloadChunkSize;
                }
                jMin = j;
                i2 = this.preloadPrefixSize;
                if (i2 > 0) {
                    j2 = this.totalBytesCount;
                    if (j2 > 0) {
                    }
                    if (!this.isPreloadVideoOperation) {
                        addPart(arrayList, jMin, jMin + this.currentDownloadChunkSize, false);
                        boolean z42 = BuildVars.DEBUG_VERSION;
                    }
                    j3 = this.totalBytesCount;
                    if (j3 > 0) {
                        i3 = i;
                        i4 = -1;
                        z = true;
                    }
                    if (i3 != i4) {
                    }
                    if (!this.isForceRequest) {
                    }
                    if (!this.isCdn) {
                    }
                    tL_upload_getFile2 = tL_upload_getFile;
                    this.requestedBytesCount += this.currentDownloadChunkSize;
                    requestInfo = new RequestInfo();
                    this.requestInfos.add(requestInfo);
                    requestInfo.offset = jMin;
                    requestInfo.chunkSize = this.currentDownloadChunkSize;
                    requestInfo.forceSmallChunk = this.forceSmallChunk;
                    requestInfo.connectionType = i5;
                    if (this.isPreloadVideoOperation) {
                        if (this.streamPriorityStartOffset != 0) {
                        }
                        inputFileLocation = this.location;
                        if (inputFileLocation instanceof TLRPC.TL_inputPeerPhotoFileLocation) {
                            requestInfo.forceSmallChunk = this.forceSmallChunk;
                            if (BuildVars.LOGS_ENABLED) {
                            }
                            int i112 = i6 | 2048;
                            final int i122 = !this.isCdn ? this.cdnDatacenterId : this.datacenterId;
                            j5 = j4;
                            final int i132 = i5;
                            final int iSendRequestSync2 = ConnectionsManager.getInstance(this.currentAccount).sendRequestSync(tL_upload_getFile2, new RequestDelegate() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda2
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) throws IOException {
                                    this.f$0.lambda$startDownloadRequest$29(requestInfo, i122, i132, tL_upload_getFile2, tLObject, tL_error);
                                }
                            }, null, null, i112, i122, i5, z);
                            requestInfo.requestToken = iSendRequestSync2;
                            if (BuildVars.LOGS_ENABLED) {
                            }
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda3
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$startDownloadRequest$30(iSendRequestSync2);
                                }
                            });
                            this.requestsCount++;
                        }
                    }
                    i9++;
                    j6 = j5;
                    i7 = -1;
                    z2 = false;
                }
                boolean z322 = BuildVars.DEBUG_VERSION;
                return;
            }
        }
    }

    public void updateProgress() {
        FileLoadOperationDelegate fileLoadOperationDelegate = this.delegate;
        if (fileLoadOperationDelegate != null) {
            long j = this.downloadedBytes;
            long j2 = this.totalBytesCount;
            if (j == j2 || j2 <= 0) {
                return;
            }
            fileLoadOperationDelegate.didChangedLoadProgress(this, j, j2);
        }
    }

    public boolean wasStarted() {
        return this.started && !this.paused;
    }
}
