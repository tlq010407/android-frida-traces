.class public final synthetic Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

    iput p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

    iget v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer$$ExternalSyntheticLambda0;->f$1:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->$r8$lambda$NKd80_ZtN0bwBM8454M2oUrQKh4(Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;ILorg/telegram/messenger/ImageReceiver;ZZZ)V

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
