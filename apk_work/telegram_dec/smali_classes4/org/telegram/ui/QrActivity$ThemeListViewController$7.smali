.class Lorg/telegram/ui/QrActivity$ThemeListViewController$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/QrActivity$ThemeListViewController;->getThemeDescriptions()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isAnimationStarted:Z

.field final synthetic this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;


# direct methods
.method constructor <init>(Lorg/telegram/ui/QrActivity$ThemeListViewController;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$7;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$7;->isAnimationStarted:Z

    return-void
.end method


# virtual methods
.method public didSetColor()V
    .locals 0

    return-void
.end method

.method public onAnimationProgress(F)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$7;->isAnimationStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$7;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v0}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$3600(Lorg/telegram/ui/QrActivity$ThemeListViewController;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$7;->isAnimationStarted:Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$7;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v0}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$3800(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$7;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v2}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$3700(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$7;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-boolean v1, v0, Lorg/telegram/ui/QrActivity$ThemeListViewController;->isLightDarkChangeAnimation:Z

    if-eqz v1, :cond_1

    invoke-static {v0, p1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$3900(Lorg/telegram/ui/QrActivity$ThemeListViewController;F)V

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$7;->isAnimationStarted:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$7;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->isLightDarkChangeAnimation:Z

    invoke-static {p1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$4000(Lorg/telegram/ui/QrActivity$ThemeListViewController;)V

    iput-boolean v0, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$7;->isAnimationStarted:Z

    :cond_2
    return-void
.end method
