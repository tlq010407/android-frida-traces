.class Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider$1;
.super Lorg/telegram/ui/Components/FloatSeekBarAccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/FloatSeekBarAccessibilityDelegate;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getContentDescription(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;->getSpeed()F

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/SpeedIconDrawable;->formatNumber(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "x  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lorg/telegram/messenger/R$string;->AccDescrSpeedSlider:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getDelta()F
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    return v0
.end method

.method protected getMaxValue()F
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    return v0
.end method

.method protected getMinValue()F
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    return v0
.end method

.method public getProgress()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;->getSpeed()F

    move-result v0

    return v0
.end method

.method public setProgress(F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;->setSpeed(FZ)V

    return-void
.end method
