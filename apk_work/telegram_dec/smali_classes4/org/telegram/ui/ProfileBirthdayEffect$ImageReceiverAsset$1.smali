.class Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset;->setEmoji(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset;

.field final synthetic val$callback:[Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$KpChqo-gLAmWFbTAkMrzQEJILDc([Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset$1;->lambda$didSetImage$0([Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset;[Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset$1;->this$0:Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset;

    iput-object p2, p0, Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset$1;->val$callback:[Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$didSetImage$0([Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    aput-object v1, p0, v0

    return-void
.end method


# virtual methods
.method public didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset$1;->val$callback:[Ljava/lang/Runnable;

    const/4 p3, 0x0

    aget-object p2, p2, p3

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset$1;->val$callback:[Ljava/lang/Runnable;

    aget-object p1, p1, p3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset$1;->val$callback:[Ljava/lang/Runnable;

    aput-object p2, p1, p3

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->isGeneratingCache()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset$1;->val$callback:[Ljava/lang/Runnable;

    new-instance p3, Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset$1$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset$1$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Runnable;)V

    iput-object p3, p1, Lorg/telegram/ui/Components/RLottieDrawable;->whenCacheDone:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset$1;->val$callback:[Ljava/lang/Runnable;

    aget-object p1, p1, p3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset$1;->val$callback:[Ljava/lang/Runnable;

    aput-object p2, p1, p3

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic didSetImageBitmap(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate$-CC;->$default$didSetImageBitmap(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic onAnimationReady(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate$-CC;->$default$onAnimationReady(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method
