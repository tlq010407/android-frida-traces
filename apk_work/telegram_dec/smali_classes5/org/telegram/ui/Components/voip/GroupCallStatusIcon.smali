.class public Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;
    }
.end annotation


# instance fields
.field callback:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;

.field private checkRaiseRunnable:Ljava/lang/Runnable;

.field iconView:Lorg/telegram/ui/Components/RLottieImageView;

.field isSpeaking:Z

.field lastMuted:Z

.field lastRaisedHand:Z

.field micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private mutedByMe:Z

.field participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

.field private raiseHandCallback:Ljava/lang/Runnable;

.field private shakeHandCallback:Ljava/lang/Runnable;

.field shakeHandDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private updateRunnable:Ljava/lang/Runnable;

.field updateRunnableScheduled:Z


# direct methods
.method public static synthetic $r8$lambda$5W5cJ9LLa8sbsY36SfVA9SZh7Jk(Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q2X7GT50hF-IASvkVcIe9D0_jHs(Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$cI-SnM19ZnscWVo_qJ1-ViHkMa8(Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$iUSg5CwNgob-xBuUEf7sm5Zp0xU(Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->shakeHandCallback:Ljava/lang/Runnable;

    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->raiseHandCallback:Ljava/lang/Runnable;

    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->updateRunnable:Ljava/lang/Runnable;

    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->checkRaiseRunnable:Ljava/lang/Runnable;

    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v3, Lorg/telegram/messenger/R$raw;->voice_mini:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v11, Lorg/telegram/messenger/R$raw;->hand_2:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->shakeHandDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->shakeHandDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnFinishCallback(Ljava/lang/Runnable;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnFinishCallback(Ljava/lang/Runnable;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 4

    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/16 v1, 0x20

    const/16 v2, 0x78

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    const/16 v3, 0xf0

    if-ge v0, v1, :cond_1

    const/16 v2, 0xf0

    const/16 v3, 0x78

    goto :goto_0

    :cond_1
    const/16 v1, 0x61

    const/16 v2, 0x1a4

    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x62

    const/16 v3, 0x21c

    if-ne v0, v1, :cond_3

    const/16 v2, 0x21c

    const/16 v3, 0x1a4

    goto :goto_0

    :cond_3
    const/16 v2, 0x2d0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->shakeHandDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->shakeHandDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->shakeHandCallback:Ljava/lang/Runnable;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnFinishCallback(Ljava/lang/Runnable;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->shakeHandDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->shakeHandDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isSpeaking:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->callback:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;->onStatusChanged()V

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->updateRunnableScheduled:Z

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->updateIcon(Z)V

    return-void
.end method


# virtual methods
.method public isMutedByAdmin()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMutedByMe()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->mutedByMe:Z

    return v0
.end method

.method public isSpeaking()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isSpeaking:Z

    return v0
.end method

.method public setAmplitude(D)V
    .locals 3

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    cmpl-double v2, p1, v0

    if-lez v2, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->updateRunnableScheduled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->updateRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isSpeaking:Z

    const/4 p2, 0x1

    if-nez p1, :cond_1

    iput-boolean p2, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isSpeaking:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->callback:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;->onStatusChanged()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->updateRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iput-boolean p2, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->updateRunnableScheduled:Z

    :cond_2
    return-void
.end method

.method public setCallback(Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->callback:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isSpeaking:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->updateRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->raiseHandCallback:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->checkRaiseRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setImageView(Lorg/telegram/ui/Components/RLottieImageView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->updateIcon(Z)V

    return-void
.end method

.method public setParticipant(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->updateIcon(Z)V

    return-void
.end method

.method public updateIcon(Z)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v1, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v1, :cond_15

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v2, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted_by_you:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastVoiceUpdateTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1f4

    cmp-long v9, v5, v7

    if-gez v9, :cond_2

    iget-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->hasVoiceDelayed:Z

    goto :goto_1

    :cond_2
    iget-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->hasVoice:Z

    :goto_1
    iget-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v6, :cond_3

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isSpeaking:Z

    if-eqz v2, :cond_5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_3
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isSpeaking:Z

    if-eqz v2, :cond_5

    if-eqz v5, :cond_5

    :cond_4
    if-eqz v1, :cond_6

    :cond_5
    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_7

    iget-boolean v6, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isSpeaking:Z

    if-eqz v6, :cond_8

    :cond_7
    if-eqz v1, :cond_a

    :cond_8
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    if-eqz v6, :cond_9

    if-eqz v1, :cond_a

    :cond_9
    if-nez v6, :cond_a

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->raise_hand_rating:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_a

    const/4 v5, 0x1

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    :goto_4
    const/16 v6, 0x88

    const/16 v9, 0x45

    const/16 v10, 0x63

    const/16 v11, 0x24

    if-eqz v5, :cond_d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-object v14, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastRaiseHandDate:J

    sub-long/2addr v12, v14

    cmp-long v16, v14, v7

    if-eqz v16, :cond_c

    const-wide/16 v7, 0x1388

    cmp-long v14, v12, v7

    if-lez v14, :cond_b

    goto :goto_5

    :cond_b
    iget-object v14, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->checkRaiseRunnable:Ljava/lang/Runnable;

    sub-long/2addr v7, v12

    invoke-static {v14, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_c
    :goto_5
    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    move-result v7

    goto :goto_7

    :cond_d
    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnFinishCallback(Ljava/lang/Runnable;I)V

    if-eqz v2, :cond_e

    iget-boolean v7, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->lastRaisedHand:Z

    if-eqz v7, :cond_e

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v7, v11}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    move-result v7

    goto :goto_7

    :cond_e
    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v2, :cond_f

    const/16 v8, 0x63

    goto :goto_6

    :cond_f
    const/16 v8, 0x45

    :goto_6
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    move-result v7

    :goto_7
    if-eqz p1, :cond_13

    if-eqz v7, :cond_14

    if-eqz v5, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    goto :goto_8

    :cond_10
    if-eqz v2, :cond_11

    iget-boolean v3, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->lastRaisedHand:Z

    if-eqz v3, :cond_11

    if-nez v5, :cond_11

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    goto :goto_8

    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v2, :cond_12

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    goto :goto_8

    :cond_12
    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :goto_9
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_a

    :cond_13
    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RLottieDrawable;->getCustomEndFrame()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v6, v7, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    goto :goto_9

    :cond_14
    :goto_a
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->micDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-boolean v2, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->lastMuted:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->lastRaisedHand:Z

    iget-boolean v2, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->mutedByMe:Z

    if-eq v2, v1, :cond_15

    iput-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->mutedByMe:Z

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->callback:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;->onStatusChanged()V

    :cond_15
    :goto_b
    return-void
.end method
