.class Lorg/telegram/ui/GroupCallActivity$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/PinchToZoomHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$39;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic getCurrentTextureView()Landroid/view/TextureView;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PinchToZoomHelper$Callback$-CC;->$default$getCurrentTextureView(Lorg/telegram/ui/PinchToZoomHelper$Callback;)Landroid/view/TextureView;

    move-result-object v0

    return-object v0
.end method

.method public onZoomFinished(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$39;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$19700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onZoomStarted(Lorg/telegram/messenger/MessageObject;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$39;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$39;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/PinchToZoomHelper;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$39;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$19600(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
