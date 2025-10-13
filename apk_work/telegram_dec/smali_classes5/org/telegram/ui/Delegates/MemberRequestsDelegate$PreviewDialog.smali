.class Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Delegates/MemberRequestsDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewDialog"
.end annotation


# instance fields
.field private animationProgress:F

.field private animator:Landroid/animation/ValueAnimator;

.field private backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private final bioText:Landroid/widget/TextView;

.field private final contentView:Landroid/view/ViewGroup;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private importer:Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

.field private final nameText:Landroid/widget/TextView;

.field private final pagerIndicator:Lorg/telegram/ui/AvatarPreviewPagerIndicator;

.field private final pagerShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private final popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private final shadowPaddingLeft:I

.field private final shadowPaddingTop:I

.field final synthetic this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

.field private final viewPager:Lorg/telegram/ui/Components/ProfileGalleryView;


# direct methods
.method public static synthetic $r8$lambda$9SL8pZ3LyZ43rVtm7YirVY-g0SQ(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->lambda$show$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Wcrg_3Es6wrN1BvrmynEcCZpzKA(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;FFFFILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->lambda$runAnimation$4(FFFFILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dCAFu_qxqOmUbp2HxJOEjqFzww4(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jwCDBnOHvLwX9C0jYfpeeEXMIh4(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y-EDy06tDqXGAKOB4oJ2cBZ2f70(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 8

    iput-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    sget v0, Lorg/telegram/messenger/R$style;->TransparentDialog2:I

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->pagerShadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->nameText:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->bioText:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->contentView:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$700(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v5, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v6, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->shadowPaddingTop:I

    iget v0, v6, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->shadowPaddingLeft:I

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-direct {v0, p2, p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$1;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6, p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$1;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;Landroid/content/Context;Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)V

    iput-object v5, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->pagerIndicator:Lorg/telegram/ui/AvatarPreviewPagerIndicator;

    new-instance v6, Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$700(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v7

    invoke-direct {v6, p2, v7, p3, v5}, Lorg/telegram/ui/Components/ProfileGalleryView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Components/ProfileGalleryView$Callback;)V

    iput-object v6, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->viewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/ProfileGalleryView;->setCreateThumbFromParent(Z)V

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->setProfileGalleryView(Lorg/telegram/ui/Components/ProfileGalleryView;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$700(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {p3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p3, 0x41800000    # 16.0f

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$700(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 p3, 0x0

    invoke-direct {p1, p2, v4, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v1, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-static {v3, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {p1, v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v2, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    if-eqz p5, :cond_0

    sget p5, Lorg/telegram/messenger/R$string;->AddToChannel:I

    :goto_0
    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    goto :goto_1

    :cond_0
    sget p5, Lorg/telegram/messenger/R$string;->AddToGroup:I

    goto :goto_0

    :goto_1
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_requests:I

    invoke-virtual {p1, p5, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    new-instance p5, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$$ExternalSyntheticLambda2;

    invoke-direct {p5, p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)V

    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-direct {p1, p2, p3, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    invoke-static {v1, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p5

    invoke-static {v3, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p1, p5, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v2, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p5

    invoke-virtual {p1, p5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    sget p5, Lorg/telegram/messenger/R$string;->SendMessage:I

    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_msgbubble3:I

    invoke-virtual {p1, p5, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    new-instance p5, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$$ExternalSyntheticLambda3;

    invoke-direct {p5, p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)V

    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-direct {p1, p2, p3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v2, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    sget p2, Lorg/telegram/messenger/R$string;->DismissRequest:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$drawable;->msg_remove:I

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    new-instance p2, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->contentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1301(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->pagerShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->viewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/AvatarPreviewPagerIndicator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->pagerIndicator:Lorg/telegram/ui/AvatarPreviewPagerIndicator;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->nameText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->bioText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->shadowPaddingLeft:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->getContentHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->shadowPaddingTop:I

    return p0
.end method

.method static synthetic access$2301(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->updateBackgroundBitmap()V

    return-void
.end method

.method private getBlurredBitmap()Landroid/graphics/Bitmap;
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v4, 0x3e2aaaab

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    iget-object v4, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v4}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$700(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v4

    invoke-interface {v4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const/high16 v4, -0x1000000

    const/16 v5, 0x4c

    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v4, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v4}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$700(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit16 v0, v0, 0xb4

    const/4 v1, 0x7

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    return-object v2
.end method

.method private getContentHeight()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->viewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->nameText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->bioText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->bioText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private getContentWidth()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->viewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->importer:Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->onAddClicked(Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$2500(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->importer:Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isNeedRestoreList:Z

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$700(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->importer:Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    const-string v2, "user_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$700(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->importer:Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->onDismissClicked(Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$2500(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)V

    return-void
.end method

.method private synthetic lambda$runAnimation$4(FFFFILandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    iput p6, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->animationProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    mul-float v1, v1, p6

    add-float/2addr p1, v1

    iget-object p6, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {p6, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p6, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {p6, p1}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->contentView:Landroid/view/ViewGroup;

    iget p6, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->animationProgress:F

    sub-float p6, v0, p6

    mul-float p2, p2, p6

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->contentView:Landroid/view/ViewGroup;

    iget p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->animationProgress:F

    sub-float p2, v0, p2

    mul-float p3, p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    iget p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->animationProgress:F

    sub-float p1, v0, p1

    mul-float p4, p4, p1

    float-to-int p1, p4

    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->viewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {p2, p1, p1}, Lorg/telegram/ui/Components/ProfileGalleryView;->setRoundRadius(II)V

    iget p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->animationProgress:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p1, p1, p2

    sub-float/2addr p1, v0

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->pagerShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float p4, p1, p3

    float-to-int p4, p4

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->nameText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->bioText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    int-to-float p4, p5

    iget p5, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->animationProgress:F

    sub-float/2addr v0, p5

    mul-float p4, p4, v0

    invoke-virtual {p2, p4}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_0

    iget p4, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->animationProgress:F

    mul-float p4, p4, p3

    float-to-int p3, p4

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->pagerIndicator:Lorg/telegram/ui/AvatarPreviewPagerIndicator;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$show$3()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->updateBackgroundBitmap()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->runAnimation(Z)V

    return-void
.end method

.method private runAnimation(Z)V
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->animator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    new-array v3, v2, [I

    iget-object v4, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v4, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v4, v4, v5

    invoke-direct {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->getContentWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    div-float v12, v6, v4

    aget v6, v3, v1

    iget-object v8, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->viewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-direct {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->getContentWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float v10, v5, v4

    mul-float v9, v9, v10

    div-float/2addr v9, v7

    float-to-int v9, v9

    add-int/2addr v8, v9

    sub-int/2addr v6, v8

    int-to-float v6, v6

    aget v3, v3, v0

    iget-object v8, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->viewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-direct {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->getContentHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v10

    div-float/2addr v9, v7

    float-to-int v7, v9

    add-int/2addr v8, v7

    sub-int/2addr v3, v8

    int-to-float v11, v3

    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v13, v3, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    new-array v2, v2, [F

    aput v7, v2, v1

    aput v5, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$$ExternalSyntheticLambda0;

    move-object v7, v1

    move-object v8, p0

    move v9, v4

    move v10, v6

    invoke-direct/range {v7 .. v13}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;FFFFI)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$2;

    invoke-direct {v1, p0, p1, v4}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$2;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;ZF)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->animator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateBackgroundBitmap()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getAlpha()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->getBlurredBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->runAnimation(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->contentView:Landroid/view/ViewGroup;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, 0x0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x33

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const v2, -0x7ffeff00

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    const/16 v0, 0x1c

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/huawei/hms/activity/BridgeActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setImporter(Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 8

    iput-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->importer:Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    iput-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$1100(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v5}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$1100(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v5}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$1100(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v0, v1, v1}, Lorg/telegram/messenger/MessagesController;->loadUserInfo(Lorg/telegram/tgnet/TLRPC$User;ZI)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->viewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ProfileGalleryView;->setParentAvatarImage(Lorg/telegram/ui/Components/BackupImageView;)V

    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->viewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    invoke-virtual {p2, v5, v6, v3}, Lorg/telegram/ui/Components/ProfileGalleryView;->setData(JZ)V

    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->viewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v2, v4, v3}, Lorg/telegram/ui/Components/ProfileGalleryView;->initIfEmpty(Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;Z)Z

    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {p2}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$900(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Landroid/util/LongSparseArray;

    move-result-object p2

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    invoke-virtual {p2, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->nameText:Landroid/widget/TextView;

    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->bioText:Landroid/widget/TextView;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->about:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->bioText:Landroid/widget/TextView;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->about:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public show()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    new-instance v0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)V

    const-wide/16 v1, 0x50

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
