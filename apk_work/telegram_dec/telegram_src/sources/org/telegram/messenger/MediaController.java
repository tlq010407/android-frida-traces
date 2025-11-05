package org.telegram.messenger;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.DownloadManager;
import android.bluetooth.BluetoothAdapter;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.BitmapDrawable;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.MediaStore;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.webkit.MimeTypeMap;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.ui.AspectRatioFrameLayout;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.common.images.WebImage;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.location.base.activity.constant.ActivityRecognitionConstants;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimerTask;
import java.util.concurrent.CountDownLatch;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.audioinfo.AudioInfo;
import org.telegram.messenger.chromecast.ChromecastController;
import org.telegram.messenger.chromecast.ChromecastFileServer;
import org.telegram.messenger.chromecast.ChromecastMedia;
import org.telegram.messenger.chromecast.ChromecastMediaVariations;
import org.telegram.messenger.video.MediaCodecVideoConvertor;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stories$StoryItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Adapters.FiltersView;
import org.telegram.ui.CastSync;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.EmbedBottomSheet;
import org.telegram.ui.Components.PermissionRequest;
import org.telegram.ui.Components.PhotoFilterView;
import org.telegram.ui.Components.PipRoundVideoView;
import org.telegram.ui.Components.Point;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.Components.VideoPlayer;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PhotoViewer;
import org.telegram.ui.Stories.DarkThemeResourceProvider;
import org.telegram.ui.Stories.recorder.StoryEntry;
import org.webrtc.MediaStreamTrack;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class MediaController implements AudioManager.OnAudioFocusChangeListener, NotificationCenter.NotificationCenterDelegate, SensorEventListener {
    private static final int AUDIO_FOCUSED = 2;
    public static final String AUDIO_MIME_TYPE = "audio/mp4a-latm";
    private static final int AUDIO_NO_FOCUS_CAN_DUCK = 1;
    private static final int AUDIO_NO_FOCUS_NO_DUCK = 0;
    private static volatile MediaController Instance = null;
    public static final int VIDEO_BITRATE_1080 = 6800000;
    public static final int VIDEO_BITRATE_360 = 750000;
    public static final int VIDEO_BITRATE_480 = 1000000;
    public static final int VIDEO_BITRATE_720 = 2621440;
    public static final String VIDEO_MIME_TYPE = "video/avc";
    private static final float VOLUME_DUCK = 0.2f;
    private static final float VOLUME_NORMAL = 1.0f;
    public static AlbumEntry allMediaAlbumEntry;
    public static ArrayList<AlbumEntry> allMediaAlbums;
    public static ArrayList<AlbumEntry> allPhotoAlbums;
    public static AlbumEntry allPhotosAlbumEntry;
    public static AlbumEntry allVideosAlbumEntry;
    private static Runnable broadcastPhotosRunnable;
    private static final ConcurrentHashMap<String, Integer> cachedEncoderBitrates;
    public static boolean forceBroadcastNewPhotos;
    private static final String[] projectionPhotos;
    private static final String[] projectionVideo;
    private static Runnable refreshGalleryRunnable;
    private static long volumeBarLastTimeShown;
    private Sensor accelerometerSensor;
    private boolean accelerometerVertical;
    private boolean allowStartRecord;
    private AudioInfo audioInfo;
    private AudioRecord audioRecorder;
    private boolean audioRecorderPaused;
    private float audioVolume;
    private ValueAnimator audioVolumeAnimator;
    private Activity baseActivity;
    private boolean callInProgress;
    private int countLess;
    private AspectRatioFrameLayout currentAspectRatioFrameLayout;
    private float currentAspectRatioFrameLayoutRatio;
    private boolean currentAspectRatioFrameLayoutReady;
    private int currentAspectRatioFrameLayoutRotation;
    private VideoConvertMessage currentForegroundConvertingVideo;
    private int currentPlaylistNum;
    private TextureView currentTextureView;
    private FrameLayout currentTextureViewContainer;
    private boolean downloadingCurrentMessage;
    private ExternalObserver externalObserver;
    private View feedbackView;
    private ByteBuffer fileBuffer;
    private DispatchQueue fileEncodingQueue;
    private BaseFragment flagSecureFragment;
    private boolean forceLoopCurrentPlaylist;
    private MessageObject goingToShowMessageObject;
    private Sensor gravitySensor;
    private int hasAudioFocus;
    private boolean hasRecordAudioFocus;
    private boolean ignoreOnPause;
    private boolean ignorePlayerUpdate;
    private boolean ignoreProximity;
    private boolean inputFieldHasText;
    private InternalObserver internalObserver;
    private boolean isDrawingWasReady;
    private boolean isStreamingCurrentAudio;
    private long lastAccelerometerDetected;
    private int lastChatAccount;
    private long lastChatEnterTime;
    private long lastChatLeaveTime;
    private ArrayList<Long> lastChatVisibleMessages;
    private long lastMediaCheckTime;
    private int lastMessageId;
    private long lastSaveTime;
    private TLRPC.EncryptedChat lastSecretChat;
    private TLRPC.User lastUser;
    private Sensor linearSensor;
    private boolean loadingPlaylist;
    private boolean manualRecording;
    private String[] mediaProjections;
    private PipRoundVideoView pipRoundVideoView;
    private int pipSwitchingState;
    private boolean playMusicAgain;
    private int playerNum;
    private boolean playerWasReady;
    private MessageObject playingMessageObject;
    private int playlistClassGuid;
    private PlaylistGlobalSearchParams playlistGlobalSearchParams;
    private long playlistMergeDialogId;
    private float previousAccValue;
    private boolean proximityHasDifferentValues;
    private Sensor proximitySensor;
    private boolean proximityTouched;
    private PowerManager.WakeLock proximityWakeLock;
    private ChatActivity raiseChat;
    private boolean raiseToEarRecord;
    private int raisedToBack;
    private int raisedToTop;
    private int raisedToTopSign;
    private long recordDialogId;
    private long recordMonoForumPeerId;
    private MessageSuggestionParams recordMonoForumSuggestionParams;
    private DispatchQueue recordQueue;
    private String recordQuickReplyShortcut;
    private int recordQuickReplyShortcutId;
    private MessageObject recordReplyingMsg;
    private TL_stories$StoryItem recordReplyingStory;
    private MessageObject recordReplyingTopMsg;
    private Runnable recordStartRunnable;
    private long recordStartTime;
    public long recordTimeCount;
    private long recordTopicId;
    public TLRPC.TL_document recordingAudio;
    private File recordingAudioFile;
    private int recordingCurrentAccount;
    private File recordingPrevAudioFile;
    private boolean resumeAudioOnFocusGain;
    public long samplesCount;
    private SavedMusicPlaylistState savedMusicPlaylistState;
    private float seekToProgressPending;
    private int sendAfterDone;
    private boolean sendAfterDoneNotify;
    private boolean sendAfterDoneOnce;
    private long sendAfterDonePayStars;
    private int sendAfterDoneScheduleDate;
    private SensorManager sensorManager;
    private boolean sensorsStarted;
    private String shouldSavePositionForCurrentAudio;
    private int startObserverToken;
    private StopMediaObserverRunnable stopMediaObserverRunnable;
    private long timeSinceRaise;
    private boolean useFrontSpeaker;
    private VideoPlayer videoPlayer;
    private ArrayList<MessageObject> voiceMessagesPlaylist;
    private SparseArray<MessageObject> voiceMessagesPlaylistMap;
    private boolean voiceMessagesPlaylistUnread;
    public int writtenFrame;
    AudioManager.OnAudioFocusChangeListener audioRecordFocusChangedListener = new AudioManager.OnAudioFocusChangeListener() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda48
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public final void onAudioFocusChange(int i) {
            this.f$0.lambda$new$0(i);
        }
    };
    private final Object videoConvertSync = new Object();
    private long lastTimestamp = 0;
    private float lastProximityValue = -100.0f;
    private float[] gravity = new float[3];
    private float[] gravityFast = new float[3];
    private float[] linearAcceleration = new float[3];
    private int audioFocus = 0;
    private ArrayList<VideoConvertMessage> foregroundConvertingMessages = new ArrayList<>();
    private ArrayList<VideoConvertMessage> videoConvertQueue = new ArrayList<>();
    private final Object videoQueueSync = new Object();
    private HashMap<String, MessageObject> generatingWaveform = new HashMap<>();
    public boolean isSilent = false;
    private boolean isPaused = false;
    private boolean wasPlayingAudioBeforePause = false;
    private VideoPlayer audioPlayer = null;
    private VideoPlayer emojiSoundPlayer = null;
    private int emojiSoundPlayerNum = 0;
    private float currentPlaybackSpeed = VOLUME_NORMAL;
    private float currentMusicPlaybackSpeed = VOLUME_NORMAL;
    private float fastPlaybackSpeed = VOLUME_NORMAL;
    private float fastMusicPlaybackSpeed = VOLUME_NORMAL;
    private long lastProgress = 0;
    private java.util.Timer progressTimer = null;
    private final Object progressTimerSync = new Object();
    private ArrayList<MessageObject> playlist = new ArrayList<>();
    private HashMap<Integer, MessageObject> playlistMap = new HashMap<>();
    private ArrayList<MessageObject> shuffledPlaylist = new ArrayList<>();
    private boolean[] playlistEndReached = {false, false};
    private int[] playlistMaxId = {Integer.MAX_VALUE, Integer.MAX_VALUE};
    private Runnable setLoadingRunnable = new Runnable() { // from class: org.telegram.messenger.MediaController.1
        @Override // java.lang.Runnable
        public void run() {
            if (MediaController.this.playingMessageObject == null) {
                return;
            }
            FileLoader.getInstance(MediaController.this.playingMessageObject.currentAccount).setLoadingVideo(MediaController.this.playingMessageObject.getDocument(), true, false);
        }
    };
    private int recordingGuid = -1;
    public short[] recordSamples = new short[1024];
    private final Object sync = new Object();
    private ArrayList<ByteBuffer> recordBuffers = new ArrayList<>();
    public int recordBufferSize = 1280;
    public int sampleRate = 48000;
    private Runnable recordRunnable = new AnonymousClass2();
    private final ValueAnimator.AnimatorUpdateListener audioVolumeUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.messenger.MediaController.3
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            MediaController.this.audioVolume = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            MediaController.this.setPlayerVolume();
        }
    };

    /* renamed from: org.telegram.messenger.MediaController$2, reason: invalid class name */
    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(ByteBuffer byteBuffer) {
            MediaController.this.recordBuffers.add(byteBuffer);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(final ByteBuffer byteBuffer, boolean z) {
            int iLimit;
            while (byteBuffer.hasRemaining()) {
                if (byteBuffer.remaining() > MediaController.this.fileBuffer.remaining()) {
                    iLimit = byteBuffer.limit();
                    byteBuffer.limit(MediaController.this.fileBuffer.remaining() + byteBuffer.position());
                } else {
                    iLimit = -1;
                }
                MediaController.this.fileBuffer.put(byteBuffer);
                if (MediaController.this.fileBuffer.position() == MediaController.this.fileBuffer.limit() || z) {
                    MediaController mediaController = MediaController.this;
                    if (mediaController.writeFrame(mediaController.fileBuffer, !z ? MediaController.this.fileBuffer.limit() : byteBuffer.position()) != 0) {
                        MediaController.this.fileBuffer.rewind();
                        MediaController mediaController2 = MediaController.this;
                        long j = mediaController2.recordTimeCount;
                        int iLimit2 = mediaController2.fileBuffer.limit() / 2;
                        MediaController mediaController3 = MediaController.this;
                        mediaController2.recordTimeCount = j + (iLimit2 / (mediaController3.sampleRate / 1000));
                        mediaController3.writtenFrame++;
                    } else {
                        FileLog.e("writing frame failed");
                    }
                }
                if (iLimit != -1) {
                    byteBuffer.limit(iLimit);
                }
            }
            MediaController.this.recordQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$2$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$run$0(byteBuffer);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$2(double d) {
            NotificationCenter.getInstance(MediaController.this.recordingCurrentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordProgressChanged, Integer.valueOf(MediaController.this.recordingGuid), Double.valueOf(d));
        }

        @Override // java.lang.Runnable
        public void run() {
            final ByteBuffer byteBufferAllocateDirect;
            if (MediaController.this.audioRecorder != null) {
                if (MediaController.this.recordBuffers.isEmpty()) {
                    byteBufferAllocateDirect = ByteBuffer.allocateDirect(MediaController.this.recordBufferSize);
                    byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
                } else {
                    byteBufferAllocateDirect = (ByteBuffer) MediaController.this.recordBuffers.get(0);
                    MediaController.this.recordBuffers.remove(0);
                }
                byteBufferAllocateDirect.rewind();
                int i = MediaController.this.audioRecorder.read(byteBufferAllocateDirect, byteBufferAllocateDirect.capacity());
                if (i <= 0) {
                    MediaController.this.recordBuffers.add(byteBufferAllocateDirect);
                    if (MediaController.this.sendAfterDone == 3 || MediaController.this.sendAfterDone == 4) {
                        return;
                    }
                    MediaController mediaController = MediaController.this;
                    mediaController.stopRecordingInternal(mediaController.sendAfterDone, MediaController.this.sendAfterDoneNotify, MediaController.this.sendAfterDoneScheduleDate, MediaController.this.sendAfterDoneOnce, MediaController.this.sendAfterDonePayStars);
                    return;
                }
                byteBufferAllocateDirect.limit(i);
                double d = 0.0d;
                try {
                    MediaController mediaController2 = MediaController.this;
                    long j = mediaController2.samplesCount;
                    long j2 = (i / 2) + j;
                    double d2 = j;
                    double d3 = j2;
                    Double.isNaN(d2);
                    Double.isNaN(d3);
                    double d4 = d2 / d3;
                    short[] sArr = mediaController2.recordSamples;
                    double length = sArr.length;
                    Double.isNaN(length);
                    int i2 = (int) (d4 * length);
                    int length2 = sArr.length - i2;
                    float f = BitmapDescriptorFactory.HUE_RED;
                    if (i2 != 0) {
                        float length3 = sArr.length / i2;
                        float f2 = BitmapDescriptorFactory.HUE_RED;
                        for (int i3 = 0; i3 < i2; i3++) {
                            short[] sArr2 = MediaController.this.recordSamples;
                            sArr2[i3] = sArr2[(int) f2];
                            f2 += length3;
                        }
                    }
                    float f3 = (i / 2.0f) / length2;
                    for (int i4 = 0; i4 < i / 2; i4++) {
                        short s = byteBufferAllocateDirect.getShort();
                        if (Build.VERSION.SDK_INT >= 21 || s > 2500) {
                            double d5 = s * s;
                            Double.isNaN(d5);
                            d += d5;
                        }
                        if (i4 == ((int) f)) {
                            short[] sArr3 = MediaController.this.recordSamples;
                            if (i2 < sArr3.length) {
                                sArr3[i2] = s;
                                f += f3;
                                i2++;
                            }
                        }
                    }
                    MediaController.this.samplesCount = j2;
                } catch (Exception e) {
                    FileLog.e(e);
                }
                byteBufferAllocateDirect.position(0);
                double d6 = i;
                Double.isNaN(d6);
                final double dSqrt = Math.sqrt((d / d6) / 2.0d);
                final boolean z = i != byteBufferAllocateDirect.capacity();
                MediaController.this.fileEncodingQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$1(byteBufferAllocateDirect, z);
                    }
                });
                MediaController.this.recordQueue.postRunnable(MediaController.this.recordRunnable);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$2$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$2(dSqrt);
                    }
                });
            }
        }
    }

    /* renamed from: org.telegram.messenger.MediaController$4, reason: invalid class name */
    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    class AnonymousClass4 extends PhoneStateListener {
        AnonymousClass4() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0053 A[PHI: r9
          0x0053: PHI (r9v3 org.telegram.ui.Components.EmbedBottomSheet) = (r9v1 org.telegram.ui.Components.EmbedBottomSheet), (r9v12 org.telegram.ui.Components.EmbedBottomSheet) binds: [B:23:0x0051, B:15:0x003e] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$onCallStateChanged$0(int i) {
            EmbedBottomSheet embedBottomSheet;
            MediaController mediaController;
            boolean z = true;
            if (i == 1) {
                MediaController mediaController2 = MediaController.this;
                if (mediaController2.isPlayingMessage(mediaController2.playingMessageObject) && !MediaController.this.isMessagePaused()) {
                    MediaController mediaController3 = MediaController.this;
                    mediaController3.lambda$startAudioAgain$7(mediaController3.playingMessageObject);
                } else if (MediaController.this.recordStartRunnable != null || MediaController.this.recordingAudio != null) {
                    MediaController.this.stopRecording(2, false, 0, false, 0L);
                }
                embedBottomSheet = EmbedBottomSheet.getInstance();
                if (embedBottomSheet != null) {
                    embedBottomSheet.pause();
                }
                mediaController = MediaController.this;
            } else if (i == 0) {
                mediaController = MediaController.this;
                z = false;
            } else {
                if (i != 2) {
                    return;
                }
                embedBottomSheet = EmbedBottomSheet.getInstance();
                if (embedBottomSheet != null) {
                }
                mediaController = MediaController.this;
            }
            mediaController.callInProgress = z;
        }

        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(final int i, String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCallStateChanged$0(i);
                }
            });
        }
    }

    /* renamed from: org.telegram.messenger.MediaController$5, reason: invalid class name */
    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    class AnonymousClass5 extends TimerTask {
        final /* synthetic */ MessageObject val$currentPlayingMessageObject;

        AnonymousClass5(MessageObject messageObject) {
            this.val$currentPlayingMessageObject = messageObject;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$run$0(String str, float f) {
            ApplicationLoader.applicationContext.getSharedPreferences("media_saved_pos", 0).edit().putFloat(str, f).commit();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(MessageObject messageObject) {
            long duration;
            long currentPosition;
            final float f;
            float bufferedPosition;
            if ((MediaController.this.audioPlayer == null && MediaController.this.videoPlayer == null) || MediaController.this.isPaused) {
                return;
            }
            try {
                if (MediaController.this.videoPlayer != null) {
                    duration = MediaController.this.videoPlayer.getDuration();
                    currentPosition = MediaController.this.videoPlayer.getCurrentPosition();
                    if (currentPosition >= 0 && duration > 0) {
                        float f2 = duration;
                        bufferedPosition = MediaController.this.videoPlayer.getBufferedPosition() / f2;
                        f = currentPosition / f2;
                        if (f >= MediaController.VOLUME_NORMAL) {
                            return;
                        }
                    }
                    return;
                }
                duration = MediaController.this.audioPlayer.getDuration();
                currentPosition = MediaController.this.audioPlayer.getCurrentPosition();
                float f3 = duration >= 0 ? currentPosition / duration : BitmapDescriptorFactory.HUE_RED;
                float bufferedPosition2 = MediaController.this.audioPlayer.getBufferedPosition() / duration;
                if (duration != -9223372036854775807L && currentPosition >= 0 && MediaController.this.seekToProgressPending == BitmapDescriptorFactory.HUE_RED) {
                    f = f3;
                    bufferedPosition = bufferedPosition2;
                }
                return;
                MediaController.this.lastProgress = currentPosition;
                messageObject.audioPlayerDuration = (int) (duration / 1000);
                messageObject.audioProgress = f;
                messageObject.audioProgressSec = (int) (MediaController.this.lastProgress / 1000);
                messageObject.bufferedProgress = bufferedPosition;
                if (f >= BitmapDescriptorFactory.HUE_RED && MediaController.this.shouldSavePositionForCurrentAudio != null && SystemClock.elapsedRealtime() - MediaController.this.lastSaveTime >= 1000) {
                    final String str = MediaController.this.shouldSavePositionForCurrentAudio;
                    MediaController.this.lastSaveTime = SystemClock.elapsedRealtime();
                    Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$5$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaController.AnonymousClass5.lambda$run$0(str, f);
                        }
                    });
                }
                NotificationCenter.getInstance(messageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingProgressDidChanged, Integer.valueOf(messageObject.getId()), Float.valueOf(f));
            } catch (Exception e) {
                FileLog.e(e);
            }
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            synchronized (MediaController.this.sync) {
                final MessageObject messageObject = this.val$currentPlayingMessageObject;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$5$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$1(messageObject);
                    }
                });
            }
        }
    }

    /* renamed from: org.telegram.messenger.MediaController$7, reason: invalid class name */
    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    class AnonymousClass7 implements VideoPlayer.VideoPlayerDelegate {
        final /* synthetic */ boolean val$destroyAtEnd;
        final /* synthetic */ MessageObject val$messageObject;
        final /* synthetic */ int[] val$playCount;
        final /* synthetic */ int val$tag;

        AnonymousClass7(int i, MessageObject messageObject, int[] iArr, boolean z) {
            this.val$tag = i;
            this.val$messageObject = messageObject;
            this.val$playCount = iArr;
            this.val$destroyAtEnd = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSurfaceDestroyed$0() {
            MediaController.this.cleanupPlayer(true, true);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onError(VideoPlayer videoPlayer, Exception exc) {
            FileLog.e(exc);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onRenderedFirstFrame() {
            if (MediaController.this.currentAspectRatioFrameLayout == null || MediaController.this.currentAspectRatioFrameLayout.isDrawingReady()) {
                return;
            }
            MediaController.this.isDrawingWasReady = true;
            MediaController.this.currentAspectRatioFrameLayout.setDrawingReady(true);
            MediaController.this.currentTextureViewContainer.setTag(1);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onRenderedFirstFrame(this, eventTime);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekStarted(this, eventTime);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onStateChanged(boolean z, int i) {
            if (this.val$tag != MediaController.this.playerNum) {
                return;
            }
            MediaController.this.updateVideoState(this.val$messageObject, this.val$playCount, this.val$destroyAtEnd, z, i);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
            if (MediaController.this.videoPlayer == null) {
                return false;
            }
            if (MediaController.this.pipSwitchingState == 2) {
                if (MediaController.this.currentAspectRatioFrameLayout != null) {
                    if (MediaController.this.isDrawingWasReady) {
                        MediaController.this.currentAspectRatioFrameLayout.setDrawingReady(true);
                    }
                    if (MediaController.this.currentAspectRatioFrameLayout.getParent() == null) {
                        MediaController.this.currentTextureViewContainer.addView(MediaController.this.currentAspectRatioFrameLayout);
                    }
                    if (MediaController.this.currentTextureView.getSurfaceTexture() != surfaceTexture) {
                        MediaController.this.currentTextureView.setSurfaceTexture(surfaceTexture);
                    }
                    MediaController.this.videoPlayer.setTextureView(MediaController.this.currentTextureView);
                }
                MediaController.this.pipSwitchingState = 0;
                return true;
            }
            if (MediaController.this.pipSwitchingState != 1) {
                if (!PhotoViewer.hasInstance() || !PhotoViewer.getInstance().isInjectingVideoPlayer()) {
                    return false;
                }
                PhotoViewer.getInstance().injectVideoPlayerSurface(surfaceTexture);
                return true;
            }
            if (MediaController.this.baseActivity != null) {
                if (MediaController.this.pipRoundVideoView == null) {
                    try {
                        MediaController.this.pipRoundVideoView = new PipRoundVideoView();
                        MediaController.this.pipRoundVideoView.show(MediaController.this.baseActivity, new Runnable() { // from class: org.telegram.messenger.MediaController$7$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onSurfaceDestroyed$0();
                            }
                        });
                    } catch (Exception unused) {
                        MediaController.this.pipRoundVideoView = null;
                    }
                }
                if (MediaController.this.pipRoundVideoView != null) {
                    if (MediaController.this.pipRoundVideoView.getTextureView().getSurfaceTexture() != surfaceTexture) {
                        MediaController.this.pipRoundVideoView.getTextureView().setSurfaceTexture(surfaceTexture);
                    }
                    MediaController.this.videoPlayer.setTextureView(MediaController.this.pipRoundVideoView.getTextureView());
                }
            }
            MediaController.this.pipSwitchingState = 0;
            return true;
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onVideoSizeChanged(int i, int i2, int i3, float f) {
            MediaController.this.currentAspectRatioFrameLayoutRotation = i3;
            if (i3 != 90 && i3 != 270) {
                i2 = i;
                i = i2;
            }
            MediaController.this.currentAspectRatioFrameLayoutRatio = i == 0 ? MediaController.VOLUME_NORMAL : (i2 * f) / i;
            if (MediaController.this.currentAspectRatioFrameLayout != null) {
                MediaController.this.currentAspectRatioFrameLayout.setAspectRatio(MediaController.this.currentAspectRatioFrameLayoutRatio, MediaController.this.currentAspectRatioFrameLayoutRotation);
            }
        }
    }

    /* renamed from: org.telegram.messenger.MediaController$8, reason: invalid class name */
    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    class AnonymousClass8 implements VideoPlayer.VideoPlayerDelegate {
        final /* synthetic */ int val$tag;

        AnonymousClass8(int i) {
            this.val$tag = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onStateChanged$0(int i, int i2) {
            if (i == MediaController.this.emojiSoundPlayerNum && i2 == 4 && MediaController.this.emojiSoundPlayer != null) {
                try {
                    MediaController.this.emojiSoundPlayer.releasePlayer(true);
                    MediaController.this.emojiSoundPlayer = null;
                } catch (Exception e) {
                    FileLog.e(e);
                }
            }
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onError(VideoPlayer videoPlayer, Exception exc) {
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onRenderedFirstFrame() {
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onRenderedFirstFrame(this, eventTime);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekStarted(this, eventTime);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onStateChanged(boolean z, final int i) {
            final int i2 = this.val$tag;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$8$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onStateChanged$0(i2, i);
                }
            });
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
            return false;
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onVideoSizeChanged(int i, int i2, int i3, float f) {
        }
    }

    /* renamed from: org.telegram.messenger.MediaController$9, reason: invalid class name */
    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    class AnonymousClass9 implements VideoPlayer.VideoPlayerDelegate {
        final /* synthetic */ boolean val$destroyAtEnd;
        final /* synthetic */ MessageObject val$messageObject;
        final /* synthetic */ int[] val$playCount;
        final /* synthetic */ int val$tag;

        AnonymousClass9(int i, MessageObject messageObject, int[] iArr, boolean z) {
            this.val$tag = i;
            this.val$messageObject = messageObject;
            this.val$playCount = iArr;
            this.val$destroyAtEnd = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSurfaceDestroyed$0() {
            MediaController.this.cleanupPlayer(true, true);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onError(VideoPlayer videoPlayer, Exception exc) {
            FileLog.e(exc);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onRenderedFirstFrame() {
            if (MediaController.this.currentAspectRatioFrameLayout != null && !MediaController.this.currentAspectRatioFrameLayout.isDrawingReady()) {
                MediaController.this.isDrawingWasReady = true;
                MediaController.this.currentAspectRatioFrameLayout.setDrawingReady(true);
                MediaController.this.currentTextureViewContainer.setTag(1);
            }
            if (MediaController.this.videoPlayer == null || !CastSync.isActive()) {
                return;
            }
            MediaController.this.videoPlayer.setMute(true);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onRenderedFirstFrame(this, eventTime);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekStarted(this, eventTime);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onStateChanged(boolean z, int i) {
            if (this.val$tag != MediaController.this.playerNum) {
                return;
            }
            MediaController.this.updateVideoState(this.val$messageObject, this.val$playCount, this.val$destroyAtEnd, z, i);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
            if (MediaController.this.videoPlayer == null) {
                return false;
            }
            if (MediaController.this.pipSwitchingState == 2) {
                if (MediaController.this.currentAspectRatioFrameLayout != null) {
                    if (MediaController.this.isDrawingWasReady) {
                        MediaController.this.currentAspectRatioFrameLayout.setDrawingReady(true);
                    }
                    if (MediaController.this.currentAspectRatioFrameLayout.getParent() == null) {
                        MediaController.this.currentTextureViewContainer.addView(MediaController.this.currentAspectRatioFrameLayout);
                    }
                    if (MediaController.this.currentTextureView.getSurfaceTexture() != surfaceTexture) {
                        MediaController.this.currentTextureView.setSurfaceTexture(surfaceTexture);
                    }
                    MediaController.this.videoPlayer.setTextureView(MediaController.this.currentTextureView);
                }
                MediaController.this.pipSwitchingState = 0;
                return true;
            }
            if (MediaController.this.pipSwitchingState != 1) {
                if (!PhotoViewer.hasInstance() || !PhotoViewer.getInstance().isInjectingVideoPlayer()) {
                    return false;
                }
                PhotoViewer.getInstance().injectVideoPlayerSurface(surfaceTexture);
                return true;
            }
            if (MediaController.this.baseActivity != null) {
                if (MediaController.this.pipRoundVideoView == null) {
                    try {
                        MediaController.this.pipRoundVideoView = new PipRoundVideoView();
                        MediaController.this.pipRoundVideoView.show(MediaController.this.baseActivity, new Runnable() { // from class: org.telegram.messenger.MediaController$9$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onSurfaceDestroyed$0();
                            }
                        });
                    } catch (Exception unused) {
                        MediaController.this.pipRoundVideoView = null;
                    }
                }
                if (MediaController.this.pipRoundVideoView != null) {
                    if (MediaController.this.pipRoundVideoView.getTextureView().getSurfaceTexture() != surfaceTexture) {
                        MediaController.this.pipRoundVideoView.getTextureView().setSurfaceTexture(surfaceTexture);
                    }
                    MediaController.this.videoPlayer.setTextureView(MediaController.this.pipRoundVideoView.getTextureView());
                }
            }
            MediaController.this.pipSwitchingState = 0;
            return true;
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onVideoSizeChanged(int i, int i2, int i3, float f) {
            MediaController.this.currentAspectRatioFrameLayoutRotation = i3;
            if (i3 != 90 && i3 != 270) {
                i2 = i;
                i = i2;
            }
            MediaController.this.currentAspectRatioFrameLayoutRatio = i == 0 ? MediaController.VOLUME_NORMAL : (i2 * f) / i;
            if (MediaController.this.currentAspectRatioFrameLayout != null) {
                MediaController.this.currentAspectRatioFrameLayout.setAspectRatio(MediaController.this.currentAspectRatioFrameLayoutRatio, MediaController.this.currentAspectRatioFrameLayoutRotation);
            }
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static class AlbumEntry {
        public int bucketId;
        public String bucketName;
        public PhotoEntry coverPhoto;
        public ArrayList<PhotoEntry> photos = new ArrayList<>();
        public SparseArray<PhotoEntry> photosByIds = new SparseArray<>();
        public boolean videoOnly;

        public AlbumEntry(int i, String str, PhotoEntry photoEntry) {
            this.bucketId = i;
            this.bucketName = str;
            this.coverPhoto = photoEntry;
        }

        public void addPhoto(PhotoEntry photoEntry) {
            this.photos.add(photoEntry);
            this.photosByIds.put(photoEntry.imageId, photoEntry);
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    private static class AudioBuffer {
        ByteBuffer buffer;
        byte[] bufferBytes;
        int finished;
        long pcmOffset;
        int size;

        public AudioBuffer(int i) {
            this.buffer = ByteBuffer.allocateDirect(i);
            this.bufferBytes = new byte[i];
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static class AudioEntry {
        public String author;
        public int duration;
        public String genre;
        public long id;
        public MessageObject messageObject;
        public String path;
        public String title;
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static class CropState extends TLObject {
        public static final int constructor = 1151577037;
        public float cropPx;
        public float cropPy;
        public float cropRotate;
        public boolean freeform;
        public int height;
        public boolean initied;
        public float lockedAspectRatio;
        public Matrix matrix;
        public boolean mirrored;
        public int orientation;
        public float scale;
        public float stateScale;
        public int transformHeight;
        public int transformRotation;
        public int transformWidth;
        public Matrix useMatrix;
        public int width;
        public float cropScale = MediaController.VOLUME_NORMAL;
        public float cropPw = MediaController.VOLUME_NORMAL;
        public float cropPh = MediaController.VOLUME_NORMAL;

        public CropState clone() {
            CropState cropState = new CropState();
            cropState.cropPx = this.cropPx;
            cropState.cropPy = this.cropPy;
            cropState.cropScale = this.cropScale;
            cropState.cropRotate = this.cropRotate;
            cropState.cropPw = this.cropPw;
            cropState.cropPh = this.cropPh;
            cropState.transformWidth = this.transformWidth;
            cropState.transformHeight = this.transformHeight;
            cropState.transformRotation = this.transformRotation;
            cropState.mirrored = this.mirrored;
            cropState.stateScale = this.stateScale;
            cropState.scale = this.scale;
            cropState.matrix = this.matrix;
            cropState.width = this.width;
            cropState.height = this.height;
            cropState.freeform = this.freeform;
            cropState.lockedAspectRatio = this.lockedAspectRatio;
            cropState.orientation = this.orientation;
            cropState.initied = this.initied;
            cropState.useMatrix = this.useMatrix;
            return cropState;
        }

        public boolean isEmpty() {
            Matrix matrix;
            Matrix matrix2 = this.matrix;
            return (matrix2 == null || matrix2.isIdentity()) && ((matrix = this.useMatrix) == null || matrix.isIdentity()) && this.cropPw == MediaController.VOLUME_NORMAL && this.cropPh == MediaController.VOLUME_NORMAL && this.cropScale == MediaController.VOLUME_NORMAL && this.cropRotate == BitmapDescriptorFactory.HUE_RED && this.transformWidth == 0 && this.transformHeight == 0 && this.transformRotation == 0 && !this.mirrored && this.stateScale == BitmapDescriptorFactory.HUE_RED && this.scale == BitmapDescriptorFactory.HUE_RED && this.width == 0 && this.height == 0 && !this.freeform && this.lockedAspectRatio == BitmapDescriptorFactory.HUE_RED;
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.cropPx = inputSerializedData.readFloat(z);
            this.cropPy = inputSerializedData.readFloat(z);
            this.cropScale = inputSerializedData.readFloat(z);
            this.cropRotate = inputSerializedData.readFloat(z);
            this.cropPw = inputSerializedData.readFloat(z);
            this.cropPh = inputSerializedData.readFloat(z);
            this.transformWidth = inputSerializedData.readInt32(z);
            this.transformHeight = inputSerializedData.readInt32(z);
            this.transformRotation = inputSerializedData.readInt32(z);
            this.mirrored = inputSerializedData.readBool(z);
            this.stateScale = inputSerializedData.readFloat(z);
            this.scale = inputSerializedData.readFloat(z);
            float[] fArr = new float[9];
            for (int i = 0; i < 9; i++) {
                fArr[i] = inputSerializedData.readFloat(z);
            }
            Matrix matrix = new Matrix();
            this.matrix = matrix;
            matrix.setValues(fArr);
            this.width = inputSerializedData.readInt32(z);
            this.height = inputSerializedData.readInt32(z);
            this.freeform = inputSerializedData.readBool(z);
            this.lockedAspectRatio = inputSerializedData.readFloat(z);
            if (inputSerializedData.readInt32(z) == 178403937) {
                for (int i2 = 0; i2 < 9; i2++) {
                    fArr[i2] = inputSerializedData.readFloat(z);
                }
                Matrix matrix2 = new Matrix();
                this.useMatrix = matrix2;
                matrix2.setValues(fArr);
            }
            this.initied = inputSerializedData.readBool(z);
            this.orientation = inputSerializedData.readInt32(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeFloat(this.cropPx);
            outputSerializedData.writeFloat(this.cropPy);
            outputSerializedData.writeFloat(this.cropScale);
            outputSerializedData.writeFloat(this.cropRotate);
            outputSerializedData.writeFloat(this.cropPw);
            outputSerializedData.writeFloat(this.cropPh);
            outputSerializedData.writeInt32(this.transformWidth);
            outputSerializedData.writeInt32(this.transformHeight);
            outputSerializedData.writeInt32(this.transformRotation);
            outputSerializedData.writeBool(this.mirrored);
            outputSerializedData.writeFloat(this.stateScale);
            outputSerializedData.writeFloat(this.scale);
            float[] fArr = new float[9];
            Matrix matrix = this.matrix;
            if (matrix != null) {
                matrix.getValues(fArr);
            } else {
                for (int i = 0; i < 9; i++) {
                    fArr[i] = 0.0f;
                }
            }
            for (int i2 = 0; i2 < 9; i2++) {
                outputSerializedData.writeFloat(fArr[i2]);
            }
            outputSerializedData.writeInt32(this.width);
            outputSerializedData.writeInt32(this.height);
            outputSerializedData.writeBool(this.freeform);
            outputSerializedData.writeFloat(this.lockedAspectRatio);
            if (this.useMatrix == null) {
                outputSerializedData.writeInt32(1450380236);
            } else {
                outputSerializedData.writeInt32(178403937);
                this.useMatrix.getValues(fArr);
                for (int i3 = 0; i3 < 9; i3++) {
                    outputSerializedData.writeFloat(fArr[i3]);
                }
            }
            outputSerializedData.writeBool(this.initied);
            outputSerializedData.writeInt32(this.orientation);
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    private class ExternalObserver extends ContentObserver {
        public ExternalObserver() {
            super(null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            MediaController.this.processMediaObserver(MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    static class GalleryObserverExternal extends ContentObserver {
        public GalleryObserverExternal() {
            super(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onChange$0() {
            Runnable unused = MediaController.refreshGalleryRunnable = null;
            MediaController.loadGalleryPhotosAlbums(0);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            if (MediaController.refreshGalleryRunnable != null) {
                AndroidUtilities.cancelRunOnUIThread(MediaController.refreshGalleryRunnable);
            }
            AndroidUtilities.runOnUIThread(MediaController.refreshGalleryRunnable = new Runnable() { // from class: org.telegram.messenger.MediaController$GalleryObserverExternal$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.GalleryObserverExternal.lambda$onChange$0();
                }
            }, 2000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    static class GalleryObserverInternal extends ContentObserver {
        public GalleryObserverInternal() {
            super(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$scheduleReloadRunnable$0() {
            if (PhotoViewer.getInstance().isVisible()) {
                scheduleReloadRunnable();
            } else {
                Runnable unused = MediaController.refreshGalleryRunnable = null;
                MediaController.loadGalleryPhotosAlbums(0);
            }
        }

        private void scheduleReloadRunnable() {
            AndroidUtilities.runOnUIThread(MediaController.refreshGalleryRunnable = new Runnable() { // from class: org.telegram.messenger.MediaController$GalleryObserverInternal$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$scheduleReloadRunnable$0();
                }
            }, 2000L);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            if (MediaController.refreshGalleryRunnable != null) {
                AndroidUtilities.cancelRunOnUIThread(MediaController.refreshGalleryRunnable);
            }
            scheduleReloadRunnable();
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    private class InternalObserver extends ContentObserver {
        public InternalObserver() {
            super(null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            MediaController.this.processMediaObserver(MediaStore.Images.Media.INTERNAL_CONTENT_URI);
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static class MediaEditState {
        public long averageDuration;
        public CharSequence caption;
        public String coverPath;
        public TLRPC.Photo coverPhoto;
        public Object coverPhotoParentObject;
        public long coverSavedPosition;
        public CropState cropState;
        public ArrayList<VideoEditedInfo.MediaEntity> croppedMediaEntities;
        public String croppedPaintPath;
        public VideoEditedInfo editedInfo;
        public long effectId;
        public ArrayList<TLRPC.MessageEntity> entities;
        public String filterPath;
        public String fullPaintPath;
        public boolean highQuality;
        public String imagePath;
        public boolean isCropped;
        public boolean isFiltered;
        public boolean isPainted;
        public ArrayList<VideoEditedInfo.MediaEntity> mediaEntities;
        public String paintPath;
        public SavedFilterState savedFilterState;
        public ArrayList<TLRPC.InputDocument> stickers;
        public String thumbPath;
        public int ttl;

        public void copyFrom(MediaEditState mediaEditState) {
            this.caption = mediaEditState.caption;
            this.thumbPath = mediaEditState.thumbPath;
            this.imagePath = mediaEditState.imagePath;
            this.filterPath = mediaEditState.filterPath;
            this.paintPath = mediaEditState.paintPath;
            this.croppedPaintPath = mediaEditState.croppedPaintPath;
            this.fullPaintPath = mediaEditState.fullPaintPath;
            this.entities = mediaEditState.entities;
            this.savedFilterState = mediaEditState.savedFilterState;
            this.mediaEntities = mediaEditState.mediaEntities;
            this.croppedMediaEntities = mediaEditState.croppedMediaEntities;
            this.stickers = mediaEditState.stickers;
            this.editedInfo = mediaEditState.editedInfo;
            this.averageDuration = mediaEditState.averageDuration;
            this.isFiltered = mediaEditState.isFiltered;
            this.isPainted = mediaEditState.isPainted;
            this.isCropped = mediaEditState.isCropped;
            this.ttl = mediaEditState.ttl;
            this.cropState = mediaEditState.cropState;
            this.coverPath = mediaEditState.coverPath;
            this.highQuality = mediaEditState.highQuality;
        }

        public String getPath() {
            return null;
        }

        public void reset() {
            this.caption = null;
            this.coverPath = null;
            this.coverPhoto = null;
            this.coverPhotoParentObject = null;
            this.thumbPath = null;
            this.filterPath = null;
            this.imagePath = null;
            this.paintPath = null;
            this.fullPaintPath = null;
            this.croppedPaintPath = null;
            this.isFiltered = false;
            this.isPainted = false;
            this.isCropped = false;
            this.ttl = 0;
            this.mediaEntities = null;
            this.editedInfo = null;
            this.entities = null;
            this.savedFilterState = null;
            this.stickers = null;
            this.cropState = null;
            this.highQuality = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    static class MediaLoader implements NotificationCenter.NotificationCenterDelegate {
        private boolean cancelled;
        private int copiedFiles;
        private AccountInstance currentAccount;
        private boolean finished;
        private float finishedProgress;
        private boolean isMusic;
        private HashMap<String, MessageObject> loadingMessageObjects = new HashMap<>();
        private ArrayList<MessageObject> messageObjects;
        private MessagesStorage.IntCallback onFinishRunnable;
        private AlertDialog progressDialog;
        private CountDownLatch waitingForFile;

        public MediaLoader(Context context, AccountInstance accountInstance, ArrayList<MessageObject> arrayList, MessagesStorage.IntCallback intCallback) {
            this.currentAccount = accountInstance;
            this.messageObjects = arrayList;
            this.onFinishRunnable = intCallback;
            this.isMusic = arrayList.get(0).isMusic();
            this.currentAccount.getNotificationCenter().addObserver(this, NotificationCenter.fileLoaded);
            this.currentAccount.getNotificationCenter().addObserver(this, NotificationCenter.fileLoadProgressChanged);
            this.currentAccount.getNotificationCenter().addObserver(this, NotificationCenter.fileLoadFailed);
            AlertDialog alertDialog = new AlertDialog(context, 2, PhotoViewer.getInstance().isVisible() ? new DarkThemeResourceProvider() : null);
            this.progressDialog = alertDialog;
            alertDialog.setMessage(LocaleController.getString(R.string.Loading));
            this.progressDialog.setCancelable(true);
            this.progressDialog.setCancelDialog(true);
            this.progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.messenger.MediaController$MediaLoader$$ExternalSyntheticLambda7
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    this.f$0.lambda$new$0(dialogInterface);
                }
            });
        }

        private void addMessageToLoad(final MessageObject messageObject) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$MediaLoader$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$addMessageToLoad$5(messageObject);
                }
            });
        }

        private void checkIfFinished() {
            if (this.loadingMessageObjects.isEmpty()) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$MediaLoader$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$checkIfFinished$4();
                    }
                });
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:114:0x0183 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:143:? A[Catch: all -> 0x015e, SYNTHETIC, TRY_LEAVE, TryCatch #14 {all -> 0x015e, blocks: (B:100:0x018c, B:99:0x0189, B:73:0x0157, B:80:0x0166, B:95:0x0183), top: B:120:0x0015, inners: #0 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private boolean copyFile(File file, File file2, String str) throws Throwable {
            FileInputStream fileInputStream;
            FileInputStream fileInputStream2;
            Throwable th;
            Throwable th2;
            String str2;
            String mimeTypeFromExtension;
            if (AndroidUtilities.isInternalUri(Uri.fromFile(file))) {
                return false;
            }
            try {
                try {
                    fileInputStream = new FileInputStream(file);
                } catch (Exception e) {
                    e = e;
                    FileLog.e(e);
                    file2.delete();
                    return false;
                }
            } catch (Exception e2) {
                e = e2;
                FileLog.e(e);
                file2.delete();
                return false;
            }
            try {
                try {
                    FileChannel channel = fileInputStream.getChannel();
                    try {
                        try {
                            try {
                                FileChannel channel2 = new FileOutputStream(file2).getChannel();
                                try {
                                    long size = channel.size();
                                    try {
                                        if (AndroidUtilities.isInternalUri(((Integer) FileDescriptor.class.getDeclaredMethod("getInt$", null).invoke(fileInputStream.getFD(), null)).intValue())) {
                                            if (this.progressDialog != null) {
                                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$MediaLoader$$ExternalSyntheticLambda1
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        this.f$0.lambda$copyFile$6();
                                                    }
                                                });
                                            }
                                            if (channel2 != null) {
                                                try {
                                                    channel2.close();
                                                } catch (Throwable th3) {
                                                    th2 = th3;
                                                    fileInputStream2 = fileInputStream;
                                                    if (channel == null) {
                                                    }
                                                }
                                            }
                                            try {
                                                channel.close();
                                                fileInputStream.close();
                                                return false;
                                            } catch (Throwable th4) {
                                                th = th4;
                                                fileInputStream2 = fileInputStream;
                                                try {
                                                    fileInputStream2.close();
                                                    throw th;
                                                } catch (Throwable th5) {
                                                    th.addSuppressed(th5);
                                                    throw th;
                                                }
                                            }
                                        }
                                    } catch (Throwable th6) {
                                        FileLog.e(th6);
                                    }
                                    long j = 0;
                                    long j2 = 0;
                                    while (j < size && !this.cancelled) {
                                        fileInputStream2 = fileInputStream;
                                        long j3 = j;
                                        try {
                                            channel2.transferFrom(channel, j, Math.min(4096L, size - j));
                                            j = j3 + 4096;
                                            if (j >= size || j2 <= SystemClock.elapsedRealtime() - 500) {
                                                long jElapsedRealtime = SystemClock.elapsedRealtime();
                                                final int size2 = (int) (this.finishedProgress + (((100.0f / this.messageObjects.size()) * j3) / size));
                                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$MediaLoader$$ExternalSyntheticLambda2
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        this.f$0.lambda$copyFile$7(size2);
                                                    }
                                                });
                                                j2 = jElapsedRealtime;
                                            }
                                            fileInputStream = fileInputStream2;
                                        } catch (Throwable th7) {
                                            th = th7;
                                            Throwable th8 = th;
                                            if (channel2 == null) {
                                                throw th8;
                                            }
                                            try {
                                                channel2.close();
                                                throw th8;
                                            } catch (Throwable th9) {
                                                th8.addSuppressed(th9);
                                                throw th8;
                                            }
                                        }
                                    }
                                    fileInputStream2 = fileInputStream;
                                    if (this.cancelled) {
                                        if (channel2 != null) {
                                            channel2.close();
                                        }
                                        channel.close();
                                        fileInputStream2.close();
                                        file2.delete();
                                        return false;
                                    }
                                    if (this.isMusic) {
                                        AndroidUtilities.addMediaToGallery(file2);
                                    } else {
                                        DownloadManager downloadManager = (DownloadManager) ApplicationLoader.applicationContext.getSystemService("download");
                                        if (TextUtils.isEmpty(str)) {
                                            MimeTypeMap singleton = MimeTypeMap.getSingleton();
                                            String name = file2.getName();
                                            int iLastIndexOf = name.lastIndexOf(46);
                                            if (iLastIndexOf != -1) {
                                                mimeTypeFromExtension = singleton.getMimeTypeFromExtension(name.substring(iLastIndexOf + 1).toLowerCase());
                                                if (TextUtils.isEmpty(mimeTypeFromExtension)) {
                                                    mimeTypeFromExtension = "text/plain";
                                                }
                                                str2 = mimeTypeFromExtension;
                                            } else {
                                                mimeTypeFromExtension = "text/plain";
                                                str2 = mimeTypeFromExtension;
                                            }
                                        } else {
                                            str2 = str;
                                        }
                                        downloadManager.addCompletedDownload(file2.getName(), file2.getName(), false, str2, file2.getAbsolutePath(), file2.length(), true);
                                    }
                                    float size3 = this.finishedProgress + (100.0f / this.messageObjects.size());
                                    this.finishedProgress = size3;
                                    final int i = (int) size3;
                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$MediaLoader$$ExternalSyntheticLambda3
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.lambda$copyFile$8(i);
                                        }
                                    });
                                    if (channel2 != null) {
                                        channel2.close();
                                    }
                                    channel.close();
                                    fileInputStream2.close();
                                    return true;
                                } catch (Throwable th10) {
                                    th = th10;
                                    fileInputStream2 = fileInputStream;
                                }
                            } catch (Throwable th11) {
                                th = th11;
                                th2 = th;
                                if (channel == null) {
                                    throw th2;
                                }
                                try {
                                    channel.close();
                                    throw th2;
                                } catch (Throwable th12) {
                                    th2.addSuppressed(th12);
                                    throw th2;
                                }
                            }
                        } catch (Throwable th13) {
                            th = th13;
                            fileInputStream2 = fileInputStream;
                            th2 = th;
                            if (channel == null) {
                            }
                        }
                    } catch (Throwable th14) {
                        th = th14;
                    }
                } catch (Throwable th15) {
                    th = th15;
                    fileInputStream2 = fileInputStream;
                    th = th;
                    fileInputStream2.close();
                    throw th;
                }
            } catch (Throwable th16) {
                th = th16;
                th = th;
                fileInputStream2.close();
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$addMessageToLoad$5(MessageObject messageObject) {
            TLRPC.Document document = messageObject.getDocument();
            TLRPC.Document document2 = messageObject.qualityToSave;
            if (document2 != null) {
                document = document2;
            }
            if (document == null) {
                return;
            }
            this.loadingMessageObjects.put(FileLoader.getAttachFileName(document), messageObject);
            this.currentAccount.getFileLoader().loadFile(document, messageObject, 3, messageObject.shouldEncryptPhotoOrVideo() ? 2 : 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$checkIfFinished$3() {
            this.onFinishRunnable.run(this.copiedFiles);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$checkIfFinished$4() {
            try {
                if (this.progressDialog.isShowing()) {
                    this.progressDialog.dismiss();
                } else {
                    this.finished = true;
                }
                if (this.onFinishRunnable != null) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$MediaLoader$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$checkIfFinished$3();
                        }
                    });
                }
            } catch (Exception e) {
                FileLog.e(e);
            }
            this.currentAccount.getNotificationCenter().removeObserver(this, NotificationCenter.fileLoaded);
            this.currentAccount.getNotificationCenter().removeObserver(this, NotificationCenter.fileLoadProgressChanged);
            this.currentAccount.getNotificationCenter().removeObserver(this, NotificationCenter.fileLoadFailed);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$copyFile$6() {
            try {
                this.progressDialog.dismiss();
            } catch (Exception e) {
                FileLog.e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$copyFile$7(int i) {
            try {
                this.progressDialog.setProgress(i);
            } catch (Exception e) {
                FileLog.e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$copyFile$8(int i) {
            try {
                this.progressDialog.setProgress(i);
            } catch (Exception e) {
                FileLog.e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didReceivedNotification$9(int i) {
            try {
                this.progressDialog.setProgress(i);
            } catch (Exception e) {
                FileLog.e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(DialogInterface dialogInterface) {
            this.cancelled = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$1() {
            if (this.finished) {
                return;
            }
            this.progressDialog.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$2() throws Throwable {
            File file;
            StringBuilder sb;
            File pathToMessage;
            File pathToAttach;
            try {
                if (Build.VERSION.SDK_INT >= 29) {
                    int size = this.messageObjects.size();
                    for (int i = 0; i < size; i++) {
                        MessageObject messageObject = this.messageObjects.get(i);
                        String string = messageObject.messageOwner.attachPath;
                        TLRPC.Document document = messageObject.getDocument();
                        TLRPC.Document document2 = messageObject.qualityToSave;
                        if (document2 != null) {
                            string = null;
                            document = document2;
                        }
                        String documentFileName = FileLoader.getDocumentFileName(document);
                        if (string != null && string.length() > 0 && !new File(string).exists()) {
                            string = null;
                        }
                        if (TextUtils.isEmpty(string)) {
                            FileLoader fileLoader = FileLoader.getInstance(this.currentAccount.getCurrentAccount());
                            TLRPC.MessageMedia media = MessageObject.getMedia(messageObject);
                            TLRPC.Document document3 = messageObject.qualityToSave;
                            if (document3 != null) {
                                pathToAttach = fileLoader.getPathToAttach(document3, null, false, true);
                            } else {
                                pathToMessage = fileLoader.getPathToMessage(messageObject.messageOwner, true);
                                if (media instanceof TLRPC.TL_messageMediaDocument) {
                                    TLRPC.TL_messageMediaDocument tL_messageMediaDocument = (TLRPC.TL_messageMediaDocument) media;
                                    if (!tL_messageMediaDocument.alt_documents.isEmpty()) {
                                        pathToAttach = fileLoader.getPathToAttach(tL_messageMediaDocument.alt_documents.get(0), null, false, true);
                                    }
                                }
                                string = pathToMessage.toString();
                            }
                            pathToMessage = pathToAttach;
                            string = pathToMessage.toString();
                        }
                        File file2 = new File(string);
                        if (!file2.exists()) {
                            this.waitingForFile = new CountDownLatch(1);
                            addMessageToLoad(messageObject);
                            this.waitingForFile.await();
                        }
                        if (this.cancelled) {
                            break;
                        }
                        if (!file2.exists()) {
                            file2 = FileLoader.getInstance(this.currentAccount.getCurrentAccount()).getPathToAttach(messageObject.messageOwner, true);
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("saving file: correcting path from ");
                            sb2.append(string);
                            sb2.append(" to ");
                            sb2.append(file2 == null ? null : file2.getAbsolutePath());
                            FileLog.d(sb2.toString());
                        }
                        if (file2 != null && file2.exists()) {
                            MediaController.saveFileInternal(this.isMusic ? 3 : 2, file2, documentFileName);
                            this.copiedFiles++;
                        }
                    }
                } else {
                    File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(this.isMusic ? Environment.DIRECTORY_MUSIC : Environment.DIRECTORY_DOWNLOADS);
                    externalStoragePublicDirectory.mkdir();
                    int size2 = this.messageObjects.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        MessageObject messageObject2 = this.messageObjects.get(i2);
                        TLRPC.Document document4 = messageObject2.getDocument();
                        TLRPC.Document document5 = messageObject2.qualityToSave;
                        if (document5 != null) {
                            document4 = document5;
                        }
                        String documentFileName2 = FileLoader.getDocumentFileName(document4);
                        File file3 = new File(externalStoragePublicDirectory, documentFileName2);
                        if (file3.exists()) {
                            int iLastIndexOf = documentFileName2.lastIndexOf(46);
                            int i3 = 0;
                            while (true) {
                                if (i3 >= 10) {
                                    break;
                                }
                                String strSubstring = ")";
                                if (iLastIndexOf != -1) {
                                    sb = new StringBuilder();
                                    sb.append(documentFileName2.substring(0, iLastIndexOf));
                                    sb.append("(");
                                    sb.append(i3 + 1);
                                    sb.append(")");
                                    strSubstring = documentFileName2.substring(iLastIndexOf);
                                } else {
                                    sb = new StringBuilder();
                                    sb.append(documentFileName2);
                                    sb.append("(");
                                    sb.append(i3 + 1);
                                }
                                sb.append(strSubstring);
                                File file4 = new File(externalStoragePublicDirectory, sb.toString());
                                if (!file4.exists()) {
                                    file3 = file4;
                                    break;
                                } else {
                                    i3++;
                                    file3 = file4;
                                }
                            }
                        }
                        if (!file3.exists()) {
                            file3.createNewFile();
                        }
                        String string2 = messageObject2.messageOwner.attachPath;
                        if (messageObject2.qualityToSave != null) {
                            string2 = null;
                        }
                        if (string2 != null && string2.length() > 0 && !new File(string2).exists()) {
                            string2 = null;
                        }
                        if (messageObject2.qualityToSave != null) {
                            file = FileLoader.getInstance(this.currentAccount.getCurrentAccount()).getPathToAttach(messageObject2.qualityToSave, null, false, true);
                        } else {
                            if (string2 == null || string2.length() == 0) {
                                string2 = FileLoader.getInstance(this.currentAccount.getCurrentAccount()).getPathToMessage(messageObject2.messageOwner).toString();
                            }
                            file = new File(string2);
                        }
                        if (!file.exists()) {
                            this.waitingForFile = new CountDownLatch(1);
                            addMessageToLoad(messageObject2);
                            this.waitingForFile.await();
                        }
                        if (file.exists()) {
                            copyFile(file, file3, messageObject2.getMimeType());
                            this.copiedFiles++;
                        }
                    }
                }
                checkIfFinished();
            } catch (Exception e) {
                FileLog.e(e);
            }
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.fileLoaded || i == NotificationCenter.fileLoadFailed) {
                if (this.loadingMessageObjects.remove((String) objArr[0]) != null) {
                    this.waitingForFile.countDown();
                    return;
                }
                return;
            }
            if (i == NotificationCenter.fileLoadProgressChanged) {
                if (this.loadingMessageObjects.containsKey((String) objArr[0])) {
                    final int iLongValue = (int) (this.finishedProgress + (((((Long) objArr[1]).longValue() / ((Long) objArr[2]).longValue()) / this.messageObjects.size()) * 100.0f));
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$MediaLoader$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$didReceivedNotification$9(iLongValue);
                        }
                    });
                }
            }
        }

        public void start() {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$MediaLoader$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$start$1();
                }
            }, 250L);
            new Thread(new Runnable() { // from class: org.telegram.messenger.MediaController$MediaLoader$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.lambda$start$2();
                }
            }).start();
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static class PhotoEntry extends MediaEditState {
        public int bucketId;
        public boolean canDeleteAfter;
        public long dateTaken;
        public int duration;
        public String emoji;
        public TLRPC.VideoSize emojiMarkup;
        public int gradientBottomColor;
        public int gradientTopColor;
        public boolean hasSpoiler;
        public int height;
        public int imageId;
        public int invert;
        public boolean isAttachSpoilerRevealed;
        public boolean isChatPreviewSpoilerRevealed;
        public boolean isMuted;
        public boolean isVideo;
        public int orientation;
        public String path;
        public long size;
        public long starsAmount;
        public BitmapDrawable thumb;
        public int videoOrientation = -1;
        public int width;

        public PhotoEntry(int i, int i2, long j, String str, int i3, int i4, boolean z, int i5, int i6, long j2) {
            this.bucketId = i;
            this.imageId = i2;
            this.dateTaken = j;
            this.path = str;
            this.width = i5;
            this.height = i6;
            this.size = j2;
            this.duration = i4;
            this.orientation = i3;
            this.isVideo = z;
        }

        public PhotoEntry(int i, int i2, long j, String str, int i3, boolean z, int i4, int i5, long j2) {
            this.bucketId = i;
            this.imageId = i2;
            this.dateTaken = j;
            this.path = str;
            this.width = i4;
            this.height = i5;
            this.size = j2;
            if (z) {
                this.duration = i3;
            } else {
                this.orientation = i3;
            }
            this.isVideo = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Bitmap lambda$rebuildPhoto$0(BitmapFactory.Options options) {
            String str = this.filterPath;
            if (str == null) {
                str = this.path;
            }
            return BitmapFactory.decodeFile(str, options);
        }

        public PhotoEntry clone() {
            PhotoEntry photoEntry = new PhotoEntry(this.bucketId, this.imageId, this.dateTaken, this.path, this.orientation, this.duration, this.isVideo, this.width, this.height, this.size);
            photoEntry.invert = this.invert;
            photoEntry.isMuted = this.isMuted;
            photoEntry.canDeleteAfter = this.canDeleteAfter;
            photoEntry.hasSpoiler = this.hasSpoiler;
            photoEntry.starsAmount = this.starsAmount;
            photoEntry.isChatPreviewSpoilerRevealed = this.isChatPreviewSpoilerRevealed;
            photoEntry.isAttachSpoilerRevealed = this.isAttachSpoilerRevealed;
            photoEntry.emojiMarkup = this.emojiMarkup;
            photoEntry.gradientTopColor = this.gradientTopColor;
            photoEntry.gradientBottomColor = this.gradientBottomColor;
            photoEntry.copyFrom(this);
            return photoEntry;
        }

        @Override // org.telegram.messenger.MediaController.MediaEditState
        public void copyFrom(MediaEditState mediaEditState) {
            super.copyFrom(mediaEditState);
            boolean z = mediaEditState instanceof PhotoEntry;
            this.hasSpoiler = z && ((PhotoEntry) mediaEditState).hasSpoiler;
            this.starsAmount = z ? ((PhotoEntry) mediaEditState).starsAmount : 0L;
        }

        public void deleteAll() {
            if (this.path != null) {
                try {
                    new File(this.path).delete();
                } catch (Exception unused) {
                }
            }
            if (this.fullPaintPath != null) {
                try {
                    new File(this.fullPaintPath).delete();
                } catch (Exception unused2) {
                }
            }
            if (this.paintPath != null) {
                try {
                    new File(this.paintPath).delete();
                } catch (Exception unused3) {
                }
            }
            if (this.imagePath != null) {
                try {
                    new File(this.imagePath).delete();
                } catch (Exception unused4) {
                }
            }
            if (this.filterPath != null) {
                try {
                    new File(this.filterPath).delete();
                } catch (Exception unused5) {
                }
            }
            if (this.croppedPaintPath != null) {
                try {
                    new File(this.croppedPaintPath).delete();
                } catch (Exception unused6) {
                }
            }
        }

        @Override // org.telegram.messenger.MediaController.MediaEditState
        public String getPath() {
            return this.path;
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x00ac  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00d9  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void rebuildPhoto(boolean z) {
            Bitmap bitmap;
            Bitmap bitmapCreateBitmap;
            String str;
            Bitmap bitmapDecodeFile;
            String str2 = this.filterPath;
            if (str2 == null) {
                str2 = this.path;
            }
            Pair<Integer, Integer> imageOrientation = AndroidUtilities.getImageOrientation(str2);
            Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.JPEG;
            Bitmap scaledBitmap = StoryEntry.getScaledBitmap(new StoryEntry.DecodeBitmap() { // from class: org.telegram.messenger.MediaController$PhotoEntry$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.Stories.recorder.StoryEntry.DecodeBitmap
                public final Bitmap decode(BitmapFactory.Options options) {
                    return this.f$0.lambda$rebuildPhoto$0(options);
                }
            }, AndroidUtilities.getPhotoSize(z), AndroidUtilities.getPhotoSize(z), false, true);
            if (this.imagePath != null) {
                new File(this.imagePath).delete();
                this.imagePath = null;
            }
            CropState cropState = this.cropState;
            if (cropState != null) {
                bitmapCreateBitmap = PhotoViewer.createCroppedBitmap(scaledBitmap, cropState, new int[]{((Integer) imageOrientation.first).intValue(), ((Integer) imageOrientation.second).intValue()}, true);
            } else {
                if (((Integer) imageOrientation.first).intValue() == 0) {
                    bitmap = scaledBitmap;
                    str = this.fullPaintPath;
                    if (str != null) {
                        this.imagePath = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(ImageLoader.scaleAndSaveImage(bitmap, compressFormat, AndroidUtilities.getPhotoSize(z), AndroidUtilities.getPhotoSize(z), z ? 99 : 87, false, 101, 101), true).toString();
                    } else {
                        if (this.cropState != null) {
                            Bitmap bitmapDecodeFile2 = BitmapFactory.decodeFile(str);
                            bitmapDecodeFile = PhotoViewer.createCroppedBitmap(bitmapDecodeFile2, this.cropState, null, false);
                            bitmapDecodeFile2.recycle();
                        } else {
                            bitmapDecodeFile = BitmapFactory.decodeFile(str);
                        }
                        try {
                            Paint paint = new Paint(3);
                            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
                            Canvas canvas = new Canvas(bitmapCreateBitmap2);
                            canvas.drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
                            canvas.scale(bitmap.getWidth() / bitmapDecodeFile.getWidth(), bitmap.getHeight() / bitmapDecodeFile.getHeight());
                            canvas.drawBitmap(bitmapDecodeFile, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
                            this.imagePath = PhotoViewer.getTempFileAbsolutePath();
                            bitmapCreateBitmap2.compress(compressFormat, z ? 99 : 87, new FileOutputStream(this.imagePath));
                        } catch (Exception e) {
                            FileLog.e(e);
                        }
                        bitmapDecodeFile.recycle();
                    }
                    bitmap.recycle();
                }
                Matrix matrix = new Matrix();
                matrix.postRotate(((Integer) imageOrientation.first).intValue());
                if (((Integer) imageOrientation.second).intValue() == 1) {
                    matrix.postScale(-1.0f, MediaController.VOLUME_NORMAL);
                } else if (((Integer) imageOrientation.second).intValue() == 2) {
                    matrix.postScale(MediaController.VOLUME_NORMAL, -1.0f);
                }
                bitmapCreateBitmap = Bitmaps.createBitmap(scaledBitmap, 0, 0, scaledBitmap.getWidth(), scaledBitmap.getHeight(), matrix, true);
            }
            scaledBitmap.recycle();
            bitmap = bitmapCreateBitmap;
            str = this.fullPaintPath;
            if (str != null) {
            }
            bitmap.recycle();
        }

        @Override // org.telegram.messenger.MediaController.MediaEditState
        public void reset() {
            if (this.isVideo && this.filterPath != null) {
                new File(this.filterPath).delete();
                this.filterPath = null;
            }
            this.hasSpoiler = false;
            this.starsAmount = 0L;
            super.reset();
        }

        public PhotoEntry setOrientation(int i, int i2) {
            this.orientation = i;
            this.invert = i2;
            return this;
        }

        public PhotoEntry setOrientation(Pair<Integer, Integer> pair) {
            this.orientation = ((Integer) pair.first).intValue();
            this.invert = ((Integer) pair.second).intValue();
            return this;
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static class PlaylistGlobalSearchParams {
        final long dialogId;
        public boolean endReached;
        final FiltersView.MediaFilterData filter;
        public int folderId;
        final long maxDate;
        final long minDate;
        public int nextSearchRate;
        final String query;
        public ReactionsLayoutInBubble.VisibleReaction reaction;
        public long topicId;
        public int totalCount;

        public PlaylistGlobalSearchParams(String str, long j, long j2, long j3, FiltersView.MediaFilterData mediaFilterData) {
            this.filter = mediaFilterData;
            this.query = str;
            this.dialogId = j;
            this.minDate = j2;
            this.maxDate = j3;
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static class SavedFilterState {
        public float blurAngle;
        public float blurExcludeBlurSize;
        public Point blurExcludePoint;
        public float blurExcludeSize;
        public int blurType;
        public float contrastValue;
        public PhotoFilterView.CurvesToolValue curvesToolValue = new PhotoFilterView.CurvesToolValue();
        public float enhanceValue;
        public float exposureValue;
        public float fadeValue;
        public float grainValue;
        public float highlightsValue;
        public float saturationValue;
        public float shadowsValue;
        public float sharpenValue;
        public float softenSkinValue;
        public int tintHighlightsColor;
        public int tintShadowsColor;
        public float vignetteValue;
        public float warmthValue;

        public boolean isEmpty() {
            return Math.abs(this.enhanceValue) < 0.1f && Math.abs(this.softenSkinValue) < 0.1f && Math.abs(this.exposureValue) < 0.1f && Math.abs(this.contrastValue) < 0.1f && Math.abs(this.warmthValue) < 0.1f && Math.abs(this.saturationValue) < 0.1f && Math.abs(this.fadeValue) < 0.1f && this.tintShadowsColor == 0 && this.tintHighlightsColor == 0 && Math.abs(this.highlightsValue) < 0.1f && Math.abs(this.shadowsValue) < 0.1f && Math.abs(this.vignetteValue) < 0.1f && Math.abs(this.grainValue) < 0.1f && this.blurType == 0 && Math.abs(this.sharpenValue) < 0.1f;
        }

        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.enhanceValue = inputSerializedData.readFloat(z);
            this.softenSkinValue = inputSerializedData.readFloat(z);
            this.exposureValue = inputSerializedData.readFloat(z);
            this.contrastValue = inputSerializedData.readFloat(z);
            this.warmthValue = inputSerializedData.readFloat(z);
            this.saturationValue = inputSerializedData.readFloat(z);
            this.fadeValue = inputSerializedData.readFloat(z);
            this.tintShadowsColor = inputSerializedData.readInt32(z);
            this.tintHighlightsColor = inputSerializedData.readInt32(z);
            this.highlightsValue = inputSerializedData.readFloat(z);
            this.shadowsValue = inputSerializedData.readFloat(z);
            this.vignetteValue = inputSerializedData.readFloat(z);
            this.grainValue = inputSerializedData.readFloat(z);
            this.blurType = inputSerializedData.readInt32(z);
            this.sharpenValue = inputSerializedData.readFloat(z);
            this.curvesToolValue.readParams(inputSerializedData, z);
            this.blurExcludeSize = inputSerializedData.readFloat(z);
            if (inputSerializedData.readInt32(z) == 1450380236) {
                this.blurExcludePoint = null;
            } else {
                if (this.blurExcludePoint == null) {
                    this.blurExcludePoint = new Point();
                }
                this.blurExcludePoint.x = inputSerializedData.readFloat(z);
                this.blurExcludePoint.y = inputSerializedData.readFloat(z);
            }
            this.blurExcludeBlurSize = inputSerializedData.readFloat(z);
            this.blurAngle = inputSerializedData.readFloat(z);
        }

        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeFloat(this.enhanceValue);
            outputSerializedData.writeFloat(this.softenSkinValue);
            outputSerializedData.writeFloat(this.exposureValue);
            outputSerializedData.writeFloat(this.contrastValue);
            outputSerializedData.writeFloat(this.warmthValue);
            outputSerializedData.writeFloat(this.saturationValue);
            outputSerializedData.writeFloat(this.fadeValue);
            outputSerializedData.writeInt32(this.tintShadowsColor);
            outputSerializedData.writeInt32(this.tintHighlightsColor);
            outputSerializedData.writeFloat(this.highlightsValue);
            outputSerializedData.writeFloat(this.shadowsValue);
            outputSerializedData.writeFloat(this.vignetteValue);
            outputSerializedData.writeFloat(this.grainValue);
            outputSerializedData.writeInt32(this.blurType);
            outputSerializedData.writeFloat(this.sharpenValue);
            this.curvesToolValue.serializeToStream(outputSerializedData);
            outputSerializedData.writeFloat(this.blurExcludeSize);
            if (this.blurExcludePoint == null) {
                outputSerializedData.writeInt32(1450380236);
            } else {
                outputSerializedData.writeInt32(-559038737);
                outputSerializedData.writeFloat(this.blurExcludePoint.x);
                outputSerializedData.writeFloat(this.blurExcludePoint.y);
            }
            outputSerializedData.writeFloat(this.blurExcludeBlurSize);
            outputSerializedData.writeFloat(this.blurAngle);
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    private static class SavedMusicPlaylistState {
        public final MessageObject playingMessage;
        public final float progress;
        public final int progressMs;
        public final int progressSec;

        public SavedMusicPlaylistState(MessageObject messageObject) {
            this.playingMessage = messageObject;
            this.progress = messageObject.audioProgress;
            this.progressMs = messageObject.audioProgressMs;
            this.progressSec = messageObject.audioProgressSec;
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static class SearchImage extends MediaEditState {
        public CharSequence caption;
        public int date;
        public TLRPC.Document document;
        public int height;
        public String id;
        public String imageUrl;
        public TLRPC.BotInlineResult inlineResult;
        public HashMap<String, String> params;
        public TLRPC.Photo photo;
        public TLRPC.PhotoSize photoSize;
        public int size;
        public TLRPC.PhotoSize thumbPhotoSize;
        public String thumbUrl;
        public int type;
        public int width;

        public SearchImage clone() {
            SearchImage searchImage = new SearchImage();
            searchImage.id = this.id;
            searchImage.imageUrl = this.imageUrl;
            searchImage.thumbUrl = this.thumbUrl;
            searchImage.width = this.width;
            searchImage.height = this.height;
            searchImage.size = this.size;
            searchImage.type = this.type;
            searchImage.date = this.date;
            searchImage.caption = this.caption;
            searchImage.document = this.document;
            searchImage.photo = this.photo;
            searchImage.photoSize = this.photoSize;
            searchImage.thumbPhotoSize = this.thumbPhotoSize;
            searchImage.inlineResult = this.inlineResult;
            searchImage.params = this.params;
            return searchImage;
        }

        public String getAttachName() {
            TLRPC.PhotoSize photoSize = this.photoSize;
            if (photoSize != null) {
                return FileLoader.getAttachFileName(photoSize);
            }
            TLRPC.Document document = this.document;
            if (document != null) {
                return FileLoader.getAttachFileName(document);
            }
            return Utilities.MD5(this.imageUrl) + "." + ImageLoader.getHttpUrlExtension(this.imageUrl, "jpg");
        }

        @Override // org.telegram.messenger.MediaController.MediaEditState
        public String getPath() {
            File httpFilePath;
            FileLoader fileLoader;
            TLObject tLObject;
            if (this.photoSize != null) {
                fileLoader = FileLoader.getInstance(UserConfig.selectedAccount);
                tLObject = this.photoSize;
            } else {
                if (this.document == null) {
                    httpFilePath = ImageLoader.getHttpFilePath(this.imageUrl, "jpg");
                    return httpFilePath.getAbsolutePath();
                }
                fileLoader = FileLoader.getInstance(UserConfig.selectedAccount);
                tLObject = this.document;
            }
            httpFilePath = fileLoader.getPathToAttach(tLObject, true);
            return httpFilePath.getAbsolutePath();
        }

        public String getPathToAttach() {
            FileLoader fileLoader;
            TLObject tLObject;
            if (this.photoSize != null) {
                fileLoader = FileLoader.getInstance(UserConfig.selectedAccount);
                tLObject = this.photoSize;
            } else {
                if (this.document == null) {
                    return this.imageUrl;
                }
                fileLoader = FileLoader.getInstance(UserConfig.selectedAccount);
                tLObject = this.document;
            }
            return fileLoader.getPathToAttach(tLObject, true).getAbsolutePath();
        }

        @Override // org.telegram.messenger.MediaController.MediaEditState
        public void reset() {
            super.reset();
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    private final class StopMediaObserverRunnable implements Runnable {
        public int currentObserverToken;

        private StopMediaObserverRunnable() {
            this.currentObserverToken = 0;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.currentObserverToken == MediaController.this.startObserverToken) {
                try {
                    if (MediaController.this.internalObserver != null) {
                        ApplicationLoader.applicationContext.getContentResolver().unregisterContentObserver(MediaController.this.internalObserver);
                        MediaController.this.internalObserver = null;
                    }
                } catch (Exception e) {
                    FileLog.e(e);
                }
                try {
                    if (MediaController.this.externalObserver != null) {
                        ApplicationLoader.applicationContext.getContentResolver().unregisterContentObserver(MediaController.this.externalObserver);
                        MediaController.this.externalObserver = null;
                    }
                } catch (Exception e2) {
                    FileLog.e(e2);
                }
            }
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static class VideoConvertMessage {
        public int currentAccount;
        public boolean foreground;
        public boolean foregroundConversion;
        public MessageObject messageObject;
        public VideoEditedInfo videoEditedInfo;

        public VideoConvertMessage(MessageObject messageObject, VideoEditedInfo videoEditedInfo, boolean z, boolean z2) {
            this.messageObject = messageObject;
            this.currentAccount = messageObject.currentAccount;
            this.videoEditedInfo = videoEditedInfo;
            this.foreground = z;
            this.foregroundConversion = z2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    static class VideoConvertRunnable implements Runnable {
        private VideoConvertMessage convertMessage;

        private VideoConvertRunnable(VideoConvertMessage videoConvertMessage) {
            this.convertMessage = videoConvertMessage;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$runConversion$0(VideoConvertMessage videoConvertMessage) throws InterruptedException {
            try {
                Thread thread = new Thread(new VideoConvertRunnable(videoConvertMessage), "VideoConvertRunnable");
                thread.start();
                thread.join();
            } catch (Exception e) {
                FileLog.e(e);
            }
        }

        public static void runConversion(final VideoConvertMessage videoConvertMessage) {
            new Thread(new Runnable() { // from class: org.telegram.messenger.MediaController$VideoConvertRunnable$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() throws InterruptedException {
                    MediaController.VideoConvertRunnable.lambda$runConversion$0(videoConvertMessage);
                }
            }).start();
        }

        @Override // java.lang.Runnable
        public void run() {
            MediaController.getInstance().convertVideo(this.convertMessage);
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public interface VideoConvertorListener {
        boolean checkConversionCanceled();

        void didWriteData(long j, float f);
    }

    static {
        int i = Build.VERSION.SDK_INT;
        projectionPhotos = new String[]{"_id", "bucket_id", "bucket_display_name", "_data", i > 28 ? "date_modified" : "datetaken", "orientation", "width", "height", "_size"};
        projectionVideo = new String[]{"_id", "bucket_id", "bucket_display_name", "_data", i > 28 ? "date_modified" : "datetaken", "duration", "width", "height", "_size"};
        cachedEncoderBitrates = new ConcurrentHashMap<>();
        allMediaAlbums = new ArrayList<>();
        allPhotoAlbums = new ArrayList<>();
    }

    public MediaController() {
        DispatchQueue dispatchQueue = new DispatchQueue("recordQueue");
        this.recordQueue = dispatchQueue;
        dispatchQueue.setPriority(10);
        DispatchQueue dispatchQueue2 = new DispatchQueue("fileEncodingQueue");
        this.fileEncodingQueue = dispatchQueue2;
        dispatchQueue2.setPriority(10);
        this.recordQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2();
            }
        });
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$3();
            }
        });
        this.fileBuffer = ByteBuffer.allocateDirect(1920);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda51
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$4();
            }
        });
        this.mediaProjections = new String[]{"_data", "_display_name", "bucket_display_name", Build.VERSION.SDK_INT > 28 ? "date_modified" : "datetaken", "title", "width", "height"};
        ContentResolver contentResolver = ApplicationLoader.applicationContext.getContentResolver();
        try {
            contentResolver.registerContentObserver(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, true, new GalleryObserverExternal());
        } catch (Exception e) {
            FileLog.e(e);
        }
        try {
            contentResolver.registerContentObserver(MediaStore.Images.Media.INTERNAL_CONTENT_URI, true, new GalleryObserverInternal());
        } catch (Exception e2) {
            FileLog.e(e2);
        }
        try {
            contentResolver.registerContentObserver(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, true, new GalleryObserverExternal());
        } catch (Exception e3) {
            FileLog.e(e3);
        }
        try {
            contentResolver.registerContentObserver(MediaStore.Video.Media.INTERNAL_CONTENT_URI, true, new GalleryObserverInternal());
        } catch (Exception e4) {
            FileLog.e(e4);
        }
    }

    private static void broadcastNewPhotos(final int i, final ArrayList<AlbumEntry> arrayList, final ArrayList<AlbumEntry> arrayList2, final Integer num, final AlbumEntry albumEntry, final AlbumEntry albumEntry2, final AlbumEntry albumEntry3, int i2) {
        Runnable runnable = broadcastPhotosRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.lambda$broadcastNewPhotos$53(i, arrayList, arrayList2, num, albumEntry, albumEntry2, albumEntry3);
            }
        };
        broadcastPhotosRunnable = runnable2;
        AndroidUtilities.runOnUIThread(runnable2, i2);
    }

    private void buildShuffledPlayList() {
        if (this.playlist.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.playlist);
        this.shuffledPlaylist.clear();
        MessageObject messageObject = this.playlist.get(this.currentPlaylistNum);
        arrayList.remove(this.currentPlaylistNum);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            int iNextInt = Utilities.random.nextInt(arrayList.size());
            this.shuffledPlaylist.add((MessageObject) arrayList.get(iNextInt));
            arrayList.remove(iNextInt);
        }
        this.shuffledPlaylist.add(messageObject);
        this.currentPlaylistNum = this.shuffledPlaylist.size() - 1;
    }

    private boolean canStartMusicPlayerService() {
        MessageObject messageObject = this.playingMessageObject;
        return (messageObject == null || (!messageObject.isMusic() && !this.playingMessageObject.isVoice() && !this.playingMessageObject.isRoundVideo()) || this.playingMessageObject.isVoiceOnce() || this.playingMessageObject.isRoundOnce()) ? false : true;
    }

    private void checkAudioFocus(MessageObject messageObject) {
        int iRequestAudioFocus;
        int i = (messageObject.isVoice() || messageObject.isRoundVideo()) ? this.useFrontSpeaker ? 3 : 2 : 1;
        if (this.hasAudioFocus != i) {
            this.hasAudioFocus = i;
            if (i == 3) {
                iRequestAudioFocus = NotificationsController.audioManager.requestAudioFocus(this, 0, 1);
            } else {
                iRequestAudioFocus = NotificationsController.audioManager.requestAudioFocus(this, 3, (i != 2 || SharedConfig.pauseMusicOnMedia) ? 1 : 3);
            }
            if (iRequestAudioFocus == 1) {
                this.audioFocus = 2;
            }
        }
    }

    private void checkForegroundConvertMessage(boolean z) {
        this.currentForegroundConvertingVideo = !this.foregroundConvertingMessages.isEmpty() ? this.foregroundConvertingMessages.get(0) : null;
        if (this.currentForegroundConvertingVideo != null || z) {
            VideoEncodingService.start(z);
        }
    }

    public static void checkGallery() {
        AlbumEntry albumEntry;
        if (Build.VERSION.SDK_INT < 24 || (albumEntry = allPhotosAlbumEntry) == null) {
            return;
        }
        final int size = albumEntry.photos.size();
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.lambda$checkGallery$1(size);
            }
        }, 2000L);
    }

    private void checkIsNextMusicFileDownloaded(int i) {
        int size;
        if (DownloadController.getInstance(i).canDownloadNextTrack()) {
            ArrayList<MessageObject> arrayList = SharedConfig.shuffleMusic ? this.shuffledPlaylist : this.playlist;
            if (arrayList != null) {
                if (arrayList.size() < 2) {
                    return;
                }
                if (SharedConfig.playOrderReversed) {
                    size = this.currentPlaylistNum + 1;
                    if (size >= arrayList.size()) {
                        size = 0;
                    }
                } else {
                    size = this.currentPlaylistNum - 1;
                    if (size < 0) {
                        size = arrayList.size() - 1;
                    }
                }
                if (size < 0 || size >= arrayList.size()) {
                    return;
                }
                MessageObject messageObject = arrayList.get(size);
                File file = null;
                if (!TextUtils.isEmpty(messageObject.messageOwner.attachPath)) {
                    File file2 = new File(messageObject.messageOwner.attachPath);
                    if (file2.exists()) {
                        file = file2;
                    }
                }
                File pathToMessage = file != null ? file : FileLoader.getInstance(i).getPathToMessage(messageObject.messageOwner);
                pathToMessage.exists();
                if (pathToMessage == file || pathToMessage.exists() || !messageObject.isMusic()) {
                    return;
                }
                FileLoader.getInstance(i).loadFile(messageObject.getDocument(), messageObject, 0, messageObject.shouldEncryptPhotoOrVideo() ? 2 : 0);
            }
        }
    }

    private void checkIsNextVoiceFileDownloaded(int i) {
        ArrayList<MessageObject> arrayList = this.voiceMessagesPlaylist;
        if (arrayList != null) {
            if (arrayList.size() < 2) {
                return;
            }
            MessageObject messageObject = this.voiceMessagesPlaylist.get(1);
            String str = messageObject.messageOwner.attachPath;
            File file = null;
            if (str != null && str.length() > 0) {
                File file2 = new File(messageObject.messageOwner.attachPath);
                if (file2.exists()) {
                    file = file2;
                }
            }
            File pathToMessage = file != null ? file : FileLoader.getInstance(i).getPathToMessage(messageObject.messageOwner);
            pathToMessage.exists();
            if (pathToMessage == file || pathToMessage.exists()) {
                return;
            }
            FileLoader.getInstance(i).loadFile(messageObject.getDocument(), messageObject, 0, messageObject.shouldEncryptPhotoOrVideo() ? 2 : 0);
        }
    }

    private void checkScreenshots(ArrayList<Long> arrayList) {
        if (arrayList == null || arrayList.isEmpty() || this.lastChatEnterTime == 0) {
            return;
        }
        if (this.lastUser != null || (this.lastSecretChat instanceof TLRPC.TL_encryptedChat)) {
            boolean z = false;
            for (int i = 0; i < arrayList.size(); i++) {
                Long l = arrayList.get(i);
                if ((this.lastMediaCheckTime == 0 || l.longValue() > this.lastMediaCheckTime) && l.longValue() >= this.lastChatEnterTime && (this.lastChatLeaveTime == 0 || l.longValue() <= this.lastChatLeaveTime + 2000)) {
                    this.lastMediaCheckTime = Math.max(this.lastMediaCheckTime, l.longValue());
                    z = true;
                }
            }
            if (z) {
                if (this.lastSecretChat != null) {
                    SecretChatHelper.getInstance(this.lastChatAccount).sendScreenshotMessage(this.lastSecretChat, this.lastChatVisibleMessages, null);
                } else {
                    SendMessagesHelper.getInstance(this.lastChatAccount).sendScreenshotMessage(this.lastUser, this.lastMessageId, null);
                }
            }
        }
    }

    private void clearMusicPlaylistState() {
        this.savedMusicPlaylistState = null;
    }

    private void clearPlaylist() {
        this.playlist.clear();
        this.playlistMap.clear();
        this.shuffledPlaylist.clear();
        this.playlistClassGuid = 0;
        boolean[] zArr = this.playlistEndReached;
        zArr[1] = false;
        zArr[0] = false;
        this.playlistMergeDialogId = 0L;
        int[] iArr = this.playlistMaxId;
        iArr[1] = Integer.MAX_VALUE;
        iArr[0] = Integer.MAX_VALUE;
        this.loadingPlaylist = false;
        this.playlistGlobalSearchParams = null;
        this.savedMusicPlaylistState = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0200 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0206  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean convertVideo(final VideoConvertMessage videoConvertMessage) {
        File file;
        int i;
        int i2;
        int i3;
        long j;
        long j2;
        int i4;
        int i5;
        int i6;
        boolean z;
        MessageObject messageObject = videoConvertMessage.messageObject;
        final VideoEditedInfo videoEditedInfo = videoConvertMessage.videoEditedInfo;
        if (messageObject == null || videoEditedInfo == null) {
            return false;
        }
        String str = videoEditedInfo.originalPath;
        long j3 = videoEditedInfo.startTime;
        long j4 = videoEditedInfo.avatarStartTime;
        long j5 = videoEditedInfo.endTime;
        int i7 = videoEditedInfo.resultWidth;
        int i8 = videoEditedInfo.resultHeight;
        int i9 = videoEditedInfo.rotationValue;
        int i10 = videoEditedInfo.originalWidth;
        int i11 = videoEditedInfo.originalHeight;
        int i12 = videoEditedInfo.framerate;
        int i13 = videoEditedInfo.bitrate;
        int i14 = videoEditedInfo.originalBitrate;
        boolean z2 = DialogObject.isEncryptedDialog(messageObject.getDialogId()) || videoEditedInfo.forceFragmenting;
        File file2 = new File(messageObject.messageOwner.attachPath);
        if (file2.exists()) {
            file2.delete();
        }
        if (BuildVars.LOGS_ENABLED) {
            StringBuilder sb = new StringBuilder();
            file = file2;
            sb.append("begin convert ");
            sb.append(str);
            sb.append(" startTime = ");
            sb.append(j3);
            sb.append(" avatarStartTime = ");
            sb.append(j4);
            sb.append(" endTime ");
            sb.append(j5);
            sb.append(" rWidth = ");
            sb.append(i7);
            sb.append(" rHeight = ");
            sb.append(i8);
            sb.append(" rotation = ");
            sb.append(i9);
            sb.append(" oWidth = ");
            sb.append(i10);
            sb.append(" oHeight = ");
            sb.append(i11);
            sb.append(" framerate = ");
            sb.append(i12);
            sb.append(" bitrate = ");
            sb.append(i13);
            sb.append(" originalBitrate = ");
            i = i14;
            sb.append(i);
            FileLog.d(sb.toString());
        } else {
            file = file2;
            i = i14;
        }
        String str2 = str == null ? "" : str;
        if (j3 > 0 && j5 > 0) {
            i2 = i7;
            j2 = j5 - j3;
        } else {
            if (j5 <= 0) {
                if (j3 > 0) {
                    i2 = i7;
                    i3 = i8;
                    j = videoEditedInfo.originalDuration - j3;
                } else {
                    i2 = i7;
                    i3 = i8;
                    j = videoEditedInfo.originalDuration;
                }
                j2 = j;
                if (i12 != 0) {
                    i12 = 25;
                } else if (i12 > 59) {
                    i12 = 59;
                }
                if (i9 != 90 || i9 == 270) {
                    i4 = i2;
                    i2 = i3;
                } else {
                    i4 = i3;
                }
                if (videoEditedInfo.shouldLimitFps && i12 > 40) {
                    i5 = i12;
                    if (Math.min(i4, i2) <= 480) {
                        i6 = 30;
                    }
                    boolean z3 = (j4 == -1 && videoEditedInfo.cropState == null && videoEditedInfo.mediaEntities == null && videoEditedInfo.paintPath == null && videoEditedInfo.filterState == null && i2 == i10 && i4 == i11 && i9 == 0 && !videoEditedInfo.roundVideo && j3 == -1 && videoEditedInfo.mixedSoundInfos.isEmpty()) ? false : true;
                    SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("videoconvert", 0);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    final File file3 = file;
                    VideoConvertorListener videoConvertorListener = new VideoConvertorListener() { // from class: org.telegram.messenger.MediaController.18
                        private long lastAvailableSize = 0;

                        @Override // org.telegram.messenger.MediaController.VideoConvertorListener
                        public boolean checkConversionCanceled() {
                            return videoEditedInfo.canceled;
                        }

                        @Override // org.telegram.messenger.MediaController.VideoConvertorListener
                        public void didWriteData(long j6, float f) {
                            if (videoEditedInfo.canceled) {
                                return;
                            }
                            if (j6 < 0) {
                                j6 = file3.length();
                            }
                            long j7 = j6;
                            if (videoEditedInfo.needUpdateProgress || this.lastAvailableSize != j7) {
                                this.lastAvailableSize = j7;
                                MediaController.this.didWriteData(videoConvertMessage, file3, false, 0L, j7, false, f);
                            }
                        }
                    };
                    videoEditedInfo.videoConvertFirstWrite = true;
                    MediaCodecVideoConvertor mediaCodecVideoConvertor = new MediaCodecVideoConvertor();
                    MediaCodecVideoConvertor.ConvertVideoParams convertVideoParamsOf = MediaCodecVideoConvertor.ConvertVideoParams.of(str2, file3, i9, z2, i10, i11, i2, i4, i6, i13, i, j3, j5, j4, z3, j2, videoConvertorListener, videoEditedInfo);
                    convertVideoParamsOf.soundInfos.addAll(videoEditedInfo.mixedSoundInfos);
                    boolean zConvertVideo = mediaCodecVideoConvertor.convertVideo(convertVideoParamsOf);
                    z = videoEditedInfo.canceled;
                    if (!z) {
                        synchronized (this.videoConvertSync) {
                            z = videoEditedInfo.canceled;
                        }
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.d("time=" + (System.currentTimeMillis() - jCurrentTimeMillis) + " canceled=" + z);
                    }
                    sharedPreferences.edit().putBoolean("isPreviousOk", true).apply();
                    didWriteData(videoConvertMessage, file3, true, mediaCodecVideoConvertor.getLastFrameTimestamp(), file3.length(), zConvertVideo || z, VOLUME_NORMAL);
                    return true;
                }
                i5 = i12;
                i6 = i5;
                if (j4 == -1) {
                }
                SharedPreferences sharedPreferences2 = ApplicationLoader.applicationContext.getSharedPreferences("videoconvert", 0);
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                final File file32 = file;
                VideoConvertorListener videoConvertorListener2 = new VideoConvertorListener() { // from class: org.telegram.messenger.MediaController.18
                    private long lastAvailableSize = 0;

                    @Override // org.telegram.messenger.MediaController.VideoConvertorListener
                    public boolean checkConversionCanceled() {
                        return videoEditedInfo.canceled;
                    }

                    @Override // org.telegram.messenger.MediaController.VideoConvertorListener
                    public void didWriteData(long j6, float f) {
                        if (videoEditedInfo.canceled) {
                            return;
                        }
                        if (j6 < 0) {
                            j6 = file32.length();
                        }
                        long j7 = j6;
                        if (videoEditedInfo.needUpdateProgress || this.lastAvailableSize != j7) {
                            this.lastAvailableSize = j7;
                            MediaController.this.didWriteData(videoConvertMessage, file32, false, 0L, j7, false, f);
                        }
                    }
                };
                videoEditedInfo.videoConvertFirstWrite = true;
                MediaCodecVideoConvertor mediaCodecVideoConvertor2 = new MediaCodecVideoConvertor();
                MediaCodecVideoConvertor.ConvertVideoParams convertVideoParamsOf2 = MediaCodecVideoConvertor.ConvertVideoParams.of(str2, file32, i9, z2, i10, i11, i2, i4, i6, i13, i, j3, j5, j4, z3, j2, videoConvertorListener2, videoEditedInfo);
                convertVideoParamsOf2.soundInfos.addAll(videoEditedInfo.mixedSoundInfos);
                boolean zConvertVideo2 = mediaCodecVideoConvertor2.convertVideo(convertVideoParamsOf2);
                z = videoEditedInfo.canceled;
                if (!z) {
                }
                if (BuildVars.LOGS_ENABLED) {
                }
                sharedPreferences2.edit().putBoolean("isPreviousOk", true).apply();
                didWriteData(videoConvertMessage, file32, true, mediaCodecVideoConvertor2.getLastFrameTimestamp(), file32.length(), zConvertVideo2 || z, VOLUME_NORMAL);
                return true;
            }
            j2 = j5;
            i2 = i7;
        }
        i3 = i8;
        if (i12 != 0) {
        }
        if (i9 != 90) {
            i4 = i2;
            i2 = i3;
        }
        if (videoEditedInfo.shouldLimitFps) {
            i5 = i12;
            i6 = i5;
        }
        if (j4 == -1) {
        }
        SharedPreferences sharedPreferences22 = ApplicationLoader.applicationContext.getSharedPreferences("videoconvert", 0);
        long jCurrentTimeMillis22 = System.currentTimeMillis();
        final File file322 = file;
        VideoConvertorListener videoConvertorListener22 = new VideoConvertorListener() { // from class: org.telegram.messenger.MediaController.18
            private long lastAvailableSize = 0;

            @Override // org.telegram.messenger.MediaController.VideoConvertorListener
            public boolean checkConversionCanceled() {
                return videoEditedInfo.canceled;
            }

            @Override // org.telegram.messenger.MediaController.VideoConvertorListener
            public void didWriteData(long j6, float f) {
                if (videoEditedInfo.canceled) {
                    return;
                }
                if (j6 < 0) {
                    j6 = file322.length();
                }
                long j7 = j6;
                if (videoEditedInfo.needUpdateProgress || this.lastAvailableSize != j7) {
                    this.lastAvailableSize = j7;
                    MediaController.this.didWriteData(videoConvertMessage, file322, false, 0L, j7, false, f);
                }
            }
        };
        videoEditedInfo.videoConvertFirstWrite = true;
        MediaCodecVideoConvertor mediaCodecVideoConvertor22 = new MediaCodecVideoConvertor();
        MediaCodecVideoConvertor.ConvertVideoParams convertVideoParamsOf22 = MediaCodecVideoConvertor.ConvertVideoParams.of(str2, file322, i9, z2, i10, i11, i2, i4, i6, i13, i, j3, j5, j4, z3, j2, videoConvertorListener22, videoEditedInfo);
        convertVideoParamsOf22.soundInfos.addAll(videoEditedInfo.mixedSoundInfos);
        boolean zConvertVideo22 = mediaCodecVideoConvertor22.convertVideo(convertVideoParamsOf22);
        z = videoEditedInfo.canceled;
        if (!z) {
        }
        if (BuildVars.LOGS_ENABLED) {
        }
        sharedPreferences22.edit().putBoolean("isPreviousOk", true).apply();
        didWriteData(videoConvertMessage, file322, true, mediaCodecVideoConvertor22.getLastFrameTimestamp(), file322.length(), zConvertVideo22 || z, VOLUME_NORMAL);
        return true;
    }

    public static String copyFileToCache(Uri uri, String str) {
        return copyFileToCache(uri, str, -1L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x0151, code lost:
    
        r1 = r6.getAbsolutePath();
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0155, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0159, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x015a, code lost:
    
        org.telegram.messenger.FileLog.e(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x01ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x018e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x01b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0183 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:185:? A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String copyFileToCache(Uri uri, String str, long j) throws Throwable {
        File sharingDirectory;
        FileOutputStream fileOutputStream;
        InputStream inputStreamOpenInputStream;
        Throwable th;
        String strFixFileName;
        File file;
        int i;
        String absolutePath;
        int i2 = 0;
        InputStream inputStream = null;
        try {
            strFixFileName = FileLoader.fixFileName(getFileName(uri));
            if (strFixFileName == null) {
                int lastLocalId = SharedConfig.getLastLocalId();
                SharedConfig.saveConfig();
                strFixFileName = String.format(Locale.US, "%d.%s", Integer.valueOf(lastLocalId), str);
            }
            sharingDirectory = AndroidUtilities.getSharingDirectory();
        } catch (Exception e) {
            e = e;
            inputStreamOpenInputStream = null;
            sharingDirectory = null;
        } catch (Throwable th2) {
            th = th2;
            sharingDirectory = null;
            fileOutputStream = null;
        }
        try {
            sharingDirectory.mkdirs();
            if (AndroidUtilities.isInternalUri(Uri.fromFile(sharingDirectory))) {
                if (j > 0 && 0 > j) {
                    sharingDirectory.delete();
                }
                return null;
            }
            int i3 = 0;
            do {
                File sharingDirectory2 = AndroidUtilities.getSharingDirectory();
                if (i3 == 0) {
                    file = new File(sharingDirectory2, strFixFileName);
                } else {
                    int iLastIndexOf = strFixFileName.lastIndexOf(".");
                    if (iLastIndexOf > 0) {
                        sharingDirectory = new File(sharingDirectory2, strFixFileName.substring(0, iLastIndexOf) + " (" + i3 + ")" + strFixFileName.substring(iLastIndexOf));
                        i3++;
                    } else {
                        file = new File(sharingDirectory2, strFixFileName + " (" + i3 + ")");
                    }
                }
                sharingDirectory = file;
                i3++;
            } while (sharingDirectory.exists());
            inputStreamOpenInputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
            try {
                if (inputStreamOpenInputStream instanceof FileInputStream) {
                    try {
                        if (AndroidUtilities.isInternalUri(((Integer) FileDescriptor.class.getDeclaredMethod("getInt$", null).invoke(((FileInputStream) inputStreamOpenInputStream).getFD(), null)).intValue())) {
                            if (inputStreamOpenInputStream != null) {
                                try {
                                    inputStreamOpenInputStream.close();
                                } catch (Exception e2) {
                                    FileLog.e(e2);
                                }
                            }
                            if (j > 0 && 0 > j) {
                                sharingDirectory.delete();
                            }
                            return null;
                        }
                    } catch (Throwable th3) {
                        FileLog.e(th3);
                    }
                }
                fileOutputStream = new FileOutputStream(sharingDirectory);
                try {
                    byte[] bArr = new byte[20480];
                    i = 0;
                    while (true) {
                        try {
                            int i4 = inputStreamOpenInputStream.read(bArr);
                            if (i4 == -1) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, i4);
                            i += i4;
                            if (j > 0) {
                                long j2 = i;
                                if (j2 > j) {
                                    try {
                                        inputStreamOpenInputStream.close();
                                    } catch (Exception e3) {
                                        FileLog.e(e3);
                                    }
                                    try {
                                        fileOutputStream.close();
                                    } catch (Exception e4) {
                                        FileLog.e(e4);
                                    }
                                    if (j > 0 && j2 > j) {
                                        sharingDirectory.delete();
                                    }
                                    return null;
                                }
                            }
                        } catch (Exception e5) {
                            e = e5;
                            i2 = i;
                            try {
                                FileLog.e(e);
                                if (inputStreamOpenInputStream != null) {
                                    try {
                                        inputStreamOpenInputStream.close();
                                    } catch (Exception e6) {
                                        FileLog.e(e6);
                                    }
                                }
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (Exception e7) {
                                        FileLog.e(e7);
                                    }
                                }
                                if (j > 0 && i2 > j) {
                                    sharingDirectory.delete();
                                }
                                return null;
                            } catch (Throwable th4) {
                                th = th4;
                                inputStream = inputStreamOpenInputStream;
                                inputStreamOpenInputStream = inputStream;
                                int i5 = i2;
                                th = th;
                                if (inputStreamOpenInputStream != null) {
                                    try {
                                        inputStreamOpenInputStream.close();
                                    } catch (Exception e8) {
                                        FileLog.e(e8);
                                    }
                                }
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (Exception e9) {
                                        FileLog.e(e9);
                                    }
                                }
                                if (j > 0 || i5 <= j) {
                                    throw th;
                                }
                                sharingDirectory.delete();
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            i2 = i;
                            int i52 = i2;
                            th = th;
                            if (inputStreamOpenInputStream != null) {
                            }
                            if (fileOutputStream != null) {
                            }
                            if (j > 0) {
                                throw th;
                            }
                            throw th;
                        }
                    }
                } catch (Exception e10) {
                    e = e10;
                } catch (Throwable th6) {
                    th = th6;
                }
            } catch (Exception e11) {
                e = e11;
                fileOutputStream = null;
                FileLog.e(e);
                if (inputStreamOpenInputStream != null) {
                }
                if (fileOutputStream != null) {
                }
                if (j > 0) {
                    sharingDirectory.delete();
                }
                return null;
            } catch (Throwable th7) {
                th = th7;
                fileOutputStream = null;
                inputStream = inputStreamOpenInputStream;
                inputStreamOpenInputStream = inputStream;
                int i522 = i2;
                th = th;
                if (inputStreamOpenInputStream != null) {
                }
                if (fileOutputStream != null) {
                }
                if (j > 0) {
                }
            }
            if (j > 0 && i > j) {
                sharingDirectory.delete();
            }
            return absolutePath;
            try {
                fileOutputStream.close();
            } catch (Exception e12) {
                FileLog.e(e12);
            }
            if (j > 0) {
                sharingDirectory.delete();
            }
            return absolutePath;
        } catch (Exception e13) {
            e = e13;
            inputStreamOpenInputStream = null;
        } catch (Throwable th8) {
            th = th8;
            fileOutputStream = null;
            inputStreamOpenInputStream = inputStream;
            int i5222 = i2;
            th = th;
            if (inputStreamOpenInputStream != null) {
            }
            if (fileOutputStream != null) {
            }
            if (j > 0) {
            }
        }
    }

    public static File createFileInCache(String str, String str2) {
        File file;
        try {
            File sharingDirectory = AndroidUtilities.getSharingDirectory();
            sharingDirectory.mkdirs();
            if (AndroidUtilities.isInternalUri(Uri.fromFile(sharingDirectory))) {
                return null;
            }
            int i = 0;
            do {
                File sharingDirectory2 = AndroidUtilities.getSharingDirectory();
                if (i == 0) {
                    file = new File(sharingDirectory2, str);
                } else {
                    int iLastIndexOf = str.lastIndexOf(".");
                    if (iLastIndexOf > 0) {
                        file = new File(sharingDirectory2, str.substring(0, iLastIndexOf) + " (" + i + ")" + str.substring(iLastIndexOf));
                    } else {
                        file = new File(sharingDirectory2, str + " (" + i + ")");
                    }
                }
                i++;
            } while (file.exists());
            return file;
        } catch (Exception e) {
            FileLog.e(e);
            return null;
        }
    }

    public static native boolean cropOpusFile(String str, String str2, long j, long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public void didWriteData(final VideoConvertMessage videoConvertMessage, final File file, final boolean z, final long j, final long j2, final boolean z2, final float f) {
        VideoEditedInfo videoEditedInfo = videoConvertMessage.videoEditedInfo;
        final boolean z3 = videoEditedInfo.videoConvertFirstWrite;
        if (z3) {
            videoEditedInfo.videoConvertFirstWrite = false;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$didWriteData$54(z2, z, videoConvertMessage, file, f, j, z3, j2);
            }
        });
    }

    public static int extractRealEncoderBitrate(int i, int i2, int i3, boolean z) {
        MediaCodec mediaCodecCreateEncoderByType;
        String str = i + "" + i2 + "" + i3;
        Integer num = cachedEncoderBitrates.get(str);
        if (num != null) {
            return num.intValue();
        }
        if (z) {
            try {
                mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType("video/hevc");
            } catch (Exception unused) {
            }
        } else {
            mediaCodecCreateEncoderByType = null;
        }
        if (mediaCodecCreateEncoderByType == null) {
            try {
                mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType(VIDEO_MIME_TYPE);
            } catch (Exception unused2) {
                return i3;
            }
        }
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(VIDEO_MIME_TYPE, i, i2);
        mediaFormatCreateVideoFormat.setInteger("color-format", 2130708361);
        mediaFormatCreateVideoFormat.setInteger("max-bitrate", i3);
        mediaFormatCreateVideoFormat.setInteger("bitrate", i3);
        mediaFormatCreateVideoFormat.setInteger("frame-rate", 30);
        mediaFormatCreateVideoFormat.setInteger("i-frame-interval", 1);
        mediaCodecCreateEncoderByType.configure(mediaFormatCreateVideoFormat, (Surface) null, (MediaCrypto) null, 1);
        int integer = mediaCodecCreateEncoderByType.getOutputFormat().getInteger("bitrate");
        cachedEncoderBitrates.put(str, Integer.valueOf(integer));
        mediaCodecCreateEncoderByType.release();
        return integer;
    }

    public static int findTrack(MediaExtractor mediaExtractor, boolean z) {
        int trackCount = mediaExtractor.getTrackCount();
        for (int i = 0; i < trackCount; i++) {
            String string = mediaExtractor.getTrackFormat(i).getString("mime");
            if (z) {
                if (string.startsWith("audio/")) {
                    return i;
                }
            } else if (string.startsWith("video/")) {
                return i;
            }
        }
        return -5;
    }

    private boolean forbidRaiseToListen() {
        try {
            if (Build.VERSION.SDK_INT < 23) {
                return NotificationsController.audioManager.isWiredHeadsetOn() || NotificationsController.audioManager.isBluetoothA2dpOn() || NotificationsController.audioManager.isBluetoothScoOn();
            }
            for (AudioDeviceInfo audioDeviceInfo : NotificationsController.audioManager.getDevices(2)) {
                int type = audioDeviceInfo.getType();
                if ((type == 8 || type == 7 || type == 26 || type == 27 || type == 4 || type == 3) && audioDeviceInfo.isSink()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            FileLog.e(e);
            return false;
        }
    }

    public static String getFileName(Uri uri) {
        if (uri == null) {
            return "";
        }
        try {
            String string = null;
            if (uri.getScheme().equals(RemoteMessageConst.Notification.CONTENT)) {
                try {
                    Cursor cursorQuery = ApplicationLoader.applicationContext.getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
                    try {
                        if (cursorQuery.moveToFirst()) {
                            string = cursorQuery.getString(cursorQuery.getColumnIndex("_display_name"));
                        }
                        cursorQuery.close();
                    } finally {
                    }
                } catch (Exception e) {
                    FileLog.e(e);
                }
            }
            if (string != null) {
                return string;
            }
            String path = uri.getPath();
            int iLastIndexOf = path.lastIndexOf(47);
            return iLastIndexOf != -1 ? path.substring(iLastIndexOf + 1) : path;
        } catch (Exception e2) {
            FileLog.e(e2);
            return "";
        }
    }

    public static MediaController getInstance() {
        MediaController mediaController = Instance;
        if (mediaController == null) {
            synchronized (MediaController.class) {
                try {
                    mediaController = Instance;
                    if (mediaController == null) {
                        mediaController = new MediaController();
                        Instance = mediaController;
                    }
                } finally {
                }
            }
        }
        return mediaController;
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x00c4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String getStickerExt(Uri uri) throws Throwable {
        InputStream fileInputStream;
        InputStream inputStream = null;
        try {
            fileInputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
        } catch (Exception unused) {
            fileInputStream = null;
        } catch (Throwable th) {
            th = th;
            if (inputStream != null) {
            }
            throw th;
        }
        if (fileInputStream == null) {
            try {
                try {
                    File file = new File(uri.getPath());
                    if (file.exists()) {
                        fileInputStream = new FileInputStream(file);
                    }
                } catch (Exception e) {
                    FileLog.e(e);
                    if (fileInputStream != null) {
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                inputStream = fileInputStream;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception e2) {
                        FileLog.e(e2);
                    }
                }
                throw th;
            }
        }
        byte[] bArr = new byte[12];
        if (fileInputStream.read(bArr, 0, 12) == 12) {
            byte b = bArr[0];
            if (b == -119 && bArr[1] == 80 && bArr[2] == 78 && bArr[3] == 71 && bArr[4] == 13 && bArr[5] == 10 && bArr[6] == 26 && bArr[7] == 10) {
                try {
                    fileInputStream.close();
                } catch (Exception e3) {
                    FileLog.e(e3);
                }
                return "png";
            }
            if (b == 31 && bArr[1] == -117) {
                try {
                    fileInputStream.close();
                } catch (Exception e4) {
                    FileLog.e(e4);
                }
                return "tgs";
            }
            String lowerCase = new String(bArr).toLowerCase();
            if (lowerCase.startsWith("riff")) {
                if (lowerCase.endsWith("webp")) {
                    try {
                        fileInputStream.close();
                    } catch (Exception e5) {
                        FileLog.e(e5);
                    }
                    return "webp";
                }
            }
        }
        try {
            fileInputStream.close();
        } catch (Exception e6) {
            FileLog.e(e6);
        }
        return null;
    }

    public static int getVideoBitrate(String str) {
        int i;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever.setDataSource(str);
            i = Integer.parseInt(mediaMetadataRetriever.extractMetadata(20));
        } catch (Exception e) {
            FileLog.e(e);
            i = 0;
        }
        try {
            mediaMetadataRetriever.release();
        } catch (Throwable th) {
            FileLog.e(th);
        }
        return i;
    }

    private static int getVideoBitrateWithFactor(float f) {
        return (int) (f * 2000.0f * 1000.0f * 1.13f);
    }

    public static native byte[] getWaveform(String str);

    public static boolean isGif(Uri uri) throws IOException {
        InputStream inputStreamOpenInputStream = null;
        try {
            try {
                inputStreamOpenInputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
                byte[] bArr = new byte[3];
                if (inputStreamOpenInputStream.read(bArr, 0, 3) == 3) {
                    if (new String(bArr).equalsIgnoreCase("gif")) {
                        try {
                            inputStreamOpenInputStream.close();
                            return true;
                        } catch (Exception e) {
                            FileLog.e(e);
                            return true;
                        }
                    }
                }
            } catch (Exception e2) {
                FileLog.e(e2);
                if (inputStreamOpenInputStream != null) {
                }
            }
            try {
                inputStreamOpenInputStream.close();
            } catch (Exception e3) {
                FileLog.e(e3);
            }
            return false;
        } catch (Throwable th) {
            if (inputStreamOpenInputStream != null) {
                try {
                    inputStreamOpenInputStream.close();
                } catch (Exception e4) {
                    FileLog.e(e4);
                }
            }
            throw th;
        }
    }

    public static boolean isH264Video(String str) {
        MediaExtractor mediaExtractor = new MediaExtractor();
        boolean z = false;
        try {
            mediaExtractor.setDataSource(str);
            int iFindTrack = findTrack(mediaExtractor, false);
            if (iFindTrack >= 0) {
                if (mediaExtractor.getTrackFormat(iFindTrack).getString("mime").equals(VIDEO_MIME_TYPE)) {
                    z = true;
                }
            }
            return z;
        } catch (Exception e) {
            FileLog.e(e);
            return false;
        } finally {
            mediaExtractor.release();
        }
    }

    private boolean isNearToSensor(float f) {
        return f < 5.0f && f != this.proximitySensor.getMaximumRange();
    }

    public static native int isOpusFile(String str);

    private static boolean isRecognizedFormat(int i) {
        if (i == 39 || i == 2130706688) {
            return true;
        }
        switch (i) {
            case 19:
            case 20:
            case 21:
                return true;
            default:
                return false;
        }
    }

    private boolean isSamePlayingMessage(MessageObject messageObject) {
        MessageObject messageObject2 = this.playingMessageObject;
        if (messageObject2 != null && messageObject2.getDialogId() == messageObject.getDialogId() && this.playingMessageObject.getId() == messageObject.getId()) {
            return ((this.playingMessageObject.eventId > 0L ? 1 : (this.playingMessageObject.eventId == 0L ? 0 : -1)) == 0) == ((messageObject.eventId > 0L ? 1 : (messageObject.eventId == 0L ? 0 : -1)) == 0);
        }
        return false;
    }

    public static boolean isWebp(Uri uri) throws IOException {
        InputStream inputStreamOpenInputStream = null;
        try {
            try {
                inputStreamOpenInputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
                byte[] bArr = new byte[12];
                if (inputStreamOpenInputStream.read(bArr, 0, 12) == 12) {
                    String lowerCase = new String(bArr).toLowerCase();
                    if (lowerCase.startsWith("riff")) {
                        if (lowerCase.endsWith("webp")) {
                            try {
                                inputStreamOpenInputStream.close();
                                return true;
                            } catch (Exception e) {
                                FileLog.e(e);
                                return true;
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                FileLog.e(e2);
                if (inputStreamOpenInputStream != null) {
                }
            }
            try {
                inputStreamOpenInputStream.close();
            } catch (Exception e3) {
                FileLog.e(e3);
            }
            return false;
        } catch (Throwable th) {
            if (inputStreamOpenInputStream != null) {
                try {
                    inputStreamOpenInputStream.close();
                } catch (Exception e4) {
                    FileLog.e(e4);
                }
            }
            throw th;
        }
    }

    public static native boolean joinOpusFiles(String str, String str2, String str3);

    private File joinRecord() {
        return joinRecord(this.recordingPrevAudioFile, this.recordingAudioFile, this.recordingAudio);
    }

    private File joinRecord(File file, File file2, TLRPC.TL_document tL_document) {
        if (file != null && file2 != null) {
            File file3 = new File(FileLoader.getDirectory(1), System.currentTimeMillis() + "_" + FileLoader.getAttachFileName(tL_document)) { // from class: org.telegram.messenger.MediaController.14
                @Override // java.io.File
                public boolean delete() {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.e("delete voice file (joined)");
                    }
                    return super.delete();
                }
            };
            if (joinOpusFiles(file.getAbsolutePath(), file2.getAbsolutePath(), file3.getAbsolutePath())) {
                file2.delete();
                if (file2 == this.recordingAudioFile) {
                    this.recordingAudioFile = file3;
                }
                file2 = file3;
            }
            file.delete();
            if (file == this.recordingPrevAudioFile) {
                this.recordingPrevAudioFile = null;
            }
        }
        return file2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$broadcastNewPhotos$53(int i, ArrayList arrayList, ArrayList arrayList2, Integer num, AlbumEntry albumEntry, AlbumEntry albumEntry2, AlbumEntry albumEntry3) {
        if (PhotoViewer.getInstance().isVisible() && !forceBroadcastNewPhotos) {
            broadcastNewPhotos(i, arrayList, arrayList2, num, albumEntry, albumEntry2, albumEntry3, 1000);
            return;
        }
        allMediaAlbums = arrayList;
        allPhotoAlbums = arrayList2;
        broadcastPhotosRunnable = null;
        allPhotosAlbumEntry = albumEntry2;
        allMediaAlbumEntry = albumEntry;
        allVideosAlbumEntry = albumEntry3;
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.albumsDidLoad, Integer.valueOf(i), arrayList, arrayList2, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0030 A[Catch: all -> 0x0027, TRY_LEAVE, TryCatch #1 {all -> 0x0027, blocks: (B:3:0x000e, B:5:0x0014, B:7:0x001a, B:9:0x0020, B:16:0x0030, B:14:0x002a), top: B:79:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0060 A[PHI: r0 r9
      0x0060: PHI (r0v4 int) = (r0v3 int), (r0v13 int) binds: [B:31:0x005f, B:26:0x0054] A[DONT_GENERATE, DONT_INLINE]
      0x0060: PHI (r9v3 android.database.Cursor) = (r9v1 android.database.Cursor), (r9v14 android.database.Cursor) binds: [B:31:0x005f, B:26:0x0054] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006c A[Catch: all -> 0x007f, TryCatch #4 {all -> 0x007f, blocks: (B:34:0x0066, B:36:0x006c, B:38:0x0072, B:40:0x0078, B:47:0x0087, B:49:0x009b, B:51:0x00a1, B:45:0x0081), top: B:85:0x0066 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0081 A[Catch: all -> 0x007f, TryCatch #4 {all -> 0x007f, blocks: (B:34:0x0066, B:36:0x006c, B:38:0x0072, B:40:0x0078, B:47:0x0087, B:49:0x009b, B:51:0x00a1, B:45:0x0081), top: B:85:0x0066 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0087 A[Catch: all -> 0x007f, TryCatch #4 {all -> 0x007f, blocks: (B:34:0x0066, B:36:0x006c, B:38:0x0072, B:40:0x0078, B:47:0x0087, B:49:0x009b, B:51:0x00a1, B:45:0x0081), top: B:85:0x0066 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00b1 A[PHI: r9 r10
      0x00b1: PHI (r9v5 int) = (r9v4 int), (r9v7 int) binds: [B:57:0x00af, B:53:0x00a6] A[DONT_GENERATE, DONT_INLINE]
      0x00b1: PHI (r10v3 android.database.Cursor) = (r10v2 android.database.Cursor), (r10v4 android.database.Cursor) binds: [B:57:0x00af, B:53:0x00a6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:87:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void lambda$checkGallery$1(int i) {
        Cursor cursorQuery;
        Cursor cursorQuery2;
        int i2;
        int i3;
        Context context;
        Context context2;
        try {
            context2 = ApplicationLoader.applicationContext;
        } catch (Throwable th) {
            th = th;
            cursorQuery = null;
        }
        if (Build.VERSION.SDK_INT < 33 || (context2.checkSelfPermission("android.permission.READ_MEDIA_IMAGES") != 0 && context2.checkSelfPermission("android.permission.READ_MEDIA_VIDEO") != 0 && context2.checkSelfPermission("android.permission.READ_MEDIA_AUDIO") != 0)) {
            if (context2.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0) {
                cursorQuery = MediaStore.Images.Media.query(context2.getContentResolver(), MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"COUNT(_id)"}, null, null, null);
                if (cursorQuery != null) {
                    try {
                        i3 = cursorQuery.moveToNext() ? cursorQuery.getInt(0) : 0;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            FileLog.e(th);
                            if (cursorQuery2 != null) {
                                i3 = 0;
                                cursorQuery.close();
                                cursorQuery2 = cursorQuery;
                                i2 = i3;
                                context = ApplicationLoader.applicationContext;
                                if (Build.VERSION.SDK_INT < 33) {
                                    if (context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0) {
                                    }
                                    if (cursorQuery2 != null) {
                                    }
                                }
                                if (i != i2) {
                                }
                            } else {
                                cursorQuery2 = cursorQuery2;
                                i2 = 0;
                                context = ApplicationLoader.applicationContext;
                                if (Build.VERSION.SDK_INT < 33) {
                                }
                                if (i != i2) {
                                }
                            }
                        } finally {
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    cursorQuery2 = cursorQuery;
                    i2 = i3;
                }
            } else {
                cursorQuery = null;
            }
            if (cursorQuery != null) {
            }
            cursorQuery2 = cursorQuery;
            i2 = i3;
        }
        try {
            context = ApplicationLoader.applicationContext;
        } catch (Throwable th3) {
            try {
                FileLog.e(th3);
                if (cursorQuery2 != null) {
                }
            } finally {
            }
        }
        if (Build.VERSION.SDK_INT < 33 || (context.checkSelfPermission("android.permission.READ_MEDIA_IMAGES") != 0 && context.checkSelfPermission("android.permission.READ_MEDIA_VIDEO") != 0 && context.checkSelfPermission("android.permission.READ_MEDIA_AUDIO") != 0)) {
            if (context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0) {
                cursorQuery2 = MediaStore.Images.Media.query(context.getContentResolver(), MediaStore.Video.Media.EXTERNAL_CONTENT_URI, new String[]{"COUNT(_id)"}, null, null, null);
                if (cursorQuery2 != null && cursorQuery2.moveToNext()) {
                    i2 += cursorQuery2.getInt(0);
                }
            }
            if (cursorQuery2 != null) {
                cursorQuery2.close();
            }
        }
        if (i != i2) {
            Runnable runnable = refreshGalleryRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                refreshGalleryRunnable = null;
            }
            loadGalleryPhotosAlbums(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanupPlayer$10(VideoPlayer videoPlayer, ValueAnimator valueAnimator) {
        videoPlayer.setVolume((this.audioFocus != 1 ? VOLUME_NORMAL : VOLUME_DUCK) * ((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didWriteData$54(boolean z, boolean z2, VideoConvertMessage videoConvertMessage, File file, float f, long j, boolean z3, long j2) {
        if (z || z2) {
            boolean z4 = videoConvertMessage.videoEditedInfo.canceled;
            synchronized (this.videoConvertSync) {
                videoConvertMessage.videoEditedInfo.canceled = false;
            }
            this.videoConvertQueue.remove(videoConvertMessage);
            this.foregroundConvertingMessages.remove(videoConvertMessage);
            checkForegroundConvertMessage(z4 || z);
            startVideoConvertFromQueue();
        }
        if (z) {
            NotificationCenter.getInstance(videoConvertMessage.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.filePreparingFailed, videoConvertMessage.messageObject, file.toString(), Float.valueOf(f), Long.valueOf(j));
            return;
        }
        if (z3) {
            NotificationCenter.getInstance(videoConvertMessage.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.filePreparingStarted, videoConvertMessage.messageObject, file.toString(), Float.valueOf(f), Long.valueOf(j));
        }
        NotificationCenter.getInstance(videoConvertMessage.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileNewChunkAvailable, videoConvertMessage.messageObject, file.toString(), Long.valueOf(j2), Long.valueOf(z2 ? file.length() : 0L), Float.valueOf(f), Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$generateWaveform$38(String str, byte[] bArr, MessageObject messageObject) {
        MessageObject messageObjectRemove = this.generatingWaveform.remove(str);
        if (messageObjectRemove == null || bArr == null || messageObjectRemove.getDocument() == null) {
            return;
        }
        int i = 0;
        while (true) {
            if (i >= messageObjectRemove.getDocument().attributes.size()) {
                break;
            }
            TLRPC.DocumentAttribute documentAttribute = messageObjectRemove.getDocument().attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                documentAttribute.waveform = bArr;
                documentAttribute.flags |= 4;
                break;
            }
            i++;
        }
        TLRPC.TL_messages_messages tL_messages_messages = new TLRPC.TL_messages_messages();
        tL_messages_messages.messages.add(messageObjectRemove.messageOwner);
        MessagesStorage.getInstance(messageObjectRemove.currentAccount).putMessages((TLRPC.messages_Messages) tL_messages_messages, messageObjectRemove.getDialogId(), -1, 0, false, messageObject.scheduled ? 1 : 0, 0L);
        ArrayList arrayList = new ArrayList();
        arrayList.add(messageObjectRemove);
        NotificationCenter.getInstance(messageObjectRemove.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.replaceMessagesObjects, Long.valueOf(messageObjectRemove.getDialogId()), arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$generateWaveform$39(String str, final String str2, final MessageObject messageObject) {
        try {
            final byte[] waveform = getWaveform(str);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$generateWaveform$38(str2, waveform, messageObject);
                }
            });
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$loadGalleryPhotosAlbums$51(PhotoEntry photoEntry, PhotoEntry photoEntry2) {
        long j = photoEntry.dateTaken;
        long j2 = photoEntry2.dateTaken;
        if (j < j2) {
            return 1;
        }
        return j > j2 ? -1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(18:0|2|(3:312|3|4)|(3:314|5|6)|310|12|13|(5:344|33|(1:35)(1:36)|37|(31:350|39|40|334|41|42|316|43|44|298|45|46|(1:48)(1:49)|288|50|51|352|52|53|346|54|55|330|56|57|(7:60|304|61|(3:369|63|372)(15:368|64|(6:66|306|67|68|294|69)(1:77)|(5:286|79|80|354|81)(1:87)|290|88|89|356|90|(6:92|318|93|(1:104)(4:97|292|98|(1:100))|103|105)(1:108)|109|(2:111|(1:118)(1:117))|119|120|371)|370|326|58)|367|127|32|(2:338|150)|154)(3:148|(0)|154))(2:15|(8:324|17|(6:19|(2:24|(5:28|(0)|32|(0)|154))|31|32|(0)|154)|344|33|(0)(0)|37|(0)(0))(5:(0)|31|32|(0)|154))|308|169|(7:187|(1:189)(1:190)|191|(5:193|(1:195)(1:196)|197|(4:200|(3:363|202|366)(10:362|203|(7:205|206|296|207|(1:209)(1:210)|(1:212)|213)(1:217)|(4:340|219|332|220)(1:226)|336|227|(2:229|(2:239|242)(3:235|328|236))(1:243)|244|245|365)|364|198)|361)|186|(2:320|247)|251)(4:(0)|186|(0)|251)|252|262|(2:265|263)|360|266|267|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x036f, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0370, code lost:
    
        r38 = "_size";
        r33 = "height";
        r32 = "width";
        r31 = "orientation";
        r30 = "_data";
        r29 = "bucket_display_name";
        r28 = "bucket_id";
        r27 = "_id";
        r4 = r15;
        r7 = r18;
        r8 = r19;
        r5 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x03af, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x03cb A[Catch: all -> 0x03af, TryCatch #11 {all -> 0x03af, blocks: (B:169:0x039c, B:173:0x03a8, B:179:0x03b5, B:181:0x03bb, B:183:0x03c1, B:187:0x03cb, B:191:0x03e3, B:193:0x03f7, B:197:0x0418, B:198:0x0439, B:200:0x043f, B:203:0x044a, B:205:0x048a), top: B:308:0x039c }] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x03e1  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x03f7 A[Catch: all -> 0x03af, TryCatch #11 {all -> 0x03af, blocks: (B:169:0x039c, B:173:0x03a8, B:179:0x03b5, B:181:0x03bb, B:183:0x03c1, B:187:0x03cb, B:191:0x03e3, B:193:0x03f7, B:197:0x0418, B:198:0x0439, B:200:0x043f, B:203:0x044a, B:205:0x048a), top: B:308:0x039c }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a0 A[Catch: all -> 0x007b, TryCatch #19 {all -> 0x007b, blocks: (B:17:0x0074, B:24:0x00a0, B:26:0x00a6, B:28:0x00ac), top: B:324:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:265:0x054d A[LOOP:0: B:263:0x0547->B:265:0x054d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:320:0x0524 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0347 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:342:0x038f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:344:0x00d5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0538 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:350:0x00ff A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void lambda$loadGalleryPhotosAlbums$52(int i) {
        SparseArray sparseArray;
        String string;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        ArrayList arrayList;
        ArrayList arrayList2;
        SparseArray sparseArray2;
        String str9;
        Cursor cursorQuery;
        AlbumEntry albumEntry;
        AlbumEntry albumEntry2;
        Object objValueOf;
        AlbumEntry albumEntry3;
        Exception e;
        AlbumEntry albumEntry4;
        AlbumEntry albumEntry5;
        int i2;
        int i3;
        int i4;
        AlbumEntry albumEntry6;
        int i5;
        AlbumEntry albumEntry7;
        int i6;
        int i7;
        int i8;
        int i9;
        AlbumEntry albumEntry8;
        int i10;
        int i11;
        AlbumEntry albumEntry9;
        AlbumEntry albumEntry10;
        int i12;
        AlbumEntry albumEntry11;
        StringBuilder sb;
        String str10 = "_size";
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = arrayList3;
        SparseArray sparseArray3 = new SparseArray();
        SparseArray sparseArray4 = new SparseArray();
        AlbumEntry albumEntry12 = null;
        try {
            sb = new StringBuilder();
            sparseArray = sparseArray4;
        } catch (Exception e2) {
            e = e2;
            sparseArray = sparseArray4;
        }
        try {
            sb.append(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM).getAbsolutePath());
            sb.append("/Camera/");
            string = sb.toString();
        } catch (Exception e3) {
            e = e3;
            FileLog.e(e);
            string = null;
            Context context = ApplicationLoader.applicationContext;
            i6 = Build.VERSION.SDK_INT;
            ArrayList arrayList6 = arrayList4;
            if (i6 < 23) {
            }
            Context context2 = ApplicationLoader.applicationContext;
            i3 = Build.VERSION.SDK_INT;
            if (i3 >= 23) {
            }
            AlbumEntry albumEntry13 = albumEntry2;
            Integer num = objValueOf;
            while (i2 < arrayList2.size()) {
            }
            broadcastNewPhotos(i, arrayList2, arrayList, num, albumEntry13, albumEntry3, albumEntry5, 0);
        }
        Context context3 = ApplicationLoader.applicationContext;
        i6 = Build.VERSION.SDK_INT;
        ArrayList arrayList62 = arrayList4;
        if (i6 < 23) {
            try {
                ContentResolver contentResolver = context3.getContentResolver();
                Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                String[] strArr = projectionPhotos;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(i6 <= 28 ? "date_modified" : "datetaken");
                sb2.append(" DESC");
                cursorQuery = MediaStore.Images.Media.query(contentResolver, uri, strArr, null, null, sb2.toString());
                if (cursorQuery == null) {
                    try {
                        int columnIndex = cursorQuery.getColumnIndex("_id");
                        str8 = "_id";
                        try {
                            int columnIndex2 = cursorQuery.getColumnIndex("bucket_id");
                            str7 = "bucket_id";
                            try {
                                int columnIndex3 = cursorQuery.getColumnIndex("bucket_display_name");
                                str6 = "bucket_display_name";
                                try {
                                    int columnIndex4 = cursorQuery.getColumnIndex("_data");
                                    str5 = "_data";
                                    try {
                                        int columnIndex5 = cursorQuery.getColumnIndex(i6 > 28 ? "date_modified" : "datetaken");
                                        int columnIndex6 = cursorQuery.getColumnIndex("orientation");
                                        str4 = "orientation";
                                        try {
                                            int columnIndex7 = cursorQuery.getColumnIndex("width");
                                            str3 = "width";
                                            try {
                                                int columnIndex8 = cursorQuery.getColumnIndex("height");
                                                str2 = "height";
                                                try {
                                                    int columnIndex9 = cursorQuery.getColumnIndex("_size");
                                                    albumEntry = null;
                                                    albumEntry2 = null;
                                                    objValueOf = null;
                                                    Integer numValueOf = null;
                                                    while (cursorQuery.moveToNext()) {
                                                        try {
                                                            str = str10;
                                                            try {
                                                                String string2 = cursorQuery.getString(columnIndex4);
                                                                if (TextUtils.isEmpty(string2)) {
                                                                    str10 = str;
                                                                } else {
                                                                    int i13 = cursorQuery.getInt(columnIndex);
                                                                    int i14 = columnIndex;
                                                                    int i15 = cursorQuery.getInt(columnIndex2);
                                                                    int i16 = columnIndex4;
                                                                    String string3 = cursorQuery.getString(columnIndex3);
                                                                    int i17 = columnIndex9;
                                                                    PhotoEntry photoEntry = new PhotoEntry(i15, i13, cursorQuery.getLong(columnIndex5), string2, cursorQuery.getInt(columnIndex6), 0, false, cursorQuery.getInt(columnIndex7), cursorQuery.getInt(columnIndex8), cursorQuery.getLong(columnIndex9));
                                                                    if (albumEntry == null) {
                                                                        i7 = columnIndex8;
                                                                        try {
                                                                            i8 = columnIndex7;
                                                                            i9 = columnIndex5;
                                                                            albumEntry7 = new AlbumEntry(0, LocaleController.getString(R.string.AllPhotos), photoEntry);
                                                                            arrayList = arrayList62;
                                                                            try {
                                                                                arrayList.add(0, albumEntry7);
                                                                            } catch (Throwable th) {
                                                                                th = th;
                                                                                arrayList2 = arrayList5;
                                                                                sparseArray2 = sparseArray3;
                                                                                str9 = string;
                                                                                try {
                                                                                    FileLog.e(th);
                                                                                    if (cursorQuery != null) {
                                                                                    }
                                                                                    albumEntry3 = albumEntry7;
                                                                                    Context context22 = ApplicationLoader.applicationContext;
                                                                                    i3 = Build.VERSION.SDK_INT;
                                                                                    if (i3 >= 23) {
                                                                                    }
                                                                                    AlbumEntry albumEntry132 = albumEntry2;
                                                                                    Integer num2 = objValueOf;
                                                                                    while (i2 < arrayList2.size()) {
                                                                                    }
                                                                                    broadcastNewPhotos(i, arrayList2, arrayList, num2, albumEntry132, albumEntry3, albumEntry5, 0);
                                                                                } finally {
                                                                                }
                                                                            }
                                                                        } catch (Throwable th2) {
                                                                            th = th2;
                                                                            arrayList = arrayList62;
                                                                            arrayList2 = arrayList5;
                                                                            sparseArray2 = sparseArray3;
                                                                            str9 = string;
                                                                            albumEntry7 = albumEntry;
                                                                            FileLog.e(th);
                                                                            if (cursorQuery != null) {
                                                                            }
                                                                            albumEntry3 = albumEntry7;
                                                                            Context context222 = ApplicationLoader.applicationContext;
                                                                            i3 = Build.VERSION.SDK_INT;
                                                                            if (i3 >= 23) {
                                                                            }
                                                                            AlbumEntry albumEntry1322 = albumEntry2;
                                                                            Integer num22 = objValueOf;
                                                                            while (i2 < arrayList2.size()) {
                                                                            }
                                                                            broadcastNewPhotos(i, arrayList2, arrayList, num22, albumEntry1322, albumEntry3, albumEntry5, 0);
                                                                        }
                                                                    } else {
                                                                        i7 = columnIndex8;
                                                                        i8 = columnIndex7;
                                                                        i9 = columnIndex5;
                                                                        arrayList = arrayList62;
                                                                        albumEntry7 = albumEntry;
                                                                    }
                                                                    if (albumEntry2 == null) {
                                                                        try {
                                                                            i10 = columnIndex3;
                                                                            i11 = columnIndex2;
                                                                            albumEntry8 = new AlbumEntry(0, LocaleController.getString(R.string.AllMedia), photoEntry);
                                                                            arrayList2 = arrayList5;
                                                                        } catch (Throwable th3) {
                                                                            th = th3;
                                                                            arrayList2 = arrayList5;
                                                                            albumEntry = albumEntry7;
                                                                            sparseArray2 = sparseArray3;
                                                                            str9 = string;
                                                                            albumEntry7 = albumEntry;
                                                                            FileLog.e(th);
                                                                            if (cursorQuery != null) {
                                                                                try {
                                                                                    cursorQuery.close();
                                                                                } catch (Exception e4) {
                                                                                    e = e4;
                                                                                    albumEntry = albumEntry7;
                                                                                    FileLog.e(e);
                                                                                    albumEntry3 = albumEntry;
                                                                                    Context context2222 = ApplicationLoader.applicationContext;
                                                                                    i3 = Build.VERSION.SDK_INT;
                                                                                    if (i3 >= 23) {
                                                                                    }
                                                                                    AlbumEntry albumEntry13222 = albumEntry2;
                                                                                    Integer num222 = objValueOf;
                                                                                    while (i2 < arrayList2.size()) {
                                                                                    }
                                                                                    broadcastNewPhotos(i, arrayList2, arrayList, num222, albumEntry13222, albumEntry3, albumEntry5, 0);
                                                                                }
                                                                            }
                                                                            albumEntry3 = albumEntry7;
                                                                            Context context22222 = ApplicationLoader.applicationContext;
                                                                            i3 = Build.VERSION.SDK_INT;
                                                                            if (i3 >= 23) {
                                                                                ContentResolver contentResolver2 = ApplicationLoader.applicationContext.getContentResolver();
                                                                                Uri uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                                                                                String[] strArr2 = projectionVideo;
                                                                                StringBuilder sb3 = new StringBuilder();
                                                                                sb3.append(i3 <= 28 ? "date_modified" : "datetaken");
                                                                                sb3.append(" DESC");
                                                                                cursorQuery = MediaStore.Images.Media.query(contentResolver2, uri2, strArr2, null, null, sb3.toString());
                                                                                if (cursorQuery != null) {
                                                                                }
                                                                                if (cursorQuery != null) {
                                                                                }
                                                                                albumEntry5 = albumEntry12;
                                                                            }
                                                                            AlbumEntry albumEntry132222 = albumEntry2;
                                                                            Integer num2222 = objValueOf;
                                                                            while (i2 < arrayList2.size()) {
                                                                            }
                                                                            broadcastNewPhotos(i, arrayList2, arrayList, num2222, albumEntry132222, albumEntry3, albumEntry5, 0);
                                                                        }
                                                                        try {
                                                                            arrayList2.add(0, albumEntry8);
                                                                        } catch (Throwable th4) {
                                                                            th = th4;
                                                                            albumEntry2 = albumEntry8;
                                                                            sparseArray2 = sparseArray3;
                                                                            str9 = string;
                                                                            FileLog.e(th);
                                                                            if (cursorQuery != null) {
                                                                            }
                                                                            albumEntry3 = albumEntry7;
                                                                            Context context222222 = ApplicationLoader.applicationContext;
                                                                            i3 = Build.VERSION.SDK_INT;
                                                                            if (i3 >= 23) {
                                                                            }
                                                                            AlbumEntry albumEntry1322222 = albumEntry2;
                                                                            Integer num22222 = objValueOf;
                                                                            while (i2 < arrayList2.size()) {
                                                                            }
                                                                            broadcastNewPhotos(i, arrayList2, arrayList, num22222, albumEntry1322222, albumEntry3, albumEntry5, 0);
                                                                        }
                                                                    } else {
                                                                        i10 = columnIndex3;
                                                                        i11 = columnIndex2;
                                                                        arrayList2 = arrayList5;
                                                                        albumEntry8 = albumEntry2;
                                                                    }
                                                                    try {
                                                                        albumEntry7.addPhoto(photoEntry);
                                                                        albumEntry8.addPhoto(photoEntry);
                                                                        sparseArray2 = sparseArray3;
                                                                        try {
                                                                            AlbumEntry albumEntry14 = (AlbumEntry) sparseArray2.get(i15);
                                                                            if (albumEntry14 == null) {
                                                                                albumEntry10 = albumEntry7;
                                                                                try {
                                                                                    albumEntry11 = new AlbumEntry(i15, string3, photoEntry);
                                                                                    sparseArray2.put(i15, albumEntry11);
                                                                                    if (objValueOf != null || string == null || string2 == null) {
                                                                                        albumEntry9 = albumEntry8;
                                                                                        str9 = string;
                                                                                    } else {
                                                                                        albumEntry9 = albumEntry8;
                                                                                        str9 = string;
                                                                                        try {
                                                                                            if (string2.startsWith(str9)) {
                                                                                                i12 = columnIndex6;
                                                                                                arrayList2.add(0, albumEntry11);
                                                                                                objValueOf = Integer.valueOf(i15);
                                                                                            }
                                                                                        } catch (Throwable th5) {
                                                                                            th = th5;
                                                                                            albumEntry2 = albumEntry9;
                                                                                            albumEntry = albumEntry10;
                                                                                            albumEntry7 = albumEntry;
                                                                                            FileLog.e(th);
                                                                                            if (cursorQuery != null) {
                                                                                            }
                                                                                            albumEntry3 = albumEntry7;
                                                                                            Context context2222222 = ApplicationLoader.applicationContext;
                                                                                            i3 = Build.VERSION.SDK_INT;
                                                                                            if (i3 >= 23) {
                                                                                            }
                                                                                            AlbumEntry albumEntry13222222 = albumEntry2;
                                                                                            Integer num222222 = objValueOf;
                                                                                            while (i2 < arrayList2.size()) {
                                                                                            }
                                                                                            broadcastNewPhotos(i, arrayList2, arrayList, num222222, albumEntry13222222, albumEntry3, albumEntry5, 0);
                                                                                        }
                                                                                    }
                                                                                    i12 = columnIndex6;
                                                                                    arrayList2.add(albumEntry11);
                                                                                } catch (Throwable th6) {
                                                                                    th = th6;
                                                                                    albumEntry9 = albumEntry8;
                                                                                    str9 = string;
                                                                                    albumEntry2 = albumEntry9;
                                                                                    albumEntry = albumEntry10;
                                                                                    albumEntry7 = albumEntry;
                                                                                    FileLog.e(th);
                                                                                    if (cursorQuery != null) {
                                                                                    }
                                                                                    albumEntry3 = albumEntry7;
                                                                                    Context context22222222 = ApplicationLoader.applicationContext;
                                                                                    i3 = Build.VERSION.SDK_INT;
                                                                                    if (i3 >= 23) {
                                                                                    }
                                                                                    AlbumEntry albumEntry132222222 = albumEntry2;
                                                                                    Integer num2222222 = objValueOf;
                                                                                    while (i2 < arrayList2.size()) {
                                                                                    }
                                                                                    broadcastNewPhotos(i, arrayList2, arrayList, num2222222, albumEntry132222222, albumEntry3, albumEntry5, 0);
                                                                                }
                                                                            } else {
                                                                                albumEntry10 = albumEntry7;
                                                                                albumEntry9 = albumEntry8;
                                                                                str9 = string;
                                                                                i12 = columnIndex6;
                                                                                albumEntry11 = albumEntry14;
                                                                            }
                                                                            albumEntry11.addPhoto(photoEntry);
                                                                            SparseArray sparseArray5 = sparseArray;
                                                                            AlbumEntry albumEntry15 = (AlbumEntry) sparseArray5.get(i15);
                                                                            if (albumEntry15 == null) {
                                                                                albumEntry15 = new AlbumEntry(i15, string3, photoEntry);
                                                                                sparseArray5.put(i15, albumEntry15);
                                                                                if (numValueOf != null || str9 == null || string2 == null || !string2.startsWith(str9)) {
                                                                                    arrayList.add(albumEntry15);
                                                                                } else {
                                                                                    arrayList.add(0, albumEntry15);
                                                                                    numValueOf = Integer.valueOf(i15);
                                                                                }
                                                                            }
                                                                            albumEntry15.addPhoto(photoEntry);
                                                                            sparseArray = sparseArray5;
                                                                            arrayList5 = arrayList2;
                                                                            columnIndex6 = i12;
                                                                            albumEntry2 = albumEntry9;
                                                                            str10 = str;
                                                                            columnIndex8 = i7;
                                                                            columnIndex3 = i10;
                                                                            columnIndex = i14;
                                                                            columnIndex4 = i16;
                                                                            columnIndex9 = i17;
                                                                            string = str9;
                                                                            albumEntry = albumEntry10;
                                                                            columnIndex5 = i9;
                                                                            sparseArray3 = sparseArray2;
                                                                            columnIndex2 = i11;
                                                                            arrayList62 = arrayList;
                                                                            columnIndex7 = i8;
                                                                        } catch (Throwable th7) {
                                                                            th = th7;
                                                                            albumEntry10 = albumEntry7;
                                                                        }
                                                                    } catch (Throwable th8) {
                                                                        th = th8;
                                                                        albumEntry9 = albumEntry8;
                                                                        sparseArray2 = sparseArray3;
                                                                        str9 = string;
                                                                        albumEntry10 = albumEntry7;
                                                                    }
                                                                }
                                                            } catch (Throwable th9) {
                                                                th = th9;
                                                                arrayList2 = arrayList5;
                                                                sparseArray2 = sparseArray3;
                                                                str9 = string;
                                                                arrayList = arrayList62;
                                                                albumEntry7 = albumEntry;
                                                                FileLog.e(th);
                                                                if (cursorQuery != null) {
                                                                }
                                                                albumEntry3 = albumEntry7;
                                                                Context context222222222 = ApplicationLoader.applicationContext;
                                                                i3 = Build.VERSION.SDK_INT;
                                                                if (i3 >= 23) {
                                                                }
                                                                AlbumEntry albumEntry1322222222 = albumEntry2;
                                                                Integer num22222222 = objValueOf;
                                                                while (i2 < arrayList2.size()) {
                                                                }
                                                                broadcastNewPhotos(i, arrayList2, arrayList, num22222222, albumEntry1322222222, albumEntry3, albumEntry5, 0);
                                                            }
                                                        } catch (Throwable th10) {
                                                            th = th10;
                                                            str = str10;
                                                        }
                                                    }
                                                    str = str10;
                                                    arrayList2 = arrayList5;
                                                    sparseArray2 = sparseArray3;
                                                    str9 = string;
                                                    arrayList = arrayList62;
                                                    if (cursorQuery != null) {
                                                        try {
                                                            cursorQuery.close();
                                                        } catch (Exception e5) {
                                                            e = e5;
                                                            FileLog.e(e);
                                                            albumEntry3 = albumEntry;
                                                            Context context2222222222 = ApplicationLoader.applicationContext;
                                                            i3 = Build.VERSION.SDK_INT;
                                                            if (i3 >= 23) {
                                                            }
                                                            AlbumEntry albumEntry13222222222 = albumEntry2;
                                                            Integer num222222222 = objValueOf;
                                                            while (i2 < arrayList2.size()) {
                                                            }
                                                            broadcastNewPhotos(i, arrayList2, arrayList, num222222222, albumEntry13222222222, albumEntry3, albumEntry5, 0);
                                                        }
                                                    }
                                                    albumEntry3 = albumEntry;
                                                } catch (Throwable th11) {
                                                    th = th11;
                                                    str = "_size";
                                                    arrayList2 = arrayList5;
                                                    sparseArray2 = sparseArray3;
                                                    str9 = string;
                                                    arrayList = arrayList62;
                                                    albumEntry = null;
                                                    albumEntry2 = albumEntry;
                                                    objValueOf = albumEntry2;
                                                    albumEntry7 = albumEntry;
                                                    FileLog.e(th);
                                                    if (cursorQuery != null) {
                                                    }
                                                    albumEntry3 = albumEntry7;
                                                    Context context22222222222 = ApplicationLoader.applicationContext;
                                                    i3 = Build.VERSION.SDK_INT;
                                                    if (i3 >= 23) {
                                                    }
                                                    AlbumEntry albumEntry132222222222 = albumEntry2;
                                                    Integer num2222222222 = objValueOf;
                                                    while (i2 < arrayList2.size()) {
                                                    }
                                                    broadcastNewPhotos(i, arrayList2, arrayList, num2222222222, albumEntry132222222222, albumEntry3, albumEntry5, 0);
                                                }
                                            } catch (Throwable th12) {
                                                th = th12;
                                                str = "_size";
                                                str2 = "height";
                                            }
                                        } catch (Throwable th13) {
                                            th = th13;
                                            str = "_size";
                                            str2 = "height";
                                            str3 = "width";
                                        }
                                    } catch (Throwable th14) {
                                        th = th14;
                                        str = "_size";
                                        str2 = "height";
                                        str3 = "width";
                                        str4 = "orientation";
                                    }
                                } catch (Throwable th15) {
                                    th = th15;
                                    str = "_size";
                                    str2 = "height";
                                    str3 = "width";
                                    str4 = "orientation";
                                    str5 = "_data";
                                }
                            } catch (Throwable th16) {
                                th = th16;
                                str = "_size";
                                str2 = "height";
                                str3 = "width";
                                str4 = "orientation";
                                str5 = "_data";
                                str6 = "bucket_display_name";
                            }
                        } catch (Throwable th17) {
                            th = th17;
                            str = "_size";
                            str2 = "height";
                            str3 = "width";
                            str4 = "orientation";
                            str5 = "_data";
                            str6 = "bucket_display_name";
                            str7 = "bucket_id";
                        }
                    } catch (Throwable th18) {
                        th = th18;
                        str = "_size";
                        str2 = "height";
                        str3 = "width";
                        str4 = "orientation";
                        str5 = "_data";
                        str6 = "bucket_display_name";
                        str7 = "bucket_id";
                        str8 = "_id";
                    }
                } else {
                    str = "_size";
                    str2 = "height";
                    str3 = "width";
                    str4 = "orientation";
                    str5 = "_data";
                    str6 = "bucket_display_name";
                    str7 = "bucket_id";
                    str8 = "_id";
                    arrayList2 = arrayList5;
                    sparseArray2 = sparseArray3;
                    str9 = string;
                    arrayList = arrayList62;
                    albumEntry = null;
                    albumEntry2 = null;
                    objValueOf = null;
                    if (cursorQuery != null) {
                    }
                    albumEntry3 = albumEntry;
                }
            } catch (Throwable th19) {
                th = th19;
                str = "_size";
                str2 = "height";
                str3 = "width";
                str4 = "orientation";
                str5 = "_data";
                str6 = "bucket_display_name";
                str7 = "bucket_id";
                str8 = "_id";
                arrayList2 = arrayList5;
                sparseArray2 = sparseArray3;
                str9 = string;
                arrayList = arrayList62;
                cursorQuery = null;
                albumEntry = null;
                albumEntry2 = albumEntry;
                objValueOf = albumEntry2;
                albumEntry7 = albumEntry;
                FileLog.e(th);
                if (cursorQuery != null) {
                }
                albumEntry3 = albumEntry7;
                Context context222222222222 = ApplicationLoader.applicationContext;
                i3 = Build.VERSION.SDK_INT;
                if (i3 >= 23) {
                }
                AlbumEntry albumEntry1322222222222 = albumEntry2;
                Integer num22222222222 = objValueOf;
                while (i2 < arrayList2.size()) {
                }
                broadcastNewPhotos(i, arrayList2, arrayList, num22222222222, albumEntry1322222222222, albumEntry3, albumEntry5, 0);
            }
        } else if (i6 < 33) {
            try {
                if (context3.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0) {
                    if (i6 >= 33) {
                        if (context3.checkSelfPermission("android.permission.READ_MEDIA_IMAGES") != 0 && context3.checkSelfPermission("android.permission.READ_MEDIA_VIDEO") != 0) {
                            if (context3.checkSelfPermission("android.permission.READ_MEDIA_AUDIO") == 0) {
                            }
                            str9 = string;
                            arrayList = arrayList62;
                            if (cursorQuery != null) {
                            }
                            albumEntry3 = albumEntry;
                        }
                    }
                    str = "_size";
                    str2 = "height";
                    str3 = "width";
                    str4 = "orientation";
                    str5 = "_data";
                    str6 = "bucket_display_name";
                    str7 = "bucket_id";
                    str8 = "_id";
                    arrayList2 = arrayList5;
                    sparseArray2 = sparseArray3;
                    cursorQuery = null;
                    albumEntry = null;
                    albumEntry2 = null;
                    objValueOf = null;
                    str9 = string;
                    arrayList = arrayList62;
                    if (cursorQuery != null) {
                    }
                    albumEntry3 = albumEntry;
                }
                ContentResolver contentResolver3 = context3.getContentResolver();
                Uri uri3 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                String[] strArr3 = projectionPhotos;
                StringBuilder sb22 = new StringBuilder();
                sb22.append(i6 <= 28 ? "date_modified" : "datetaken");
                sb22.append(" DESC");
                cursorQuery = MediaStore.Images.Media.query(contentResolver3, uri3, strArr3, null, null, sb22.toString());
                if (cursorQuery == null) {
                }
            } catch (Throwable th20) {
                th = th20;
                str = "_size";
                str2 = "height";
                str3 = "width";
                str4 = "orientation";
                str5 = "_data";
                str6 = "bucket_display_name";
                str7 = "bucket_id";
                str8 = "_id";
                arrayList2 = arrayList5;
                sparseArray2 = sparseArray3;
                cursorQuery = null;
                albumEntry = null;
                albumEntry2 = null;
                objValueOf = null;
                str9 = string;
                arrayList = arrayList62;
                albumEntry7 = albumEntry;
                FileLog.e(th);
                if (cursorQuery != null) {
                }
                albumEntry3 = albumEntry7;
                Context context2222222222222 = ApplicationLoader.applicationContext;
                i3 = Build.VERSION.SDK_INT;
                if (i3 >= 23) {
                }
                AlbumEntry albumEntry13222222222222 = albumEntry2;
                Integer num222222222222 = objValueOf;
                while (i2 < arrayList2.size()) {
                }
                broadcastNewPhotos(i, arrayList2, arrayList, num222222222222, albumEntry13222222222222, albumEntry3, albumEntry5, 0);
            }
        } else {
            if (i6 >= 33) {
            }
            str = "_size";
            str2 = "height";
            str3 = "width";
            str4 = "orientation";
            str5 = "_data";
            str6 = "bucket_display_name";
            str7 = "bucket_id";
            str8 = "_id";
            arrayList2 = arrayList5;
            sparseArray2 = sparseArray3;
            cursorQuery = null;
            albumEntry = null;
            albumEntry2 = null;
            objValueOf = null;
            str9 = string;
            arrayList = arrayList62;
            if (cursorQuery != null) {
            }
            albumEntry3 = albumEntry;
        }
        Context context22222222222222 = ApplicationLoader.applicationContext;
        i3 = Build.VERSION.SDK_INT;
        if (i3 >= 23 || (i3 < 33 && context22222222222222.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0)) {
            ContentResolver contentResolver22 = ApplicationLoader.applicationContext.getContentResolver();
            Uri uri22 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
            String[] strArr22 = projectionVideo;
            StringBuilder sb32 = new StringBuilder();
            sb32.append(i3 <= 28 ? "date_modified" : "datetaken");
            sb32.append(" DESC");
            cursorQuery = MediaStore.Images.Media.query(contentResolver22, uri22, strArr22, null, null, sb32.toString());
            if (cursorQuery != null) {
                int columnIndex10 = cursorQuery.getColumnIndex(str8);
                int columnIndex11 = cursorQuery.getColumnIndex(str7);
                int columnIndex12 = cursorQuery.getColumnIndex(str6);
                int columnIndex13 = cursorQuery.getColumnIndex(str5);
                int columnIndex14 = cursorQuery.getColumnIndex(i3 > 28 ? "date_modified" : "datetaken");
                int columnIndex15 = cursorQuery.getColumnIndex("duration");
                int columnIndex16 = cursorQuery.getColumnIndex(str3);
                int columnIndex17 = cursorQuery.getColumnIndex(str2);
                int columnIndex18 = cursorQuery.getColumnIndex(str);
                cursorQuery.getColumnIndex(str4);
                while (cursorQuery.moveToNext()) {
                    String string4 = cursorQuery.getString(columnIndex13);
                    if (!TextUtils.isEmpty(string4)) {
                        int i18 = cursorQuery.getInt(columnIndex10);
                        int i19 = cursorQuery.getInt(columnIndex11);
                        int i20 = columnIndex10;
                        String string5 = cursorQuery.getString(columnIndex12);
                        int i21 = columnIndex14;
                        int i22 = columnIndex11;
                        int i23 = columnIndex12;
                        PhotoEntry photoEntry2 = new PhotoEntry(i19, i18, cursorQuery.getLong(columnIndex14), string4, 0, (int) (cursorQuery.getLong(columnIndex15) / 1000), true, cursorQuery.getInt(columnIndex16), cursorQuery.getInt(columnIndex17), cursorQuery.getLong(columnIndex18));
                        if (albumEntry12 == null) {
                            i4 = columnIndex13;
                            albumEntry4 = new AlbumEntry(0, LocaleController.getString(R.string.AllVideos), photoEntry2);
                            int i24 = 1;
                            try {
                                albumEntry4.videoOnly = true;
                                if (albumEntry2 == null) {
                                    i24 = 0;
                                }
                                if (albumEntry3 != null) {
                                    i24++;
                                }
                                arrayList2.add(i24, albumEntry4);
                            } catch (Throwable th21) {
                                th = th21;
                                try {
                                    FileLog.e(th);
                                    if (cursorQuery != null) {
                                        try {
                                            cursorQuery.close();
                                        } catch (Exception e6) {
                                            e = e6;
                                            albumEntry12 = albumEntry4;
                                            FileLog.e(e);
                                            albumEntry5 = albumEntry12;
                                            AlbumEntry albumEntry132222222222222 = albumEntry2;
                                            Integer num2222222222222 = objValueOf;
                                            while (i2 < arrayList2.size()) {
                                            }
                                            broadcastNewPhotos(i, arrayList2, arrayList, num2222222222222, albumEntry132222222222222, albumEntry3, albumEntry5, 0);
                                        }
                                    }
                                    albumEntry5 = albumEntry4;
                                    AlbumEntry albumEntry1322222222222222 = albumEntry2;
                                    Integer num22222222222222 = objValueOf;
                                    while (i2 < arrayList2.size()) {
                                    }
                                    broadcastNewPhotos(i, arrayList2, arrayList, num22222222222222, albumEntry1322222222222222, albumEntry3, albumEntry5, 0);
                                } finally {
                                }
                            }
                        } else {
                            i4 = columnIndex13;
                            albumEntry4 = albumEntry12;
                        }
                        if (albumEntry2 == null) {
                            try {
                                i5 = columnIndex15;
                                albumEntry6 = new AlbumEntry(0, LocaleController.getString(R.string.AllMedia), photoEntry2);
                                try {
                                    arrayList2.add(0, albumEntry6);
                                } catch (Throwable th22) {
                                    th = th22;
                                    albumEntry2 = albumEntry6;
                                    FileLog.e(th);
                                    if (cursorQuery != null) {
                                    }
                                    albumEntry5 = albumEntry4;
                                    AlbumEntry albumEntry13222222222222222 = albumEntry2;
                                    Integer num222222222222222 = objValueOf;
                                    while (i2 < arrayList2.size()) {
                                    }
                                    broadcastNewPhotos(i, arrayList2, arrayList, num222222222222222, albumEntry13222222222222222, albumEntry3, albumEntry5, 0);
                                }
                            } catch (Throwable th23) {
                                th = th23;
                                albumEntry12 = albumEntry4;
                                albumEntry4 = albumEntry12;
                                FileLog.e(th);
                                if (cursorQuery != null) {
                                }
                                albumEntry5 = albumEntry4;
                                AlbumEntry albumEntry132222222222222222 = albumEntry2;
                                Integer num2222222222222222 = objValueOf;
                                while (i2 < arrayList2.size()) {
                                }
                                broadcastNewPhotos(i, arrayList2, arrayList, num2222222222222222, albumEntry132222222222222222, albumEntry3, albumEntry5, 0);
                            }
                        } else {
                            i5 = columnIndex15;
                            albumEntry6 = albumEntry2;
                        }
                        try {
                            albumEntry4.addPhoto(photoEntry2);
                            albumEntry6.addPhoto(photoEntry2);
                            AlbumEntry albumEntry16 = (AlbumEntry) sparseArray2.get(i19);
                            if (albumEntry16 == null) {
                                albumEntry16 = new AlbumEntry(i19, string5, photoEntry2);
                                sparseArray2.put(i19, albumEntry16);
                                if (objValueOf != null || str9 == null || string4 == null || !string4.startsWith(str9)) {
                                    arrayList2.add(albumEntry16);
                                } else {
                                    try {
                                        arrayList2.add(0, albumEntry16);
                                        objValueOf = Integer.valueOf(i19);
                                    } catch (Throwable th24) {
                                        th = th24;
                                        albumEntry12 = albumEntry4;
                                        albumEntry2 = albumEntry6;
                                        albumEntry4 = albumEntry12;
                                        FileLog.e(th);
                                        if (cursorQuery != null) {
                                        }
                                        albumEntry5 = albumEntry4;
                                        AlbumEntry albumEntry1322222222222222222 = albumEntry2;
                                        Integer num22222222222222222 = objValueOf;
                                        while (i2 < arrayList2.size()) {
                                        }
                                        broadcastNewPhotos(i, arrayList2, arrayList, num22222222222222222, albumEntry1322222222222222222, albumEntry3, albumEntry5, 0);
                                    }
                                }
                            }
                            albumEntry16.addPhoto(photoEntry2);
                            albumEntry12 = albumEntry4;
                            albumEntry2 = albumEntry6;
                            columnIndex10 = i20;
                            columnIndex13 = i4;
                            columnIndex15 = i5;
                            columnIndex14 = i21;
                            columnIndex11 = i22;
                            columnIndex12 = i23;
                        } catch (Throwable th25) {
                            th = th25;
                        }
                    }
                }
            }
            if (cursorQuery != null) {
                try {
                    cursorQuery.close();
                } catch (Exception e7) {
                    e = e7;
                    FileLog.e(e);
                    albumEntry5 = albumEntry12;
                    AlbumEntry albumEntry13222222222222222222 = albumEntry2;
                    Integer num222222222222222222 = objValueOf;
                    while (i2 < arrayList2.size()) {
                    }
                    broadcastNewPhotos(i, arrayList2, arrayList, num222222222222222222, albumEntry13222222222222222222, albumEntry3, albumEntry5, 0);
                }
            }
            albumEntry5 = albumEntry12;
        } else {
            if (i3 >= 33 && (context22222222222222.checkSelfPermission("android.permission.READ_MEDIA_IMAGES") == 0 || context22222222222222.checkSelfPermission("android.permission.READ_MEDIA_VIDEO") == 0 || context22222222222222.checkSelfPermission("android.permission.READ_MEDIA_AUDIO") == 0)) {
            }
            if (cursorQuery != null) {
            }
            albumEntry5 = albumEntry12;
        }
        AlbumEntry albumEntry132222222222222222222 = albumEntry2;
        Integer num2222222222222222222 = objValueOf;
        for (i2 = 0; i2 < arrayList2.size(); i2++) {
            Collections.sort(((AlbumEntry) arrayList2.get(i2)).photos, new Comparator() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda46
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return MediaController.lambda$loadGalleryPhotosAlbums$51((MediaController.PhotoEntry) obj, (MediaController.PhotoEntry) obj2);
                }
            });
        }
        broadcastNewPhotos(i, arrayList2, arrayList, num2222222222222222222, albumEntry132222222222222222222, albumEntry3, albumEntry5, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMoreMusic$11(int i, TLRPC.TL_error tL_error, TLObject tLObject, int i2) {
        PlaylistGlobalSearchParams playlistGlobalSearchParams;
        if (this.playlistClassGuid != i || (playlistGlobalSearchParams = this.playlistGlobalSearchParams) == null || this.playingMessageObject == null || tL_error != null) {
            return;
        }
        this.loadingPlaylist = false;
        TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
        playlistGlobalSearchParams.nextSearchRate = messages_messages.next_rate;
        MessagesStorage.getInstance(i2).putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
        MessagesController.getInstance(i2).putUsers(messages_messages.users, false);
        MessagesController.getInstance(i2).putChats(messages_messages.chats, false);
        int size = messages_messages.messages.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            MessageObject messageObject = new MessageObject(i2, (TLRPC.Message) messages_messages.messages.get(i4), false, true);
            if (!messageObject.isVoiceOnce() && !this.playlistMap.containsKey(Integer.valueOf(messageObject.getId()))) {
                this.playlist.add(0, messageObject);
                this.playlistMap.put(Integer.valueOf(messageObject.getId()), messageObject);
                i3++;
            }
        }
        sortPlaylist();
        this.loadingPlaylist = false;
        this.playlistGlobalSearchParams.endReached = this.playlist.size() == this.playlistGlobalSearchParams.totalCount;
        if (SharedConfig.shuffleMusic) {
            buildShuffledPlayList();
        }
        if (i3 != 0) {
            NotificationCenter.getInstance(this.playingMessageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.moreMusicDidLoad, Integer.valueOf(i3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMoreMusic$12(final int i, final int i2, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadMoreMusic$11(i, tL_error, tLObject, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(int i) {
        if (i != 1) {
            this.hasRecordAudioFocus = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        try {
            this.sampleRate = 48000;
            int minBufferSize = AudioRecord.getMinBufferSize(48000, 16, 2);
            if (minBufferSize <= 0) {
                minBufferSize = 1280;
            }
            this.recordBufferSize = minBufferSize;
            for (int i = 0; i < 5; i++) {
                ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(this.recordBufferSize);
                byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
                this.recordBuffers.add(byteBufferAllocateDirect);
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3() {
        try {
            this.currentPlaybackSpeed = MessagesController.getGlobalMainSettings().getFloat("playbackSpeed", VOLUME_NORMAL);
            this.currentMusicPlaybackSpeed = MessagesController.getGlobalMainSettings().getFloat("musicPlaybackSpeed", VOLUME_NORMAL);
            this.fastPlaybackSpeed = MessagesController.getGlobalMainSettings().getFloat("fastPlaybackSpeed", 1.8f);
            this.fastMusicPlaybackSpeed = MessagesController.getGlobalMainSettings().getFloat("fastMusicPlaybackSpeed", 1.8f);
            SensorManager sensorManager = (SensorManager) ApplicationLoader.applicationContext.getSystemService("sensor");
            this.sensorManager = sensorManager;
            this.linearSensor = sensorManager.getDefaultSensor(10);
            Sensor defaultSensor = this.sensorManager.getDefaultSensor(9);
            this.gravitySensor = defaultSensor;
            if (this.linearSensor == null || defaultSensor == null) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.d("gravity or linear sensor not found");
                }
                this.accelerometerSensor = this.sensorManager.getDefaultSensor(1);
                this.linearSensor = null;
                this.gravitySensor = null;
            }
            this.proximitySensor = this.sensorManager.getDefaultSensor(8);
            this.proximityWakeLock = ((PowerManager) ApplicationLoader.applicationContext.getSystemService("power")).newWakeLock(32, "telegram:proximity_lock");
        } catch (Exception e) {
            FileLog.e(e);
        }
        try {
            AnonymousClass4 anonymousClass4 = new AnonymousClass4();
            TelephonyManager telephonyManager = (TelephonyManager) ApplicationLoader.applicationContext.getSystemService("phone");
            if (telephonyManager != null) {
                telephonyManager.listen(anonymousClass4, 32);
            }
        } catch (Exception e2) {
            FileLog.e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4() {
        for (int i = 0; i < 4; i++) {
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.httpFileDidLoad);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.didReceiveNewMessages);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.messagesDeleted);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.removeAllMessagesFromDialog);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.musicDidLoad);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.mediaDidLoad);
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.playerDidStartPlaying);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAudioFocusChange$5(int i) {
        if (i == -1) {
            if (isPlayingMessage(getPlayingMessageObject()) && !isMessagePaused()) {
                lambda$startAudioAgain$7(this.playingMessageObject);
            }
            this.hasAudioFocus = 0;
            this.audioFocus = 0;
        } else if (i == 1) {
            this.audioFocus = 2;
            if (this.resumeAudioOnFocusGain) {
                this.resumeAudioOnFocusGain = false;
                if (isPlayingMessage(getPlayingMessageObject()) && isMessagePaused()) {
                    playMessage(getPlayingMessageObject());
                }
            }
        } else if (i == -3) {
            this.audioFocus = 1;
        } else if (i == -2) {
            this.audioFocus = 0;
            if (isPlayingMessage(getPlayingMessageObject()) && !isMessagePaused()) {
                lambda$startAudioAgain$7(this.playingMessageObject);
                this.resumeAudioOnFocusGain = true;
            }
        }
        setPlayerVolume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playEmojiSound$17(File file) {
        try {
            int i = this.emojiSoundPlayerNum + 1;
            this.emojiSoundPlayerNum = i;
            VideoPlayer videoPlayer = this.emojiSoundPlayer;
            if (videoPlayer != null) {
                videoPlayer.releasePlayer(true);
            }
            VideoPlayer videoPlayer2 = new VideoPlayer(false, false);
            this.emojiSoundPlayer = videoPlayer2;
            videoPlayer2.setDelegate(new AnonymousClass8(i));
            this.emojiSoundPlayer.preparePlayer(Uri.fromFile(file), "other");
            this.emojiSoundPlayer.setStreamType(3);
            this.emojiSoundPlayer.play();
        } catch (Exception e) {
            FileLog.e(e);
            VideoPlayer videoPlayer3 = this.emojiSoundPlayer;
            if (videoPlayer3 != null) {
                videoPlayer3.releasePlayer(true);
                this.emojiSoundPlayer = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$playEmojiSound$18(AccountInstance accountInstance, TLRPC.Document document) {
        accountInstance.getFileLoader().loadFile(document, null, 1, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playEmojiSound$19(MessagesController.EmojiSound emojiSound, final AccountInstance accountInstance, boolean z) {
        final TLRPC.TL_document tL_document = new TLRPC.TL_document();
        tL_document.access_hash = emojiSound.accessHash;
        tL_document.id = emojiSound.id;
        tL_document.mime_type = "sound/ogg";
        tL_document.file_reference = emojiSound.fileReference;
        tL_document.dc_id = accountInstance.getConnectionsManager().getCurrentDatacenterId();
        final File pathToAttach = FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(tL_document, true);
        if (!pathToAttach.exists()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.lambda$playEmojiSound$18(accountInstance, tL_document);
                }
            });
        } else {
            if (z) {
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$playEmojiSound$17(pathToAttach);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playMessage$20() {
        cleanupPlayer(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$playMessage$21(MessageObject messageObject, File file) {
        NotificationCenter.getInstance(messageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoaded, FileLoader.getAttachFileName(messageObject.getDocument()), file);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$playMessage$22(MessageObject messageObject, File file) {
        NotificationCenter.getInstance(messageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoaded, FileLoader.getAttachFileName(messageObject.getDocument()), file);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareResumedRecording$23(int i, long j) {
        MediaDataController.getInstance(i).pushDraftVoiceMessage(j, this.recordTopicId, null);
        this.recordStartRunnable = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareResumedRecording$24(File file, TLRPC.TL_document tL_document, MediaDataController.DraftVoice draftVoice) {
        if (!file.exists() && BuildVars.DEBUG_VERSION) {
            FileLog.e(new RuntimeException("file not found :( recordTimeCount " + this.recordTimeCount + " writedFrames" + this.writtenFrame));
        }
        tL_document.date = ConnectionsManager.getInstance(this.recordingCurrentAccount).getCurrentTime();
        tL_document.size = (int) file.length();
        TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio = new TLRPC.TL_documentAttributeAudio();
        tL_documentAttributeAudio.voice = true;
        short[] sArr = this.recordSamples;
        byte[] waveform2 = getWaveform2(sArr, sArr.length);
        tL_documentAttributeAudio.waveform = waveform2;
        if (waveform2 != null) {
            tL_documentAttributeAudio.flags |= 4;
        }
        double d = this.recordTimeCount;
        Double.isNaN(d);
        tL_documentAttributeAudio.duration = d / 1000.0d;
        tL_document.attributes.clear();
        tL_document.attributes.add(tL_documentAttributeAudio);
        NotificationCenter.getInstance(this.recordingCurrentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordPaused, new Object[0]);
        NotificationCenter.getInstance(this.recordingCurrentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.audioDidSent, Integer.valueOf(this.recordingGuid), tL_document, file.getAbsolutePath(), Boolean.TRUE, Float.valueOf(draftVoice.left), Float.valueOf(draftVoice.right));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareResumedRecording$25(int i, final MediaDataController.DraftVoice draftVoice, final int i2, final long j, long j2, MessageSuggestionParams messageSuggestionParams, MessageObject messageObject, MessageObject messageObject2, TL_stories$StoryItem tL_stories$StoryItem, String str, int i3) {
        setBluetoothScoOn(true);
        this.sendAfterDone = 0;
        TLRPC.TL_document tL_document = new TLRPC.TL_document();
        this.recordingAudio = tL_document;
        this.recordingGuid = i;
        tL_document.dc_id = Integer.MIN_VALUE;
        tL_document.id = draftVoice.id;
        tL_document.user_id = UserConfig.getInstance(i2).getClientUserId();
        TLRPC.TL_document tL_document2 = this.recordingAudio;
        tL_document2.mime_type = "audio/ogg";
        tL_document2.file_reference = new byte[0];
        SharedConfig.saveConfig();
        this.recordingAudioFile = new File(draftVoice.path) { // from class: org.telegram.messenger.MediaController.13
            @Override // java.io.File
            public boolean delete() {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.e("delete voice file");
                }
                return super.delete();
            }
        };
        FileLoader.getDirectory(4).mkdirs();
        AutoDeleteMediaTask.lockFile(this.recordingAudioFile);
        try {
            this.audioRecorderPaused = true;
            this.recordTimeCount = draftVoice.recordTimeCount;
            this.writtenFrame = draftVoice.writedFrame;
            this.samplesCount = draftVoice.samplesCount;
            this.recordSamples = draftVoice.recordSamples;
            this.recordDialogId = j;
            this.recordMonoForumPeerId = j2;
            this.recordMonoForumSuggestionParams = messageSuggestionParams;
            this.recordTopicId = messageObject == null ? 0L : MessageObject.getTopicId(this.recordingCurrentAccount, messageObject.messageOwner, false);
            this.recordingCurrentAccount = i2;
            this.recordReplyingMsg = messageObject2;
            this.recordReplyingTopMsg = messageObject;
            this.recordReplyingStory = tL_stories$StoryItem;
            this.recordQuickReplyShortcut = str;
            this.recordQuickReplyShortcutId = i3;
            final TLRPC.TL_document tL_document3 = this.recordingAudio;
            final File file = this.recordingAudioFile;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda33
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$prepareResumedRecording$24(file, tL_document3, draftVoice);
                }
            });
        } catch (Exception e) {
            FileLog.e(e);
            this.recordingAudio = null;
            AutoDeleteMediaTask.unlockFile(this.recordingAudioFile);
            this.recordingAudioFile.delete();
            this.recordingAudioFile = null;
            try {
                this.audioRecorder.release();
                this.audioRecorder = null;
            } catch (Exception e2) {
                FileLog.e(e2);
            }
            setBluetoothScoOn(false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda34
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$prepareResumedRecording$23(i2, j);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processMediaObserver$6(ArrayList arrayList) {
        NotificationCenter.getInstance(this.lastChatAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.screenshotTook, new Object[0]);
        checkScreenshots(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$saveFile$44(boolean[] zArr, DialogInterface dialogInterface) {
        zArr[0] = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$saveFile$45(boolean[] zArr, AlertDialog alertDialog) {
        if (zArr[0]) {
            return;
        }
        alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$saveFile$46(AlertDialog alertDialog) {
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$saveFile$47(AlertDialog alertDialog, int i) {
        try {
            alertDialog.setProgress(i);
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$saveFile$49(AlertDialog alertDialog, boolean[] zArr) {
        try {
            if (alertDialog.isShowing()) {
                alertDialog.dismiss();
            } else {
                zArr[0] = true;
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01e0 A[Catch: Exception -> 0x001c, TryCatch #10 {Exception -> 0x001c, blocks: (B:3:0x000a, B:5:0x0013, B:129:0x021e, B:12:0x0024, B:33:0x00d5, B:35:0x00db, B:36:0x00de, B:117:0x01dc, B:119:0x01e0, B:124:0x01eb, B:125:0x020f, B:126:0x0216, B:116:0x01d7, B:14:0x0043, B:16:0x0062, B:18:0x0067, B:20:0x007e, B:26:0x0090, B:27:0x00ab, B:29:0x00c0, B:32:0x00d1, B:28:0x00af, B:17:0x0065), top: B:153:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x021c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01bf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01af A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:165:? A[Catch: all -> 0x0198, SYNTHETIC, TRY_LEAVE, TryCatch #11 {all -> 0x0198, blocks: (B:79:0x0194, B:98:0x01b8, B:97:0x01b5, B:93:0x01af), top: B:155:0x00ee, inners: #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:167:? A[Catch: all -> 0x01a6, SYNTHETIC, TRY_LEAVE, TryCatch #2 {all -> 0x01a6, blocks: (B:107:0x01c8, B:106:0x01c5, B:83:0x019b, B:102:0x01bf), top: B:139:0x00ea, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:170:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r26v20 */
    /* JADX WARN: Type inference failed for: r26v21 */
    /* JADX WARN: Type inference failed for: r26v4, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v12, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r6v16, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void lambda$saveFile$50(int i, File file, String str, final AlertDialog alertDialog, boolean[] zArr, String str2, final Utilities.Callback callback, final boolean[] zArr2) throws Throwable {
        ?? file2;
        StringBuilder sb;
        char c;
        char c2;
        ?? r26;
        final Uri uriFromFile;
        Throwable th;
        Throwable th2;
        long jCurrentTimeMillis;
        try {
            char c3 = 0;
            if (Build.VERSION.SDK_INT >= 29) {
                uriFromFile = saveFileInternal(i, file, null);
                if (uriFromFile != null) {
                    c3 = 1;
                }
            } else {
                if (i == 0) {
                    File file3 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "Telegram");
                    file3.mkdirs();
                    file2 = new File(file3, AndroidUtilities.generateFileName(0, FileLoader.getFileExtension(file)));
                } else if (i == 1) {
                    File file4 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES), "Telegram");
                    file4.mkdirs();
                    file2 = new File(file4, AndroidUtilities.generateFileName(1, FileLoader.getFileExtension(file)));
                } else {
                    File file5 = new File(Environment.getExternalStoragePublicDirectory(i == 2 ? Environment.DIRECTORY_DOWNLOADS : Environment.DIRECTORY_MUSIC), "Telegram");
                    file5.mkdirs();
                    file2 = new File(file5, str);
                    if (file2.exists()) {
                        int iLastIndexOf = str.lastIndexOf(46);
                        int i2 = 0;
                        while (true) {
                            if (i2 >= 10) {
                                break;
                            }
                            String strSubstring = ")";
                            if (iLastIndexOf != -1) {
                                sb = new StringBuilder();
                                sb.append(str.substring(0, iLastIndexOf));
                                sb.append("(");
                                sb.append(i2 + 1);
                                sb.append(")");
                                strSubstring = str.substring(iLastIndexOf);
                            } else {
                                sb = new StringBuilder();
                                sb.append(str);
                                sb.append("(");
                                sb.append(i2 + 1);
                            }
                            sb.append(strSubstring);
                            File file6 = new File(file5, sb.toString());
                            if (!file6.exists()) {
                                file2 = file6;
                                break;
                            } else {
                                i2++;
                                file2 = file6;
                            }
                        }
                    }
                }
                if (!file2.exists()) {
                    file2.createNewFile();
                }
                long jCurrentTimeMillis2 = System.currentTimeMillis() - 500;
                try {
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        try {
                            try {
                                FileChannel channel = fileInputStream.getChannel();
                                try {
                                    try {
                                        FileChannel channel2 = new FileOutputStream((File) file2).getChannel();
                                        try {
                                            long size = channel.size();
                                            try {
                                                if (AndroidUtilities.isInternalUri(((Integer) FileDescriptor.class.getDeclaredMethod("getInt$", null).invoke(fileInputStream.getFD(), null)).intValue())) {
                                                    if (alertDialog != null) {
                                                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda35
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                MediaController.lambda$saveFile$46(alertDialog);
                                                            }
                                                        });
                                                    }
                                                    if (channel2 != null) {
                                                        try {
                                                            channel2.close();
                                                        } catch (Throwable th3) {
                                                            th2 = th3;
                                                            str = file2;
                                                            if (channel == null) {
                                                                throw th2;
                                                            }
                                                            try {
                                                                channel.close();
                                                                throw th2;
                                                            } catch (Throwable th4) {
                                                                th2.addSuppressed(th4);
                                                                throw th2;
                                                            }
                                                        }
                                                    }
                                                    try {
                                                        channel.close();
                                                        fileInputStream.close();
                                                        return;
                                                    } catch (Throwable th5) {
                                                        th = th5;
                                                        str = file2;
                                                        try {
                                                            fileInputStream.close();
                                                            throw th;
                                                        } catch (Throwable th6) {
                                                            th.addSuppressed(th6);
                                                            throw th;
                                                        }
                                                    }
                                                }
                                            } catch (Throwable th7) {
                                                FileLog.e(th7);
                                            }
                                            str = file2;
                                            long j = 0;
                                            while (j < size) {
                                                try {
                                                    if (zArr[c3]) {
                                                        break;
                                                    }
                                                    long j2 = jCurrentTimeMillis2;
                                                    long j3 = size;
                                                    channel2.transferFrom(channel, j, Math.min(4096L, size - j));
                                                    if (alertDialog == null || j2 > System.currentTimeMillis() - 500) {
                                                        jCurrentTimeMillis = j2;
                                                    } else {
                                                        jCurrentTimeMillis = System.currentTimeMillis();
                                                        final int i3 = (int) ((j / j3) * 100.0f);
                                                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda36
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                MediaController.lambda$saveFile$47(alertDialog, i3);
                                                            }
                                                        });
                                                    }
                                                    j += 4096;
                                                    jCurrentTimeMillis2 = jCurrentTimeMillis;
                                                    size = j3;
                                                    c3 = 0;
                                                } catch (Throwable th8) {
                                                    th = th8;
                                                    Throwable th9 = th;
                                                    if (channel2 != null) {
                                                        throw th9;
                                                    }
                                                    try {
                                                        channel2.close();
                                                        throw th9;
                                                    } catch (Throwable th10) {
                                                        th9.addSuppressed(th10);
                                                        throw th9;
                                                    }
                                                }
                                            }
                                            if (channel2 != null) {
                                                channel2.close();
                                            }
                                            channel.close();
                                            fileInputStream.close();
                                            c = 0;
                                            c2 = 1;
                                            r26 = str;
                                        } catch (Throwable th11) {
                                            th = th11;
                                            str = file2;
                                            Throwable th92 = th;
                                            if (channel2 != null) {
                                            }
                                        }
                                    } catch (Throwable th12) {
                                        th = th12;
                                        th2 = th;
                                        str = str;
                                        if (channel == null) {
                                        }
                                    }
                                } catch (Throwable th13) {
                                    th = th13;
                                    str = file2;
                                    th2 = th;
                                    str = str;
                                    if (channel == null) {
                                    }
                                }
                            } catch (Throwable th14) {
                                th = th14;
                                th = th;
                                str = str;
                                fileInputStream.close();
                                throw th;
                            }
                        } catch (Throwable th15) {
                            th = th15;
                            str = file2;
                            th = th;
                            str = str;
                            fileInputStream.close();
                            throw th;
                        }
                    } catch (Exception e) {
                        e = e;
                        str = file2;
                        FileLog.e(e);
                        c = 0;
                        c2 = 0;
                        r26 = str;
                        if (zArr[c]) {
                        }
                        if (c3 != 0) {
                        }
                        uriFromFile = Uri.fromFile(r26);
                        if (c3 != 0) {
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda37
                                @Override // java.lang.Runnable
                                public final void run() {
                                    callback.run(uriFromFile);
                                }
                            });
                        }
                        if (alertDialog != null) {
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    FileLog.e(e);
                    c = 0;
                    c2 = 0;
                    r26 = str;
                    if (zArr[c]) {
                    }
                    if (c3 != 0) {
                    }
                    uriFromFile = Uri.fromFile(r26);
                    if (c3 != 0) {
                    }
                    if (alertDialog != null) {
                    }
                }
                if (zArr[c]) {
                    r26.delete();
                    c3 = 0;
                } else {
                    c3 = c2;
                }
                if (c3 != 0) {
                    if (i == 2) {
                        ((DownloadManager) ApplicationLoader.applicationContext.getSystemService("download")).addCompletedDownload(r26.getName(), r26.getName(), false, str2, r26.getAbsolutePath(), r26.length(), true);
                    } else {
                        AndroidUtilities.addMediaToGallery(r26.getAbsoluteFile());
                    }
                }
                uriFromFile = Uri.fromFile(r26);
            }
            if (c3 != 0 && callback != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda37
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.run(uriFromFile);
                    }
                });
            }
        } catch (Exception e3) {
            FileLog.e(e3);
        }
        if (alertDialog != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda38
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.lambda$saveFile$49(alertDialog, zArr2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCurrentVideoVisible$14() {
        cleanupPlayer(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setPlaybackSpeed$16(MessageObject messageObject, float f) {
        if (this.audioPlayer == null || this.playingMessageObject == null || this.isPaused) {
            return;
        }
        if (isSamePlayingMessage(messageObject)) {
            seekToProgress(this.playingMessageObject, f);
        }
        this.audioPlayer.play();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setTextureView$15() {
        cleanupPlayer(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$sortPlaylist$13(MessageObject messageObject, MessageObject messageObject2) {
        int iCompare;
        int id = messageObject.getId();
        int id2 = messageObject2.getId();
        long j = messageObject.messageOwner.grouped_id;
        long j2 = messageObject2.messageOwner.grouped_id;
        if (id >= 0 || id2 >= 0) {
            if (j == 0 || j != j2) {
                return Integer.compare(id, id2);
            }
            iCompare = Integer.compare(id2, id);
        } else {
            if (j == 0 || j != j2) {
                return Integer.compare(id2, id);
            }
            iCompare = Integer.compare(id, id2);
        }
        return -iCompare;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRaiseToEarSensors$8() {
        Sensor sensor = this.gravitySensor;
        if (sensor != null) {
            this.sensorManager.registerListener(this, sensor, ActivityRecognitionConstants.DEFAULT_DETECTION_INTERVAL_MILLIS);
        }
        Sensor sensor2 = this.linearSensor;
        if (sensor2 != null) {
            this.sensorManager.registerListener(this, sensor2, ActivityRecognitionConstants.DEFAULT_DETECTION_INTERVAL_MILLIS);
        }
        Sensor sensor3 = this.accelerometerSensor;
        if (sensor3 != null) {
            this.sensorManager.registerListener(this, sensor3, ActivityRecognitionConstants.DEFAULT_DETECTION_INTERVAL_MILLIS);
        }
        this.sensorManager.registerListener(this, this.proximitySensor, 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRecording$33(int i, int i2) {
        this.recordStartRunnable = null;
        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStartError, Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRecording$34(int i, int i2) {
        this.recordStartRunnable = null;
        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStartError, Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRecording$35(int i, int i2) {
        this.recordStartRunnable = null;
        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStartError, Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRecording$36(int i, int i2) {
        this.recordStartRunnable = null;
        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStarted, Integer.valueOf(i2), Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRecording$37(final int i, final int i2, long j, long j2, MessageSuggestionParams messageSuggestionParams, MessageObject messageObject, MessageObject messageObject2, TL_stories$StoryItem tL_stories$StoryItem, String str, int i3) throws IllegalStateException {
        Runnable runnable;
        if (this.audioRecorder != null) {
            runnable = new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda39
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startRecording$33(i, i2);
                }
            };
        } else {
            setBluetoothScoOn(true);
            this.sendAfterDone = 0;
            TLRPC.TL_document tL_document = new TLRPC.TL_document();
            this.recordingAudio = tL_document;
            this.recordingGuid = i2;
            tL_document.file_reference = new byte[0];
            tL_document.dc_id = Integer.MIN_VALUE;
            tL_document.id = SharedConfig.getLastLocalId();
            this.recordingAudio.user_id = UserConfig.getInstance(i).getClientUserId();
            TLRPC.TL_document tL_document2 = this.recordingAudio;
            tL_document2.mime_type = "audio/ogg";
            tL_document2.file_reference = new byte[0];
            SharedConfig.saveConfig();
            this.recordingAudioFile = new File(FileLoader.getDirectory(1), System.currentTimeMillis() + "_" + FileLoader.getAttachFileName(this.recordingAudio)) { // from class: org.telegram.messenger.MediaController.17
                @Override // java.io.File
                public boolean delete() {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.e("delete voice file");
                    }
                    return super.delete();
                }
            };
            FileLoader.getDirectory(4).mkdirs();
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("start recording internal " + this.recordingAudioFile.getPath() + " " + this.recordingAudioFile.exists());
            }
            AutoDeleteMediaTask.lockFile(this.recordingAudioFile);
            try {
                if (startRecord(this.recordingAudioFile.getPath(), this.sampleRate) == 0) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda40
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$startRecording$34(i, i2);
                        }
                    });
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.d("cant init encoder");
                        return;
                    }
                    return;
                }
                this.audioRecorderPaused = false;
                this.audioRecorder = new AudioRecord(0, this.sampleRate, 16, 2, this.recordBufferSize);
                this.recordStartTime = System.currentTimeMillis();
                long topicId = 0;
                this.recordTimeCount = 0L;
                this.writtenFrame = 0;
                this.samplesCount = 0L;
                this.recordDialogId = j;
                this.recordMonoForumPeerId = j2;
                this.recordMonoForumSuggestionParams = messageSuggestionParams;
                if (messageObject != null) {
                    topicId = MessageObject.getTopicId(this.recordingCurrentAccount, messageObject.messageOwner, false);
                }
                this.recordTopicId = topicId;
                this.recordingCurrentAccount = i;
                this.recordReplyingMsg = messageObject2;
                this.recordReplyingTopMsg = messageObject;
                this.recordReplyingStory = tL_stories$StoryItem;
                this.recordQuickReplyShortcut = str;
                this.recordQuickReplyShortcutId = i3;
                this.fileBuffer.rewind();
                this.audioRecorder.startRecording();
                this.recordQueue.postRunnable(this.recordRunnable);
                runnable = new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda41
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$startRecording$36(i, i2);
                    }
                };
            } catch (Exception e) {
                FileLog.e(e);
                this.recordingAudio = null;
                stopRecord();
                AutoDeleteMediaTask.unlockFile(this.recordingAudioFile);
                this.recordingAudioFile.delete();
                this.recordingAudioFile = null;
                File file = this.recordingPrevAudioFile;
                if (file != null) {
                    file.delete();
                    this.recordingPrevAudioFile = null;
                }
                try {
                    this.audioRecorder.release();
                    this.audioRecorder = null;
                } catch (Exception e2) {
                    FileLog.e(e2);
                }
                setBluetoothScoOn(false);
                runnable = new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda42
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$startRecording$35(i, i2);
                    }
                };
            }
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopRaiseToEarSensors$9() {
        Sensor sensor = this.linearSensor;
        if (sensor != null) {
            this.sensorManager.unregisterListener(this, sensor);
        }
        Sensor sensor2 = this.gravitySensor;
        if (sensor2 != null) {
            this.sensorManager.unregisterListener(this, sensor2);
        }
        Sensor sensor3 = this.accelerometerSensor;
        if (sensor3 != null) {
            this.sensorManager.unregisterListener(this, sensor3);
        }
        this.sensorManager.unregisterListener(this, this.proximitySensor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopRecording$42(int i) {
        NotificationCenter.getInstance(this.recordingCurrentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStopped, Integer.valueOf(this.recordingGuid), Integer.valueOf(i == 2 ? 1 : 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopRecording$43(final int i, boolean z, int i2, boolean z2, long j) throws IllegalStateException {
        if (this.sendAfterDone == 3) {
            this.sendAfterDone = 0;
            stopRecordingInternal(i, z, i2, z2, j);
            return;
        }
        AudioRecord audioRecord = this.audioRecorder;
        if (audioRecord == null) {
            this.recordingAudio = null;
            this.manualRecording = false;
            this.raiseToEarRecord = false;
            this.ignoreOnPause = false;
            return;
        }
        try {
            this.sendAfterDone = i;
            this.sendAfterDoneNotify = z;
            this.sendAfterDoneScheduleDate = i2;
            this.sendAfterDoneOnce = z2;
            this.sendAfterDonePayStars = j;
            audioRecord.stop();
            setBluetoothScoOn(false);
        } catch (Exception e) {
            FileLog.e(e);
            if (this.recordingAudioFile != null) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.e("delete voice file");
                }
                this.recordingAudioFile.delete();
            }
        }
        if (i == 0) {
            stopRecordingInternal(0, false, 0, false, 0L);
        }
        try {
            this.feedbackView.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda52
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$stopRecording$42(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopRecordingInternal$40(File file, TLRPC.TL_document tL_document, int i, boolean z, int i2, boolean z2, long j) {
        boolean z3;
        char c;
        String str;
        if (BuildVars.LOGS_ENABLED) {
            StringBuilder sb = new StringBuilder();
            sb.append("stop recording internal ");
            if (file == null) {
                str = "null";
            } else {
                str = file.exists() + " " + file.length() + "  recordTimeCount " + this.recordTimeCount + " writedFrames" + this.writtenFrame;
            }
            sb.append(str);
            FileLog.d(sb.toString());
        }
        if ((file == null || !file.exists()) && BuildVars.DEBUG_VERSION) {
            FileLog.e(new RuntimeException("file not found :( recordTimeCount " + this.recordTimeCount + " writedFrames" + this.writtenFrame));
        }
        MediaDataController.getInstance(this.recordingCurrentAccount).pushDraftVoiceMessage(this.recordDialogId, this.recordTopicId, null);
        tL_document.date = ConnectionsManager.getInstance(this.recordingCurrentAccount).getCurrentTime();
        tL_document.size = file == null ? 0L : (int) file.length();
        TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio = new TLRPC.TL_documentAttributeAudio();
        tL_documentAttributeAudio.voice = true;
        byte[] waveform = getWaveform(file.getAbsolutePath());
        tL_documentAttributeAudio.waveform = waveform;
        if (waveform != null) {
            tL_documentAttributeAudio.flags |= 4;
        }
        long j2 = this.recordTimeCount;
        double d = j2;
        Double.isNaN(d);
        tL_documentAttributeAudio.duration = d / 1000.0d;
        tL_document.attributes.clear();
        tL_document.attributes.add(tL_documentAttributeAudio);
        if (j2 > 700) {
            if (i == 1) {
                c = 1;
                SendMessagesHelper.SendMessageParams sendMessageParamsOf = SendMessagesHelper.SendMessageParams.of(tL_document, null, file.getAbsolutePath(), this.recordDialogId, this.recordReplyingMsg, this.recordReplyingTopMsg, null, null, null, null, z, i2, z2 ? Integer.MAX_VALUE : 0, null, null, false);
                sendMessageParamsOf.monoForumPeer = this.recordMonoForumPeerId;
                sendMessageParamsOf.suggestionParams = this.recordMonoForumSuggestionParams;
                sendMessageParamsOf.replyToStoryItem = this.recordReplyingStory;
                sendMessageParamsOf.quick_reply_shortcut = this.recordQuickReplyShortcut;
                sendMessageParamsOf.quick_reply_shortcut_id = this.recordQuickReplyShortcutId;
                sendMessageParamsOf.payStars = j;
                SendMessagesHelper.getInstance(this.recordingCurrentAccount).sendMessage(sendMessageParamsOf);
            } else {
                c = 1;
            }
            NotificationCenter notificationCenter = NotificationCenter.getInstance(this.recordingCurrentAccount);
            int i3 = NotificationCenter.audioDidSent;
            Integer numValueOf = Integer.valueOf(this.recordingGuid);
            TLRPC.TL_document tL_document2 = i == 2 ? tL_document : null;
            String absolutePath = i == 2 ? file.getAbsolutePath() : null;
            Object[] objArr = new Object[3];
            z3 = false;
            objArr[0] = numValueOf;
            objArr[c] = tL_document2;
            objArr[2] = absolutePath;
            notificationCenter.lambda$postNotificationNameOnUIThread$1(i3, objArr);
        } else {
            z3 = false;
            NotificationCenter.getInstance(this.recordingCurrentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.audioRecordTooShort, Integer.valueOf(this.recordingGuid), Boolean.FALSE, Integer.valueOf((int) j2));
            AutoDeleteMediaTask.unlockFile(file);
            file.delete();
        }
        requestRecordAudioFocus(z3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopRecordingInternal$41(File file, File file2, final TLRPC.TL_document tL_document, final int i, final boolean z, final int i2, final boolean z2, final long j) {
        stopRecord();
        final File fileJoinRecord = joinRecord(file, file2, tL_document);
        boolean z3 = BuildVars.LOGS_ENABLED;
        if (fileJoinRecord == null) {
            if (z3) {
                FileLog.d("stop recording recordingAudioFileToSend == null in queue");
                return;
            }
            return;
        }
        if (z3) {
            FileLog.d("stop recording internal in queue " + fileJoinRecord.exists() + " " + fileJoinRecord.length());
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$stopRecordingInternal$40(fileJoinRecord, tL_document, i, z, i2, z2, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleRecordingPause$27(File file, boolean z, TLRPC.TL_document tL_document) {
        boolean zExists = file.exists();
        if (!zExists && BuildVars.DEBUG_VERSION) {
            FileLog.e(new RuntimeException("file not found :( recordTimeCount " + this.recordTimeCount + " writedFrames" + this.writtenFrame));
        }
        if (zExists) {
            MediaDataController.getInstance(this.recordingCurrentAccount).pushDraftVoiceMessage(this.recordDialogId, this.recordTopicId, MediaDataController.DraftVoice.of(this, file.getAbsolutePath(), z, BitmapDescriptorFactory.HUE_RED, VOLUME_NORMAL));
        }
        tL_document.date = ConnectionsManager.getInstance(this.recordingCurrentAccount).getCurrentTime();
        tL_document.size = (int) file.length();
        TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio = new TLRPC.TL_documentAttributeAudio();
        tL_documentAttributeAudio.voice = true;
        byte[] waveform = getWaveform(file.getAbsolutePath());
        tL_documentAttributeAudio.waveform = waveform;
        if (waveform != null) {
            tL_documentAttributeAudio.flags |= 4;
        }
        double d = this.recordTimeCount;
        Double.isNaN(d);
        tL_documentAttributeAudio.duration = d / 1000.0d;
        tL_document.attributes.clear();
        tL_document.attributes.add(tL_documentAttributeAudio);
        NotificationCenter.getInstance(this.recordingCurrentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordPaused, new Object[0]);
        NotificationCenter.getInstance(this.recordingCurrentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.audioDidSent, Integer.valueOf(this.recordingGuid), tL_document, file.getAbsolutePath());
        requestRecordAudioFocus(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleRecordingPause$28(final boolean z) {
        stopRecord();
        final TLRPC.TL_document tL_document = this.recordingAudio;
        final File fileJoinRecord = joinRecord(this.recordingPrevAudioFile, this.recordingAudioFile, tL_document);
        if (tL_document == null || fileJoinRecord == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$toggleRecordingPause$27(fileJoinRecord, z, tL_document);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleRecordingPause$29() {
        this.recordStartRunnable = null;
        NotificationCenter.getInstance(this.recordingCurrentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStartError, Integer.valueOf(this.recordingGuid));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleRecordingPause$30() throws IllegalStateException {
        requestRecordAudioFocus(true);
        this.audioRecorder = new AudioRecord(0, this.sampleRate, 16, 2, this.recordBufferSize);
        this.recordStartTime = System.currentTimeMillis();
        this.writtenFrame = 0;
        this.samplesCount = 0L;
        this.fileBuffer.rewind();
        this.audioRecorder.startRecording();
        this.recordQueue.postRunnable(this.recordRunnable);
        NotificationCenter.getInstance(this.recordingCurrentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordResumed, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleRecordingPause$31() {
        this.recordingPrevAudioFile = this.recordingAudioFile;
        File file = new File(FileLoader.getDirectory(1), System.currentTimeMillis() + "_" + FileLoader.getAttachFileName(this.recordingAudio)) { // from class: org.telegram.messenger.MediaController.16
            @Override // java.io.File
            public boolean delete() {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.e("delete voice file (from resume)");
                }
                return super.delete();
            }
        };
        this.recordingAudioFile = file;
        if (startRecord(file.getPath(), this.sampleRate) != 0) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda32
                @Override // java.lang.Runnable
                public final void run() throws IllegalStateException {
                    this.f$0.lambda$toggleRecordingPause$30();
                }
            });
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$toggleRecordingPause$29();
            }
        });
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("cant resume audio encoder");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleRecordingPause$32(final boolean z) throws IllegalStateException {
        if (this.recordingAudio == null || this.recordingAudioFile == null) {
            return;
        }
        boolean z2 = !this.audioRecorderPaused;
        this.audioRecorderPaused = z2;
        if (!z2) {
            this.recordQueue.cancelRunnable(this.recordRunnable);
            this.recordQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda56
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$toggleRecordingPause$31();
                }
            });
            return;
        }
        AudioRecord audioRecord = this.audioRecorder;
        if (audioRecord == null) {
            return;
        }
        this.sendAfterDone = 4;
        audioRecord.stop();
        this.audioRecorder.release();
        this.audioRecorder = null;
        this.recordQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda55
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$toggleRecordingPause$28(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$trimCurrentRecording$26(File file, long j, long j2, Runnable runnable) {
        if (cropOpusFile(this.recordingAudioFile.getAbsolutePath(), file.getAbsolutePath(), j, j2)) {
            File file2 = this.recordingAudioFile;
            if (file2 != null) {
                file2.delete();
            }
            this.recordingAudioFile = file;
            this.recordTimeCount = j2 - j;
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
            }
        }
    }

    public static void loadGalleryPhotosAlbums(final int i) {
        Thread thread = new Thread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.lambda$loadGalleryPhotosAlbums$52(i);
            }
        });
        thread.setPriority(1);
        thread.start();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0061 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int makeVideoBitrate(int i, int i2, int i3, int i4, int i5) {
        int i6;
        float f;
        int iMin = Math.min(i4, i5);
        float f2 = VOLUME_NORMAL;
        if (iMin >= 1080) {
            i6 = VIDEO_BITRATE_1080;
        } else {
            if (Math.min(i4, i5) < 720) {
                if (Math.min(i4, i5) >= 480) {
                    i6 = VIDEO_BITRATE_480;
                    f = 0.75f;
                    f2 = 0.9f;
                } else {
                    i6 = VIDEO_BITRATE_360;
                    f = 0.6f;
                    f2 = 0.7f;
                }
                int iMin2 = (int) (((int) (i3 / Math.min(i / i4, i2 / i5))) * f);
                int videoBitrateWithFactor = (int) (getVideoBitrateWithFactor(f2) / (921600.0f / (i5 * i4)));
                return i3 >= videoBitrateWithFactor ? iMin2 : iMin2 > i6 ? i6 : Math.max(iMin2, videoBitrateWithFactor);
            }
            i6 = 2600000;
        }
        f = VOLUME_NORMAL;
        int iMin22 = (int) (((int) (i3 / Math.min(i / i4, i2 / i5))) * f);
        int videoBitrateWithFactor2 = (int) (getVideoBitrateWithFactor(f2) / (921600.0f / (i5 * i4)));
        if (i3 >= videoBitrateWithFactor2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playNextMessageWithoutOrder(boolean z) {
        MessageObject messageObject;
        int i;
        ArrayList<MessageObject> arrayList = SharedConfig.shuffleMusic ? this.shuffledPlaylist : this.playlist;
        if (!z || (!((i = SharedConfig.repeatMode) == 2 || (i == 1 && arrayList.size() == 1)) || this.forceLoopCurrentPlaylist)) {
            if (traversePlaylist(arrayList, SharedConfig.playOrderReversed ? 1 : -1) && z && SharedConfig.repeatMode == 0 && !this.forceLoopCurrentPlaylist) {
                VideoPlayer videoPlayer = this.audioPlayer;
                if (videoPlayer == null && this.videoPlayer == null) {
                    return;
                }
                if (videoPlayer != null) {
                    try {
                        videoPlayer.releasePlayer(true);
                    } catch (Exception e) {
                        FileLog.e(e);
                    }
                    this.audioPlayer = null;
                    Theme.unrefAudioVisualizeDrawable(this.playingMessageObject);
                } else {
                    this.currentAspectRatioFrameLayout = null;
                    this.currentTextureViewContainer = null;
                    this.currentAspectRatioFrameLayoutReady = false;
                    this.currentTextureView = null;
                    this.videoPlayer.releasePlayer(true);
                    this.videoPlayer = null;
                    try {
                        this.baseActivity.getWindow().clearFlags(128);
                    } catch (Exception e2) {
                        FileLog.e(e2);
                    }
                    AndroidUtilities.cancelRunOnUIThread(this.setLoadingRunnable);
                    FileLoader.getInstance(this.playingMessageObject.currentAccount).removeLoadingVideo(this.playingMessageObject.getDocument(), true, false);
                }
                stopProgressTimer();
                this.lastProgress = 0L;
                this.isPaused = true;
                MessageObject messageObject2 = this.playingMessageObject;
                messageObject2.audioProgress = BitmapDescriptorFactory.HUE_RED;
                messageObject2.audioProgressSec = 0;
                NotificationCenter.getInstance(messageObject2.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingProgressDidChanged, Integer.valueOf(this.playingMessageObject.getId()), 0);
                NotificationCenter.getInstance(this.playingMessageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingPlayStateChanged, Integer.valueOf(this.playingMessageObject.getId()));
                return;
            }
            int i2 = this.currentPlaylistNum;
            if (i2 < 0 || i2 >= arrayList.size()) {
                return;
            }
            MessageObject messageObject3 = this.playingMessageObject;
            if (messageObject3 != null) {
                messageObject3.resetPlayingProgress();
            }
            this.playMusicAgain = true;
            messageObject = arrayList.get(this.currentPlaylistNum);
        } else {
            cleanupPlayer(false, false);
            messageObject = arrayList.get(this.currentPlaylistNum);
            messageObject.audioProgress = BitmapDescriptorFactory.HUE_RED;
            messageObject.audioProgressSec = 0;
        }
        playMessage(messageObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processMediaObserver(Uri uri) {
        int i;
        Cursor cursorQuery = null;
        try {
            try {
                android.graphics.Point realScreenSize = AndroidUtilities.getRealScreenSize();
                cursorQuery = ApplicationLoader.applicationContext.getContentResolver().query(uri, this.mediaProjections, null, null, "date_added DESC LIMIT 1");
                final ArrayList arrayList = new ArrayList();
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        String string = cursorQuery.getString(0);
                        String string2 = cursorQuery.getString(1);
                        String string3 = cursorQuery.getString(2);
                        long j = cursorQuery.getLong(3);
                        String string4 = cursorQuery.getString(4);
                        int i2 = cursorQuery.getInt(5);
                        int i3 = cursorQuery.getInt(6);
                        if (string == null || !string.toLowerCase().contains("screenshot")) {
                            if ((string2 == null || !string2.toLowerCase().contains("screenshot")) && ((string3 == null || !string3.toLowerCase().contains("screenshot")) && (string4 == null || !string4.toLowerCase().contains("screenshot")))) {
                            }
                        }
                        if (i2 == 0 || i3 == 0) {
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            options.inJustDecodeBounds = true;
                            BitmapFactory.decodeFile(string, options);
                            i2 = options.outWidth;
                            i3 = options.outHeight;
                        }
                        if (i2 > 0 && i3 > 0) {
                            try {
                                i = realScreenSize.x;
                            } catch (Exception unused) {
                                arrayList.add(Long.valueOf(j));
                            }
                            if ((i2 != i || i3 != realScreenSize.y) && (i3 != i || i2 != realScreenSize.y)) {
                            }
                        }
                        arrayList.add(Long.valueOf(j));
                    }
                    cursorQuery.close();
                }
                if (!arrayList.isEmpty()) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda30
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$processMediaObserver$6(arrayList);
                        }
                    });
                }
                if (cursorQuery == null) {
                    return;
                }
            } catch (Exception e) {
                FileLog.e(e);
                if (cursorQuery == null) {
                    return;
                }
            }
            try {
                cursorQuery.close();
            } catch (Exception unused2) {
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                try {
                    cursorQuery.close();
                } catch (Exception unused3) {
                }
            }
            throw th;
        }
    }

    private void raiseToSpeakUpdated(boolean z) {
        if (this.recordingAudio != null) {
            toggleRecordingPause(false);
            return;
        }
        if (!z) {
            stopRecording(2, false, 0, false, 0L);
            return;
        }
        int currentAccount = this.raiseChat.getCurrentAccount();
        long dialogId = this.raiseChat.getDialogId();
        MessageObject threadMessage = this.raiseChat.getThreadMessage();
        int classGuid = this.raiseChat.getClassGuid();
        ChatActivity chatActivity = this.raiseChat;
        String str = chatActivity != null ? chatActivity.quickReplyShortcut : null;
        int quickReplyId = chatActivity != null ? chatActivity.getQuickReplyId() : 0;
        ChatActivity chatActivity2 = this.raiseChat;
        long sendMonoForumPeerId = chatActivity2 != null ? chatActivity2.getSendMonoForumPeerId() : 0L;
        ChatActivity chatActivity3 = this.raiseChat;
        startRecording(currentAccount, dialogId, null, threadMessage, null, classGuid, false, str, quickReplyId, sendMonoForumPeerId, chatActivity3 != null ? chatActivity3.getSendMessageSuggestionParams() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean restoreMusicPlaylistState() {
        MessageObject messageObject;
        SavedMusicPlaylistState savedMusicPlaylistState = this.savedMusicPlaylistState;
        if (savedMusicPlaylistState == null) {
            return false;
        }
        this.savedMusicPlaylistState = null;
        ArrayList<MessageObject> arrayList = SharedConfig.shuffleMusic ? this.shuffledPlaylist : this.playlist;
        if (arrayList == null || (messageObject = arrayList.get(this.currentPlaylistNum)) == null || messageObject.getDialogId() != savedMusicPlaylistState.playingMessage.getDialogId() || messageObject.getId() != savedMusicPlaylistState.playingMessage.getId()) {
            return false;
        }
        this.playMusicAgain = false;
        float f = savedMusicPlaylistState.progress;
        messageObject.forceSeekTo = f;
        messageObject.audioProgress = f;
        messageObject.audioProgressMs = savedMusicPlaylistState.progressMs;
        messageObject.audioProgressSec = savedMusicPlaylistState.progressSec;
        playMessage(messageObject);
        pauseMessage(messageObject, false);
        return true;
    }

    private boolean resumeAudio(MessageObject messageObject) {
        if ((this.audioPlayer != null || this.videoPlayer != null) && messageObject != null && this.playingMessageObject != null && isSamePlayingMessage(messageObject)) {
            try {
                startProgressTimer(this.playingMessageObject);
                ValueAnimator valueAnimator = this.audioVolumeAnimator;
                if (valueAnimator != null) {
                    valueAnimator.removeAllListeners();
                    this.audioVolumeAnimator.cancel();
                }
                if (messageObject.isVoice() || messageObject.isRoundVideo()) {
                    this.audioVolume = VOLUME_NORMAL;
                    setPlayerVolume();
                } else {
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.audioVolume, VOLUME_NORMAL);
                    this.audioVolumeAnimator = valueAnimatorOfFloat;
                    valueAnimatorOfFloat.addUpdateListener(this.audioVolumeUpdateListener);
                    this.audioVolumeAnimator.setDuration(300L);
                    this.audioVolumeAnimator.start();
                }
                VideoPlayer videoPlayer = this.audioPlayer;
                if (videoPlayer != null || (videoPlayer = this.videoPlayer) != null) {
                    videoPlayer.play();
                }
                checkAudioFocus(messageObject);
                this.isPaused = false;
                NotificationCenter.getInstance(this.playingMessageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingPlayStateChanged, Integer.valueOf(this.playingMessageObject.getId()));
                try {
                    CastSync.check(1);
                    if (!this.ignorePlayerUpdate) {
                        CastSync.setPlaying(true);
                    }
                } catch (Exception e) {
                    FileLog.e(e);
                }
                return true;
            } catch (Exception e2) {
                FileLog.e(e2);
            }
        }
        return false;
    }

    public static void saveFile(String str, Context context, int i, String str2, String str3) {
        saveFile(str, context, i, str2, str3, null);
    }

    public static void saveFile(String str, Context context, int i, String str2, String str3, Utilities.Callback<Uri> callback) {
        saveFile(str, context, i, str2, str3, callback, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void saveFile(String str, Context context, final int i, final String str2, final String str3, final Utilities.Callback<Uri> callback, boolean z) {
        final File file;
        final AlertDialog alertDialog;
        if (str == null || context == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            File file2 = new File(str);
            file = (!file2.exists() || AndroidUtilities.isInternalUri(Uri.fromFile(file2))) ? null : file2;
        }
        if (file == null) {
            return;
        }
        final boolean[] zArr = {false};
        if (file.exists()) {
            final boolean[] zArr2 = new boolean[1];
            if (i != 0) {
                try {
                    final AlertDialog alertDialog2 = new AlertDialog(context, 2);
                    alertDialog2.setMessage(LocaleController.getString(R.string.Loading));
                    alertDialog2.setCanceledOnTouchOutside(false);
                    alertDialog2.setCancelable(true);
                    alertDialog2.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda12
                        @Override // android.content.DialogInterface.OnCancelListener
                        public final void onCancel(DialogInterface dialogInterface) {
                            MediaController.lambda$saveFile$44(zArr, dialogInterface);
                        }
                    });
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda13
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaController.lambda$saveFile$45(zArr2, alertDialog2);
                        }
                    }, 250L);
                    alertDialog = alertDialog2;
                } catch (Exception e) {
                    FileLog.e(e);
                }
            } else {
                alertDialog = null;
            }
            new Thread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    MediaController.lambda$saveFile$50(i, file, str2, alertDialog, zArr, str3, callback, zArr2);
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Uri saveFileInternal(int i, File file, String str) throws IOException {
        Uri contentUri;
        try {
            ContentValues contentValues = new ContentValues();
            String fileExtension = FileLoader.getFileExtension(file);
            String mimeTypeFromExtension = fileExtension != null ? MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtension) : null;
            if ((i == 0 || i == 1) && mimeTypeFromExtension != null) {
                if (mimeTypeFromExtension.startsWith("image")) {
                    i = 0;
                }
                if (mimeTypeFromExtension.startsWith(MediaStreamTrack.VIDEO_TRACK_KIND)) {
                    i = 1;
                }
            }
            if (i == 0) {
                if (str == null) {
                    str = AndroidUtilities.generateFileName(0, fileExtension);
                }
                contentUri = MediaStore.Images.Media.getContentUri("external_primary");
                contentValues.put("relative_path", new File(Environment.DIRECTORY_PICTURES, "Telegram") + File.separator);
                contentValues.put("_display_name", str);
                contentValues.put("mime_type", mimeTypeFromExtension);
            } else {
                if (i == 1) {
                    if (str == null) {
                        str = AndroidUtilities.generateFileName(1, fileExtension);
                    }
                    contentValues.put("relative_path", new File(Environment.DIRECTORY_MOVIES, "Telegram") + File.separator);
                    contentUri = MediaStore.Video.Media.getContentUri("external_primary");
                } else if (i == 2) {
                    if (str == null) {
                        str = file.getName();
                    }
                    contentValues.put("relative_path", new File(Environment.DIRECTORY_DOWNLOADS, "Telegram") + File.separator);
                    contentUri = MediaStore.Downloads.getContentUri("external_primary");
                } else {
                    if (str == null) {
                        str = file.getName();
                    }
                    contentValues.put("relative_path", new File(Environment.DIRECTORY_MUSIC, "Telegram") + File.separator);
                    contentUri = MediaStore.Audio.Media.getContentUri("external_primary");
                }
                contentValues.put("_display_name", str);
            }
            contentValues.put("mime_type", mimeTypeFromExtension);
            Uri uriInsert = ApplicationLoader.applicationContext.getContentResolver().insert(contentUri, contentValues);
            if (uriInsert != null) {
                FileInputStream fileInputStream = new FileInputStream(file);
                AndroidUtilities.copyFile(fileInputStream, ApplicationLoader.applicationContext.getContentResolver().openOutputStream(uriInsert));
                fileInputStream.close();
            }
            return uriInsert;
        } catch (Exception e) {
            FileLog.e(e);
            return null;
        }
    }

    public static void saveFilesFromMessages(Context context, AccountInstance accountInstance, ArrayList<MessageObject> arrayList, MessagesStorage.IntCallback intCallback) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        new MediaLoader(context, accountInstance, arrayList, intCallback).start();
    }

    private boolean saveMusicPlaylistStateIfNeeded() {
        MessageObject messageObject = this.playingMessageObject;
        if (messageObject == null || !messageObject.isMusic() || this.playlist.isEmpty()) {
            return this.savedMusicPlaylistState != null;
        }
        this.savedMusicPlaylistState = new SavedMusicPlaylistState(this.playingMessageObject);
        return true;
    }

    public static MediaCodecInfo selectCodec(String str) {
        int codecCount = MediaCodecList.getCodecCount();
        MediaCodecInfo mediaCodecInfo = null;
        for (int i = 0; i < codecCount; i++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
            if (codecInfoAt.isEncoder()) {
                for (String str2 : codecInfoAt.getSupportedTypes()) {
                    if (str2.equalsIgnoreCase(str)) {
                        String name = codecInfoAt.getName();
                        if (name != null && (!name.equals("OMX.SEC.avc.enc") || name.equals("OMX.SEC.AVC.Encoder"))) {
                            return codecInfoAt;
                        }
                        mediaCodecInfo = codecInfoAt;
                    }
                }
            }
        }
        return mediaCodecInfo;
    }

    public static int selectColorFormat(MediaCodecInfo mediaCodecInfo, String str) {
        int i;
        MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int[] iArr = capabilitiesForType.colorFormats;
            if (i2 >= iArr.length) {
                return i3;
            }
            i = iArr[i2];
            if (isRecognizedFormat(i)) {
                if (!mediaCodecInfo.getName().equals("OMX.SEC.AVC.Encoder") || i != 19) {
                    break;
                }
                i3 = i;
            }
            i2++;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void setBluetoothScoOn(boolean z) {
        AudioManager audioManager = (AudioManager) ApplicationLoader.applicationContext.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
        if (SharedConfig.recordViaSco && !PermissionRequest.hasPermission("android.permission.BLUETOOTH_CONNECT")) {
            SharedConfig.recordViaSco = false;
            SharedConfig.saveConfig();
        }
        if (!(audioManager.isBluetoothScoAvailableOffCall() && SharedConfig.recordViaSco) && z) {
            return;
        }
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != null) {
            try {
                if (defaultAdapter.getProfileConnectionState(1) != 2) {
                    if (z) {
                        return;
                    }
                }
            } catch (SecurityException unused) {
                return;
            } catch (Throwable th) {
                FileLog.e(th);
                return;
            }
        } else if (z) {
        }
        if (z && !audioManager.isBluetoothScoOn()) {
            audioManager.startBluetoothSco();
        } else {
            if (z || !audioManager.isBluetoothScoOn()) {
                return;
            }
            audioManager.stopBluetoothSco();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayerVolume() {
        try {
            boolean z = this.isSilent;
            float f = BitmapDescriptorFactory.HUE_RED;
            float f2 = z ? BitmapDescriptorFactory.HUE_RED : this.audioFocus != 1 ? VOLUME_NORMAL : VOLUME_DUCK;
            VideoPlayer videoPlayer = this.audioPlayer;
            if (videoPlayer == null) {
                videoPlayer = this.videoPlayer;
                if (videoPlayer == null) {
                    return;
                }
                if (!CastSync.isActive()) {
                    f = f2;
                }
            } else if (!CastSync.isActive()) {
                f = this.audioVolume * f2;
            }
            videoPlayer.setVolume(f);
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    private void setUseFrontSpeaker(boolean z) {
        boolean z2;
        this.useFrontSpeaker = z;
        AudioManager audioManager = NotificationsController.audioManager;
        if (z) {
            z2 = false;
            audioManager.setBluetoothScoOn(false);
        } else {
            z2 = true;
        }
        audioManager.setSpeakerphoneOn(z2);
    }

    private void sortPlaylist() {
        Collections.sort(this.playlist, new Comparator() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda44
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MediaController.lambda$sortPlaylist$13((MessageObject) obj, (MessageObject) obj2);
            }
        });
    }

    private void startAudioAgain(boolean z) {
        MessageObject messageObject = this.playingMessageObject;
        if (messageObject == null) {
            return;
        }
        NotificationCenter.getInstance(messageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.audioRouteChanged, Boolean.valueOf(this.useFrontSpeaker));
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.setStreamType(this.useFrontSpeaker ? 0 : 3);
            if (z) {
                lambda$startAudioAgain$7(this.playingMessageObject);
                return;
            }
            if (this.videoPlayer.getCurrentPosition() < 1000) {
                this.videoPlayer.seekTo(0L);
            }
            this.videoPlayer.play();
            return;
        }
        VideoPlayer videoPlayer2 = this.audioPlayer;
        boolean z2 = videoPlayer2 != null;
        final MessageObject messageObject2 = this.playingMessageObject;
        float f = messageObject2.audioProgress;
        int i = messageObject2.audioPlayerDuration;
        if (z || videoPlayer2 == null || !videoPlayer2.isPlaying() || i * f > VOLUME_NORMAL) {
            messageObject2.audioProgress = f;
        } else {
            messageObject2.audioProgress = BitmapDescriptorFactory.HUE_RED;
        }
        cleanupPlayer(false, true);
        playMessage(messageObject2);
        if (z) {
            if (z2) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda45
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$startAudioAgain$7(messageObject2);
                    }
                }, 100L);
            } else {
                lambda$startAudioAgain$7(messageObject2);
            }
        }
    }

    private void startProgressTimer(MessageObject messageObject) {
        synchronized (this.progressTimerSync) {
            java.util.Timer timer = this.progressTimer;
            if (timer != null) {
                try {
                    timer.cancel();
                    this.progressTimer = null;
                } catch (Exception e) {
                    FileLog.e(e);
                }
                messageObject.getFileName();
                java.util.Timer timer2 = new java.util.Timer();
                this.progressTimer = timer2;
                timer2.schedule(new AnonymousClass5(messageObject), 0L, 17L);
            } else {
                messageObject.getFileName();
                java.util.Timer timer22 = new java.util.Timer();
                this.progressTimer = timer22;
                timer22.schedule(new AnonymousClass5(messageObject), 0L, 17L);
            }
        }
    }

    private native int startRecord(String str, int i);

    private boolean startVideoConvertFromQueue() {
        if (this.videoConvertQueue.isEmpty()) {
            return false;
        }
        VideoConvertMessage videoConvertMessage = this.videoConvertQueue.get(0);
        VideoEditedInfo videoEditedInfo = videoConvertMessage.videoEditedInfo;
        synchronized (this.videoConvertSync) {
            if (videoEditedInfo != null) {
                try {
                    videoEditedInfo.canceled = false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        VideoConvertRunnable.runConversion(videoConvertMessage);
        return true;
    }

    private void stopProgressTimer() {
        synchronized (this.progressTimerSync) {
            java.util.Timer timer = this.progressTimer;
            if (timer != null) {
                try {
                    timer.cancel();
                    this.progressTimer = null;
                } catch (Exception e) {
                    FileLog.e(e);
                }
            }
        }
    }

    private native void stopRecord();

    /* JADX INFO: Access modifiers changed from: private */
    public void stopRecordingInternal(final int i, final boolean z, final int i2, final boolean z2, final long j) {
        final File file;
        if (i == 0 || (file = this.recordingAudioFile) == null) {
            AutoDeleteMediaTask.unlockFile(this.recordingAudioFile);
            File file2 = this.recordingAudioFile;
            if (file2 != null) {
                file2.delete();
            }
            requestRecordAudioFocus(false);
        } else {
            final TLRPC.TL_document tL_document = this.recordingAudio;
            final File file3 = this.recordingPrevAudioFile;
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("stop recording internal filename " + this.recordingAudioFile.getPath());
            }
            this.fileEncodingQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$stopRecordingInternal$41(file3, file, tL_document, i, z, i2, z2, j);
                }
            });
        }
        try {
            AudioRecord audioRecord = this.audioRecorder;
            if (audioRecord != null) {
                audioRecord.release();
                this.audioRecorder = null;
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
        this.recordingAudio = null;
        this.recordingPrevAudioFile = null;
        this.recordingAudioFile = null;
        this.manualRecording = false;
        this.raiseToEarRecord = false;
        this.ignoreOnPause = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean traversePlaylist(ArrayList<MessageObject> arrayList, int i) {
        int i2;
        MessageObject messageObject;
        int i3 = this.currentPlaylistNum;
        boolean z = ConnectionsManager.getInstance(UserConfig.selectedAccount).getConnectionState() == 2;
        this.currentPlaylistNum += i;
        if (z) {
            while (this.currentPlaylistNum < arrayList.size() && (i2 = this.currentPlaylistNum) >= 0 && ((messageObject = arrayList.get(i2)) == null || !messageObject.mediaExists)) {
                this.currentPlaylistNum += i;
            }
        }
        if (this.currentPlaylistNum < arrayList.size() && this.currentPlaylistNum >= 0) {
            return false;
        }
        this.currentPlaylistNum = this.currentPlaylistNum >= arrayList.size() ? 0 : arrayList.size() - 1;
        if (!z) {
            return true;
        }
        while (true) {
            int i4 = this.currentPlaylistNum;
            if (i4 >= 0 && i4 < arrayList.size()) {
                int i5 = this.currentPlaylistNum;
                if (i <= 0) {
                    if (i5 < i3) {
                        break;
                    }
                } else {
                    if (i5 > i3) {
                        break;
                    }
                    MessageObject messageObject2 = arrayList.get(this.currentPlaylistNum);
                    if (messageObject2 != null && messageObject2.mediaExists) {
                        break;
                    }
                    this.currentPlaylistNum += i;
                }
            } else {
                break;
            }
        }
        if (this.currentPlaylistNum < arrayList.size() && this.currentPlaylistNum >= 0) {
            return true;
        }
        this.currentPlaylistNum = this.currentPlaylistNum < arrayList.size() ? arrayList.size() - 1 : 0;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVideoState(MessageObject messageObject, int[] iArr, boolean z, boolean z2, int i) {
        MessageObject messageObject2;
        if (this.videoPlayer == null) {
            return;
        }
        try {
            if (i == 4 || i == 1) {
                this.baseActivity.getWindow().clearFlags(128);
            } else {
                this.baseActivity.getWindow().addFlags(128);
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
        if (i == 3) {
            this.playerWasReady = true;
            MessageObject messageObject3 = this.playingMessageObject;
            if (messageObject3 != null && (messageObject3.isVideo() || this.playingMessageObject.isRoundVideo())) {
                AndroidUtilities.cancelRunOnUIThread(this.setLoadingRunnable);
                FileLoader.getInstance(messageObject.currentAccount).removeLoadingVideo(this.playingMessageObject.getDocument(), true, false);
            }
            this.currentAspectRatioFrameLayoutReady = true;
            return;
        }
        if (i == 2) {
            if (!z2 || (messageObject2 = this.playingMessageObject) == null) {
                return;
            }
            if (messageObject2.isVideo() || this.playingMessageObject.isRoundVideo()) {
                if (this.playerWasReady) {
                    this.setLoadingRunnable.run();
                    return;
                } else {
                    AndroidUtilities.runOnUIThread(this.setLoadingRunnable, 1000L);
                    return;
                }
            }
            return;
        }
        if (this.videoPlayer.isPlaying() && i == 4) {
            MessageObject messageObject4 = this.playingMessageObject;
            if (messageObject4 == null || !messageObject4.isVideo() || z || (iArr != null && iArr[0] >= 4)) {
                if (restoreMusicPlaylistState()) {
                    return;
                }
                cleanupPlayer(true, hasNoNextVoiceOrRoundVideoMessage(), true, false);
            } else {
                this.videoPlayer.seekTo(0L);
                if (iArr != null) {
                    iArr[0] = iArr[0] + 1;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native int writeFrame(ByteBuffer byteBuffer, int i);

    public void cancelVideoConvert(MessageObject messageObject) {
        if (messageObject == null || this.videoConvertQueue.isEmpty()) {
            return;
        }
        for (int i = 0; i < this.videoConvertQueue.size(); i++) {
            VideoConvertMessage videoConvertMessage = this.videoConvertQueue.get(i);
            MessageObject messageObject2 = videoConvertMessage.messageObject;
            if (messageObject2.equals(messageObject) && messageObject2.currentAccount == messageObject.currentAccount) {
                if (i == 0) {
                    synchronized (this.videoConvertSync) {
                        videoConvertMessage.videoEditedInfo.canceled = true;
                    }
                    return;
                } else {
                    this.foregroundConvertingMessages.remove(this.videoConvertQueue.remove(i));
                    checkForegroundConvertMessage(true);
                    return;
                }
            }
        }
    }

    protected void checkIsNextMediaFileDownloaded() {
        MessageObject messageObject = this.playingMessageObject;
        if (messageObject == null || !messageObject.isMusic()) {
            return;
        }
        checkIsNextMusicFileDownloaded(this.playingMessageObject.currentAccount);
    }

    public void checkVolumeBarUI() {
        if (this.isSilent) {
            return;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (Math.abs(jCurrentTimeMillis - volumeBarLastTimeShown) < 5000) {
                return;
            }
            AudioManager audioManager = (AudioManager) ApplicationLoader.applicationContext.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
            int i = this.useFrontSpeaker ? 0 : 3;
            int streamVolume = audioManager.getStreamVolume(i);
            if (streamVolume == 0) {
                audioManager.adjustStreamVolume(i, streamVolume, 1);
                volumeBarLastTimeShown = jCurrentTimeMillis;
            }
        } catch (Exception unused) {
        }
    }

    public void cleanRecording(boolean z) {
        File file;
        File file2;
        this.recordingAudio = null;
        AutoDeleteMediaTask.unlockFile(this.recordingAudioFile);
        if (z && (file2 = this.recordingAudioFile) != null) {
            try {
                file2.delete();
            } catch (Exception e) {
                FileLog.e(e);
            }
        }
        this.recordingAudioFile = null;
        if (z && (file = this.recordingPrevAudioFile) != null) {
            file.delete();
        }
        this.recordingPrevAudioFile = null;
        this.manualRecording = false;
        this.raiseToEarRecord = false;
        this.ignoreOnPause = false;
    }

    public void cleanup() {
        cleanupPlayer(true, true);
        this.audioInfo = null;
        this.playMusicAgain = false;
        for (int i = 0; i < 4; i++) {
            DownloadController.getInstance(i).cleanup();
        }
        this.videoConvertQueue.clear();
        this.generatingWaveform.clear();
        this.savedMusicPlaylistState = null;
        this.voiceMessagesPlaylist = null;
        this.voiceMessagesPlaylistMap = null;
        clearPlaylist();
        cancelVideoConvert(null);
    }

    public void cleanupPlayer(boolean z, boolean z2) {
        cleanupPlayer(z, z2, false, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x017a A[PHI: r3
      0x017a: PHI (r3v24 int) = (r3v21 int), (r3v25 int), (r3v25 int) binds: [B:59:0x015c, B:61:0x0162, B:63:0x0178] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void cleanupPlayer(boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        PipRoundVideoView pipRoundVideoView;
        MessageObject messageObject;
        if (z2 && restoreMusicPlaylistState()) {
            return;
        }
        if (this.audioPlayer != null) {
            ValueAnimator valueAnimator = this.audioVolumeAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllUpdateListeners();
                this.audioVolumeAnimator.cancel();
            }
            if (CastSync.isActive() || !this.audioPlayer.isPlaying() || (messageObject = this.playingMessageObject) == null || messageObject.isVoice()) {
                try {
                    this.audioPlayer.releasePlayer(true);
                } catch (Exception e) {
                    FileLog.e(e);
                }
            } else {
                final VideoPlayer videoPlayer = this.audioPlayer;
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.audioVolume, BitmapDescriptorFactory.HUE_RED);
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda17
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$cleanupPlayer$10(videoPlayer, valueAnimator2);
                    }
                });
                valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.messenger.MediaController.6
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        try {
                            videoPlayer.releasePlayer(true);
                        } catch (Exception e2) {
                            FileLog.e(e2);
                        }
                    }
                });
                valueAnimatorOfFloat.setDuration(300L);
                valueAnimatorOfFloat.start();
            }
            this.audioPlayer = null;
            Theme.unrefAudioVisualizeDrawable(this.playingMessageObject);
        } else {
            VideoPlayer videoPlayer2 = this.videoPlayer;
            if (videoPlayer2 != null) {
                this.currentAspectRatioFrameLayout = null;
                this.currentTextureViewContainer = null;
                this.currentAspectRatioFrameLayoutReady = false;
                this.isDrawingWasReady = false;
                this.currentTextureView = null;
                this.goingToShowMessageObject = null;
                if (z4) {
                    PhotoViewer.getInstance().injectVideoPlayer(this.videoPlayer);
                    MessageObject messageObject2 = this.playingMessageObject;
                    this.goingToShowMessageObject = messageObject2;
                    NotificationCenter.getInstance(messageObject2.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingGoingToStop, this.playingMessageObject, Boolean.TRUE);
                } else {
                    long currentPosition = videoPlayer2.getCurrentPosition();
                    MessageObject messageObject3 = this.playingMessageObject;
                    if (messageObject3 != null && messageObject3.isVideo() && currentPosition > 0) {
                        MessageObject messageObject4 = this.playingMessageObject;
                        messageObject4.audioProgressMs = (int) currentPosition;
                        NotificationCenter.getInstance(messageObject4.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingGoingToStop, this.playingMessageObject, Boolean.FALSE);
                    }
                    this.videoPlayer.releasePlayer(true);
                    this.videoPlayer = null;
                }
                try {
                    this.baseActivity.getWindow().clearFlags(128);
                } catch (Exception e2) {
                    FileLog.e(e2);
                }
                if (this.playingMessageObject != null && !z4) {
                    AndroidUtilities.cancelRunOnUIThread(this.setLoadingRunnable);
                    FileLoader.getInstance(this.playingMessageObject.currentAccount).removeLoadingVideo(this.playingMessageObject.getDocument(), true, false);
                }
            }
        }
        stopProgressTimer();
        this.lastProgress = 0L;
        this.isPaused = false;
        MessageObject messageObject5 = this.playingMessageObject;
        if (messageObject5 != null) {
            if (this.downloadingCurrentMessage) {
                FileLoader.getInstance(messageObject5.currentAccount).cancelLoadFile(this.playingMessageObject.getDocument());
            }
            MessageObject messageObject6 = this.playingMessageObject;
            if (z) {
                messageObject6.resetPlayingProgress();
                NotificationCenter.getInstance(messageObject6.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingProgressDidChanged, Integer.valueOf(this.playingMessageObject.getId()), 0);
            }
            this.playingMessageObject = null;
            this.downloadingCurrentMessage = false;
            if (z) {
                NotificationsController.audioManager.abandonAudioFocus(this);
                this.hasAudioFocus = 0;
                ArrayList<MessageObject> arrayList = this.voiceMessagesPlaylist;
                int iIndexOf = -1;
                if (arrayList != null) {
                    if (!z3 || (iIndexOf = arrayList.indexOf(messageObject6)) < 0) {
                        this.voiceMessagesPlaylist = null;
                        this.voiceMessagesPlaylistMap = null;
                    } else {
                        this.voiceMessagesPlaylist.remove(iIndexOf);
                        this.voiceMessagesPlaylistMap.remove(messageObject6.getId());
                        if (this.voiceMessagesPlaylist.isEmpty()) {
                        }
                    }
                }
                ArrayList<MessageObject> arrayList2 = this.voiceMessagesPlaylist;
                if (arrayList2 == null || iIndexOf >= arrayList2.size()) {
                    if ((messageObject6.isVoice() || messageObject6.isRoundVideo()) && messageObject6.getId() != 0) {
                        startRecordingIfFromSpeaker();
                    }
                    NotificationCenter.getInstance(messageObject6.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingDidReset, Integer.valueOf(messageObject6.getId()), Boolean.valueOf(z2));
                    this.pipSwitchingState = 0;
                    pipRoundVideoView = this.pipRoundVideoView;
                    z5 = pipRoundVideoView == null;
                    z5 = false;
                    if (z2) {
                        ApplicationLoader.applicationContext.stopService(new Intent(ApplicationLoader.applicationContext, (Class<?>) MusicPlayerService.class));
                    }
                } else {
                    MessageObject messageObject7 = this.voiceMessagesPlaylist.get(iIndexOf);
                    playMessage(messageObject7);
                    if (messageObject7.isRoundVideo() || (pipRoundVideoView = this.pipRoundVideoView) == null) {
                        z5 = true;
                        if (z2) {
                        }
                    }
                }
                pipRoundVideoView.close(true);
                this.pipRoundVideoView = null;
                if (z2) {
                }
            } else {
                z5 = false;
                if (z2) {
                }
            }
        } else {
            z5 = false;
        }
        if (!z5 && z3 && !SharedConfig.enabledRaiseTo(true)) {
            ChatActivity chatActivity = this.raiseChat;
            stopRaiseToEarSensors(chatActivity, false, false);
            this.raiseChat = chatActivity;
        }
        if (z2) {
            CastSync.stop();
        }
    }

    public boolean currentPlaylistIsGlobalSearch() {
        return this.playlistGlobalSearchParams != null;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        ArrayList<MessageObject> arrayList;
        int iIndexOf;
        int i3 = 0;
        if (i == NotificationCenter.fileLoaded || i == NotificationCenter.httpFileDidLoad) {
            String str = (String) objArr[0];
            MessageObject messageObject = this.playingMessageObject;
            if (messageObject != null && messageObject.currentAccount == i2 && FileLoader.getAttachFileName(messageObject.getDocument()).equals(str)) {
                if (this.downloadingCurrentMessage) {
                    this.playMusicAgain = true;
                    playMessage(this.playingMessageObject);
                    return;
                } else {
                    if (this.audioInfo == null) {
                        try {
                            this.audioInfo = AudioInfo.getAudioInfo(FileLoader.getInstance(UserConfig.selectedAccount).getPathToMessage(this.playingMessageObject.messageOwner));
                            return;
                        } catch (Exception e) {
                            FileLog.e(e);
                            return;
                        }
                    }
                    return;
                }
            }
            return;
        }
        if (i == NotificationCenter.messagesDeleted) {
            if (((Boolean) objArr[2]).booleanValue()) {
                return;
            }
            long jLongValue = ((Long) objArr[1]).longValue();
            ArrayList arrayList2 = (ArrayList) objArr[0];
            MessageObject messageObject2 = this.playingMessageObject;
            if (messageObject2 != null && jLongValue == messageObject2.messageOwner.peer_id.channel_id && arrayList2.contains(Integer.valueOf(messageObject2.getId()))) {
                cleanupPlayer(true, true);
            }
            ArrayList<MessageObject> arrayList3 = this.voiceMessagesPlaylist;
            if (arrayList3 == null || arrayList3.isEmpty() || jLongValue != this.voiceMessagesPlaylist.get(0).messageOwner.peer_id.channel_id) {
                return;
            }
            while (i3 < arrayList2.size()) {
                Integer num = (Integer) arrayList2.get(i3);
                MessageObject messageObject3 = this.voiceMessagesPlaylistMap.get(num.intValue());
                this.voiceMessagesPlaylistMap.remove(num.intValue());
                if (messageObject3 != null) {
                    this.voiceMessagesPlaylist.remove(messageObject3);
                }
                i3++;
            }
            return;
        }
        if (i == NotificationCenter.removeAllMessagesFromDialog) {
            long jLongValue2 = ((Long) objArr[0]).longValue();
            MessageObject messageObject4 = this.playingMessageObject;
            if (messageObject4 == null || messageObject4.getDialogId() != jLongValue2) {
                return;
            }
            cleanupPlayer(false, true);
            return;
        }
        if (i == NotificationCenter.musicDidLoad) {
            long jLongValue3 = ((Long) objArr[0]).longValue();
            MessageObject messageObject5 = this.playingMessageObject;
            if (messageObject5 == null || !messageObject5.isMusic() || this.playingMessageObject.getDialogId() != jLongValue3 || this.playingMessageObject.scheduled) {
                return;
            }
            ArrayList arrayList4 = (ArrayList) objArr[1];
            ArrayList arrayList5 = (ArrayList) objArr[2];
            this.playlist.addAll(0, arrayList4);
            this.playlist.addAll(arrayList5);
            int size = this.playlist.size();
            for (int i4 = 0; i4 < size; i4++) {
                MessageObject messageObject6 = this.playlist.get(i4);
                this.playlistMap.put(Integer.valueOf(messageObject6.getId()), messageObject6);
                int[] iArr = this.playlistMaxId;
                iArr[0] = Math.min(iArr[0], messageObject6.getId());
            }
            sortPlaylist();
            if (SharedConfig.shuffleMusic) {
                buildShuffledPlayList();
            } else {
                MessageObject messageObject7 = this.playingMessageObject;
                if (messageObject7 != null && (iIndexOf = this.playlist.indexOf(messageObject7)) >= 0) {
                    this.currentPlaylistNum = iIndexOf;
                }
            }
            this.playlistClassGuid = ConnectionsManager.generateClassGuid();
            return;
        }
        if (i != NotificationCenter.mediaDidLoad) {
            if (i != NotificationCenter.didReceiveNewMessages) {
                if (i != NotificationCenter.playerDidStartPlaying || isCurrentPlayer((VideoPlayer) objArr[0])) {
                    return;
                }
                MessageObject playingMessageObject = getPlayingMessageObject();
                if (playingMessageObject != null && isPlayingMessage(playingMessageObject) && !isMessagePaused() && (playingMessageObject.isMusic() || playingMessageObject.isVoice())) {
                    this.wasPlayingAudioBeforePause = true;
                }
                lambda$startAudioAgain$7(playingMessageObject);
                return;
            }
            if (((Boolean) objArr[2]).booleanValue() || (arrayList = this.voiceMessagesPlaylist) == null || arrayList.isEmpty() || ((Long) objArr[0]).longValue() != this.voiceMessagesPlaylist.get(0).getDialogId()) {
                return;
            }
            ArrayList arrayList6 = (ArrayList) objArr[1];
            while (i3 < arrayList6.size()) {
                MessageObject messageObject8 = (MessageObject) arrayList6.get(i3);
                if ((messageObject8.isVoice() || messageObject8.isRoundVideo()) && !messageObject8.isVoiceOnce() && !messageObject8.isRoundOnce() && (!this.voiceMessagesPlaylistUnread || (messageObject8.isContentUnread() && !messageObject8.isOut()))) {
                    this.voiceMessagesPlaylist.add(messageObject8);
                    this.voiceMessagesPlaylistMap.put(messageObject8.getId(), messageObject8);
                }
                i3++;
            }
            return;
        }
        if (((Integer) objArr[3]).intValue() != this.playlistClassGuid || this.playingMessageObject == null) {
            return;
        }
        long jLongValue4 = ((Long) objArr[0]).longValue();
        ((Integer) objArr[4]).intValue();
        ArrayList arrayList7 = (ArrayList) objArr[2];
        DialogObject.isEncryptedDialog(jLongValue4);
        char c = jLongValue4 == this.playlistMergeDialogId ? (char) 1 : (char) 0;
        if (!arrayList7.isEmpty()) {
            this.playlistEndReached[c] = ((Boolean) objArr[5]).booleanValue();
        }
        int i5 = 0;
        for (int i6 = 0; i6 < arrayList7.size(); i6++) {
            MessageObject messageObject9 = (MessageObject) arrayList7.get(i6);
            if (!messageObject9.isVoiceOnce() && !this.playlistMap.containsKey(Integer.valueOf(messageObject9.getId()))) {
                i5++;
                this.playlist.add(0, messageObject9);
                this.playlistMap.put(Integer.valueOf(messageObject9.getId()), messageObject9);
                int[] iArr2 = this.playlistMaxId;
                iArr2[c] = Math.min(iArr2[c], messageObject9.getId());
            }
        }
        sortPlaylist();
        int iIndexOf2 = this.playlist.indexOf(this.playingMessageObject);
        if (iIndexOf2 >= 0) {
            this.currentPlaylistNum = iIndexOf2;
        }
        this.loadingPlaylist = false;
        if (SharedConfig.shuffleMusic) {
            buildShuffledPlayList();
        }
        if (i5 != 0) {
            NotificationCenter.getInstance(this.playingMessageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.moreMusicDidLoad, Integer.valueOf(i5));
        }
    }

    public boolean findMessageInPlaylistAndPlay(MessageObject messageObject) {
        int iIndexOf = this.playlist.indexOf(messageObject);
        if (iIndexOf == -1) {
            return playMessage(messageObject);
        }
        playMessageAtIndex(iIndexOf);
        return true;
    }

    public void generateWaveform(final MessageObject messageObject) {
        final String str = messageObject.getId() + "_" + messageObject.getDialogId();
        final String absolutePath = FileLoader.getInstance(messageObject.currentAccount).getPathToMessage(messageObject.messageOwner).getAbsolutePath();
        if (this.generatingWaveform.containsKey(str)) {
            return;
        }
        this.generatingWaveform.put(str, messageObject);
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$generateWaveform$39(absolutePath, str, messageObject);
            }
        });
    }

    public AudioInfo getAudioInfo() {
        return this.audioInfo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x017c  */
    /* JADX WARN: Type inference failed for: r7v2, types: [android.graphics.Bitmap] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.io.FileOutputStream, java.io.OutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ChromecastMediaVariations getCurrentChromecastMedia() throws Throwable {
        ?? fileOutputStream;
        Exception e;
        MessageObject messageObject = this.playingMessageObject;
        File file = null;
        if (messageObject == null) {
            return null;
        }
        String musicTitle = messageObject.getMusicTitle();
        String musicAuthor = this.playingMessageObject.getMusicAuthor();
        TLRPC.Document document = this.playingMessageObject.getDocument();
        if (this.playingMessageObject.isRoundVideo() || this.playingMessageObject.isVideo() || this.playingMessageObject.isMusic()) {
            MessageObject messageObject2 = this.playingMessageObject;
            File file2 = (!messageObject2.attachPathExists || messageObject2.messageOwner == null) ? null : new File(this.playingMessageObject.messageOwner.attachPath);
            if (file2 == null || !file2.exists()) {
                file2 = FileLoader.getInstance(this.playingMessageObject.currentAccount).getPathToMessage(this.playingMessageObject.messageOwner);
            }
            if (file2 != null && file2.exists()) {
                String mimeType = this.playingMessageObject.getMimeType();
                Uri uri = Uri.parse("file://" + file2.getAbsolutePath());
                MediaMetadata mediaMetadata = new MediaMetadata();
                AudioInfo audioInfo = this.audioInfo;
                if (audioInfo != null) {
                    if (!TextUtils.isEmpty(audioInfo.getTitle())) {
                        mediaMetadata.putString("com.google.android.gms.cast.metadata.TITLE", this.audioInfo.getTitle());
                    }
                    if (!TextUtils.isEmpty(this.audioInfo.getArtist())) {
                        mediaMetadata.putString("com.google.android.gms.cast.metadata.ARTIST", this.audioInfo.getArtist());
                    }
                    if (!TextUtils.isEmpty(this.audioInfo.getAlbum())) {
                        mediaMetadata.putString("com.google.android.gms.cast.metadata.ALBUM_TITLE", this.audioInfo.getAlbum());
                    }
                    if (!TextUtils.isEmpty(this.audioInfo.getAlbumArtist())) {
                        mediaMetadata.putString("com.google.android.gms.cast.metadata.ALBUM_ARTIST", this.audioInfo.getAlbumArtist());
                    }
                    if (!TextUtils.isEmpty(this.audioInfo.getComposer())) {
                        mediaMetadata.putString("com.google.android.gms.cast.metadata.COMPOSER", this.audioInfo.getComposer());
                    }
                    if (this.audioInfo.getDisc() != 0) {
                        mediaMetadata.putInt("com.google.android.gms.cast.metadata.DISC_NUMBER", this.audioInfo.getDisc());
                    }
                    if (this.audioInfo.getTrack() != 0) {
                        mediaMetadata.putInt("com.google.android.gms.cast.metadata.TRACK_NUMBER", this.audioInfo.getTrack());
                    }
                    if (this.audioInfo.getCover() != null) {
                        File coverFile = this.audioInfo.getCoverFile();
                        if (coverFile == null || !coverFile.exists()) {
                            File fileMakeCacheFile = StoryEntry.makeCacheFile(UserConfig.selectedAccount, "jpg");
                            try {
                                ?? cover = this.audioInfo.getCover();
                                Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.JPEG;
                                fileOutputStream = new FileOutputStream(fileMakeCacheFile);
                                try {
                                    cover.compress(compressFormat, 80, fileOutputStream);
                                    try {
                                        fileOutputStream.close();
                                    } catch (Exception e2) {
                                        e = e2;
                                        FileLog.e(e);
                                        file = fileMakeCacheFile;
                                        this.audioInfo.setCoverFile(file);
                                        coverFile = file;
                                        if (coverFile != null) {
                                        }
                                        return ChromecastMediaVariations.of(ChromecastMedia.Builder.fromUri(uri, "/player_" + this.playingMessageObject.getId(), mimeType).setTitle(musicTitle).setSubtitle(musicAuthor).setMetadata(mediaMetadata).build());
                                    }
                                    file = fileMakeCacheFile;
                                } catch (Exception e3) {
                                    e = e3;
                                    try {
                                        FileLog.e(e);
                                        if (fileOutputStream != 0) {
                                            try {
                                                fileOutputStream.close();
                                            } catch (Exception e4) {
                                                fileMakeCacheFile = null;
                                                e = e4;
                                                FileLog.e(e);
                                                file = fileMakeCacheFile;
                                                this.audioInfo.setCoverFile(file);
                                                coverFile = file;
                                                if (coverFile != null) {
                                                    mediaMetadata.addImage(new WebImage(Uri.parse(ChromecastFileServer.getUrlToSource(ChromecastFileServer.getHost(), ChromecastController.getInstance().setCover(coverFile)))));
                                                }
                                                return ChromecastMediaVariations.of(ChromecastMedia.Builder.fromUri(uri, "/player_" + this.playingMessageObject.getId(), mimeType).setTitle(musicTitle).setSubtitle(musicAuthor).setMetadata(mediaMetadata).build());
                                            }
                                        }
                                        this.audioInfo.setCoverFile(file);
                                        coverFile = file;
                                        if (coverFile != null) {
                                        }
                                        return ChromecastMediaVariations.of(ChromecastMedia.Builder.fromUri(uri, "/player_" + this.playingMessageObject.getId(), mimeType).setTitle(musicTitle).setSubtitle(musicAuthor).setMetadata(mediaMetadata).build());
                                    } catch (Throwable th) {
                                        th = th;
                                        file = fileOutputStream;
                                        fileOutputStream = file;
                                        if (fileOutputStream != 0) {
                                            try {
                                                fileOutputStream.close();
                                            } catch (Exception e5) {
                                                FileLog.e(e5);
                                            }
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (fileOutputStream != 0) {
                                    }
                                    throw th;
                                }
                            } catch (Exception e6) {
                                e = e6;
                                fileOutputStream = 0;
                            } catch (Throwable th3) {
                                th = th3;
                                fileOutputStream = file;
                                if (fileOutputStream != 0) {
                                }
                                throw th;
                            }
                            this.audioInfo.setCoverFile(file);
                            coverFile = file;
                        }
                        if (coverFile != null && coverFile.exists()) {
                            mediaMetadata.addImage(new WebImage(Uri.parse(ChromecastFileServer.getUrlToSource(ChromecastFileServer.getHost(), ChromecastController.getInstance().setCover(coverFile)))));
                        }
                    }
                }
                return ChromecastMediaVariations.of(ChromecastMedia.Builder.fromUri(uri, "/player_" + this.playingMessageObject.getId(), mimeType).setTitle(musicTitle).setSubtitle(musicAuthor).setMetadata(mediaMetadata).build());
            }
        }
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(document != null ? document.id : this.playingMessageObject.getId());
            sb.append("");
            return videoPlayer.getCurrentChromecastMedia(sb.toString(), musicTitle, musicAuthor);
        }
        VideoPlayer videoPlayer2 = this.audioPlayer;
        if (videoPlayer2 == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(document != null ? document.id : this.playingMessageObject.getId());
        sb2.append("");
        return videoPlayer2.getCurrentChromecastMedia(sb2.toString(), musicTitle, musicAuthor);
    }

    public VideoConvertMessage getCurrentForegroundConverMessage() {
        return this.currentForegroundConvertingVideo;
    }

    public long getCurrentPosition() {
        MessageObject messageObject = this.playingMessageObject;
        if (messageObject == null) {
            return -1L;
        }
        return getProgressMs(messageObject);
    }

    public long getDuration() {
        VideoPlayer videoPlayer = this.audioPlayer;
        if (videoPlayer == null) {
            return 0L;
        }
        return videoPlayer.getDuration();
    }

    public float getFastPlaybackSpeed(boolean z) {
        return z ? this.fastMusicPlaybackSpeed : this.fastPlaybackSpeed;
    }

    public float getPlaybackSpeed(boolean z) {
        return z ? this.currentMusicPlaybackSpeed : this.currentPlaybackSpeed;
    }

    public MessageObject getPlayingMessageObject() {
        return this.playingMessageObject;
    }

    public int getPlayingMessageObjectNum() {
        return this.currentPlaylistNum;
    }

    public ArrayList<MessageObject> getPlaylist() {
        return this.playlist;
    }

    public long getProgressMs(MessageObject messageObject) {
        MessageObject messageObject2 = this.playingMessageObject;
        if ((this.audioPlayer != null || this.videoPlayer != null) && messageObject != null && messageObject2 != null && isSamePlayingMessage(messageObject)) {
            try {
                VideoPlayer videoPlayer = this.audioPlayer;
                if (videoPlayer != null) {
                    return videoPlayer.getCurrentPosition();
                }
                VideoPlayer videoPlayer2 = this.videoPlayer;
                if (videoPlayer2 != null) {
                    return videoPlayer2.getCurrentPosition();
                }
            } catch (Exception unused) {
            }
        }
        return -1L;
    }

    public VideoPlayer getVideoPlayer() {
        return this.videoPlayer;
    }

    public native byte[] getWaveform2(short[] sArr, int i);

    public boolean hasNoNextVoiceOrRoundVideoMessage() {
        ArrayList<MessageObject> arrayList;
        MessageObject messageObject = this.playingMessageObject;
        if (messageObject != null) {
            return !(messageObject.isVoice() || this.playingMessageObject.isRoundVideo()) || (arrayList = this.voiceMessagesPlaylist) == null || arrayList.size() <= 1 || !this.voiceMessagesPlaylist.contains(this.playingMessageObject) || this.voiceMessagesPlaylist.indexOf(this.playingMessageObject) >= this.voiceMessagesPlaylist.size() - 1;
        }
        return true;
    }

    public void injectVideoPlayer(VideoPlayer videoPlayer, MessageObject messageObject) {
        if (videoPlayer == null || messageObject == null) {
            return;
        }
        FileLoader.getInstance(messageObject.currentAccount).setLoadingVideoForPlayer(messageObject.getDocument(), true);
        this.playerWasReady = false;
        clearPlaylist();
        this.videoPlayer = videoPlayer;
        this.playingMessageObject = messageObject;
        int i = this.playerNum + 1;
        this.playerNum = i;
        videoPlayer.setDelegate(new AnonymousClass7(i, messageObject, null, true));
        this.currentAspectRatioFrameLayoutReady = false;
        TextureView textureView = this.currentTextureView;
        if (textureView != null) {
            this.videoPlayer.setTextureView(textureView);
        }
        checkAudioFocus(messageObject);
        setPlayerVolume();
        this.isPaused = false;
        this.lastProgress = 0L;
        MessageObject messageObject2 = this.playingMessageObject;
        this.playingMessageObject = messageObject;
        if (!SharedConfig.enabledRaiseTo(true)) {
            startRaiseToEarSensors(this.raiseChat);
        }
        startProgressTimer(this.playingMessageObject);
        NotificationCenter.getInstance(messageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingDidStart, messageObject, messageObject2);
    }

    public boolean isBuffering() {
        VideoPlayer videoPlayer = this.audioPlayer;
        if (videoPlayer != null) {
            return videoPlayer.isBuffering();
        }
        return false;
    }

    public boolean isCurrentPlayer(VideoPlayer videoPlayer) {
        return this.videoPlayer == videoPlayer || this.audioPlayer == videoPlayer;
    }

    public boolean isDownloadingCurrentMessage() {
        return this.downloadingCurrentMessage;
    }

    public boolean isGoingToShowMessageObject(MessageObject messageObject) {
        return this.goingToShowMessageObject == messageObject;
    }

    public boolean isMessagePaused() {
        return this.isPaused || this.downloadingCurrentMessage;
    }

    public boolean isPiPShown() {
        return this.pipRoundVideoView != null;
    }

    public boolean isPlayingMessage(MessageObject messageObject) {
        MessageObject messageObject2;
        if (messageObject != null && messageObject.isRepostPreview) {
            return false;
        }
        if ((this.audioPlayer != null || this.videoPlayer != null) && messageObject != null && (messageObject2 = this.playingMessageObject) != null) {
            long j = messageObject2.eventId;
            if ((j != 0 && j == messageObject.eventId) || isSamePlayingMessage(messageObject)) {
                return !this.downloadingCurrentMessage;
            }
        }
        return false;
    }

    public boolean isPlayingMessageAndReadyToDraw(MessageObject messageObject) {
        return this.isDrawingWasReady && isPlayingMessage(messageObject);
    }

    protected boolean isRecordingAudio() {
        return (this.recordStartRunnable == null && this.recordingAudio == null) ? false : true;
    }

    public boolean isRecordingOrListeningByProximity() {
        MessageObject messageObject;
        return this.proximityTouched && (isRecordingAudio() || ((messageObject = this.playingMessageObject) != null && (messageObject.isVoice() || this.playingMessageObject.isRoundVideo())));
    }

    public boolean isRecordingPaused() {
        return this.audioRecorderPaused;
    }

    public boolean isStreamingCurrentAudio() {
        return this.isStreamingCurrentAudio;
    }

    public boolean isVideoDrawingReady() {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.currentAspectRatioFrameLayout;
        return aspectRatioFrameLayout != null && aspectRatioFrameLayout.isDrawingReady();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e5 A[PHI: r11
      0x00e5: PHI (r11v6 long) = (r11v5 long), (r11v13 long) binds: [B:32:0x00dc, B:35:0x00e3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void loadMoreMusic() {
        MessageObject messageObject;
        final int i;
        MediaDataController mediaDataController;
        long dialogId;
        int i2;
        long j;
        long j2;
        long j3;
        TLRPC.TL_messages_searchGlobal tL_messages_searchGlobal;
        if (this.loadingPlaylist || (messageObject = this.playingMessageObject) == null || messageObject.scheduled || DialogObject.isEncryptedDialog(messageObject.getDialogId()) || (i = this.playlistClassGuid) == 0) {
            return;
        }
        PlaylistGlobalSearchParams playlistGlobalSearchParams = this.playlistGlobalSearchParams;
        if (playlistGlobalSearchParams == null) {
            boolean[] zArr = this.playlistEndReached;
            if (!zArr[0]) {
                this.loadingPlaylist = true;
                mediaDataController = AccountInstance.getInstance(this.playingMessageObject.currentAccount).getMediaDataController();
                dialogId = this.playingMessageObject.getDialogId();
                i2 = this.playlistMaxId[0];
            } else {
                if (this.playlistMergeDialogId == 0 || zArr[1]) {
                    return;
                }
                this.loadingPlaylist = true;
                mediaDataController = AccountInstance.getInstance(this.playingMessageObject.currentAccount).getMediaDataController();
                dialogId = this.playlistMergeDialogId;
                i2 = this.playlistMaxId[0];
            }
            mediaDataController.loadMedia(dialogId, 50, i2, 0, 4, 0L, 1, this.playlistClassGuid, 0, null, null);
            return;
        }
        if (playlistGlobalSearchParams.endReached || this.playlist.isEmpty()) {
            return;
        }
        final int i3 = this.playlist.get(0).currentAccount;
        if (this.playlistGlobalSearchParams.dialogId != 0) {
            TLRPC.TL_messages_search tL_messages_search = new TLRPC.TL_messages_search();
            PlaylistGlobalSearchParams playlistGlobalSearchParams2 = this.playlistGlobalSearchParams;
            tL_messages_search.q = playlistGlobalSearchParams2.query;
            tL_messages_search.limit = 20;
            FiltersView.MediaFilterData mediaFilterData = playlistGlobalSearchParams2.filter;
            tL_messages_search.filter = mediaFilterData == null ? new TLRPC.TL_inputMessagesFilterEmpty() : mediaFilterData.filter;
            tL_messages_search.peer = AccountInstance.getInstance(i3).getMessagesController().getInputPeer(this.playlistGlobalSearchParams.dialogId);
            ArrayList<MessageObject> arrayList = this.playlist;
            tL_messages_search.offset_id = arrayList.get(arrayList.size() - 1).getId();
            PlaylistGlobalSearchParams playlistGlobalSearchParams3 = this.playlistGlobalSearchParams;
            long j4 = playlistGlobalSearchParams3.minDate;
            if (j4 > 0) {
                tL_messages_search.min_date = (int) (j4 / 1000);
            }
            long j5 = playlistGlobalSearchParams3.maxDate;
            tL_messages_searchGlobal = tL_messages_search;
            if (j5 > 0) {
                tL_messages_search.min_date = (int) (j5 / 1000);
                tL_messages_searchGlobal = tL_messages_search;
            }
        } else {
            TLRPC.TL_messages_searchGlobal tL_messages_searchGlobal2 = new TLRPC.TL_messages_searchGlobal();
            tL_messages_searchGlobal2.limit = 20;
            PlaylistGlobalSearchParams playlistGlobalSearchParams4 = this.playlistGlobalSearchParams;
            tL_messages_searchGlobal2.q = playlistGlobalSearchParams4.query;
            tL_messages_searchGlobal2.filter = playlistGlobalSearchParams4.filter.filter;
            ArrayList<MessageObject> arrayList2 = this.playlist;
            MessageObject messageObject2 = arrayList2.get(arrayList2.size() - 1);
            tL_messages_searchGlobal2.offset_id = messageObject2.getId();
            PlaylistGlobalSearchParams playlistGlobalSearchParams5 = this.playlistGlobalSearchParams;
            tL_messages_searchGlobal2.offset_rate = playlistGlobalSearchParams5.nextSearchRate;
            tL_messages_searchGlobal2.flags |= 1;
            tL_messages_searchGlobal2.folder_id = playlistGlobalSearchParams5.folderId;
            TLRPC.Peer peer = messageObject2.messageOwner.peer_id;
            long j6 = peer.channel_id;
            if (j6 != 0) {
                j = -j6;
                tL_messages_searchGlobal2.offset_peer = MessagesController.getInstance(i3).getInputPeer(j);
                PlaylistGlobalSearchParams playlistGlobalSearchParams6 = this.playlistGlobalSearchParams;
                j2 = playlistGlobalSearchParams6.minDate;
                if (j2 > 0) {
                    tL_messages_searchGlobal2.min_date = (int) (j2 / 1000);
                }
                j3 = playlistGlobalSearchParams6.maxDate;
                tL_messages_searchGlobal = tL_messages_searchGlobal2;
                if (j3 > 0) {
                    tL_messages_searchGlobal2.min_date = (int) (j3 / 1000);
                    tL_messages_searchGlobal = tL_messages_searchGlobal2;
                }
            } else {
                j6 = peer.chat_id;
                if (j6 == 0) {
                    j = peer.user_id;
                }
                tL_messages_searchGlobal2.offset_peer = MessagesController.getInstance(i3).getInputPeer(j);
                PlaylistGlobalSearchParams playlistGlobalSearchParams62 = this.playlistGlobalSearchParams;
                j2 = playlistGlobalSearchParams62.minDate;
                if (j2 > 0) {
                }
                j3 = playlistGlobalSearchParams62.maxDate;
                tL_messages_searchGlobal = tL_messages_searchGlobal2;
                if (j3 > 0) {
                }
            }
        }
        this.loadingPlaylist = true;
        ConnectionsManager.getInstance(i3).sendRequest(tL_messages_searchGlobal, new RequestDelegate() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda25
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadMoreMusic$12(i, i3, tLObject, tL_error);
            }
        });
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onAudioFocusChange$5(i);
            }
        });
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        double d;
        boolean z;
        int i;
        MessageObject messageObject;
        if (this.sensorsStarted && VoIPService.getSharedInstance() == null) {
            if (sensorEvent.sensor.getType() == 8) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.d("proximity changed to " + sensorEvent.values[0] + " max value = " + sensorEvent.sensor.getMaximumRange());
                }
                float f = this.lastProximityValue;
                float f2 = sensorEvent.values[0];
                if (f != f2) {
                    this.proximityHasDifferentValues = true;
                }
                this.lastProximityValue = f2;
                if (this.proximityHasDifferentValues) {
                    this.proximityTouched = isNearToSensor(f2);
                }
            } else {
                Sensor sensor = sensorEvent.sensor;
                if (sensor == this.accelerometerSensor) {
                    long j = this.lastTimestamp;
                    if (j == 0) {
                        d = 0.9800000190734863d;
                    } else {
                        double d2 = sensorEvent.timestamp - j;
                        Double.isNaN(d2);
                        d = 1.0d / ((d2 / 1.0E9d) + 1.0d);
                    }
                    this.lastTimestamp = sensorEvent.timestamp;
                    float[] fArr = this.gravity;
                    double d3 = fArr[0];
                    Double.isNaN(d3);
                    double d4 = 1.0d - d;
                    float[] fArr2 = sensorEvent.values;
                    double d5 = fArr2[0];
                    Double.isNaN(d5);
                    float f3 = (float) ((d3 * d) + (d5 * d4));
                    fArr[0] = f3;
                    double d6 = fArr[1];
                    Double.isNaN(d6);
                    double d7 = fArr2[1];
                    Double.isNaN(d7);
                    float f4 = (float) ((d6 * d) + (d7 * d4));
                    fArr[1] = f4;
                    double d8 = fArr[2];
                    Double.isNaN(d8);
                    double d9 = d * d8;
                    double d10 = fArr2[2];
                    Double.isNaN(d10);
                    float f5 = (float) (d9 + (d4 * d10));
                    fArr[2] = f5;
                    float[] fArr3 = this.gravityFast;
                    fArr3[0] = (f3 * 0.8f) + (fArr2[0] * 0.19999999f);
                    fArr3[1] = (f4 * 0.8f) + (fArr2[1] * 0.19999999f);
                    fArr3[2] = (f5 * 0.8f) + (fArr2[2] * 0.19999999f);
                    float[] fArr4 = this.linearAcceleration;
                    fArr4[0] = fArr2[0] - fArr[0];
                    fArr4[1] = fArr2[1] - fArr[1];
                    fArr4[2] = fArr2[2] - fArr[2];
                } else if (sensor == this.linearSensor) {
                    float[] fArr5 = this.linearAcceleration;
                    float[] fArr6 = sensorEvent.values;
                    fArr5[0] = fArr6[0];
                    fArr5[1] = fArr6[1];
                    fArr5[2] = fArr6[2];
                } else if (sensor == this.gravitySensor) {
                    float[] fArr7 = this.gravityFast;
                    float[] fArr8 = this.gravity;
                    float[] fArr9 = sensorEvent.values;
                    float f6 = fArr9[0];
                    fArr8[0] = f6;
                    fArr7[0] = f6;
                    float f7 = fArr9[1];
                    fArr8[1] = f7;
                    fArr7[1] = f7;
                    float f8 = fArr9[2];
                    fArr8[2] = f8;
                    fArr7[2] = f8;
                }
            }
            Sensor sensor2 = sensorEvent.sensor;
            if (sensor2 == this.linearSensor || sensor2 == this.gravitySensor || sensor2 == this.accelerometerSensor) {
                float[] fArr10 = this.gravity;
                float f9 = fArr10[0];
                float[] fArr11 = this.linearAcceleration;
                float f10 = (f9 * fArr11[0]) + (fArr10[1] * fArr11[1]) + (fArr10[2] * fArr11[2]);
                int i2 = this.raisedToBack;
                if (i2 != 6 && ((f10 > BitmapDescriptorFactory.HUE_RED && this.previousAccValue > BitmapDescriptorFactory.HUE_RED) || (f10 < BitmapDescriptorFactory.HUE_RED && this.previousAccValue < BitmapDescriptorFactory.HUE_RED))) {
                    if (f10 > BitmapDescriptorFactory.HUE_RED) {
                        z = f10 > 15.0f;
                        i = 1;
                    } else {
                        z = f10 < -15.0f;
                        i = 2;
                    }
                    int i3 = this.raisedToTopSign;
                    if (i3 != 0 && i3 != i) {
                        int i4 = this.raisedToTop;
                        if (i4 != 6 || !z) {
                            if (!z) {
                                this.countLess++;
                            }
                            if (this.countLess == 10 || i4 != 6 || i2 != 0) {
                                this.raisedToTop = 0;
                                this.raisedToTopSign = 0;
                                this.raisedToBack = 0;
                                this.countLess = 0;
                            }
                        } else if (i2 < 6) {
                            int i5 = i2 + 1;
                            this.raisedToBack = i5;
                            if (i5 == 6) {
                                this.raisedToTop = 0;
                                this.raisedToTopSign = 0;
                                this.countLess = 0;
                                this.timeSinceRaise = System.currentTimeMillis();
                                if (BuildVars.LOGS_ENABLED && BuildVars.DEBUG_PRIVATE_VERSION) {
                                    FileLog.d("motion detected");
                                }
                            }
                        }
                    } else if (z && i2 == 0 && (i3 == 0 || i3 == i)) {
                        int i6 = this.raisedToTop;
                        if (i6 < 6 && !this.proximityTouched) {
                            this.raisedToTopSign = i;
                            int i7 = i6 + 1;
                            this.raisedToTop = i7;
                            if (i7 == 6) {
                                this.countLess = 0;
                            }
                        }
                    } else {
                        if (!z) {
                            this.countLess++;
                        }
                        if (i3 != i || this.countLess == 10 || this.raisedToTop != 6 || i2 != 0) {
                            this.raisedToBack = 0;
                            this.raisedToTop = 0;
                            this.raisedToTopSign = 0;
                            this.countLess = 0;
                        }
                    }
                }
                this.previousAccValue = f10;
                float[] fArr12 = this.gravityFast;
                this.accelerometerVertical = fArr12[1] > 2.5f && Math.abs(fArr12[2]) < 4.0f && Math.abs(this.gravityFast[0]) > 1.5f;
            }
            if (this.raisedToBack == 6 || this.accelerometerVertical) {
                this.lastAccelerometerDetected = System.currentTimeMillis();
            }
            boolean z2 = !this.manualRecording && this.playingMessageObject == null && SharedConfig.enabledRaiseTo(true) && ApplicationLoader.isScreenOn && !this.inputFieldHasText && this.allowStartRecord && this.raiseChat != null && !this.callInProgress;
            boolean z3 = SharedConfig.enabledRaiseTo(false) && (messageObject = this.playingMessageObject) != null && (messageObject.isVoice() || this.playingMessageObject.isRoundVideo());
            boolean z4 = this.proximityTouched;
            boolean z5 = this.raisedToBack == 6 || this.accelerometerVertical || System.currentTimeMillis() - this.lastAccelerometerDetected < 60;
            boolean z6 = this.useFrontSpeaker || this.raiseToEarRecord;
            boolean z7 = (z5 || z6) && !forbidRaiseToListen() && !VoIPService.isAnyKindOfCallActive() && (z2 || z3) && !PhotoViewer.getInstance().isVisible();
            PowerManager.WakeLock wakeLock = this.proximityWakeLock;
            if (wakeLock != null) {
                boolean zIsHeld = wakeLock.isHeld();
                if (zIsHeld && !z7) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.d("wake lock releasing (proximityDetected=" + z4 + ", accelerometerDetected=" + z5 + ", alreadyPlaying=" + z6 + ")");
                    }
                    this.proximityWakeLock.release();
                } else if (!zIsHeld && z7) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.d("wake lock acquiring (proximityDetected=" + z4 + ", accelerometerDetected=" + z5 + ", alreadyPlaying=" + z6 + ")");
                    }
                    this.proximityWakeLock.acquire();
                }
            }
            boolean z8 = this.proximityTouched;
            if (z8 && z7) {
                if (z2 && this.recordStartRunnable == null) {
                    if (!this.raiseToEarRecord) {
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.d("start record");
                        }
                        this.useFrontSpeaker = true;
                        if (this.recordingAudio != null || !this.raiseChat.playFirstUnreadVoiceMessage()) {
                            this.raiseToEarRecord = true;
                            this.useFrontSpeaker = false;
                            raiseToSpeakUpdated(true);
                        }
                        if (this.useFrontSpeaker) {
                            setUseFrontSpeaker(true);
                        }
                    }
                } else if (z3 && !this.useFrontSpeaker) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.d("start listen");
                    }
                    setUseFrontSpeaker(true);
                    startAudioAgain(false);
                }
                this.raisedToBack = 0;
                this.raisedToTop = 0;
                this.raisedToTopSign = 0;
                this.countLess = 0;
            } else if (z8 && ((this.accelerometerSensor == null || this.linearSensor == null) && this.gravitySensor == null && !VoIPService.isAnyKindOfCallActive())) {
                if (this.playingMessageObject != null && !ApplicationLoader.mainInterfacePaused && z3 && !this.useFrontSpeaker && !this.manualRecording && !forbidRaiseToListen()) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.d("start listen by proximity only");
                    }
                    setUseFrontSpeaker(true);
                    startAudioAgain(false);
                }
            } else if (!this.proximityTouched && !this.manualRecording) {
                if (this.raiseToEarRecord) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.d("stop record");
                    }
                    raiseToSpeakUpdated(false);
                    this.raiseToEarRecord = false;
                } else if (this.useFrontSpeaker) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.d("stop listen");
                    }
                    this.useFrontSpeaker = false;
                    startAudioAgain(true);
                }
                this.ignoreOnPause = false;
            }
            if (this.timeSinceRaise == 0 || this.raisedToBack != 6 || Math.abs(System.currentTimeMillis() - this.timeSinceRaise) <= 1000) {
                return;
            }
            this.raisedToBack = 0;
            this.raisedToTop = 0;
            this.raisedToTopSign = 0;
            this.countLess = 0;
            this.timeSinceRaise = 0L;
        }
    }

    public void pauseByRewind() {
        VideoPlayer videoPlayer = this.audioPlayer;
        if (videoPlayer != null) {
            videoPlayer.pause();
        }
    }

    /* renamed from: pauseMessage, reason: merged with bridge method [inline-methods] */
    public boolean lambda$startAudioAgain$7(MessageObject messageObject) {
        return pauseMessage(messageObject, true);
    }

    public boolean pauseMessage(MessageObject messageObject, boolean z) {
        VideoPlayer videoPlayer;
        if ((this.audioPlayer != null || this.videoPlayer != null) && messageObject != null && this.playingMessageObject != null && isSamePlayingMessage(messageObject)) {
            stopProgressTimer();
            try {
                if (this.audioPlayer != null) {
                    if (z && !CastSync.isActive() && !this.playingMessageObject.isVoice()) {
                        double duration = this.playingMessageObject.getDuration();
                        double d = VOLUME_NORMAL - this.playingMessageObject.audioProgress;
                        Double.isNaN(d);
                        if (duration * d > 1.0d && LaunchActivity.isResumed) {
                            ValueAnimator valueAnimator = this.audioVolumeAnimator;
                            if (valueAnimator != null) {
                                valueAnimator.removeAllUpdateListeners();
                                this.audioVolumeAnimator.cancel();
                            }
                            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(VOLUME_NORMAL, BitmapDescriptorFactory.HUE_RED);
                            this.audioVolumeAnimator = valueAnimatorOfFloat;
                            valueAnimatorOfFloat.addUpdateListener(this.audioVolumeUpdateListener);
                            this.audioVolumeAnimator.setDuration(300L);
                            this.audioVolumeAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.messenger.MediaController.12
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    if (MediaController.this.audioPlayer != null) {
                                        MediaController.this.audioPlayer.pause();
                                    }
                                }
                            });
                            this.audioVolumeAnimator.start();
                        }
                    }
                    videoPlayer = this.audioPlayer;
                    videoPlayer.pause();
                } else {
                    videoPlayer = this.videoPlayer;
                    if (videoPlayer != null) {
                        videoPlayer.pause();
                    }
                }
                this.isPaused = true;
                NotificationCenter.getInstance(this.playingMessageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingPlayStateChanged, Integer.valueOf(this.playingMessageObject.getId()));
                try {
                    CastSync.check(1);
                    if (!this.ignorePlayerUpdate) {
                        if (ChromecastController.getInstance().isCasting()) {
                            ChromecastController.getInstance().setCurrentMediaAndCastIfNeeded(getCurrentChromecastMedia());
                        }
                        CastSync.setPlaying(false);
                    }
                } catch (Exception e) {
                    FileLog.e(e);
                }
                return true;
            } catch (Exception e2) {
                FileLog.e(e2);
                this.isPaused = false;
            }
        }
        return false;
    }

    public void playEmojiSound(final AccountInstance accountInstance, String str, final MessagesController.EmojiSound emojiSound, final boolean z) {
        if (emojiSound == null) {
            return;
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$playEmojiSound$19(emojiSound, accountInstance, z);
            }
        });
    }

    public boolean playMessage(MessageObject messageObject) {
        return playMessage(messageObject, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:210:0x050a  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0525  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x05d5  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x060e  */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean playMessage(final MessageObject messageObject, boolean z) {
        boolean z2;
        File file;
        boolean zExists;
        ?? r9;
        VideoPlayer videoPlayer;
        TextureView textureView;
        PowerManager.WakeLock wakeLock;
        File file2;
        if (messageObject == null) {
            return false;
        }
        this.isSilent = z;
        checkVolumeBarUI();
        if (!(this.audioPlayer == null && this.videoPlayer == null) && isSamePlayingMessage(messageObject)) {
            if (this.isPaused) {
                resumeAudio(messageObject);
            }
            if (!SharedConfig.enabledRaiseTo(true)) {
                startRaiseToEarSensors(this.raiseChat);
            }
            return true;
        }
        if (!messageObject.isOut() && messageObject.isContentUnread()) {
            MessagesController.getInstance(messageObject.currentAccount).markMessageContentAsRead(messageObject);
        }
        boolean z3 = !this.playMusicAgain;
        MessageObject messageObject2 = this.playingMessageObject;
        if (messageObject2 != null) {
            boolean zSaveMusicPlaylistStateIfNeeded = ((messageObject2.isMusic() && messageObject.isVoice()) || messageObject.isRoundVideo() || messageObject.isVideo()) ? saveMusicPlaylistStateIfNeeded() : false;
            if (!this.playMusicAgain) {
                this.playingMessageObject.resetPlayingProgress();
                NotificationCenter.getInstance(this.playingMessageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingProgressDidChanged, Integer.valueOf(this.playingMessageObject.getId()), 0);
            }
            z2 = zSaveMusicPlaylistStateIfNeeded;
            z3 = false;
        } else {
            z2 = false;
        }
        cleanupPlayer(z3, false);
        this.shouldSavePositionForCurrentAudio = null;
        this.lastSaveTime = 0L;
        this.playMusicAgain = false;
        this.seekToProgressPending = BitmapDescriptorFactory.HUE_RED;
        String str = messageObject.messageOwner.attachPath;
        if (str == null || str.length() <= 0) {
            file = null;
            zExists = false;
        } else {
            File file3 = new File(messageObject.messageOwner.attachPath);
            boolean zExists2 = file3.exists();
            if (zExists2) {
                file = file3;
                zExists = zExists2;
            } else {
                zExists = zExists2;
                file = null;
            }
        }
        final File pathToMessage = file != null ? file : FileLoader.getInstance(messageObject.currentAccount).getPathToMessage(messageObject.messageOwner);
        boolean z4 = SharedConfig.streamMedia && !((!messageObject.isMusic() && !messageObject.isRoundVideo() && (!messageObject.isVideo() || !messageObject.canStreamVideo())) || messageObject.shouldEncryptPhotoOrVideo() || DialogObject.isEncryptedDialog(messageObject.getDialogId()));
        if (pathToMessage != file && !(zExists = pathToMessage.exists()) && !z4) {
            FileLoader.getInstance(messageObject.currentAccount).loadFile(messageObject.getDocument(), messageObject, 0, messageObject.shouldEncryptPhotoOrVideo() ? 2 : 0);
            this.downloadingCurrentMessage = true;
            this.isPaused = false;
            this.lastProgress = 0L;
            this.audioInfo = null;
            this.playingMessageObject = messageObject;
            if (canStartMusicPlayerService()) {
                try {
                    ApplicationLoader.applicationContext.startService(new Intent(ApplicationLoader.applicationContext, (Class<?>) MusicPlayerService.class));
                } catch (Throwable th) {
                    FileLog.e(th);
                }
            } else {
                ApplicationLoader.applicationContext.stopService(new Intent(ApplicationLoader.applicationContext, (Class<?>) MusicPlayerService.class));
            }
            NotificationCenter.getInstance(this.playingMessageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingPlayStateChanged, Integer.valueOf(this.playingMessageObject.getId()));
            return true;
        }
        boolean z5 = zExists;
        this.downloadingCurrentMessage = false;
        if (messageObject.isMusic()) {
            checkIsNextMusicFileDownloaded(messageObject.currentAccount);
        } else {
            checkIsNextVoiceFileDownloaded(messageObject.currentAccount);
        }
        AspectRatioFrameLayout aspectRatioFrameLayout = this.currentAspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            this.isDrawingWasReady = false;
            aspectRatioFrameLayout.setDrawingReady(false);
        }
        boolean zIsVideo = messageObject.isVideo();
        boolean z6 = z2;
        if (messageObject.isRoundVideo() || zIsVideo) {
            final File file4 = pathToMessage;
            FileLoader.getInstance(messageObject.currentAccount).setLoadingVideoForPlayer(messageObject.getDocument(), true);
            this.playerWasReady = false;
            boolean z7 = !zIsVideo || (messageObject.messageOwner.peer_id.channel_id == 0 && messageObject.audioProgress <= 0.1f);
            int[] iArr = (!zIsVideo || messageObject.getDuration() > 30.0d) ? null : new int[]{1};
            if (!z6) {
                clearPlaylist();
            }
            VideoPlayer videoPlayer2 = new VideoPlayer();
            this.videoPlayer = videoPlayer2;
            videoPlayer2.setLooping(z);
            int i = this.playerNum + 1;
            this.playerNum = i;
            File file5 = file;
            r9 = 0;
            r9 = 0;
            r9 = 0;
            this.videoPlayer.setDelegate(new AnonymousClass9(i, messageObject, iArr, z7));
            this.currentAspectRatioFrameLayoutReady = false;
            if (this.pipRoundVideoView == null && MessagesController.getInstance(messageObject.currentAccount).isDialogVisible(messageObject.getDialogId(), messageObject.scheduled)) {
                textureView = this.currentTextureView;
                if (textureView != null) {
                    videoPlayer = this.videoPlayer;
                    videoPlayer.setTextureView(textureView);
                }
                if (z5) {
                }
                if (messageObject.isRoundVideo()) {
                }
            } else {
                if (this.pipRoundVideoView == null) {
                    try {
                        PipRoundVideoView pipRoundVideoView = new PipRoundVideoView();
                        this.pipRoundVideoView = pipRoundVideoView;
                        pipRoundVideoView.show(this.baseActivity, new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda22
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$playMessage$20();
                            }
                        });
                    } catch (Exception unused) {
                        this.pipRoundVideoView = null;
                    }
                }
                PipRoundVideoView pipRoundVideoView2 = this.pipRoundVideoView;
                if (pipRoundVideoView2 != null) {
                    videoPlayer = this.videoPlayer;
                    textureView = pipRoundVideoView2.getTextureView();
                    videoPlayer.setTextureView(textureView);
                }
                if (z5) {
                    try {
                        int fileReference = FileLoader.getInstance(messageObject.currentAccount).getFileReference(messageObject);
                        TLRPC.Document document = messageObject.getDocument();
                        StringBuilder sb = new StringBuilder();
                        sb.append("?account=");
                        sb.append(messageObject.currentAccount);
                        sb.append("&id=");
                        sb.append(document.id);
                        sb.append("&hash=");
                        sb.append(document.access_hash);
                        sb.append("&dc=");
                        sb.append(document.dc_id);
                        sb.append("&size=");
                        sb.append(document.size);
                        sb.append("&mime=");
                        sb.append(URLEncoder.encode(document.mime_type, "UTF-8"));
                        sb.append("&rid=");
                        sb.append(fileReference);
                        sb.append("&name=");
                        sb.append(URLEncoder.encode(FileLoader.getDocumentFileName(document), "UTF-8"));
                        sb.append("&reference=");
                        byte[] bArr = document.file_reference;
                        if (bArr == null) {
                            bArr = new byte[0];
                        }
                        sb.append(Utilities.bytesToHex(bArr));
                        this.videoPlayer.preparePlayer(Uri.parse("tg://" + messageObject.getFileName() + sb.toString()), "other");
                    } catch (Exception e) {
                        FileLog.e(e);
                    }
                } else {
                    if (!messageObject.mediaExists && file4 != file5) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda23
                            @Override // java.lang.Runnable
                            public final void run() {
                                MediaController.lambda$playMessage$21(messageObject, file4);
                            }
                        });
                    }
                    this.videoPlayer.preparePlayer(Uri.fromFile(file4), "other");
                }
                if (messageObject.isRoundVideo()) {
                    this.videoPlayer.setStreamType(3);
                } else {
                    this.videoPlayer.setStreamType(this.useFrontSpeaker ? 0 : 3);
                    if (Math.abs(this.currentPlaybackSpeed - VOLUME_NORMAL) > 0.001f) {
                        this.videoPlayer.setPlaybackSpeed(Math.round(this.currentPlaybackSpeed * 10.0f) / 10.0f);
                    }
                    float f = messageObject.forceSeekTo;
                    if (f >= BitmapDescriptorFactory.HUE_RED) {
                        this.seekToProgressPending = f;
                        messageObject.audioProgress = f;
                        messageObject.forceSeekTo = -1.0f;
                    }
                }
            }
        } else {
            PipRoundVideoView pipRoundVideoView3 = this.pipRoundVideoView;
            if (pipRoundVideoView3 != null) {
                pipRoundVideoView3.close(true);
                this.pipRoundVideoView = null;
            }
            try {
                VideoPlayer videoPlayer3 = new VideoPlayer();
                this.audioPlayer = videoPlayer3;
                final int i2 = this.playerNum + 1;
                this.playerNum = i2;
                videoPlayer3.setDelegate(new VideoPlayer.VideoPlayerDelegate() { // from class: org.telegram.messenger.MediaController.10
                    @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                    public void onError(VideoPlayer videoPlayer4, Exception exc) {
                    }

                    @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                    public void onRenderedFirstFrame() {
                    }

                    @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                    public /* bridge */ /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
                        VideoPlayer.VideoPlayerDelegate.CC.$default$onRenderedFirstFrame(this, eventTime);
                    }

                    @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                    public /* bridge */ /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
                        VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
                    }

                    @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                    public /* bridge */ /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
                        VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekStarted(this, eventTime);
                    }

                    @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                    public void onStateChanged(boolean z8, int i3) {
                        if (i2 != MediaController.this.playerNum) {
                            return;
                        }
                        if (i3 == 4 || ((i3 == 1 || i3 == 2) && z8 && messageObject.audioProgress >= 0.999f)) {
                            MessageObject messageObject3 = messageObject;
                            messageObject3.audioProgress = MediaController.VOLUME_NORMAL;
                            NotificationCenter.getInstance(messageObject3.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingProgressDidChanged, Integer.valueOf(messageObject.getId()), 0);
                            if (!MediaController.this.restoreMusicPlaylistState()) {
                                if (MediaController.this.playlist.isEmpty() || (MediaController.this.playlist.size() <= 1 && messageObject.isVoice())) {
                                    MediaController mediaController = MediaController.this;
                                    mediaController.cleanupPlayer(true, mediaController.hasNoNextVoiceOrRoundVideoMessage(), messageObject.isVoice(), false);
                                } else {
                                    MediaController.this.playNextMessageWithoutOrder(true);
                                }
                            }
                        } else if (MediaController.this.audioPlayer != null && MediaController.this.seekToProgressPending != BitmapDescriptorFactory.HUE_RED && (i3 == 3 || i3 == 1)) {
                            long duration = (int) (MediaController.this.audioPlayer.getDuration() * MediaController.this.seekToProgressPending);
                            MediaController.this.audioPlayer.seekTo(duration);
                            MediaController.this.lastProgress = duration;
                            MediaController.this.seekToProgressPending = BitmapDescriptorFactory.HUE_RED;
                        }
                        if (MediaController.this.audioPlayer == null || !CastSync.isActive()) {
                            return;
                        }
                        MediaController.this.audioPlayer.setMute(true);
                    }

                    @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                    public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
                        return false;
                    }

                    @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                    }

                    @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                    public void onVideoSizeChanged(int i3, int i4, int i5, float f2) {
                    }
                });
                this.audioPlayer.setAudioVisualizerDelegate(new VideoPlayer.AudioVisualizerDelegate() { // from class: org.telegram.messenger.MediaController.11
                    @Override // org.telegram.ui.Components.VideoPlayer.AudioVisualizerDelegate
                    public boolean needUpdate() {
                        return Theme.getCurrentAudiVisualizerDrawable().getParentView() != null;
                    }

                    @Override // org.telegram.ui.Components.VideoPlayer.AudioVisualizerDelegate
                    public void onVisualizerUpdate(boolean z8, boolean z9, float[] fArr) {
                        Theme.getCurrentAudiVisualizerDrawable().setWaveform(z8, z9, fArr);
                    }
                });
                if (z5) {
                    if (!messageObject.mediaExists && pathToMessage != file) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda21
                            @Override // java.lang.Runnable
                            public final void run() {
                                MediaController.lambda$playMessage$22(messageObject, pathToMessage);
                            }
                        });
                    }
                    this.audioPlayer.preparePlayer(Uri.fromFile(pathToMessage), "other");
                    this.isStreamingCurrentAudio = false;
                    file2 = pathToMessage;
                } else {
                    int fileReference2 = FileLoader.getInstance(messageObject.currentAccount).getFileReference(messageObject);
                    TLRPC.Document document2 = messageObject.getDocument();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("?account=");
                    sb2.append(messageObject.currentAccount);
                    sb2.append("&id=");
                    file2 = pathToMessage;
                    sb2.append(document2.id);
                    sb2.append("&hash=");
                    sb2.append(document2.access_hash);
                    sb2.append("&dc=");
                    sb2.append(document2.dc_id);
                    sb2.append("&size=");
                    sb2.append(document2.size);
                    sb2.append("&mime=");
                    sb2.append(URLEncoder.encode(document2.mime_type, "UTF-8"));
                    sb2.append("&rid=");
                    sb2.append(fileReference2);
                    sb2.append("&name=");
                    sb2.append(URLEncoder.encode(FileLoader.getDocumentFileName(document2), "UTF-8"));
                    sb2.append("&reference=");
                    byte[] bArr2 = document2.file_reference;
                    if (bArr2 == null) {
                        bArr2 = new byte[0];
                    }
                    sb2.append(Utilities.bytesToHex(bArr2));
                    this.audioPlayer.preparePlayer(Uri.parse("tg://" + messageObject.getFileName() + sb2.toString()), "other");
                    this.isStreamingCurrentAudio = true;
                }
                if (messageObject.isVoice()) {
                    String fileName = messageObject.getFileName();
                    if (fileName != null && messageObject.getDuration() >= 300.0d) {
                        float f2 = ApplicationLoader.applicationContext.getSharedPreferences("media_saved_pos", 0).getFloat(fileName, -1.0f);
                        if (f2 > BitmapDescriptorFactory.HUE_RED && f2 < 0.99f) {
                            this.seekToProgressPending = f2;
                            messageObject.audioProgress = f2;
                        }
                        this.shouldSavePositionForCurrentAudio = fileName;
                    }
                    if (Math.abs(this.currentPlaybackSpeed - VOLUME_NORMAL) > 0.001f) {
                        this.audioPlayer.setPlaybackSpeed(Math.round(this.currentPlaybackSpeed * 10.0f) / 10.0f);
                    }
                    this.audioInfo = null;
                    if (!z6) {
                        clearPlaylist();
                    }
                } else {
                    try {
                        this.audioInfo = AudioInfo.getAudioInfo(file2);
                    } catch (Exception e2) {
                        FileLog.e(e2);
                    }
                    String fileName2 = messageObject.getFileName();
                    if (!TextUtils.isEmpty(fileName2) && messageObject.getDuration() >= 600.0d) {
                        float f3 = ApplicationLoader.applicationContext.getSharedPreferences("media_saved_pos", 0).getFloat(fileName2, -1.0f);
                        if (f3 > BitmapDescriptorFactory.HUE_RED && f3 < 0.999f) {
                            this.seekToProgressPending = f3;
                            messageObject.audioProgress = f3;
                        }
                        this.shouldSavePositionForCurrentAudio = fileName2;
                        if (Math.abs(this.currentMusicPlaybackSpeed - VOLUME_NORMAL) > 0.001f) {
                            this.audioPlayer.setPlaybackSpeed(Math.round(this.currentMusicPlaybackSpeed * 10.0f) / 10.0f);
                        }
                    }
                }
                float f4 = messageObject.forceSeekTo;
                if (f4 >= BitmapDescriptorFactory.HUE_RED) {
                    this.seekToProgressPending = f4;
                    messageObject.audioProgress = f4;
                    messageObject.forceSeekTo = -1.0f;
                }
                this.audioPlayer.setStreamType(this.useFrontSpeaker ? 0 : 3);
                this.audioPlayer.play();
                if (messageObject.isVoice()) {
                    this.audioVolume = VOLUME_NORMAL;
                    setPlayerVolume();
                } else {
                    ValueAnimator valueAnimator = this.audioVolumeAnimator;
                    if (valueAnimator != null) {
                        valueAnimator.removeAllListeners();
                        this.audioVolumeAnimator.cancel();
                    }
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.audioVolume, VOLUME_NORMAL);
                    this.audioVolumeAnimator = valueAnimatorOfFloat;
                    valueAnimatorOfFloat.addUpdateListener(this.audioVolumeUpdateListener);
                    this.audioVolumeAnimator.setDuration(300L);
                    this.audioVolumeAnimator.start();
                }
                r9 = 0;
            } catch (Exception e3) {
                FileLog.e(e3);
                NotificationCenter notificationCenter = NotificationCenter.getInstance(messageObject.currentAccount);
                int i3 = NotificationCenter.messagePlayingPlayStateChanged;
                MessageObject messageObject3 = this.playingMessageObject;
                notificationCenter.lambda$postNotificationNameOnUIThread$1(i3, Integer.valueOf(messageObject3 != null ? messageObject3.getId() : 0));
                VideoPlayer videoPlayer4 = this.audioPlayer;
                if (videoPlayer4 != null) {
                    videoPlayer4.releasePlayer(true);
                    this.audioPlayer = null;
                    Theme.unrefAudioVisualizeDrawable(this.playingMessageObject);
                    this.isPaused = false;
                    this.playingMessageObject = null;
                    this.downloadingCurrentMessage = false;
                }
                return false;
            }
        }
        checkAudioFocus(messageObject);
        setPlayerVolume();
        this.isPaused = r9;
        this.lastProgress = 0L;
        this.playingMessageObject = messageObject;
        if (!SharedConfig.enabledRaiseTo(true)) {
            startRaiseToEarSensors(this.raiseChat);
        }
        if (!ApplicationLoader.mainInterfacePaused && (wakeLock = this.proximityWakeLock) != null && !wakeLock.isHeld() && (this.playingMessageObject.isVoice() || this.playingMessageObject.isRoundVideo())) {
            SharedConfig.enabledRaiseTo(r9);
        }
        startProgressTimer(this.playingMessageObject);
        NotificationCenter notificationCenter2 = NotificationCenter.getInstance(messageObject.currentAccount);
        int i4 = NotificationCenter.messagePlayingDidStart;
        Object[] objArr = new Object[2];
        objArr[r9] = messageObject;
        objArr[1] = messageObject2;
        notificationCenter2.lambda$postNotificationNameOnUIThread$1(i4, objArr);
        VideoPlayer videoPlayer5 = this.videoPlayer;
        if (videoPlayer5 != null) {
            try {
                if (this.playingMessageObject.audioProgress != BitmapDescriptorFactory.HUE_RED) {
                    long duration = videoPlayer5.getDuration();
                    if (duration == -9223372036854775807L) {
                        duration = ((long) this.playingMessageObject.getDuration()) * 1000;
                    }
                    MessageObject messageObject4 = this.playingMessageObject;
                    int i5 = (int) (duration * messageObject4.audioProgress);
                    int i6 = messageObject4.audioProgressMs;
                    if (i6 != 0) {
                        messageObject4.audioProgressMs = r9;
                        i5 = i6;
                    }
                    this.videoPlayer.seekTo(i5);
                }
            } catch (Exception e4) {
                MessageObject messageObject5 = this.playingMessageObject;
                messageObject5.audioProgress = BitmapDescriptorFactory.HUE_RED;
                messageObject5.audioProgressSec = r9;
                NotificationCenter notificationCenter3 = NotificationCenter.getInstance(messageObject.currentAccount);
                int i7 = NotificationCenter.messagePlayingProgressDidChanged;
                Object[] objArr2 = new Object[2];
                objArr2[r9] = Integer.valueOf(this.playingMessageObject.getId());
                objArr2[1] = 0;
                notificationCenter3.lambda$postNotificationNameOnUIThread$1(i7, objArr2);
                FileLog.e(e4);
            }
            this.videoPlayer.play();
        } else {
            VideoPlayer videoPlayer6 = this.audioPlayer;
            if (videoPlayer6 != null) {
                try {
                    if (this.playingMessageObject.audioProgress != BitmapDescriptorFactory.HUE_RED) {
                        long duration2 = videoPlayer6.getDuration();
                        if (duration2 == -9223372036854775807L) {
                            duration2 = ((long) this.playingMessageObject.getDuration()) * 1000;
                        }
                        long j = (int) (duration2 * this.playingMessageObject.audioProgress);
                        this.audioPlayer.seekTo(j);
                        if (!this.ignorePlayerUpdate) {
                            CastSync.seekTo(j);
                        }
                    }
                } catch (Exception e5) {
                    this.playingMessageObject.resetPlayingProgress();
                    NotificationCenter notificationCenter4 = NotificationCenter.getInstance(messageObject.currentAccount);
                    int i8 = NotificationCenter.messagePlayingProgressDidChanged;
                    Object[] objArr3 = new Object[2];
                    objArr3[r9] = Integer.valueOf(this.playingMessageObject.getId());
                    objArr3[1] = 0;
                    notificationCenter4.lambda$postNotificationNameOnUIThread$1(i8, objArr3);
                    FileLog.e(e5);
                }
            }
        }
        if (canStartMusicPlayerService()) {
            try {
                ApplicationLoader.applicationContext.startService(new Intent(ApplicationLoader.applicationContext, (Class<?>) MusicPlayerService.class));
            } catch (Throwable th2) {
                FileLog.e(th2);
            }
        } else {
            ApplicationLoader.applicationContext.stopService(new Intent(ApplicationLoader.applicationContext, (Class<?>) MusicPlayerService.class));
        }
        try {
            CastSync.check(1);
            if (this.ignorePlayerUpdate) {
                return true;
            }
            if (ChromecastController.getInstance().isCasting()) {
                ChromecastController.getInstance().setCurrentMediaAndCastIfNeeded(getCurrentChromecastMedia());
            }
            CastSync.setPlaying(true);
            return true;
        } catch (Exception e6) {
            FileLog.e(e6);
            return true;
        }
    }

    public void playMessageAtIndex(int i) {
        int i2 = this.currentPlaylistNum;
        if (i2 < 0 || i2 >= this.playlist.size()) {
            return;
        }
        this.currentPlaylistNum = i;
        this.playMusicAgain = true;
        MessageObject messageObject = this.playlist.get(i);
        if (this.playingMessageObject != null && !isSamePlayingMessage(messageObject)) {
            this.playingMessageObject.resetPlayingProgress();
        }
        playMessage(messageObject);
    }

    public void playNextMessage() {
        playNextMessageWithoutOrder(false);
    }

    public void playPreviousMessage() {
        int i;
        ArrayList<MessageObject> arrayList = SharedConfig.shuffleMusic ? this.shuffledPlaylist : this.playlist;
        if (arrayList.isEmpty() || (i = this.currentPlaylistNum) < 0 || i >= arrayList.size()) {
            return;
        }
        MessageObject messageObject = arrayList.get(this.currentPlaylistNum);
        if (messageObject.audioProgressSec > 10) {
            seekToProgress(messageObject, BitmapDescriptorFactory.HUE_RED);
            return;
        }
        traversePlaylist(arrayList, SharedConfig.playOrderReversed ? -1 : 1);
        if (this.currentPlaylistNum >= arrayList.size()) {
            return;
        }
        this.playMusicAgain = true;
        playMessage(arrayList.get(this.currentPlaylistNum));
    }

    public void prepareResumedRecording(final int i, final MediaDataController.DraftVoice draftVoice, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories$StoryItem tL_stories$StoryItem, final int i2, final String str, final int i3, final long j2, final MessageSuggestionParams messageSuggestionParams) {
        this.manualRecording = false;
        requestRecordAudioFocus(true);
        this.recordQueue.cancelRunnable(this.recordStartRunnable);
        this.recordQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$prepareResumedRecording$25(i2, draftVoice, i, j, j2, messageSuggestionParams, messageObject2, messageObject, tL_stories$StoryItem, str, i3);
            }
        });
    }

    public void requestRecordAudioFocus(boolean z) {
        if (!z) {
            if (this.hasRecordAudioFocus) {
                NotificationsController.audioManager.abandonAudioFocus(this.audioRecordFocusChangedListener);
                this.hasRecordAudioFocus = false;
                return;
            }
            return;
        }
        if (!this.hasRecordAudioFocus && SharedConfig.pauseMusicOnRecord && NotificationsController.audioManager.requestAudioFocus(this.audioRecordFocusChangedListener, 3, 2) == 1) {
            this.hasRecordAudioFocus = true;
        }
    }

    public void resetGoingToShowMessageObject() {
        this.goingToShowMessageObject = null;
    }

    public void resumeByRewind() {
        VideoPlayer videoPlayer = this.audioPlayer;
        if (videoPlayer == null || this.playingMessageObject == null || this.isPaused) {
            return;
        }
        if (!videoPlayer.isBuffering()) {
            this.audioPlayer.play();
            return;
        }
        MessageObject messageObject = this.playingMessageObject;
        cleanupPlayer(false, false);
        playMessage(messageObject);
    }

    public void scheduleVideoConvert(MessageObject messageObject) {
        scheduleVideoConvert(messageObject, false, true, false);
    }

    public boolean scheduleVideoConvert(MessageObject messageObject, boolean z, boolean z2, boolean z3) {
        if (messageObject == null || messageObject.videoEditedInfo == null) {
            return false;
        }
        if (z && !this.videoConvertQueue.isEmpty()) {
            return false;
        }
        if (z) {
            new File(messageObject.messageOwner.attachPath).delete();
        }
        VideoConvertMessage videoConvertMessage = new VideoConvertMessage(messageObject, messageObject.videoEditedInfo, z2, z3);
        this.videoConvertQueue.add(videoConvertMessage);
        if (videoConvertMessage.foreground) {
            this.foregroundConvertingMessages.add(videoConvertMessage);
            checkForegroundConvertMessage(false);
        }
        if (this.videoConvertQueue.size() == 1) {
            startVideoConvertFromQueue();
        }
        return true;
    }

    public boolean seekToProgress(MessageObject messageObject, float f) {
        MessageObject messageObject2 = this.playingMessageObject;
        if ((this.audioPlayer != null || this.videoPlayer != null) && messageObject != null && messageObject2 != null && isSamePlayingMessage(messageObject)) {
            try {
                VideoPlayer videoPlayer = this.audioPlayer;
                if (videoPlayer != null) {
                    long duration = videoPlayer.getDuration();
                    if (duration == -9223372036854775807L) {
                        this.seekToProgressPending = f;
                    } else {
                        messageObject2.audioProgress = f;
                        long j = (int) (duration * f);
                        this.audioPlayer.seekTo(j);
                        this.lastProgress = j;
                        if (!this.ignorePlayerUpdate) {
                            CastSync.seekTo(j);
                        }
                    }
                } else {
                    VideoPlayer videoPlayer2 = this.videoPlayer;
                    if (videoPlayer2 != null) {
                        videoPlayer2.seekTo((long) (videoPlayer2.getDuration() * f));
                        if (!this.ignorePlayerUpdate) {
                            CastSync.seekTo((long) (this.videoPlayer.getDuration() * f));
                        }
                    }
                }
                NotificationCenter.getInstance(messageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingDidSeek, Integer.valueOf(messageObject2.getId()), Float.valueOf(f));
                return true;
            } catch (Exception e) {
                FileLog.e(e);
            }
        }
        return false;
    }

    public boolean seekToProgressMs(MessageObject messageObject, long j) {
        long duration;
        MessageObject messageObject2 = this.playingMessageObject;
        if ((this.audioPlayer != null || this.videoPlayer != null) && messageObject != null && messageObject2 != null && isSamePlayingMessage(messageObject)) {
            try {
                VideoPlayer videoPlayer = this.audioPlayer;
                if (videoPlayer != null) {
                    duration = videoPlayer.getDuration();
                    if (duration != -9223372036854775807L) {
                        messageObject2.audioProgress = Utilities.clamp01(j / duration);
                    }
                    this.audioPlayer.seekTo(j);
                    this.lastProgress = j;
                    if (!this.ignorePlayerUpdate) {
                        CastSync.seekTo(j);
                    }
                } else {
                    VideoPlayer videoPlayer2 = this.videoPlayer;
                    if (videoPlayer2 != null) {
                        duration = videoPlayer2.getDuration();
                        this.videoPlayer.seekTo(j);
                        if (!this.ignorePlayerUpdate) {
                            CastSync.seekTo(j);
                        }
                    } else {
                        duration = 1;
                    }
                }
                if (duration != 0) {
                    NotificationCenter.getInstance(messageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingDidSeek, Integer.valueOf(messageObject2.getId()), Float.valueOf(Utilities.clamp01(j / duration)));
                }
                return true;
            } catch (Exception e) {
                FileLog.e(e);
            }
        }
        return false;
    }

    public void setAllowStartRecord(boolean z) {
        this.allowStartRecord = z;
    }

    public void setBaseActivity(Activity activity, boolean z) {
        if (!z) {
            if (this.baseActivity != activity) {
                return;
            } else {
                activity = null;
            }
        }
        this.baseActivity = activity;
    }

    public void setCurrentVideoVisible(boolean z) {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.currentAspectRatioFrameLayout;
        if (aspectRatioFrameLayout == null) {
            return;
        }
        if (z) {
            PipRoundVideoView pipRoundVideoView = this.pipRoundVideoView;
            if (pipRoundVideoView != null) {
                this.pipSwitchingState = 2;
                pipRoundVideoView.close(true);
                this.pipRoundVideoView = null;
                return;
            } else {
                if (aspectRatioFrameLayout.getParent() == null) {
                    this.currentTextureViewContainer.addView(this.currentAspectRatioFrameLayout);
                }
                this.videoPlayer.setTextureView(this.currentTextureView);
                return;
            }
        }
        if (aspectRatioFrameLayout.getParent() != null) {
            this.pipSwitchingState = 1;
            this.currentTextureViewContainer.removeView(this.currentAspectRatioFrameLayout);
            return;
        }
        if (this.pipRoundVideoView == null) {
            try {
                PipRoundVideoView pipRoundVideoView2 = new PipRoundVideoView();
                this.pipRoundVideoView = pipRoundVideoView2;
                pipRoundVideoView2.show(this.baseActivity, new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setCurrentVideoVisible$14();
                    }
                });
            } catch (Exception unused) {
                this.pipRoundVideoView = null;
            }
        }
        PipRoundVideoView pipRoundVideoView3 = this.pipRoundVideoView;
        if (pipRoundVideoView3 != null) {
            this.videoPlayer.setTextureView(pipRoundVideoView3.getTextureView());
        }
    }

    public void setFeedbackView(View view, boolean z) {
        if (!z) {
            if (this.feedbackView != view) {
                return;
            } else {
                view = null;
            }
        }
        this.feedbackView = view;
    }

    public void setInputFieldHasText(boolean z) {
        this.inputFieldHasText = z;
    }

    public void setLastVisibleMessageIds(int i, long j, long j2, TLRPC.User user, TLRPC.EncryptedChat encryptedChat, ArrayList<Long> arrayList, int i2) {
        this.lastChatEnterTime = j;
        this.lastChatLeaveTime = j2;
        this.lastChatAccount = i;
        this.lastSecretChat = encryptedChat;
        this.lastUser = user;
        this.lastMessageId = i2;
        this.lastChatVisibleMessages = arrayList;
    }

    public void setPlaybackOrderType(int i) {
        boolean z = SharedConfig.shuffleMusic;
        SharedConfig.setPlaybackOrderType(i);
        boolean z2 = SharedConfig.shuffleMusic;
        if (z != z2) {
            if (z2) {
                buildShuffledPlayList();
                return;
            }
            MessageObject messageObject = this.playingMessageObject;
            if (messageObject != null) {
                int iIndexOf = this.playlist.indexOf(messageObject);
                this.currentPlaylistNum = iIndexOf;
                if (iIndexOf == -1) {
                    clearPlaylist();
                    cleanupPlayer(true, true);
                }
            }
        }
    }

    public void setPlaybackSpeed(boolean z, float f) {
        if (z) {
            if (this.currentMusicPlaybackSpeed >= 6.0f && f == VOLUME_NORMAL && this.playingMessageObject != null) {
                this.audioPlayer.pause();
                final MessageObject messageObject = this.playingMessageObject;
                final float f2 = messageObject.audioProgress;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda20
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setPlaybackSpeed$16(messageObject, f2);
                    }
                }, 50L);
            }
            this.currentMusicPlaybackSpeed = f;
            if (Math.abs(f - VOLUME_NORMAL) > 0.001f) {
                this.fastMusicPlaybackSpeed = f;
            }
        } else {
            this.currentPlaybackSpeed = f;
            if (Math.abs(f - VOLUME_NORMAL) > 0.001f) {
                this.fastPlaybackSpeed = f;
            }
        }
        VideoPlayer videoPlayer = this.audioPlayer;
        if (videoPlayer != null || (videoPlayer = this.videoPlayer) != null) {
            videoPlayer.setPlaybackSpeed(Math.round(f * 10.0f) / 10.0f);
        }
        MessagesController.getGlobalMainSettings().edit().putFloat(z ? "musicPlaybackSpeed" : "playbackSpeed", f).putFloat(z ? "fastMusicPlaybackSpeed" : "fastPlaybackSpeed", z ? this.fastMusicPlaybackSpeed : this.fastPlaybackSpeed).commit();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingSpeedChanged, new Object[0]);
        if (this.ignorePlayerUpdate) {
            return;
        }
        CastSync.setSpeed(f);
    }

    public boolean setPlaylist(ArrayList<MessageObject> arrayList, MessageObject messageObject, long j) {
        return setPlaylist(arrayList, messageObject, j, true, null);
    }

    public boolean setPlaylist(ArrayList<MessageObject> arrayList, MessageObject messageObject, long j, PlaylistGlobalSearchParams playlistGlobalSearchParams) {
        return setPlaylist(arrayList, messageObject, j, true, playlistGlobalSearchParams);
    }

    public boolean setPlaylist(ArrayList<MessageObject> arrayList, MessageObject messageObject, long j, boolean z, PlaylistGlobalSearchParams playlistGlobalSearchParams) {
        if (this.playingMessageObject == messageObject) {
            int iIndexOf = this.playlist.indexOf(messageObject);
            if (iIndexOf >= 0) {
                this.currentPlaylistNum = iIndexOf;
            }
            return playMessage(messageObject);
        }
        this.forceLoopCurrentPlaylist = !z;
        this.playlistMergeDialogId = j;
        this.playMusicAgain = !this.playlist.isEmpty();
        clearPlaylist();
        this.playlistGlobalSearchParams = playlistGlobalSearchParams;
        boolean z2 = false;
        if (!arrayList.isEmpty() && DialogObject.isEncryptedDialog(arrayList.get(0).getDialogId())) {
            z2 = true;
        }
        int iMin = Integer.MAX_VALUE;
        int iMax = Integer.MIN_VALUE;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            MessageObject messageObject2 = arrayList.get(size);
            if (messageObject2.isMusic()) {
                int id = messageObject2.getId();
                if (id > 0 || z2) {
                    iMin = Math.min(iMin, id);
                    iMax = Math.max(iMax, id);
                }
                this.playlist.add(messageObject2);
                this.playlistMap.put(Integer.valueOf(id), messageObject2);
            }
        }
        sortPlaylist();
        int iIndexOf2 = this.playlist.indexOf(messageObject);
        this.currentPlaylistNum = iIndexOf2;
        if (iIndexOf2 == -1) {
            clearPlaylist();
            this.currentPlaylistNum = this.playlist.size();
            this.playlist.add(messageObject);
            this.playlistMap.put(Integer.valueOf(messageObject.getId()), messageObject);
        }
        if (messageObject.isMusic() && !messageObject.scheduled) {
            if (SharedConfig.shuffleMusic) {
                buildShuffledPlayList();
            }
            if (z) {
                if (this.playlistGlobalSearchParams == null) {
                    MediaDataController.getInstance(messageObject.currentAccount).loadMusic(messageObject.getDialogId(), iMin, iMax);
                } else {
                    this.playlistClassGuid = ConnectionsManager.generateClassGuid();
                }
            }
        }
        return playMessage(messageObject);
    }

    public void setReplyingMessage(MessageObject messageObject, MessageObject messageObject2, TL_stories$StoryItem tL_stories$StoryItem) {
        this.recordReplyingMsg = messageObject;
        this.recordReplyingTopMsg = messageObject2;
        this.recordReplyingStory = tL_stories$StoryItem;
    }

    public void setTextureView(TextureView textureView, AspectRatioFrameLayout aspectRatioFrameLayout, FrameLayout frameLayout, boolean z) {
        setTextureView(textureView, aspectRatioFrameLayout, frameLayout, z, null);
    }

    public void setTextureView(TextureView textureView, AspectRatioFrameLayout aspectRatioFrameLayout, FrameLayout frameLayout, boolean z, Runnable runnable) {
        if (textureView == null) {
            return;
        }
        if (!z && this.currentTextureView == textureView) {
            this.pipSwitchingState = 1;
            this.currentTextureView = null;
            this.currentAspectRatioFrameLayout = null;
            this.currentTextureViewContainer = null;
            return;
        }
        if (this.videoPlayer == null || textureView == this.currentTextureView) {
            return;
        }
        this.isDrawingWasReady = aspectRatioFrameLayout != null && aspectRatioFrameLayout.isDrawingReady();
        this.currentTextureView = textureView;
        if (runnable != null && this.pipRoundVideoView == null) {
            try {
                PipRoundVideoView pipRoundVideoView = new PipRoundVideoView();
                this.pipRoundVideoView = pipRoundVideoView;
                pipRoundVideoView.show(this.baseActivity, new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda53
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setTextureView$15();
                    }
                });
            } catch (Exception unused) {
                this.pipRoundVideoView = null;
            }
        }
        PipRoundVideoView pipRoundVideoView2 = this.pipRoundVideoView;
        if (pipRoundVideoView2 != null) {
            this.videoPlayer.setTextureView(pipRoundVideoView2.getTextureView());
        } else {
            this.videoPlayer.setTextureView(this.currentTextureView);
        }
        this.currentAspectRatioFrameLayout = aspectRatioFrameLayout;
        this.currentTextureViewContainer = frameLayout;
        if (!this.currentAspectRatioFrameLayoutReady || aspectRatioFrameLayout == null) {
            return;
        }
        aspectRatioFrameLayout.setAspectRatio(this.currentAspectRatioFrameLayoutRatio, this.currentAspectRatioFrameLayoutRotation);
    }

    public void setVoiceMessagesPlaylist(ArrayList<MessageObject> arrayList, boolean z) {
        ArrayList<MessageObject> arrayList2 = arrayList != null ? new ArrayList<>(arrayList) : null;
        this.voiceMessagesPlaylist = arrayList2;
        if (arrayList2 != null) {
            this.voiceMessagesPlaylistUnread = z;
            this.voiceMessagesPlaylistMap = new SparseArray<>();
            for (int i = 0; i < this.voiceMessagesPlaylist.size(); i++) {
                MessageObject messageObject = this.voiceMessagesPlaylist.get(i);
                this.voiceMessagesPlaylistMap.put(messageObject.getId(), messageObject);
            }
        }
    }

    public void startMediaObserver() {
        ApplicationLoader.applicationHandler.removeCallbacks(this.stopMediaObserverRunnable);
        this.startObserverToken++;
        try {
            if (this.internalObserver == null) {
                ContentResolver contentResolver = ApplicationLoader.applicationContext.getContentResolver();
                Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                ExternalObserver externalObserver = new ExternalObserver();
                this.externalObserver = externalObserver;
                contentResolver.registerContentObserver(uri, false, externalObserver);
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
        try {
            if (this.externalObserver == null) {
                ContentResolver contentResolver2 = ApplicationLoader.applicationContext.getContentResolver();
                Uri uri2 = MediaStore.Images.Media.INTERNAL_CONTENT_URI;
                InternalObserver internalObserver = new InternalObserver();
                this.internalObserver = internalObserver;
                contentResolver2.registerContentObserver(uri2, false, internalObserver);
            }
        } catch (Exception e2) {
            FileLog.e(e2);
        }
    }

    public void startRaiseToEarSensors(ChatActivity chatActivity) {
        if (chatActivity != null) {
            if ((this.accelerometerSensor == null && (this.gravitySensor == null || this.linearAcceleration == null)) || this.proximitySensor == null) {
                return;
            }
            if (!SharedConfig.enabledRaiseTo(false)) {
                MessageObject messageObject = this.playingMessageObject;
                if (messageObject == null) {
                    return;
                }
                if (!messageObject.isVoice() && !this.playingMessageObject.isRoundVideo()) {
                    return;
                }
            }
            this.raiseChat = chatActivity;
            if (this.sensorsStarted) {
                return;
            }
            float[] fArr = this.gravity;
            fArr[2] = 0.0f;
            fArr[1] = 0.0f;
            fArr[0] = 0.0f;
            float[] fArr2 = this.linearAcceleration;
            fArr2[2] = 0.0f;
            fArr2[1] = 0.0f;
            fArr2[0] = 0.0f;
            float[] fArr3 = this.gravityFast;
            fArr3[2] = 0.0f;
            fArr3[1] = 0.0f;
            fArr3[0] = 0.0f;
            this.lastTimestamp = 0L;
            this.previousAccValue = BitmapDescriptorFactory.HUE_RED;
            this.raisedToTop = 0;
            this.raisedToTopSign = 0;
            this.countLess = 0;
            this.raisedToBack = 0;
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startRaiseToEarSensors$8();
                }
            });
            this.sensorsStarted = true;
        }
    }

    public void startRecording(final int i, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories$StoryItem tL_stories$StoryItem, final int i2, boolean z, final String str, final int i3, final long j2, final MessageSuggestionParams messageSuggestionParams) {
        boolean z2;
        boolean z3;
        MessageObject messageObject3 = this.playingMessageObject;
        if (messageObject3 == null || !isPlayingMessage(messageObject3) || isMessagePaused()) {
            z2 = z;
            z3 = false;
        } else {
            z2 = z;
            z3 = true;
        }
        this.manualRecording = z2;
        requestRecordAudioFocus(true);
        try {
            this.feedbackView.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        DispatchQueue dispatchQueue = this.recordQueue;
        boolean z4 = z3;
        Runnable runnable = new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() throws IllegalStateException {
                this.f$0.lambda$startRecording$37(i, i2, j, j2, messageSuggestionParams, messageObject2, messageObject, tL_stories$StoryItem, str, i3);
            }
        };
        this.recordStartRunnable = runnable;
        dispatchQueue.postRunnable(runnable, z4 ? 500L : 50L);
    }

    public void startRecordingIfFromSpeaker() {
        if (this.useFrontSpeaker && this.raiseChat != null && this.allowStartRecord && SharedConfig.enabledRaiseTo(true)) {
            this.raiseToEarRecord = true;
            int currentAccount = this.raiseChat.getCurrentAccount();
            long dialogId = this.raiseChat.getDialogId();
            MessageObject threadMessage = this.raiseChat.getThreadMessage();
            int classGuid = this.raiseChat.getClassGuid();
            ChatActivity chatActivity = this.raiseChat;
            String str = chatActivity != null ? chatActivity.quickReplyShortcut : null;
            int quickReplyId = chatActivity != null ? chatActivity.getQuickReplyId() : 0;
            ChatActivity chatActivity2 = this.raiseChat;
            long sendMonoForumPeerId = chatActivity2 != null ? chatActivity2.getSendMonoForumPeerId() : 0L;
            ChatActivity chatActivity3 = this.raiseChat;
            startRecording(currentAccount, dialogId, null, threadMessage, null, classGuid, false, str, quickReplyId, sendMonoForumPeerId, chatActivity3 != null ? chatActivity3.getSendMessageSuggestionParams() : null);
            this.ignoreOnPause = true;
        }
    }

    public void stopMediaObserver() {
        if (this.stopMediaObserverRunnable == null) {
            this.stopMediaObserverRunnable = new StopMediaObserverRunnable();
        }
        this.stopMediaObserverRunnable.currentObserverToken = this.startObserverToken;
        ApplicationLoader.applicationHandler.postDelayed(this.stopMediaObserverRunnable, 5000L);
    }

    public void stopRaiseToEarSensors(ChatActivity chatActivity, boolean z, boolean z2) {
        if (this.ignoreOnPause) {
            this.ignoreOnPause = false;
            return;
        }
        if (z2) {
            if (this.recordingAudio == null || isRecordingPaused()) {
                stopRecording(z ? 2 : 0, false, 0, false, 0L);
            } else {
                toggleRecordingPause(false);
            }
        }
        if (!this.sensorsStarted || this.ignoreOnPause) {
            return;
        }
        if ((this.accelerometerSensor == null && (this.gravitySensor == null || this.linearAcceleration == null)) || this.proximitySensor == null || this.raiseChat != chatActivity) {
            return;
        }
        this.raiseChat = null;
        this.sensorsStarted = false;
        this.accelerometerVertical = false;
        this.proximityTouched = false;
        this.raiseToEarRecord = false;
        this.useFrontSpeaker = false;
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$stopRaiseToEarSensors$9();
            }
        });
        PowerManager.WakeLock wakeLock = this.proximityWakeLock;
        if (wakeLock == null || !wakeLock.isHeld()) {
            return;
        }
        this.proximityWakeLock.release();
    }

    public void stopRecording(final int i, final boolean z, final int i2, final boolean z2, final long j) {
        Runnable runnable = this.recordStartRunnable;
        if (runnable != null) {
            this.recordQueue.cancelRunnable(runnable);
            this.recordStartRunnable = null;
        }
        this.recordQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() throws IllegalStateException {
                this.f$0.lambda$stopRecording$43(i, z, i2, z2, j);
            }
        });
    }

    public void syncCastedPlayer() {
        if (this.playingMessageObject == null) {
            return;
        }
        this.ignorePlayerUpdate = true;
        if (CastSync.isActive() && !CastSync.isUpdatePending()) {
            long position = CastSync.getPosition();
            long progressMs = getProgressMs(this.playingMessageObject);
            if (progressMs >= 0 && position >= 0 && Math.abs(progressMs - position) > 1000) {
                seekToProgressMs(this.playingMessageObject, position);
            }
            if (CastSync.isPlaying()) {
                playMessage(this.playingMessageObject);
            } else {
                lambda$startAudioAgain$7(this.playingMessageObject);
            }
            setPlaybackSpeed(true, CastSync.getSpeed());
        }
        setPlayerVolume();
        this.ignorePlayerUpdate = false;
    }

    public void toggleRecordingPause(final boolean z) {
        this.recordQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda57
            @Override // java.lang.Runnable
            public final void run() throws IllegalStateException {
                this.f$0.lambda$toggleRecordingPause$32(z);
            }
        });
    }

    public void trimCurrentRecording(final long j, final long j2, final Runnable runnable) {
        if (this.recordingAudioFile == null) {
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
                return;
            }
            return;
        }
        final File file = new File(FileLoader.getDirectory(1), System.currentTimeMillis() + "_" + FileLoader.getAttachFileName(this.recordingAudio)) { // from class: org.telegram.messenger.MediaController.15
            @Override // java.io.File
            public boolean delete() {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.e("delete voice file (trimmed)");
                }
                return super.delete();
            }
        };
        this.recordQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$trimCurrentRecording$26(file, j, j2, runnable);
            }
        });
    }

    public void tryResumePausedAudio() {
        MessageObject playingMessageObject = getPlayingMessageObject();
        if (playingMessageObject != null && isMessagePaused() && this.wasPlayingAudioBeforePause && (playingMessageObject.isVoice() || playingMessageObject.isMusic())) {
            playMessage(playingMessageObject);
        }
        this.wasPlayingAudioBeforePause = false;
    }

    public void updateSilent(boolean z) {
        this.isSilent = z;
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.setLooping(z);
        }
        setPlayerVolume();
        checkVolumeBarUI();
        MessageObject messageObject = this.playingMessageObject;
        if (messageObject != null) {
            NotificationCenter notificationCenter = NotificationCenter.getInstance(messageObject.currentAccount);
            int i = NotificationCenter.messagePlayingPlayStateChanged;
            MessageObject messageObject2 = this.playingMessageObject;
            notificationCenter.lambda$postNotificationNameOnUIThread$1(i, Integer.valueOf(messageObject2 != null ? messageObject2.getId() : 0));
        }
    }
}
