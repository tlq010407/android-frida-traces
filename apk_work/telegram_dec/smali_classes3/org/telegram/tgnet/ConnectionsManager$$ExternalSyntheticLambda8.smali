.class public final synthetic Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/ConnectionsManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/ConnectionsManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/tgnet/ConnectionsManager;

    iput p2, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda8;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/tgnet/ConnectionsManager;

    iget v1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda8;->f$1:I

    invoke-static {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->$r8$lambda$DH8yui5CKrorCrUSdsw6Hn3kwhA(Lorg/telegram/tgnet/ConnectionsManager;I)V

    return-void
.end method
