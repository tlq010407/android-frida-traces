.class public final synthetic Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/util/ListenerSet;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/util/ListenerSet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/util/ListenerSet;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->$r8$lambda$hwqn2ZMkGwWGxPzI0ba91qAvjnc(Lcom/google/android/exoplayer2/util/ListenerSet;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
