.class Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;
.super Lorg/telegram/messenger/ImageReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->createImageReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;


# direct methods
.method public static synthetic $r8$lambda$BC5UxTwuO--WWOR-eNnUGO0seaI(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;->lambda$setImageBitmapByKey$0(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-direct {p0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    return-void
.end method

.method private static synthetic lambda$setImageBitmapByKey$0(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->access$200(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->invalidate()V

    invoke-super {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    return-void
.end method

.method protected setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->invalidate()V

    invoke-super/range {p0 .. p5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-boolean p2, p2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->preloading:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->hasImageLoaded()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 p3, 0x0

    iput-boolean p3, p2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->preloading:Z

    new-instance p3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return p1
.end method
