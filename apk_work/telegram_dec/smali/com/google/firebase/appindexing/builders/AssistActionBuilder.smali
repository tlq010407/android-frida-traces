.class public final Lcom/google/firebase/appindexing/builders/AssistActionBuilder;
.super Lcom/google/firebase/appindexing/Action$Builder;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "AssistAction"

    invoke-direct {p0, v0}, Lcom/google/firebase/appindexing/Action$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/appindexing/Action;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/AssistActionBuilder;->zza:Ljava/lang/String;

    const-string v1, "setActionToken is required before calling build()."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/firebase/appindexing/Action$Builder;->zzc()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setActionStatus is required before calling build()."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/AssistActionBuilder;->zza:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "actionToken"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/appindexing/Action$Builder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/Action$Builder;

    invoke-virtual {p0}, Lcom/google/firebase/appindexing/Action$Builder;->zza()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "AssistAction"

    invoke-virtual {p0, v0}, Lcom/google/firebase/appindexing/Action$Builder;->setName(Ljava/lang/String;)Lcom/google/firebase/appindexing/Action$Builder;

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/appindexing/Action$Builder;->zzb()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/AssistActionBuilder;->zza:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "https://developers.google.com/actions?invocation="

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/firebase/appindexing/Action$Builder;->setUrl(Ljava/lang/String;)Lcom/google/firebase/appindexing/Action$Builder;

    :cond_2
    invoke-super {p0}, Lcom/google/firebase/appindexing/Action$Builder;->build()Lcom/google/firebase/appindexing/Action;

    move-result-object v0

    return-object v0
.end method

.method public setActionToken(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/AssistActionBuilder;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/appindexing/builders/AssistActionBuilder;->zza:Ljava/lang/String;

    return-object p0
.end method
