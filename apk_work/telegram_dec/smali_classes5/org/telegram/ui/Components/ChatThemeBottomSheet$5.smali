.class Lorg/telegram/ui/Components/ChatThemeBottomSheet$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatThemeBottomSheet;->updateApplySubTextTranslation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

.field final synthetic val$subtextShown:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$5;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$5;->val$subtextShown:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$5;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$5;->val$subtextShown:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$202(Lorg/telegram/ui/Components/ChatThemeBottomSheet;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$5;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$300(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p1

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$5;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$200(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
