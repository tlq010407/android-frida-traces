.class public final synthetic Lorg/telegram/messenger/voip/VoIPPreNotificationService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/voip/VoIPPreNotificationService$$ExternalSyntheticLambda5;->f$0:I

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 0
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPPreNotificationService$$ExternalSyntheticLambda5;->f$0:I

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->$r8$lambda$-xd9f9h0l8PWlBVsXRSKf-IBo_k(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
