.class public final synthetic Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ContactsController;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda15;->f$0:Lorg/telegram/messenger/ContactsController;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda15;->f$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/ContactsController;->$r8$lambda$6gFBbEOG-WiS1BEcHnDTkEJg27c(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
