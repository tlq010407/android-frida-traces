.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda164;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/AccountInstance;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/AccountInstance;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda164;->f$0:Lorg/telegram/messenger/AccountInstance;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda164;->f$0:Lorg/telegram/messenger/AccountInstance;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$O2MTPIX3Ky9Kpw9PjfTc3YH3ivw(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
