.class Lorg/telegram/ui/Components/ChatActivityEnterView$20;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$3Zrl0MondxJ4-RbEpKnLTtbyD0w(Lorg/telegram/ui/Components/ChatActivityEnterView$20;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->lambda$onTouchEvent$3(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DFIcCUerYTbxWs7FdZHaf-jV6Ms(ZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->lambda$onTouchEvent$7(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$I2AP2crXrlQmeNZJ9sVGlKxTAu4(ZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->lambda$onTouchEvent$1(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qzkx3AEE9DfjHAzZRCinbhS2xIE()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->lambda$onTouchEvent$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$YHkycnMDwvGEizVmK099s0riR6U(Lorg/telegram/ui/Components/ChatActivityEnterView$20;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->lambda$onTouchEvent$6(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YilRCx9OfZmABbwvoe9WxP8J89k(Lorg/telegram/ui/Components/ChatActivityEnterView$20;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->lambda$onTouchEvent$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$_TGmJt4WCBxeaeb03MUzr6W4lKc(Lorg/telegram/ui/Components/ChatActivityEnterView$20;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->lambda$onTouchEvent$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$hthWfEM_Hax8s7TsNcaLz7LnMy8(Lorg/telegram/ui/Components/ChatActivityEnterView$20;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->lambda$onTouchEvent$0(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ry5UtFvA8icY6oul9CVJ-vfmJ34(Lorg/telegram/ui/Components/ChatActivityEnterView$20;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->lambda$onTouchEvent$5(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zHCP-UFeWIqKWRXlPKfXVoFQEsw()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->lambda$onTouchEvent$8()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$0(Ljava/lang/Long;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessageInternal(ZIJZ)Z

    return-void
.end method

.method private static synthetic lambda$onTouchEvent$1(ZI)V
    .locals 7

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    move v2, p0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    return-void
.end method

.method private static synthetic lambda$onTouchEvent$2()V
    .locals 7

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$3(Ljava/lang/Long;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessageInternal(ZIJZ)Z

    return-void
.end method

.method private synthetic lambda$onTouchEvent$4()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8602(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(IZ)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$5(Ljava/lang/Long;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessageInternal(ZIJZ)Z

    return-void
.end method

.method private synthetic lambda$onTouchEvent$6(Ljava/lang/Long;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessageInternal(ZIJZ)Z

    return-void
.end method

.method private static synthetic lambda$onTouchEvent$7(ZI)V
    .locals 7

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    move v2, p0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    return-void
.end method

.method private static synthetic lambda$onTouchEvent$8()V
    .locals 7

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$9()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8602(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(IZ)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8300(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x3

    const v4, 0x7fffffff

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v1, :cond_14

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2302(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->needsPaidMessageAlert(IJ)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->toggleVideoRecordingPause()V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v2

    new-instance v4, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$20;)V

    invoke-static {v1, v2, v3, v7, v4}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return v7

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v9

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v2, :cond_3

    const v13, 0x7fffffff

    goto :goto_0

    :cond_3
    const/4 v13, 0x0

    :goto_0
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8500(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-interface/range {v9 .. v17}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZIIJJ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2, v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8502(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    goto/16 :goto_3

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v9

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v10

    new-instance v12, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda1;

    invoke-direct {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda1;-><init>()V

    new-instance v13, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda2;

    invoke-direct {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda2;-><init>()V

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static/range {v9 .. v14}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lorg/telegram/ui/Components/AlertsCreator;->needsPaidMessageAlert(IJ)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->toggleVideoRecordingPause()V

    goto :goto_1

    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1402(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    :cond_8
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->toggleRecordingPause(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    :cond_9
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v2

    new-instance v4, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$20;)V

    invoke-static {v1, v2, v3, v7, v4}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return v7

    :cond_a
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v9

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v10, 0x3

    goto :goto_2

    :cond_b
    const/4 v10, 0x1

    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v13, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2002(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean v8, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageTransitionIsRunning:Z

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$20;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8602(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v7

    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_4

    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    if-nez v2, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    goto :goto_5

    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentUserInfo()Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    :goto_5
    if-eqz v1, :cond_10

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendVoice(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendRoundVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    if-eqz v2, :cond_12

    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->voice_messages_forbidden:Z

    if-eqz v1, :cond_12

    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needShowMediaBanHint()V

    return v7

    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1402(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1502(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_6

    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_6
    return v7

    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v9, 0x5

    const/high16 v10, 0x3f800000    # 1.0f

    if-eq v1, v7, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_15

    goto/16 :goto_a

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1f

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v12

    if-eqz v12, :cond_16

    return v8

    :cond_16
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v12

    invoke-virtual {v12, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setLockTranslation(F)I

    move-result v12

    if-ne v12, v3, :cond_17

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8900(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    return v8

    :cond_17
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v3

    invoke-virtual {v3, v1, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setMovingCords(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_18

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2302(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x3fd6666666666666L    # 0.35

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    double-to-float v11, v11

    invoke-static {v3, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9002(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9000(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    const/high16 v11, 0x430c0000    # 140.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    cmpl-float v3, v3, v12

    if-lez v3, :cond_18

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v3, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9002(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    :cond_18
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v1, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    sub-float/2addr v1, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9000(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    div-float/2addr v1, v3

    add-float/2addr v1, v10

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    const/4 v11, 0x0

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_1c

    cmpl-float v2, v1, v10

    if-lez v2, :cond_19

    goto :goto_7

    :cond_19
    cmpg-float v2, v1, v11

    if-gez v2, :cond_1a

    const/4 v10, 0x0

    goto :goto_7

    :cond_1a
    move v10, v1

    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->setSlideX(F)V

    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setSlideToCancelProgress(F)V

    move v1, v10

    :cond_1c
    cmpl-float v1, v1, v11

    if-nez v1, :cond_1f

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v2, :cond_1d

    const v14, 0x7fffffff

    goto :goto_8

    :cond_1d
    const/4 v14, 0x0

    :goto_8
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8500(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v15

    const-wide/16 v17, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface/range {v10 .. v18}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZIIJJ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2, v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8502(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    goto :goto_9

    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v14, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2002(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v9, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(IZ)V

    :cond_1f
    return v7

    :cond_20
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_24

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v1

    const v2, 0x3f333333    # 0.7f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_23

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v2, :cond_21

    const v14, 0x7fffffff

    goto :goto_b

    :cond_21
    const/4 v14, 0x0

    :goto_b
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8500(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v15

    const-wide/16 v17, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface/range {v10 .. v18}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZIIJJ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2, v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8502(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    goto :goto_c

    :cond_22
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v14, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5202(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2002(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v9, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(IZ)V

    goto :goto_d

    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4702(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8900(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    :goto_d
    return v8

    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v1

    if-nez v1, :cond_26

    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_28

    :cond_26
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_27
    return v8

    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v11

    add-float/2addr v1, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v11

    sub-float/2addr v1, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9000(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v11

    div-float/2addr v1, v11

    add-float/2addr v1, v10

    float-to-double v10, v1

    const-wide v12, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v1, v10, v12

    if-gez v1, :cond_2b

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v2, :cond_29

    const v14, 0x7fffffff

    goto :goto_e

    :cond_29
    const/4 v14, 0x0

    :goto_e
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8500(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v15

    const-wide/16 v17, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface/range {v10 .. v18}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZIIJJ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2, v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8502(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    goto :goto_f

    :cond_2a
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v14, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    :goto_f
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5202(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2002(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v9, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(IZ)V

    goto/16 :goto_14

    :cond_2b
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onSwitchRecordMode(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-static {v1, v2, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9300(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)V

    goto :goto_10

    :cond_2c
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needShowMediaBanHint()V

    :goto_10
    invoke-virtual {v0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {v0, v7}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/16 :goto_14

    :cond_2d
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_3a

    :cond_2e
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2302(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->needsPaidMessageAlert(IJ)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    :cond_2f
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->toggleVideoRecordingPause()V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v2

    new-instance v4, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$20;)V

    invoke-static {v1, v2, v3, v7, v4}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return v7

    :cond_30
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v9

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v2, :cond_31

    const v13, 0x7fffffff

    goto :goto_11

    :cond_31
    const/4 v13, 0x0

    :goto_11
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8500(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-interface/range {v9 .. v17}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZIIJJ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2, v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8502(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    goto/16 :goto_13

    :cond_32
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needShowMediaBanHint()V

    goto/16 :goto_13

    :cond_33
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v9

    invoke-static {v1, v9, v10}, Lorg/telegram/ui/Components/AlertsCreator;->needsPaidMessageAlert(IJ)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1402(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    :cond_34
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->toggleRecordingPause(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    if-eqz v1, :cond_35

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    :cond_35
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v2

    new-instance v4, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$20;)V

    invoke-static {v1, v2, v3, v7, v4}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return v7

    :cond_36
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v9

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v10

    new-instance v12, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda7;

    invoke-direct {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda7;-><init>()V

    new-instance v13, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda8;

    invoke-direct {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda8;-><init>()V

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static/range {v9 .. v14}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    :cond_37
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v9

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v10, 0x3

    goto :goto_12

    :cond_38
    const/4 v10, 0x1

    :goto_12
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v13, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    :goto_13
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2002(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean v8, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageTransitionIsRunning:Z

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$20;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8602(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldDrawBackground:Z

    if-eqz v2, :cond_39

    const-wide/16 v5, 0x1f4

    :cond_39
    invoke-static {v1, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3a
    :goto_14
    return v7
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
