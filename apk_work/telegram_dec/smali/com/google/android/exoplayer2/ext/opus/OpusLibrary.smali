.class public final Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cryptoType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.opus"

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput v0, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->cryptoType:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->opusGetVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static isAvailable()Z
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/NativeLoader;->loaded()Z

    move-result v0

    return v0
.end method

.method public static native opusGetVersion()Ljava/lang/String;
.end method

.method public static native opusIsSecureDecodeSupported()Z
.end method

.method public static varargs setLibraries(I[Ljava/lang/String;)V
    .locals 0

    sput p0, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->cryptoType:I

    return-void
.end method

.method public static supportsCryptoType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    sget v1, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->cryptoType:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
