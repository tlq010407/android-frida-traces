.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda6;->f$0:Lcom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public final getScore(Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda6;->f$0:Lcom/google/android/exoplayer2/Format;

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->$r8$lambda$sLOK7ccsS-ur1NtiGvNU7qvptuU(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I

    move-result p1

    return p1
.end method
