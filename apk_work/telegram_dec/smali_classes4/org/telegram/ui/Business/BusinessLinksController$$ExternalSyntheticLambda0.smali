.class public final synthetic Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Business/BusinessLinksController;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Business/BusinessLinksController;

    iput-object p2, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    iput-object p3, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Business/BusinessLinksController;

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/Business/BusinessLinksController;->$r8$lambda$1qVQ9ynJiR5FFqAfjzo0QRgSYtU(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
