.class public final synthetic Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stars$StarGift;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Gifts/SendGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->$r8$lambda$C5zp4dBF1_oU6U2yC-NlNzrKquw(Lorg/telegram/ui/Gifts/SendGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$StarGift;Landroid/view/View;)V

    return-void
.end method
