.class public final synthetic Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/MessagePrivateSeenView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/MessagePrivateSeenView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Components/MessagePrivateSeenView;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Components/MessagePrivateSeenView;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->$r8$lambda$oLIwLc7C7ddHwdykxy5BQI4fe6s(Lorg/telegram/ui/Components/MessagePrivateSeenView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
