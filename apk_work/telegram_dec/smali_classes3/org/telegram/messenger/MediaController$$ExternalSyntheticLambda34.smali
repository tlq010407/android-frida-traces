.class public final synthetic Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaController;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaController;IJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda34;->f$0:Lorg/telegram/messenger/MediaController;

    iput p2, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda34;->f$1:I

    iput-wide p3, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda34;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda34;->f$0:Lorg/telegram/messenger/MediaController;

    iget v1, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda34;->f$1:I

    iget-wide v2, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda34;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaController;->$r8$lambda$jECJZwsGgWCaVZY8C4czBmC5Jzc(Lorg/telegram/messenger/MediaController;IJ)V

    return-void
.end method
