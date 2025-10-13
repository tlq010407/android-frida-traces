.class Lorg/telegram/ui/Gifts/GiftSheet$5;
.super Lorg/telegram/ui/Stars/StarGiftSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/GiftSheet;-><init>(Landroid/content/Context;IJLjava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/GiftSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$5;->this$0:Lorg/telegram/ui/Gifts/GiftSheet;

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
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$5;->this$0:Lorg/telegram/ui/Gifts/GiftSheet;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/GiftSheet;->access$1000(Lorg/telegram/ui/Gifts/GiftSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0
.end method
