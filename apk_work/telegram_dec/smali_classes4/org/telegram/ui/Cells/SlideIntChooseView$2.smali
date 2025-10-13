.class Lorg/telegram/ui/Cells/SlideIntChooseView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/SlideIntChooseView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/SlideIntChooseView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/SlideIntChooseView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$2;->this$0:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate$-CC;->$default$getContentDescription(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getStepsCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$2;->this$0:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-static {v0}, Lorg/telegram/ui/Cells/SlideIntChooseView;->access$000(Lorg/telegram/ui/Cells/SlideIntChooseView;)Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->getStepsCount()I

    move-result v0

    return v0
.end method

.method public needVisuallyDivideSteps()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSeekBarDrag(ZF)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$2;->this$0:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-static {p1}, Lorg/telegram/ui/Cells/SlideIntChooseView;->access$000(Lorg/telegram/ui/Cells/SlideIntChooseView;)Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$2;->this$0:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-static {p1}, Lorg/telegram/ui/Cells/SlideIntChooseView;->access$100(Lorg/telegram/ui/Cells/SlideIntChooseView;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$2;->this$0:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/SlideIntChooseView;->getValue(F)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$2;->this$0:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-static {p2}, Lorg/telegram/ui/Cells/SlideIntChooseView;->access$200(Lorg/telegram/ui/Cells/SlideIntChooseView;)I

    move-result p2

    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$2;->this$0:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-static {p2}, Lorg/telegram/ui/Cells/SlideIntChooseView;->access$200(Lorg/telegram/ui/Cells/SlideIntChooseView;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$2;->this$0:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-static {p2}, Lorg/telegram/ui/Cells/SlideIntChooseView;->access$300(Lorg/telegram/ui/Cells/SlideIntChooseView;)I

    move-result p2

    if-eq p2, p1, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$2;->this$0:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-static {p2}, Lorg/telegram/ui/Cells/SlideIntChooseView;->access$300(Lorg/telegram/ui/Cells/SlideIntChooseView;)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/SlideIntChooseView;->getStep(I)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$2;->this$0:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/SlideIntChooseView;->getStep(I)I

    move-result v0

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$2;->this$0:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-static {p2}, Lorg/telegram/ui/Cells/SlideIntChooseView;->access$400(Lorg/telegram/ui/Cells/SlideIntChooseView;)Lorg/telegram/ui/Components/SeekBarView;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$2;->this$0:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-static {p2, p1}, Lorg/telegram/ui/Cells/SlideIntChooseView;->access$302(Lorg/telegram/ui/Cells/SlideIntChooseView;I)I

    iget-object p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$2;->this$0:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-static {p1}, Lorg/telegram/ui/Cells/SlideIntChooseView;->access$300(Lorg/telegram/ui/Cells/SlideIntChooseView;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/SlideIntChooseView;->updateTexts(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$2;->this$0:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-static {p1}, Lorg/telegram/ui/Cells/SlideIntChooseView;->access$100(Lorg/telegram/ui/Cells/SlideIntChooseView;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$2;->this$0:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-static {p1}, Lorg/telegram/ui/Cells/SlideIntChooseView;->access$100(Lorg/telegram/ui/Cells/SlideIntChooseView;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/SlideIntChooseView$2;->this$0:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-static {p2}, Lorg/telegram/ui/Cells/SlideIntChooseView;->access$300(Lorg/telegram/ui/Cells/SlideIntChooseView;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic onSeekBarPressed(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate$-CC;->$default$onSeekBarPressed(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;Z)V

    return-void
.end method
