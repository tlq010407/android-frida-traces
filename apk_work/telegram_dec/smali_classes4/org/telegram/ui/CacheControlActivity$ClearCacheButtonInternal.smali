.class Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;
.super Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CacheControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearCacheButtonInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CacheControlActivity;


# direct methods
.method public static synthetic $r8$lambda$-DFB8J4ZotA_jtiCLO-6rXD74jI(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;[Z[JLorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->lambda$doClearCache$3([Z[JLorg/telegram/ui/ActionBar/BottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7J7ArLiXgbEqFrhpmxBjY7mi_nk(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UDpypPP37Y0E3UtNqXWab46cjrU([ZLorg/telegram/ui/CacheControlActivity$ClearingCacheView;[JLorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->lambda$doClearCache$5([ZLorg/telegram/ui/CacheControlActivity$ClearingCacheView;[JLorg/telegram/ui/ActionBar/BottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wq5VCzl9dill7kIUgZx1oEPBBJo([ZLorg/telegram/ui/CacheControlActivity$ClearingCacheView;[JLorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->lambda$doClearCache$6([ZLorg/telegram/ui/CacheControlActivity$ClearingCacheView;[JLorg/telegram/ui/ActionBar/BottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$brbeGbwuWuBs1d_X9EJBhn8nEOI(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;[F[Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->lambda$doClearCache$2(Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;[F[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$jiEY1mweDAysKlRZVBoQ2OpeaxU([F[ZLjava/lang/Runnable;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->lambda$doClearCache$4([F[ZLjava/lang/Runnable;Ljava/lang/Float;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yLDdgnVGSBVroPwDwHKZaT5_8R8(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->lambda$new$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    new-instance p2, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private doClearCache()V
    .locals 10

    new-instance v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$1;-><init>(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithSwipe(Z)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;

    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;-><init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    const/4 v3, 0x1

    new-array v4, v3, [Z

    aput-boolean v2, v4, v2

    new-array v5, v3, [F

    const/4 v6, 0x0

    aput v6, v5, v2

    new-array v6, v3, [Z

    aput-boolean v2, v6, v2

    new-instance v7, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, v1, v5, v6}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;[F[Z)V

    new-array v3, v3, [J

    const-wide/16 v8, -0x1

    aput-wide v8, v3, v2

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v4, v3, v0}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;[Z[JLorg/telegram/ui/ActionBar/BottomSheet;)V

    const-wide/16 v8, 0x96

    invoke-static {v2, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    new-instance v8, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda4;

    invoke-direct {v8, v5, v6, v7}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda4;-><init>([F[ZLjava/lang/Runnable;)V

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda5;

    invoke-direct {v5, v4, v1, v3, v0}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda5;-><init>([ZLorg/telegram/ui/CacheControlActivity$ClearingCacheView;[JLorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-static {v2, v8, v5}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$doClearCache$2(Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;[F[Z)V
    .locals 1

    const/4 v0, 0x0

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;->setProgress(F)V

    aget-boolean p1, p3, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$3300(Lorg/telegram/ui/CacheControlActivity;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$doClearCache$3([Z[JLorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 3

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    aput-wide v1, p2, v0

    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private static synthetic lambda$doClearCache$4([F[ZLjava/lang/Runnable;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v0, 0x0

    aput p3, p0, v0

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    aput-boolean p0, p1, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$doClearCache$5([ZLorg/telegram/ui/CacheControlActivity$ClearingCacheView;[JLorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v0, p0, v1

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;->setProgress(F)V

    aget-wide p0, p2, v1

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-lez v0, :cond_0

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda11;

    invoke-direct {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aget-wide p1, p2, v1

    sub-long/2addr v4, p1

    const-wide/16 p1, 0x3e8

    sub-long/2addr p1, v4

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$doClearCache$6([ZLorg/telegram/ui/CacheControlActivity$ClearingCacheView;[JLorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda6;-><init>([ZLorg/telegram/ui/CacheControlActivity$ClearingCacheView;[JLorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->doClearCache()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lorg/telegram/messenger/R$string;->ClearCache:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->StorageUsageInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const v2, 0x3df5c28f    # 0.12f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getRoundRectSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public updateSize()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2100(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2200(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2100(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x1

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_1

    :cond_1
    move-wide v5, v1

    :goto_1
    add-long/2addr v3, v5

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2100(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x2

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2400(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_2

    :cond_2
    move-wide v5, v1

    :goto_2
    add-long/2addr v3, v5

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2100(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x3

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2500(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_3

    :cond_3
    move-wide v5, v1

    :goto_3
    add-long/2addr v3, v5

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2100(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x4

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2600(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_4

    :cond_4
    move-wide v5, v1

    :goto_4
    add-long/2addr v3, v5

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2100(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x5

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2700(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_5

    :cond_5
    move-wide v5, v1

    :goto_5
    add-long/2addr v3, v5

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2100(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x6

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2800(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_6

    :cond_6
    move-wide v5, v1

    :goto_6
    add-long/2addr v3, v5

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2100(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x7

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2900(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_7

    :cond_7
    move-wide v5, v1

    :goto_7
    add-long/2addr v3, v5

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2100(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/16 v5, 0x8

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$3000(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_8

    :cond_8
    move-wide v5, v1

    :goto_8
    add-long/2addr v3, v5

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2100(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/16 v5, 0x9

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$3100(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v1

    :cond_9
    add-long/2addr v3, v1

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$3200(Lorg/telegram/ui/CacheControlActivity;)Z

    move-result v0

    invoke-virtual {p0, v0, v3, v4}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->setSize(ZJ)V

    return-void
.end method
