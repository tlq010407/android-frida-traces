.class public final synthetic Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/StickersAlert;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/StickersAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda38;->f$0:Lorg/telegram/ui/Components/StickersAlert;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda38;->f$0:Lorg/telegram/ui/Components/StickersAlert;

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->$r8$lambda$RPQyy6z8q6W7_qIOVsd8yXxZkls(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/CharSequence;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method
