.class public final synthetic Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Cells/ChatActionCell;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Cells/ChatActionCell;

    iput-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda7;->f$1:Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;

    iput-object p3, p0, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda7;->f$1:Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->$r8$lambda$6UJ_kPG-STFXtjdI9SAFMYkjueo(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Ljava/lang/String;)V

    return-void
.end method
