.class public final synthetic Lorg/telegram/ui/GroupStickersActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/GroupStickersActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/GroupStickersActivity;

    iput-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/GroupStickersActivity;

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupStickersActivity;->$r8$lambda$dA7c7Oi6RZ6l4c-hYed3Wx_q760(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
