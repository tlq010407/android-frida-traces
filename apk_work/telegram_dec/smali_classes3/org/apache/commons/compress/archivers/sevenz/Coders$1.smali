.class final Lorg/apache/commons/compress/archivers/sevenz/Coders$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/Coders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->COPY:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DEFLATE:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DEFLATE64:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$Deflate64Decoder;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Coders$Deflate64Decoder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BZIP2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BZIP2Decoder;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BZIP2Decoder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->AES256SHA256:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_X86_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    new-instance v2, Lorg/tukaani/xz/X86Options;

    invoke-direct {v2}, Lorg/tukaani/xz/X86Options;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;-><init>(Lorg/tukaani/xz/FilterOptions;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_PPC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    new-instance v2, Lorg/tukaani/xz/PowerPCOptions;

    invoke-direct {v2}, Lorg/tukaani/xz/PowerPCOptions;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;-><init>(Lorg/tukaani/xz/FilterOptions;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_IA64_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    new-instance v2, Lorg/tukaani/xz/IA64Options;

    invoke-direct {v2}, Lorg/tukaani/xz/IA64Options;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;-><init>(Lorg/tukaani/xz/FilterOptions;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_ARM_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    new-instance v2, Lorg/tukaani/xz/ARMOptions;

    invoke-direct {v2}, Lorg/tukaani/xz/ARMOptions;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;-><init>(Lorg/tukaani/xz/FilterOptions;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_ARM_THUMB_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    new-instance v2, Lorg/tukaani/xz/ARMThumbOptions;

    invoke-direct {v2}, Lorg/tukaani/xz/ARMThumbOptions;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;-><init>(Lorg/tukaani/xz/FilterOptions;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_SPARC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    new-instance v2, Lorg/tukaani/xz/SPARCOptions;

    invoke-direct {v2}, Lorg/tukaani/xz/SPARCOptions;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;-><init>(Lorg/tukaani/xz/FilterOptions;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DELTA_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/DeltaDecoder;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/DeltaDecoder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
