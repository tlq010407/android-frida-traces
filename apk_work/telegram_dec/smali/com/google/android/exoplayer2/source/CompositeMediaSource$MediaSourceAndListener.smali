.class final Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceAndListener"
.end annotation


# instance fields
.field public final caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

.field public final eventListener:Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;

.field public final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;

    return-void
.end method
