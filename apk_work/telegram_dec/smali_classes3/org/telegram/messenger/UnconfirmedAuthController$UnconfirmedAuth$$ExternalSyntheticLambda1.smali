.class public final synthetic Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;

    iput-object p2, p0, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;

    iget-object v1, p0, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;->$r8$lambda$UaMfZS1LVfLyVUDAbGxE1C4e5EA(Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
