.class public final synthetic Lorg/telegram/messenger/MediaController$8$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaController$8;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaController$8;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaController$8$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/MediaController$8;

    iput p2, p0, Lorg/telegram/messenger/MediaController$8$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lorg/telegram/messenger/MediaController$8$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$8$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/MediaController$8;

    iget v1, p0, Lorg/telegram/messenger/MediaController$8$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lorg/telegram/messenger/MediaController$8$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MediaController$8;->$r8$lambda$Z211aiPP5kOxZvy9oaRDFqSUxVE(Lorg/telegram/messenger/MediaController$8;II)V

    return-void
.end method
