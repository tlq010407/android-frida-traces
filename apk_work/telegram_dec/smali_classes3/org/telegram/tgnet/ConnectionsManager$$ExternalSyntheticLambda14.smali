.class public final synthetic Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/ConnectionsManager;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/ConnectionsManager;Ljava/lang/Runnable;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/tgnet/ConnectionsManager;

    iput-object p2, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda14;->f$1:Ljava/lang/Runnable;

    iput p3, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda14;->f$2:I

    iput-boolean p4, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda14;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/tgnet/ConnectionsManager;

    iget-object v1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda14;->f$1:Ljava/lang/Runnable;

    iget v2, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda14;->f$2:I

    iget-boolean v3, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda14;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->$r8$lambda$dubMoSMjUCH66HD44XKne_lbAKY(Lorg/telegram/tgnet/ConnectionsManager;Ljava/lang/Runnable;IZ)V

    return-void
.end method
