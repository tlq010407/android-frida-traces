.class Lorg/telegram/ui/bots/BotWebViewSheet$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/BotWebViewSheet;->setBackgroundColor(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/BotWebViewSheet;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$13;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    iput p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$13;->val$color:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$13;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1500(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$13;->val$color:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$13;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$3700(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$13;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2800(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$13;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1400(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$13;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1400(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$13;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1500(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;->setDark(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$13;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1400(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$13;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1500(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$13;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1100(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    return-void
.end method
