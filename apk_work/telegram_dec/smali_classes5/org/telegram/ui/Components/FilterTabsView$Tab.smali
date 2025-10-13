.class public Lorg/telegram/ui/Components/FilterTabsView$Tab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FilterTabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Tab"
.end annotation


# instance fields
.field public counter:I

.field public id:I

.field public isDefault:Z

.field public isLocked:Z

.field public noanimate:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/FilterTabsView;

.field public title:Ljava/lang/CharSequence;

.field public titleWidth:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/FilterTabsView;ILjava/lang/CharSequence;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    iput-object p3, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    iput-boolean p4, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    return-void
.end method


# virtual methods
.method public getWidth(Z)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->measureCorrectly(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$000(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->getTabCounter(I)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz p1, :cond_2

    iput v2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    :cond_2
    :goto_0
    if-lez v2, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "%d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$100(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p1, v0

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, p1

    :cond_3
    const/high16 p1, 0x42200000    # 40.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public setTitle(Ljava/lang/String;Ljava/util/ArrayList;Z)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object p1, p1, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    const/4 p1, 0x1

    return p1
.end method
