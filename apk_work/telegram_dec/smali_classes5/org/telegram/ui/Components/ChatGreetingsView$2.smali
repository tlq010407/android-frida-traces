.class Lorg/telegram/ui/Components/ChatGreetingsView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatGreetingsView;->setNextSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatGreetingsView;

.field final synthetic val$whenDone:Ljava/lang/Runnable;

.field private waited:Z


# direct methods
.method public static synthetic $r8$lambda$LnOldy349nLDS3inONUcbmDOCfw(Lorg/telegram/ui/Components/ChatGreetingsView$2;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatGreetingsView$2;->lambda$didSetImageBitmap$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatGreetingsView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView$2;->this$0:Lorg/telegram/ui/Components/ChatGreetingsView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatGreetingsView$2;->val$whenDone:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$didSetImageBitmap$0(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView$2;->this$0:Lorg/telegram/ui/Components/ChatGreetingsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatGreetingsView;->access$000(Lorg/telegram/ui/Components/ChatGreetingsView;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    return-void
.end method

.method public didSetImageBitmap(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatGreetingsView$2;->waited:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    :cond_1
    if-eqz p3, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView$2;->waited:Z

    instance-of p1, p3, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_2

    check-cast p3, Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object p1, p3, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/utils/BitmapsCache;->needGenCache()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView$2;->val$whenDone:Ljava/lang/Runnable;

    new-instance p2, Lorg/telegram/ui/Components/ChatGreetingsView$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ChatGreetingsView$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatGreetingsView$2;Ljava/lang/Runnable;)V

    iput-object p2, p3, Lorg/telegram/ui/Components/RLottieDrawable;->whenCacheDone:Ljava/lang/Runnable;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView$2;->this$0:Lorg/telegram/ui/Components/ChatGreetingsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatGreetingsView;->access$000(Lorg/telegram/ui/Components/ChatGreetingsView;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView$2;->val$whenDone:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic onAnimationReady(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate$-CC;->$default$onAnimationReady(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method
