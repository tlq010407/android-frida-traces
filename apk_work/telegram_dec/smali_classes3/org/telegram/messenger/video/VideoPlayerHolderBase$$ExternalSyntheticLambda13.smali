.class public final synthetic Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

.field public final synthetic f$1:Z

.field public final synthetic f$2:F

.field public final synthetic f$3:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;ZFLandroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    iput-boolean p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda13;->f$1:Z

    iput p3, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda13;->f$2:F

    iput-object p4, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda13;->f$3:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    iget-boolean v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda13;->f$1:Z

    iget v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda13;->f$2:F

    iget-object v3, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda13;->f$3:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->$r8$lambda$Gnh0RpH4cmuNKyptc6j3tIoF3oU(Lorg/telegram/messenger/video/VideoPlayerHolderBase;ZFLandroid/net/Uri;)V

    return-void
.end method
