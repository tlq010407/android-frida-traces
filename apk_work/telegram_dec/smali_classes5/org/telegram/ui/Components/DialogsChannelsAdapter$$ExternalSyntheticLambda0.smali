.class public final synthetic Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/DialogsChannelsAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/DialogsChannelsAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/DialogsChannelsAdapter;

    iput p2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    iput-boolean p4, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/DialogsChannelsAdapter;

    iget v1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda0;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->$r8$lambda$6K4G3Mr3AB_24DUNRcGrppR6Y9w(Lorg/telegram/ui/Components/DialogsChannelsAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Z)V

    return-void
.end method
