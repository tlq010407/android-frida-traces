.class public Lcom/google/mlkit/nl/languageid/LanguageIdentificationOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/nl/languageid/LanguageIdentificationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/Float;

.field private zzb:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/mlkit/nl/languageid/LanguageIdentificationOptions;
    .locals 4

    new-instance v0, Lcom/google/mlkit/nl/languageid/LanguageIdentificationOptions;

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentificationOptions$Builder;->zza:Ljava/lang/Float;

    iget-object v2, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentificationOptions$Builder;->zzb:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/mlkit/nl/languageid/LanguageIdentificationOptions;-><init>(Ljava/lang/Float;Ljava/util/concurrent/Executor;Lcom/google/mlkit/nl/languageid/zzc;)V

    return-object v0
.end method
