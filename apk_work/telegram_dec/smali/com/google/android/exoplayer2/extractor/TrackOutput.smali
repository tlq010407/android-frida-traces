.class public interface abstract Lcom/google/android/exoplayer2/extractor/TrackOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    }
.end annotation


# virtual methods
.method public abstract format(Lcom/google/android/exoplayer2/Format;)V
.end method

.method public abstract sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I
.end method

.method public abstract sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZI)I
.end method

.method public abstract sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
.end method

.method public abstract sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V
.end method

.method public abstract sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
.end method
