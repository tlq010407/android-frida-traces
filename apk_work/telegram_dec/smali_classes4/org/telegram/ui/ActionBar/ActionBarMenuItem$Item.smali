.class public Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public dismiss:Z

.field public icon:I

.field private iconColor:Ljava/lang/Integer;

.field public iconDrawable:Landroid/graphics/drawable/Drawable;

.field public id:I

.field public needCheck:Z

.field private overrideClickListener:Landroid/view/View$OnClickListener;

.field private rightIconVisibility:I

.field public text:Ljava/lang/CharSequence;

.field private textColor:Ljava/lang/Integer;

.field public textSizeDp:I

.field private view:Landroid/view/View;

.field public viewToSwipeBack:Landroid/view/View;

.field public viewType:I

.field private visibility:I


# direct methods
.method public static synthetic $r8$lambda$2OS0skZYNrS0nz-x6kdhp_KhGLU(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->lambda$add$0(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EMcch9trWqU0Ih_MgId08MnuK7A(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->lambda$add$2(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XCtaINqCCgAfz-9UMfY_1BLwZN8(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->lambda$add$1(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->visibility:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->rightIconVisibility:I

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->viewType:I

    return-void
.end method

.method static synthetic access$2700(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->asSwipeBackItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->asSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900()Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->asColoredGap()Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Ljava/lang/CharSequence;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->asText(Ljava/lang/CharSequence;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->add(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private add(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/view/View;
    .locals 13

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2100(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->viewType:I

    const/high16 v1, 0x42400000    # 48.0f

    const/4 v2, 0x5

    const/high16 v3, 0x43440000    # 196.0f

    const/4 v4, -0x1

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-boolean v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->needCheck:Z

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2200(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    iget v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->icon:I

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumWidth(I)V

    iget v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->textColor:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    goto/16 :goto_2

    :cond_2
    const/4 v5, 0x1

    if-ne v0, v5, :cond_4

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2200(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    sget v1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    const/16 v1, 0x8

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_3
    :goto_1
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    goto/16 :goto_3

    :cond_4
    const/4 v6, 0x2

    if-ne v0, v6, :cond_6

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2200(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    iget v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->icon:I

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumWidth(I)V

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_arrowright:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v3

    iget v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->rightIconVisibility:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_5

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_5
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->viewToSwipeBack:Landroid/view/View;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result v1

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBackLayout:Ljava/lang/Runnable;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    iput-boolean v5, p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityRight:Z

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->textColor:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->textSizeDp:I

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setMaxWidth(I)V

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    if-eqz p1, :cond_8

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->visibility:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->overrideClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    return-object p1
.end method

.method private static asColoredGap()Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 2

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;-><init>(I)V

    return-object v0
.end method

.method private static asSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 2

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;-><init>(I)V

    iput p0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->id:I

    iput p1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->icon:I

    iput-object p2, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    iput-boolean p4, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->dismiss:Z

    iput-boolean p5, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->needCheck:Z

    return-object v0
.end method

.method private static asSwipeBackItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 2

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;-><init>(I)V

    iput p0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->icon:I

    iput-object p1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    iput-object p3, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->viewToSwipeBack:Landroid/view/View;

    return-object v0
.end method

.method private static asText(Ljava/lang/CharSequence;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 2

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;-><init>(I)V

    iput-object p0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    iput p1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->textSizeDp:I

    return-object v0
.end method

.method private synthetic lambda$add$0(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2300(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2300(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->dismiss:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2400(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2402(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Z)Z

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2300(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2500(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$1600(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$1600(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2600(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2600(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;->onItemClick(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic lambda$add$1(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$add$2(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBack()V

    return-void
.end method


# virtual methods
.method public openSwipeBack()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBack()V

    :cond_0
    return-void
.end method

.method public setColors(II)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->textColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->textColor:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :cond_1
    return-void
.end method

.method public setIcon(I)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->icon:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->icon:I

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(I)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->overrideClickListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setRightIconVisibility(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->rightIconVisibility:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->rightIconVisibility:I

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->rightIconVisibility:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->visibility:I

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
