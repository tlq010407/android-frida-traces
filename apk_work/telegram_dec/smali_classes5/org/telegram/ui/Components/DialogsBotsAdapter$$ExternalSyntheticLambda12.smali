.class public final synthetic Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/DialogsBotsAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/DialogsBotsAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;ZLorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/Components/DialogsBotsAdapter;

    iput p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda12;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda12;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    iput-boolean p4, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda12;->f$3:Z

    iput-object p5, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda12;->f$4:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/Components/DialogsBotsAdapter;

    iget v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda12;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda12;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda12;->f$3:Z

    iget-object v4, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda12;->f$4:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->$r8$lambda$nn_RaUyt4aCckM7bONze6rF0zB4(Lorg/telegram/ui/Components/DialogsBotsAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;ZLorg/telegram/tgnet/TLObject;)V

    return-void
.end method
