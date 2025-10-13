.class Lorg/telegram/ui/DataAutoDownloadActivity$3;
.super Lorg/telegram/ui/Cells/MaxFileSizeCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DataAutoDownloadActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

.field final synthetic val$animatorSet:[Landroid/animation/AnimatorSet;

.field final synthetic val$checkCell:[Lorg/telegram/ui/Cells/TextCheckCell;

.field final synthetic val$infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DataAutoDownloadActivity;Landroid/content/Context;ILorg/telegram/ui/Cells/TextInfoPrivacyCell;[Lorg/telegram/ui/Cells/TextCheckCell;[Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    iput p3, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$position:I

    iput-object p4, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iput-object p5, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$checkCell:[Lorg/telegram/ui/Cells/TextCheckCell;

    iput-object p6, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$animatorSet:[Landroid/animation/AnimatorSet;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/MaxFileSizeCell;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected didChangedSizeValue(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$position:I

    iget-object v3, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$700(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v3, Lorg/telegram/messenger/R$string;->AutoDownloadPreloadVideoInfo:I

    int-to-long v4, p1

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    const-string v4, "AutoDownloadPreloadVideoInfo"

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x200000

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$checkCell:[Lorg/telegram/ui/Cells/TextCheckCell;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eq v1, p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$checkCell:[Lorg/telegram/ui/Cells/TextCheckCell;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    iget-object v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$animatorSet:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$animatorSet:[Landroid/animation/AnimatorSet;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$animatorSet:[Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$animatorSet:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$animatorSet:[Landroid/animation/AnimatorSet;

    aget-object p1, p1, v0

    new-instance v1, Lorg/telegram/ui/DataAutoDownloadActivity$3$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DataAutoDownloadActivity$3$1;-><init>(Lorg/telegram/ui/DataAutoDownloadActivity$3;)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$animatorSet:[Landroid/animation/AnimatorSet;

    aget-object p1, p1, v0

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$animatorSet:[Landroid/animation/AnimatorSet;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void
.end method
