.class Lorg/telegram/ui/Cells/AboutLinkCell$3;
.super Lorg/telegram/messenger/browser/Browser$Progress;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/AboutLinkCell;->onLinkClick(Landroid/text/style/ClickableSpan;Landroid/text/Layout;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

.field thisLoading:Lorg/telegram/ui/Components/LoadingDrawable;

.field final synthetic val$layout:Landroid/text/Layout;

.field final synthetic val$pressedLink:Landroid/text/style/ClickableSpan;

.field final synthetic val$yOffset:F


# direct methods
.method public static synthetic $r8$lambda$kreJ2xNgwXZ5aC2Ca76LOUDr-No(Lorg/telegram/ui/Cells/AboutLinkCell$3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/AboutLinkCell$3;->lambda$end$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Cells/AboutLinkCell;Landroid/text/Layout;Landroid/text/style/ClickableSpan;F)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    iput-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->val$layout:Landroid/text/Layout;

    iput-object p3, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->val$pressedLink:Landroid/text/style/ClickableSpan;

    iput p4, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->val$yOffset:F

    invoke-direct {p0}, Lorg/telegram/messenger/browser/Browser$Progress;-><init>()V

    return-void
.end method

.method private synthetic lambda$end$0()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->thisLoading:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$700(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->thisLoading:Lorg/telegram/ui/Components/LoadingDrawable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->removeLoading(Lorg/telegram/ui/Components/LoadingDrawable;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public end(Z)V
    .locals 3

    new-instance v0, Lorg/telegram/ui/Cells/AboutLinkCell$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/AboutLinkCell$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/AboutLinkCell$3;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x15e

    :goto_0
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public init()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$600(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/Components/LoadingDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$700(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$600(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/Components/LoadingDrawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->removeLoading(Lorg/telegram/ui/Components/LoadingDrawable;Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->val$layout:Landroid/text/Layout;

    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->val$pressedLink:Landroid/text/style/ClickableSpan;

    iget v3, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->val$yOffset:F

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->makeLoading(Landroid/text/Layout;Landroid/text/style/CharacterStyle;F)Lorg/telegram/ui/Components/LoadingDrawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->thisLoading:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$602(Lorg/telegram/ui/Cells/AboutLinkCell;Lorg/telegram/ui/Components/LoadingDrawable;)Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_linkSelectBackground:I

    invoke-static {v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$800(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/AboutLinkCell;->processColor(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->thisLoading:Lorg/telegram/ui/Components/LoadingDrawable;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    const v3, 0x3fa66666    # 1.3f

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->thisLoading:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fa00000    # 1.25f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$700(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$3;->thisLoading:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLoading(Lorg/telegram/ui/Components/LoadingDrawable;)V

    return-void
.end method
