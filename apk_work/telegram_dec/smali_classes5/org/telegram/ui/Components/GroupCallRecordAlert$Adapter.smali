.class Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/GroupCallRecordAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/GroupCallRecordAlert;


# direct methods
.method public static synthetic $r8$lambda$c97y0sQiQgEJHv2QJ3p1dYJ8jQg(Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;->lambda$instantiateItem$0(ILandroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Components/GroupCallRecordAlert;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;->this$0:Lorg/telegram/ui/Components/GroupCallRecordAlert;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/GroupCallRecordAlert;Lorg/telegram/ui/Components/GroupCallRecordAlert$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;-><init>(Lorg/telegram/ui/Components/GroupCallRecordAlert;)V

    return-void
.end method

.method private synthetic lambda$instantiateItem$0(ILandroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;->this$0:Lorg/telegram/ui/Components/GroupCallRecordAlert;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/GroupCallRecordAlert;->onStartRecord(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;->this$0:Lorg/telegram/ui/Components/GroupCallRecordAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;->this$0:Lorg/telegram/ui/Components/GroupCallRecordAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/GroupCallRecordAlert;->access$700(Lorg/telegram/ui/Components/GroupCallRecordAlert;)[Landroid/widget/TextView;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    new-instance v0, Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter$1;

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;->this$0:Lorg/telegram/ui/Components/GroupCallRecordAlert;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter$1;-><init>(Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;Landroid/content/Context;I)V

    new-instance v1, Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v5, -0x1

    invoke-direct {v2, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_0

    sget v2, Lorg/telegram/messenger/R$string;->VoipRecordAudio:I

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    if-ne p2, v1, :cond_1

    sget v2, Lorg/telegram/messenger/R$string;->VoipRecordPortrait:I

    goto :goto_0

    :cond_1
    sget v2, Lorg/telegram/messenger/R$string;->VoipRecordLandscape:I

    goto :goto_0

    :goto_1
    if-nez p2, :cond_2

    sget p2, Lorg/telegram/messenger/R$raw;->record_audio:I

    goto :goto_2

    :cond_2
    if-ne p2, v1, :cond_3

    sget p2, Lorg/telegram/messenger/R$raw;->record_video_p:I

    goto :goto_2

    :cond_3
    sget p2, Lorg/telegram/messenger/R$raw;->record_video_l:I

    :goto_2
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/SvgHelper;->getDrawable(Ljava/lang/String;)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object p2

    invoke-virtual {p2, v4}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setAspectFill(Z)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
