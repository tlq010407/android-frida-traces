.class public abstract Lorg/telegram/ui/Components/GroupCallRecordAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;
    }
.end annotation


# instance fields
.field private currentPage:I

.field private pageOffset:F

.field private positiveButton:Landroid/widget/TextView;

.field private titles:[Landroid/widget/TextView;

.field private titlesLayout:Landroid/widget/LinearLayout;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public static synthetic $r8$lambda$-DrSjrxZ1BZB9okYhoQM_GK-6i4(Lorg/telegram/ui/Components/GroupCallRecordAlert;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/GroupCallRecordAlert;->lambda$new$1(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9kVTlylpn4aLmDOlTZsFb_CExr4(Lorg/telegram/ui/Components/GroupCallRecordAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/GroupCallRecordAlert;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_inviteMembersBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v3, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v4, Lorg/telegram/ui/Components/GroupCallRecordAlert$1;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/GroupCallRecordAlert$1;-><init>(Lorg/telegram/ui/Components/GroupCallRecordAlert;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v4, v5, v2, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Lorg/telegram/messenger/R$string;->VoipChannelRecordVoiceChat:I

    :goto_0
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    sget v5, Lorg/telegram/messenger/R$string;->VoipRecordVoiceChat:I

    goto :goto_0

    :goto_1
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v8, 0x5

    const/4 v9, 0x3

    if-eqz v6, :cond_1

    const/4 v6, 0x5

    goto :goto_2

    :cond_1
    const/4 v6, 0x3

    :goto_2
    or-int/lit8 v6, v6, 0x30

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_2

    const/4 v10, 0x5

    goto :goto_3

    :cond_2
    const/4 v10, 0x3

    :goto_3
    or-int/lit8 v13, v10, 0x30

    const/high16 v16, 0x41c00000    # 24.0f

    const/16 v17, 0x0

    const/4 v11, -0x2

    const/high16 v12, -0x40000000    # -2.0f

    const/high16 v14, 0x41c00000    # 24.0f

    const/high16 v15, 0x41e80000    # 29.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v6, Lorg/telegram/messenger/R$string;->VoipRecordVoiceChatInfo:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v4, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_3

    const/4 v10, 0x5

    goto :goto_4

    :cond_3
    const/4 v10, 0x3

    :goto_4
    or-int/lit8 v10, v10, 0x30

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_4

    goto :goto_5

    :cond_4
    const/4 v8, 0x3

    :goto_5
    or-int/lit8 v13, v8, 0x30

    const/high16 v16, 0x41c00000    # 24.0f

    const/16 v17, 0x0

    const/4 v11, -0x2

    const/high16 v12, -0x40000000    # -2.0f

    const/high16 v14, 0x41c00000    # 24.0f

    const/high16 v15, 0x42780000    # 62.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v10, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-array v4, v9, [Landroid/widget/TextView;

    iput-object v4, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titles:[Landroid/widget/TextView;

    new-instance v4, Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v4, v1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/high16 v8, 0x7f000000

    invoke-static {v4, v8}, Lorg/telegram/messenger/AndroidUtilities;->setViewPagerEdgeEffectColor(Landroidx/viewpager/widget/ViewPager;I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v8, Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;-><init>(Lorg/telegram/ui/Components/GroupCallRecordAlert;Lorg/telegram/ui/Components/GroupCallRecordAlert$1;)V

    invoke-virtual {v4, v8}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v8, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v14, 0x0

    const/high16 v15, 0x43020000    # 130.0f

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/high16 v13, 0x42c80000    # 100.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v8, Lorg/telegram/ui/Components/GroupCallRecordAlert$2;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/GroupCallRecordAlert$2;-><init>(Lorg/telegram/ui/Components/GroupCallRecordAlert;)V

    invoke-virtual {v4, v8}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    new-instance v4, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    sget-object v9, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    filled-new-array {v3, v2}, [I

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v15, 0x0

    const/high16 v16, 0x43020000    # 130.0f

    const/16 v10, 0x78

    const/high16 v11, -0x40800000    # -1.0f

    const/16 v12, 0x33

    const/4 v13, 0x0

    const/high16 v14, 0x42c80000    # 100.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    filled-new-array {v2, v3}, [I

    move-result-object v3

    invoke-direct {v8, v9, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/high16 v14, 0x43020000    # 130.0f

    const/16 v8, 0x78

    const/high16 v9, -0x40800000    # -1.0f

    const/16 v10, 0x35

    const/4 v11, 0x0

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/GroupCallRecordAlert$3;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/Components/GroupCallRecordAlert$3;-><init>(Lorg/telegram/ui/Components/GroupCallRecordAlert;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->positiveButton:Landroid/widget/TextView;

    const/high16 v4, 0x42800000    # 64.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinWidth(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->positiveButton:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->positiveButton:Landroid/widget/TextView;

    invoke-virtual {v3, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->positiveButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->positiveButton:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->positiveButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->positiveButton:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->VoipRecordStart:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v3, v6, :cond_5

    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->positiveButton:Landroid/widget/TextView;

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    const/16 v8, 0x4c

    invoke-static {v4, v8}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-static {v6, v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/GroupCallRecordAlert$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->positiveButton:Landroid/widget/TextView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v3, v2, v6, v2, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->positiveButton:Landroid/widget/TextView;

    new-instance v6, Lorg/telegram/ui/Components/GroupCallRecordAlert$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/GroupCallRecordAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/GroupCallRecordAlert;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v6, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->positiveButton:Landroid/widget/TextView;

    const/4 v13, 0x0

    const/high16 v14, 0x42800000    # 64.0f

    const/4 v8, -0x1

    const/high16 v9, 0x42400000    # 48.0f

    const/16 v10, 0x50

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titlesLayout:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 v8, 0x40

    const/16 v9, 0x50

    const/4 v10, -0x2

    invoke-static {v10, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titles:[Landroid/widget/TextView;

    array-length v8, v6

    if-ge v3, v8, :cond_8

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v8, v6, v3

    iget-object v6, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titles:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    invoke-virtual {v6, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titles:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titles:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titles:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v6, v9, v2, v8, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v6, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titles:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    const/16 v8, 0x10

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titles:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v6, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titlesLayout:Landroid/widget/LinearLayout;

    iget-object v8, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titles:[Landroid/widget/TextView;

    aget-object v8, v8, v3

    invoke-static {v10, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titles:[Landroid/widget/TextView;

    if-nez v3, :cond_6

    aget-object v6, v6, v3

    sget v8, Lorg/telegram/messenger/R$string;->VoipRecordAudio:I

    :goto_7
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_6
    if-ne v3, v7, :cond_7

    aget-object v6, v6, v3

    sget v8, Lorg/telegram/messenger/R$string;->VoipRecordPortrait:I

    goto :goto_7

    :cond_7
    aget-object v6, v6, v3

    sget v8, Lorg/telegram/messenger/R$string;->VoipRecordLandscape:I

    goto :goto_7

    :goto_8
    iget-object v6, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titles:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    new-instance v8, Lorg/telegram/ui/Components/GroupCallRecordAlert$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0, v3}, Lorg/telegram/ui/Components/GroupCallRecordAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/GroupCallRecordAlert;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    if-eqz p3, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v7}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_9
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/GroupCallRecordAlert;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->positiveButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/GroupCallRecordAlert;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/GroupCallRecordAlert;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titlesLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/GroupCallRecordAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupCallRecordAlert;->updateTitlesLayout()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/GroupCallRecordAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->currentPage:I

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/GroupCallRecordAlert;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->currentPage:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/GroupCallRecordAlert;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->pageOffset:F

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/GroupCallRecordAlert;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->pageOffset:F

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/GroupCallRecordAlert;)[Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titles:[Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->currentPage:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/GroupCallRecordAlert;->onStartRecord(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1(ILandroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method private updateTitlesLayout()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titles:[Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->currentPage:I

    aget-object v2, v0, v1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    int-to-float v0, v3

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->pageOffset:F

    mul-float v0, v0, v1

    sub-float/2addr v2, v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titles:[Landroid/widget/TextView;

    array-length v3, v1

    if-ge v0, v3, :cond_5

    iget v3, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->currentPage:I

    const v4, 0x3f666666    # 0.9f

    const v5, 0x3f333333    # 0.7f

    if-lt v0, v3, :cond_4

    add-int/lit8 v6, v3, 0x1

    if-le v0, v6, :cond_2

    goto :goto_2

    :cond_2
    const v6, 0x3dcccccd    # 0.1f

    const v7, 0x3e99999a    # 0.3f

    if-ne v0, v3, :cond_3

    iget v3, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->pageOffset:F

    mul-float v7, v7, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v7

    mul-float v3, v3, v6

    sub-float/2addr v4, v3

    goto :goto_2

    :cond_3
    iget v3, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->pageOffset:F

    mul-float v7, v7, v3

    add-float/2addr v5, v7

    mul-float v3, v3, v6

    add-float/2addr v4, v3

    :cond_4
    :goto_2
    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titles:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titles:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->titlesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert;->positiveButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public abstract onStartRecord(I)V
.end method
