.class public final synthetic Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/GroupCallActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda48;->f$0:Lorg/telegram/ui/GroupCallActivity;

    iput-object p2, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda48;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p3, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda48;->f$2:Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda48;->f$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda48;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda48;->f$2:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/GroupCallActivity;->$r8$lambda$rlGcHVP2hRNf1vxwHs4o-aIY-GE(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
