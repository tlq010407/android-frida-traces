.class public final synthetic Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/StickersAlert;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda50;->f$0:Lorg/telegram/ui/Components/StickersAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda50;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda50;->f$2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda50;->f$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda50;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda50;->f$2:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->$r8$lambda$M-RH_11zl3pNodmSjRv-IaZuuVA(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Landroid/widget/TextView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
