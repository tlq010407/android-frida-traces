.class public final synthetic Lorg/telegram/ui/Components/VideoPlayer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/VideoPlayer;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/PlaybackException;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/VideoPlayer;Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/VideoPlayer;

    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/PlaybackException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/PlaybackException;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->$r8$lambda$MlwaPkXg_Kc8fKs71zxZ91eGN1I(Lorg/telegram/ui/Components/VideoPlayer;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method
