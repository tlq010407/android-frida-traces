.class public interface abstract Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;,
        Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;,
        Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;,
        Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;
    }
.end annotation


# virtual methods
.method public abstract closeSession([B)V
.end method

.method public abstract createCryptoConfig([B)Lcom/google/android/exoplayer2/decoder/CryptoConfig;
.end method

.method public abstract getCryptoType()I
.end method

.method public abstract getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
.end method

.method public abstract getProvisionRequest()Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
.end method

.method public abstract openSession()[B
.end method

.method public abstract provideKeyResponse([B[B)[B
.end method

.method public abstract provideProvisionResponse([B)V
.end method

.method public abstract queryKeyStatus([B)Ljava/util/Map;
.end method

.method public abstract release()V
.end method

.method public abstract requiresSecureDecoder([BLjava/lang/String;)Z
.end method

.method public abstract restoreKeys([B[B)V
.end method

.method public abstract setOnEventListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
.end method

.method public abstract setPlayerIdForSession([BLcom/google/android/exoplayer2/analytics/PlayerId;)V
.end method
