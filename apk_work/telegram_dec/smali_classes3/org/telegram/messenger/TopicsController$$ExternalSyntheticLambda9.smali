.class public final synthetic Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/TopicsController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/TopicsController;JLjava/util/ArrayList;JLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/messenger/TopicsController;

    iput-wide p2, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda9;->f$1:J

    iput-object p4, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda9;->f$2:Ljava/util/ArrayList;

    iput-wide p5, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda9;->f$3:J

    iput-object p7, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda9;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda9;->f$1:J

    iget-object v3, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda9;->f$2:Ljava/util/ArrayList;

    iget-wide v4, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda9;->f$3:J

    iget-object v6, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda9;->f$4:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/TopicsController;->$r8$lambda$mNpXjRDvYvCOHvWeF3Pr5NSuHxg(Lorg/telegram/messenger/TopicsController;JLjava/util/ArrayList;JLjava/lang/Runnable;)V

    return-void
.end method
