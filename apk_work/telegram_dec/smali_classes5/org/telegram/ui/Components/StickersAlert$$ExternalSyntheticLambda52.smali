.class public final synthetic Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/StickersAlert;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$4:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda52;->f$0:Lorg/telegram/ui/Components/StickersAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda52;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda52;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p4, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda52;->f$3:Lorg/telegram/tgnet/TLObject;

    iput-object p5, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda52;->f$4:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda52;->f$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda52;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda52;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda52;->f$3:Lorg/telegram/tgnet/TLObject;

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda52;->f$4:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/StickersAlert;->$r8$lambda$sO-runlW3I0JV_3xBKjWWBkpr4k(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/widget/TextView;)V

    return-void
.end method
