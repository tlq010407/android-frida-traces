.class Lorg/telegram/ui/EmojiAnimationsOverlay$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/EmojiAnimationsOverlay;->createDrawingObject(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/MessageObject;IZZFFZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/EmojiAnimationsOverlay;

.field final synthetic val$drawingObject:Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

.field final synthetic val$messageObject:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$sendTap:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;ZLorg/telegram/messenger/MessageObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$3;->this$0:Lorg/telegram/ui/EmojiAnimationsOverlay;

    iput-object p2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$3;->val$drawingObject:Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iput-boolean p3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$3;->val$sendTap:Z

    iput-object p4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$3;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$3;->val$drawingObject:Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object p1, p1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$3;->val$drawingObject:Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object p1, p1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    :cond_0
    return-void
.end method

.method public synthetic didSetImageBitmap(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate$-CC;->$default$didSetImageBitmap(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationReady(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$3;->val$sendTap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$3;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isAnimatedAnimatedEmoji()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->hasVibrationPattern()Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$3;->this$0:Lorg/telegram/ui/EmojiAnimationsOverlay;

    iget-object p1, p1, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
