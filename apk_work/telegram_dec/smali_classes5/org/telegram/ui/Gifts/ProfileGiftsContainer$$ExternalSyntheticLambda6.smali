.class public final synthetic Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

.field public final synthetic f$2:Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

.field public final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iput-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda6;->f$2:Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    iput-object p4, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda6;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda6;->f$2:Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda6;->f$3:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->$r8$lambda$HVDWdbQjWkqMiwiqg2-TUEeCB-M(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Landroid/view/View;)V

    return-void
.end method
