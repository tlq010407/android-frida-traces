.class Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;

.field final synthetic val$this$0:Lorg/telegram/ui/LiteModeSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;Lorg/telegram/ui/LiteModeSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$2;->this$1:Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;

    iput-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$2;->val$this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, " "

    return-object v0
.end method

.method public synthetic getStepsCount()I
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate$-CC;->$default$getStepsCount(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)I

    move-result v0

    return v0
.end method

.method public synthetic needVisuallyDivideSteps()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate$-CC;->$default$needVisuallyDivideSteps(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public onSeekBarDrag(ZF)V
    .locals 1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result p2

    if-eq p1, p2, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->setPowerSaverLevel(I)V

    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$2;->this$1:Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;

    iget-object p2, p2, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/LiteModeSettingsActivity;->access$400(Lorg/telegram/ui/LiteModeSettingsActivity;)V

    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$2;->this$1:Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;

    iget-object p2, p2, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/LiteModeSettingsActivity;->access$500(Lorg/telegram/ui/LiteModeSettingsActivity;)V

    if-lez p1, :cond_0

    const/16 p2, 0x64

    if-lt p1, p2, :cond_1

    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$2;->this$1:Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;

    const/4 p2, 0x3

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public onSeekBarPressed(Z)V
    .locals 0

    return-void
.end method
