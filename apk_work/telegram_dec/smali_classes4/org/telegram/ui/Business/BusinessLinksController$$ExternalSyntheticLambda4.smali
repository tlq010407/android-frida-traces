.class public final synthetic Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Business/BusinessLinksController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Business/BusinessLinksController;

    iput-object p2, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    iput-object p4, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Business/BusinessLinksController;

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    iget-object v3, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Business/BusinessLinksController;->$r8$lambda$8usVRA-Y8VhEnR5SGzDnV3jydWI(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Ljava/lang/Runnable;)V

    return-void
.end method
