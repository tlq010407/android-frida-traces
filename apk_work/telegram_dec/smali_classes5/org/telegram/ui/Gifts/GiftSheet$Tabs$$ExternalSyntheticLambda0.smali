.class public final synthetic Lorg/telegram/ui/Gifts/GiftSheet$Tabs$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    iput p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    iget v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->$r8$lambda$pxr5JRcoxM_ZyErkUeLv-H2RFw4(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;ILorg/telegram/messenger/Utilities$Callback;Landroid/view/View;)V

    return-void
.end method
