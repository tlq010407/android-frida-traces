.class public Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterTopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditView"
.end annotation


# instance fields
.field private buttons:[Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;->buttons:[Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;)[Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;->buttons:[Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;

    return-object p0
.end method


# virtual methods
.method public addButton(Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;->buttons:[Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;

    aput-object p1, v1, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public getButtons()[Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;->buttons:[Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;

    return-object v0
.end method

.method public updateColors()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;->buttons:[Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->updateColors()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
