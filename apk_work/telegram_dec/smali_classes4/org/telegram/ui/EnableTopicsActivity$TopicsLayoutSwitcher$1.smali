.class Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->setChecked(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;

.field final synthetic val$checked:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$1;->this$0:Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;

    iput-boolean p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$1;->val$checked:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    iget-object p1, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$1;->this$0:Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;

    iget-boolean v0, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$1;->val$checked:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->access$002(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;F)F

    iget-object p1, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$1;->this$0:Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;

    invoke-static {p1}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->access$200(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText5:I

    iget-object v3, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$1;->this$0:Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;

    invoke-static {v3}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->access$100(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v5, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$1;->this$0:Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;

    invoke-static {v5}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->access$100(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$1;->this$0:Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;

    invoke-static {v6}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->access$000(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)F

    move-result v6

    invoke-static {v3, v5, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$1;->this$0:Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;

    invoke-static {p1}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->access$200(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$1;->this$0:Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;

    invoke-static {p1}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->access$300(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$1;->this$0:Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;

    invoke-static {v3}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->access$100(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$1;->this$0:Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;

    invoke-static {v3}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->access$100(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$1;->this$0:Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;

    invoke-static {v4}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->access$000(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v2, v3, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-direct {v0, v1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$1;->this$0:Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;

    invoke-static {p1}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->access$300(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
