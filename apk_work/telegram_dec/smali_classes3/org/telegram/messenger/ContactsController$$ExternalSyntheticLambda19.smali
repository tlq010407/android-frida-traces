.class public final synthetic Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ContactsController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Updates;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$Updates;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/messenger/ContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda19;->f$1:Lorg/telegram/tgnet/TLRPC$Updates;

    iput-object p3, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda19;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda19;->f$1:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v2, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda19;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/ContactsController;->$r8$lambda$dn-mSr_UMKHuy09fawHYxlZ6qOc(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$Updates;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method
