.class public final synthetic Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Business/BusinessLinksController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/Business/BusinessLinksController;

    iput-object p2, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda12;->f$2:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/Business/BusinessLinksController;

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda12;->f$2:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Business/BusinessLinksController;->$r8$lambda$lqS1QggZnXLFV2xrEgOiUu4HtG8(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;)V

    return-void
.end method
