.class public final synthetic Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

.field public final synthetic f$2:Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iput-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->$r8$lambda$5GNGLbKjiMKIxUP9pgATW3oL9AA(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;)V

    return-void
.end method
