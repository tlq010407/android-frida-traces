.class public final Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private fallbackMaxPlaybackSpeed:F

.field private fallbackMinPlaybackSpeed:F

.field private maxLiveOffsetErrorUsForUnitSpeed:J

.field private minPossibleLiveOffsetSmoothingFactor:F

.field private minUpdateIntervalMs:J

.field private proportionalControlFactorUs:F

.field private targetLiveOffsetIncrementOnRebufferUs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f7851ec    # 0.97f

    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->fallbackMinPlaybackSpeed:F

    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->fallbackMaxPlaybackSpeed:F

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->minUpdateIntervalMs:J

    const v0, 0x33d6bf95    # 1.0E-7f

    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->proportionalControlFactorUs:F

    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->maxLiveOffsetErrorUsForUnitSpeed:J

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->targetLiveOffsetIncrementOnRebufferUs:J

    const v0, 0x3f7fbe77    # 0.999f

    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->minPossibleLiveOffsetSmoothingFactor:F

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;
    .locals 13

    new-instance v12, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;

    iget v1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->fallbackMinPlaybackSpeed:F

    iget v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->fallbackMaxPlaybackSpeed:F

    iget-wide v3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->minUpdateIntervalMs:J

    iget v5, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->proportionalControlFactorUs:F

    iget-wide v6, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->maxLiveOffsetErrorUsForUnitSpeed:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->targetLiveOffsetIncrementOnRebufferUs:J

    iget v10, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->minPossibleLiveOffsetSmoothingFactor:F

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;-><init>(FFJFJJFLcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$1;)V

    return-object v12
.end method
