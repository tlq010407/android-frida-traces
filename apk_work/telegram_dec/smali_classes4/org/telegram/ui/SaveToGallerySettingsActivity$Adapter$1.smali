.class Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;

.field final synthetic val$lowerTextView:Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

.field final synthetic val$midTextView:Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

.field final synthetic val$slideChooseView:Lorg/telegram/ui/Components/SeekBarView;

.field final synthetic val$topTextView:Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;Lorg/telegram/ui/Components/SeekBarView;Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->this$1:Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;

    iput-object p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->val$slideChooseView:Lorg/telegram/ui/Components/SeekBarView;

    iput-object p3, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->val$lowerTextView:Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

    iput-object p4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->val$midTextView:Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

    iput-object p5, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->val$topTextView:Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

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
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->val$slideChooseView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    const v3, 0x3f333333    # 0.7f

    cmpl-float v4, p2, v3

    if-lez v4, :cond_0

    sub-float v3, p2, v3

    const v4, 0x3e99999a    # 0.3f

    div-float/2addr v3, v4

    const-wide/32 v4, 0x6400000

    long-to-float v4, v4

    const-wide v5, 0xf3c00000L

    long-to-float v5, v5

    mul-float v5, v5, v3

    add-float/2addr v4, v5

    :goto_0
    float-to-long v3, v4

    goto :goto_1

    :cond_0
    div-float v3, p2, v3

    const-wide/32 v4, 0x6380000

    long-to-float v4, v4

    mul-float v4, v4, v3

    const/high16 v3, 0x49000000    # 524288.0f

    add-float/2addr v4, v3

    goto :goto_0

    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f4ccccd    # 0.8f

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->val$lowerTextView:Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

    invoke-virtual {p2, v0, v2}, Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;->setSelectedInternal(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->val$midTextView:Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

    invoke-virtual {p2, v0, v2}, Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;->setSelectedInternal(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->val$topTextView:Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

    invoke-virtual {p2, v1, v2}, Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;->setSelectedInternal(ZZ)V

    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->val$midTextView:Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

    invoke-static {p2, v0, v6, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    goto :goto_3

    :cond_1
    const/4 v5, 0x0

    cmpl-float p2, p2, v5

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->val$lowerTextView:Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

    invoke-virtual {p2, v1, v2}, Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;->setSelectedInternal(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->val$midTextView:Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

    invoke-virtual {p2, v0, v2}, Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;->setSelectedInternal(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->val$topTextView:Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

    invoke-virtual {p2, v0, v2}, Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;->setSelectedInternal(ZZ)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->val$midTextView:Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

    sget v5, Lorg/telegram/messenger/R$string;->UpToFileSize:I

    invoke-static {v3, v4, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(JZZ)Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v7, v8, v0

    const-string v7, "UpToFileSize"

    invoke-static {v7, v5, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->val$lowerTextView:Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

    invoke-virtual {p2, v0, v2}, Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;->setSelectedInternal(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->val$midTextView:Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

    invoke-virtual {p2, v1, v2}, Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;->setSelectedInternal(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->val$topTextView:Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

    invoke-virtual {p2, v0, v2}, Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;->setSelectedInternal(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->val$midTextView:Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

    invoke-static {p2, v1, v6, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    :goto_3
    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->this$1:Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;

    iget-object p1, p1, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->getSettings()Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;

    move-result-object p1

    iput-wide v3, p1, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->limitVideo:J

    iget-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;->this$1:Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;

    iget-object p1, p1, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->access$600(Lorg/telegram/ui/SaveToGallerySettingsActivity;)V

    :cond_3
    return-void
.end method

.method public onSeekBarPressed(Z)V
    .locals 0

    return-void
.end method
