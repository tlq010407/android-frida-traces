.class public final synthetic Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/ResultCallback;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/ResultCallback;JLjava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/tgnet/ResultCallback;

    iput-wide p2, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda1;->f$1:J

    iput-object p4, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda1;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/tgnet/ResultCallback;

    iget-wide v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda1;->f$1:J

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda1;->f$2:Ljava/io/File;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/EmojiThemes;->$r8$lambda$DhJr4LAFhe0dva647mwPYCR8LmA(Lorg/telegram/tgnet/ResultCallback;JLjava/io/File;Lorg/telegram/messenger/ImageReceiver;ZZZ)V

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
