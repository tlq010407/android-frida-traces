.class Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;
.super Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;-><init>(Landroid/content/Context;IJLorg/telegram/messenger/BirthdayController$BirthdayState;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isKeyboardVisible:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/high16 p3, 0x42800000    # 64.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->access$302(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;I)I

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->notifyChangedLast()V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;->isKeyboardVisible:Z

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->isKeyboardVisible()Z

    move-result p2

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->isKeyboardVisible()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;->isKeyboardVisible:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->scrollToTop(Z)V

    :cond_0
    return-void
.end method
