.class public final Lcom/google/android/exoplayer2/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

.field private static final FIELD_MAX_VOLUME:Ljava/lang/String;

.field private static final FIELD_MIN_VOLUME:Ljava/lang/String;

.field private static final FIELD_PLAYBACK_TYPE:Ljava/lang/String;

.field public static final UNKNOWN:Lcom/google/android/exoplayer2/DeviceInfo;


# instance fields
.field public final maxVolume:I

.field public final minVolume:I

.field public final playbackType:I


# direct methods
.method public static synthetic $r8$lambda$Wbhor1IfAYAk9tLi9wfehF2yekg(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/android/exoplayer2/DeviceInfo;->lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/DeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/exoplayer2/DeviceInfo;-><init>(III)V

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->UNKNOWN:Lcom/google/android/exoplayer2/DeviceInfo;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_PLAYBACK_TYPE:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MIN_VOLUME:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MAX_VOLUME:Ljava/lang/String;

    new-instance v0, Lcom/google/android/exoplayer2/DeviceInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/DeviceInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    iput p2, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    iput p3, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    return-void
.end method

.method private static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 4

    sget-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_PLAYBACK_TYPE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MIN_VOLUME:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MAX_VOLUME:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    new-instance v1, Lcom/google/android/exoplayer2/DeviceInfo;

    invoke-direct {v1, v0, v2, p0}, Lcom/google/android/exoplayer2/DeviceInfo;-><init>(III)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/DeviceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/DeviceInfo;

    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    iget v3, p1, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    iget v3, p1, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    iget p1, p1, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_PLAYBACK_TYPE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MIN_VOLUME:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MAX_VOLUME:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
