.class Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/RendererCommon$RendererEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->showInternal(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;


# direct methods
.method public static synthetic $r8$lambda$SbvsYsEX2TMUUABUbyFqPYD4qak(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;->lambda$onFirstFrameRendered$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$qKtX04EN3wby1G8XylIMoA-AemY(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;->lambda$onFrameResolutionChanged$1(II)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;->this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFirstFrameRendered$0()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;->this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->access$3000(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)V

    return-void
.end method

.method private synthetic lambda$onFrameResolutionChanged$1(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;->this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->access$3400(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Lorg/telegram/messenger/pip/PipSource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;->this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->access$3400(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Lorg/telegram/messenger/pip/PipSource;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/pip/PipSource;->setContentRatio(II)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;->this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->access$3000(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)V

    return-void
.end method


# virtual methods
.method public onFirstFrameRendered()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;->this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->access$602(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;->this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->access$3200(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;->this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->access$3200(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;->this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->access$3202(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFrameResolutionChanged(III)V
    .locals 2

    div-int/lit8 p3, p3, 0x5a

    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;->this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    int-to-float v0, p2

    int-to-float v1, p1

    :goto_0
    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->access$3302(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Ljava/lang/Float;)Ljava/lang/Float;

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;->this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    int-to-float v0, p1

    int-to-float v1, p2

    goto :goto_0

    :goto_1
    new-instance p3, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;II)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
