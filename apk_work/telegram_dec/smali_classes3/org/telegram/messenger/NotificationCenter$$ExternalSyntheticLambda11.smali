.class public final synthetic Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/NotificationCenter;

.field public final synthetic f$1:I

.field public final synthetic f$2:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/NotificationCenter;I[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/messenger/NotificationCenter;

    iput p2, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda11;->f$1:I

    iput-object p3, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda11;->f$2:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/messenger/NotificationCenter;

    iget v1, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda11;->f$1:I

    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda11;->f$2:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->$r8$lambda$2qzL3zEseGiFtXS-W9CAoCK37eI(Lorg/telegram/messenger/NotificationCenter;I[Ljava/lang/Object;)V

    return-void
.end method
