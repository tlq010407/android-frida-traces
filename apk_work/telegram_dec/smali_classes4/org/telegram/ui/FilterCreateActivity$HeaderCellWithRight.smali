.class Lorg/telegram/ui/FilterCreateActivity$HeaderCellWithRight;
.super Lorg/telegram/ui/Cells/HeaderCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FilterCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderCellWithRight"
.end annotation


# instance fields
.field private final rightTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field final synthetic this$0:Lorg/telegram/ui/FilterCreateActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$HeaderCellWithRight;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    new-instance v7, Lorg/telegram/ui/FilterCreateActivity$HeaderCellWithRight$1;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/FilterCreateActivity$HeaderCellWithRight$1;-><init>(Lorg/telegram/ui/FilterCreateActivity$HeaderCellWithRight;Landroid/content/Context;ZZZLorg/telegram/ui/FilterCreateActivity;)V

    iput-object v7, p0, Lorg/telegram/ui/FilterCreateActivity$HeaderCellWithRight;->rightTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 p2, 0x5

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    invoke-virtual {v7, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v7, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    const/high16 p1, 0x41700000    # 15.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    invoke-virtual {v7, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_1

    const/4 p2, 0x3

    :cond_1
    or-int/lit8 v2, p2, 0x30

    const/high16 v5, 0x41b00000    # 22.0f

    const/4 v6, 0x0

    const/4 v0, -0x1

    const/high16 v1, 0x41900000    # 18.0f

    const/high16 v3, 0x41b00000    # 22.0f

    const/high16 v4, 0x41880000    # 17.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x3d23d70a    # 0.04f

    const p2, 0x3f99999a    # 1.2f

    invoke-static {v7, p1, p2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/FilterCreateActivity$HeaderCellWithRight;)Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity$HeaderCellWithRight;->rightTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object p0
.end method
