.class public final synthetic Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatEditActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatEditActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda56;->f$0:Lorg/telegram/ui/ChatEditActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda56;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda56;->f$0:Lorg/telegram/ui/ChatEditActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda56;->f$1:Z

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->$r8$lambda$nRW845h-GuTHau72MzfFV6pbUxU(Lorg/telegram/ui/ChatEditActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
