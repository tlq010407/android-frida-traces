.class Lorg/telegram/ui/ChatActivity$23;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method private applyServiceShaderMatrix(IIFF)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->applyServiceShaderMatrix(IIFF)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    :goto_0
    return-void
.end method


# virtual methods
.method public applyServiceShaderMatrix()V
    .locals 4

    .line 0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, p0}, Lorg/telegram/ui/ChatActivity;->getServiceHeight(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, p0}, Lorg/telegram/ui/ChatActivity;->access$23900(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/telegram/ui/ChatActivity$23;->applyServiceShaderMatrix(IIFF)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$23;->applyServiceShaderMatrix()V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->rect:Landroid/graphics/RectF;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    const-string v5, "paintChatActionBackground"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->hasGradientService()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->rect:Landroid/graphics/RectF;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    const-string v4, "paintChatActionBackgroundDarken"

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ChatActivity;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
