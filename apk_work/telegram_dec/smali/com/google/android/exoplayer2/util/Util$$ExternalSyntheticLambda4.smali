.class public final synthetic Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->$r8$lambda$pJ0nR63YsKg4l7MkXhJSeslJM70(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
