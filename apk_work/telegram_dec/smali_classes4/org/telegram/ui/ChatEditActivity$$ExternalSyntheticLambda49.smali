.class public final synthetic Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatEditActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda49;->f$0:Lorg/telegram/ui/ChatEditActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda49;->f$1:Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda49;->f$0:Lorg/telegram/ui/ChatEditActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda49;->f$1:Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->$r8$lambda$7xjKkWMkAyvlR0daXezSWFAwAH0(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
