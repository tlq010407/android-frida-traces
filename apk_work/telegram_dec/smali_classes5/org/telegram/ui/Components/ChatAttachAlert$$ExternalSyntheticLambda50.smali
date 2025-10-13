.class public final synthetic Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZIJZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda50;->f$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda50;->f$1:Z

    iput p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda50;->f$2:I

    iput-wide p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda50;->f$3:J

    iput-boolean p6, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda50;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda50;->f$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda50;->f$1:Z

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda50;->f$2:I

    iget-wide v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda50;->f$3:J

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda50;->f$4:Z

    move-object v6, p1

    check-cast v6, Ljava/lang/Long;

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->$r8$lambda$jak34idK-Ed0Dw2xR8jfdKpBKX4(Lorg/telegram/ui/Components/ChatAttachAlert;ZIJZLjava/lang/Long;)V

    return-void
.end method
