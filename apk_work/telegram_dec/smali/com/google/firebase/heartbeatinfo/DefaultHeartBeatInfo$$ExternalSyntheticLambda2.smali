.class public final synthetic Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->$r8$lambda$OKL3_M7rqbm5nqiJCXRnyW1da7o(Landroid/content/Context;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    move-result-object v0

    return-object v0
.end method
