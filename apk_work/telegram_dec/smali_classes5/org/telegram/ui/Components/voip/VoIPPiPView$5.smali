.class Lorg/telegram/ui/Components/voip/VoIPPiPView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/RendererCommon$RendererEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIPPiPView;->pipCreatePictureInPictureView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/VoIPPiPView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$5;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstFrameRendered()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$5;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$400(Lorg/telegram/ui/Components/voip/VoIPPiPView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$5;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$400(Lorg/telegram/ui/Components/voip/VoIPPiPView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$5;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$402(Lorg/telegram/ui/Components/voip/VoIPPiPView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onFrameResolutionChanged(III)V
    .locals 0

    return-void
.end method
