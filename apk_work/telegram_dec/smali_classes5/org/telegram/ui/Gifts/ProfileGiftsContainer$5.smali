.class Lorg/telegram/ui/Gifts/ProfileGiftsContainer$5;
.super Lorg/telegram/ui/Stars/StarGiftSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->onItemLongPress(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$5;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$5;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->access$400(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0
.end method
