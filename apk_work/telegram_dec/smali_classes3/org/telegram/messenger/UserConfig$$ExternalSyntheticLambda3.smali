.class public final synthetic Lorg/telegram/messenger/UserConfig$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/UserConfig;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/UserConfig$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/messenger/UserConfig;

    iput-object p2, p0, Lorg/telegram/messenger/UserConfig$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/UserConfig$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/messenger/UserConfig;

    iget-object v1, p0, Lorg/telegram/messenger/UserConfig$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1}, Lorg/telegram/messenger/UserConfig;->$r8$lambda$Tq0RdnlCR7Xela_HUYamISUnoYQ(Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method
