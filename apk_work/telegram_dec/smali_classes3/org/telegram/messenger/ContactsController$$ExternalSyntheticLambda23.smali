.class public final synthetic Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ContactsController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda23;->f$0:Lorg/telegram/messenger/ContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda23;->f$1:Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda23;->f$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda23;->f$1:Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->$r8$lambda$gbGE8kSGuYLcNij1hZe27h2m5no(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;)V

    return-void
.end method
