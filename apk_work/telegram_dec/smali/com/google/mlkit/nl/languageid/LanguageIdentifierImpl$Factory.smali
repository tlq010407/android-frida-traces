.class public final Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

.field private final zzb:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

.field private final zzc:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$Factory;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    iput-object p2, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$Factory;->zzb:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    iput-object p3, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$Factory;->zzc:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/mlkit/nl/languageid/LanguageIdentificationOptions;)Lcom/google/mlkit/nl/languageid/LanguageIdentifier;
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$Factory;->zzb:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$Factory;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    iget-object v2, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$Factory;->zzc:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    invoke-static {p1, v0, v1, v2}, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->zza(Lcom/google/mlkit/nl/languageid/LanguageIdentificationOptions;Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;)Lcom/google/mlkit/nl/languageid/LanguageIdentifier;

    move-result-object p1

    return-object p1
.end method
