.class public final synthetic Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda20;->f$0:I

    iput-object p2, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda20;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda20;->f$2:Ljava/lang/String;

    iput p4, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda20;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda20;->f$0:I

    iget-object v1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda20;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda20;->f$2:Ljava/lang/String;

    iget v3, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda20;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->$r8$lambda$swm-_CICeWv0tWyWT790dExvlaM(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
