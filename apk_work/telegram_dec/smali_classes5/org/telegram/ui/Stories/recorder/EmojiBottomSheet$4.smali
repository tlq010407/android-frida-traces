.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$4;
.super Lorg/telegram/ui/Components/ViewPagerFixed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$4;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTabAnimationUpdate(Z)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$4;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$6800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$4;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$6800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$4;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$6900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getPositionAnimated()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;->setType(F)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$4;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$7000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$4;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$6900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result p1

    sput p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->savedPosition:I

    return-void
.end method
