.class Lorg/telegram/ui/Components/ChatActivityEnterView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onPreAudioVideoRecord()V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1402(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1502(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1702(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1802(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/tgnet/TLRPC$TL_document;)Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    const/16 v5, 0x17

    const-string v6, "android.permission.RECORD_AUDIO"

    if-eqz v1, :cond_b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v6}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "android.permission.CAMERA"

    invoke-static {v4, v5}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v1, :cond_4

    if-nez v4, :cond_8

    :cond_4
    if-nez v1, :cond_5

    if-nez v4, :cond_5

    const/4 v7, 0x2

    goto :goto_2

    :cond_5
    const/4 v7, 0x1

    :goto_2
    new-array v7, v7, [Ljava/lang/String;

    if-nez v1, :cond_6

    if-nez v4, :cond_6

    aput-object v6, v7, v3

    aput-object v5, v7, v2

    goto :goto_3

    :cond_6
    if-nez v1, :cond_7

    aput-object v6, v7, v3

    goto :goto_3

    :cond_7
    aput-object v5, v7, v3

    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x96

    invoke-static {v1, v7, v2}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_8
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2002(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(IZ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showWaves(ZZ)V

    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->reset()V

    goto/16 :goto_7

    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v6}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2302(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->getReplyToStory()Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v1

    move-object v11, v1

    goto :goto_5

    :cond_d
    move-object v11, v4

    :goto_5
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v5

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v6

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v7

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v12, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingGuid:I

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    :cond_e
    move-object v14, v4

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v1

    move v15, v1

    goto :goto_6

    :cond_f
    const/4 v15, 0x0

    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMonoForumPeerId()J

    move-result-wide v16

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMessageSuggestionParams()Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v18

    const/4 v13, 0x1

    invoke-virtual/range {v5 .. v18}, Lorg/telegram/messenger/MediaController;->startRecording(IJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;IZLjava/lang/String;IJLorg/telegram/messenger/MessageSuggestionParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2002(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(IZ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->start(J)V

    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->access$2902(Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;Z)Z

    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showWaves(ZZ)V

    :cond_12
    :goto_7
    return-void
.end method
