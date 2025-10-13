.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method public static synthetic $r8$lambda$5UN4-RL1-n4u8elNQUJ0dm4hpkM(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->lambda$startRecording$5(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$J2-rgUlACfXMJ-59IOA0f6bPnjs(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;Ljava/lang/Runnable;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->lambda$startRecording$6(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$LWsGUImEXdkI6Qvuz8z6jeBFKag(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;ZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->lambda$onVideoRecordStart$3(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_zn2wdWvxXFAlOvPs4mvGsB6vew(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->lambda$onVideoRecordEnd$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$c_UVzXxteGcWpJLbreFZyayxU8A(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->lambda$takePicture$1(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d2EKZeXUv248JcUUBWKZEHdN7_I(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->lambda$takePicture$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$hGntGoIW9Udq0wV_ZkNRXySjuCs(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->lambda$startRecording$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$zbUvimyUraA5YhnECvAa5ZXdBN0(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->takePicture(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zmyp0mRRi6hVLYfMyRDxkxbcXvI(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->lambda$takePicture$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onVideoRecordEnd$7()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/QRScanner;->setPaused(Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionRecording()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Ljava/lang/Object;ZZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onVideoRecordStart$3(ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->startRecording(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startRecording$4()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    return-void
.end method

.method private synthetic lambda$startRecording$5(Ljava/lang/String;J)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->stopRecordingLoading(Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashOut()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/QRScanner;->setPaused(Z)V

    :cond_3
    const-wide/16 v3, 0x320

    const/4 v0, 0x0

    cmp-long v5, p2, v3

    if-gtz v5, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    move-result-object p2

    invoke-virtual {p2, v2, v1}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setRecording(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->stopRecordingLoading(Z)V

    :cond_4
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p1, :cond_5

    :try_start_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3, v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromVideoShoot(Ljava/io/File;Ljava/lang/String;J)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)J

    move-result-wide p2

    iput-wide p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMultipleStoriesSelector()V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    move-result-object p2

    invoke-virtual {p2, v2, v1}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setRecording(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->stopRecordingLoading(Z)V

    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)Ljava/io/File;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->push(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getLayout()Lorg/telegram/ui/Stories/recorder/CollageLayout;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getContent()Ljava/util/ArrayList;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->asCollage(Lorg/telegram/ui/Stories/recorder/CollageLayout;Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->getVideoWidth()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/camera/CameraView;->getVideoHeight()I

    move-result p2

    if-lez p1, :cond_8

    if-lez p2, :cond_8

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p3

    iput p1, p3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iput p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    goto :goto_2

    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->getVideoWidth()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/camera/CameraView;->getVideoHeight()I

    move-result p2

    if-lez p1, :cond_a

    if-lez p2, :cond_a

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p3

    iput p1, p3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iput p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateToPreviewWithPlayerAwait(Ljava/lang/Runnable;J)V

    :cond_b
    :goto_2
    return-void
.end method

.method private synthetic lambda$startRecording$6(Ljava/lang/Runnable;Z)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintTextView;

    move-result-object p1

    if-eqz p2, :cond_0

    sget p2, Lorg/telegram/messenger/R$string;->StoryHintSwipeToZoom:I

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->StoryHintPinchToZoom:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/HintTextView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 p2, 0x1

    invoke-static {p1, p2, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setVisible(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setRecording(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, p2, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    return-void
.end method

.method private synthetic lambda$takePicture$0()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    return-void
.end method

.method private synthetic lambda$takePicture$1(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Integer;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/QRScanner;->setPaused(Z)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, -0x1

    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    nop

    goto :goto_1

    :catch_2
    nop

    const/4 v4, -0x1

    :goto_1
    const/4 v3, -0x1

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    const/16 v5, 0x5a

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_4

    if-le v4, v3, :cond_5

    const/16 v5, 0x10e

    goto :goto_4

    :cond_4
    if-le v3, v4, :cond_5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    :cond_5
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2, v5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromPhotoShoot(Ljava/io/File;I)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)J

    move-result-wide v3

    iput-wide v3, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->push(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getLayout()Lorg/telegram/ui/Stories/recorder/CollageLayout;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getContent()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->asCollage(Lorg/telegram/ui/Stories/recorder/CollageLayout;Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_7
    if-eqz p1, :cond_8

    :goto_5
    invoke-interface {p1, v3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    if-eqz p1, :cond_a

    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    :goto_6
    return-void
.end method

.method private synthetic lambda$takePicture$2()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    return-void
.end method

.method private startRecording(ZLjava/lang/Runnable;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionObject()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V

    new-instance v6, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;Ljava/lang/Runnable;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/camera/CameraController;->recordVideo(Ljava/lang/Object;Ljava/io/File;ZLorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraController$ICameraView;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setVisible(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->switchMode(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->startAsVideo(Z)V

    :cond_1
    return-void
.end method

.method private takePicture(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->startTakePictureAnimation(Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isDual()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "off"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->pauseAsTakingPicture()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v3

    const/4 v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v3

    const/4 v4, 0x0

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-nez v4, :cond_6

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/QRScanner;->setPaused(Z)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionObject()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v2, v3, v1, v4, v5}, Lorg/telegram/messenger/camera/CameraController;->takePicture(Ljava/io/File;ZLjava/lang/Object;Lorg/telegram/messenger/Utilities$Callback;)Z

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    goto/16 :goto_5

    :cond_6
    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/QRScanner;->setPaused(Z)V

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromPhotoShoot(Ljava/io/File;I)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->push(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getLayout()Lorg/telegram/ui/Stories/recorder/CollageLayout;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getContent()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->asCollage(Lorg/telegram/ui/Stories/recorder/CollageLayout;Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_9

    :goto_4
    invoke-interface {p1, v4}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    goto :goto_5

    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    if-eqz p1, :cond_b

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    :goto_5
    return-void
.end method


# virtual methods
.method public canRecordAudio()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    return v0
.end method

.method public getMaxVideoDuration()J
    .locals 2

    const-wide/32 v0, 0x2b368

    return-wide v0
.end method

.method public synthetic getMaxVisibleVideoDuration()J
    .locals 2

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate$-CC;->$default$getMaxVisibleVideoDuration(Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onCheckClick()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getContent()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-static {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getLayout()Lorg/telegram/ui/Stories/recorder/CollageLayout;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getContent()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->asCollage(Lorg/telegram/ui/Stories/recorder/CollageLayout;Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->switchMode(Z)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    return-void
.end method

.method public onFlipClick()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "camera"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "flashMode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->switchCamera()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashIn(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashOut()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onFlipLongClick()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toggleDual()V

    :cond_0
    return-void
.end method

.method public onGalleryClick()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    :cond_0
    return-void
.end method

.method public onPhotoShoot()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)Ljava/io/File;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/QRScanner;->setPaused(Z)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10702(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flash(Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->takePicture(Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onVideoDuration(J)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setDuration(JZ)V

    return-void
.end method

.method public onVideoRecordEnd(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x190

    :goto_0
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onVideoRecordLocked()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintTextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->StoryHintPinchToZoom:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public onVideoRecordStart(ZLjava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$11600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/QRScanner;->setPaused(Z)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)Ljava/io/File;

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    invoke-static {v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10702(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashIn(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->startRecording(ZLjava/lang/Runnable;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onZoom(F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    return-void
.end method

.method public synthetic showStoriesDrafts()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate$-CC;->$default$showStoriesDrafts(Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;)Z

    move-result v0

    return v0
.end method
