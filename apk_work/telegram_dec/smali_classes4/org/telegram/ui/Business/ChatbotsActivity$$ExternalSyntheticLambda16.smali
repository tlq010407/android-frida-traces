.class public final synthetic Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Business/ChatbotsActivity;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Business/ChatbotsActivity;[ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/ui/Business/ChatbotsActivity;

    iput-object p2, p0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda16;->f$1:[I

    iput-object p3, p0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda16;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/ui/Business/ChatbotsActivity;

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda16;->f$1:[I

    iget-object v2, p0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda16;->f$2:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/Business/ChatbotsActivity;->$r8$lambda$2yZdLFDCx_HdlaO4fYBRoaZo5hc(Lorg/telegram/ui/Business/ChatbotsActivity;[ILjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
