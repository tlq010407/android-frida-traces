.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;->$r8$lambda$zXU8z5sobWHrkNDI40VTPJIlM6o(Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V

    return-void
.end method
