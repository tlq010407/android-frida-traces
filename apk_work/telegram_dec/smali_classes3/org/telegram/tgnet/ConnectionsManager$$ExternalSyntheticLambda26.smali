.class public final synthetic Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda26;->f$0:I

    iput-boolean p2, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda26;->f$1:Z

    iput p3, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda26;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda26;->f$0:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda26;->f$1:Z

    iget v2, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda26;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->$r8$lambda$xrNSd2JH6C-BgTT3ORV6RqbQgWA(IZI)V

    return-void
.end method
