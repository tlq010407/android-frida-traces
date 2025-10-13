.class Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;
.super Lorg/telegram/ui/ChatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->onItemClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private shownToast:Z

.field final synthetic this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

.field final synthetic val$boughtGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

.field final synthetic val$dialogId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/os/Bundle;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

    iput-object p3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;->val$boughtGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iput-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;->val$dialogId:Ljava/lang/Long;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;->shownToast:Z

    return-void
.end method


# virtual methods
.method public onBecomeFullyVisible()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Lorg/telegram/ui/ChatActivity;->onBecomeFullyVisible()V

    iget-boolean v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;->shownToast:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;->shownToast:Z

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;->val$boughtGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    invoke-virtual {v3}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->BoughtResoldGiftToTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->BoughtResoldGiftToText:I

    iget v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v7, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;->val$dialogId:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/DialogObject;->getShortName(IJ)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v0

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    :cond_0
    return-void
.end method
