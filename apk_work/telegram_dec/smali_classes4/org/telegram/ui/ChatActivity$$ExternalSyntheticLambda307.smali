.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda307;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$UserFull;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda307;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda307;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda307;->f$2:Lorg/telegram/tgnet/TLRPC$UserFull;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda307;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda307;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda307;->f$2:Lorg/telegram/tgnet/TLRPC$UserFull;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$ND1RbOvAxp9kuodcomplrwySJck(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$UserFull;)V

    return-void
.end method
