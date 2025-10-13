.class Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3$1;
.super Lorg/telegram/ui/Cells/ChatActionCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final blurDrawer:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private final textPaint:Landroid/text/TextPaint;

.field final synthetic this$1:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3$1;->this$1:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p2, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object p1, p1, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->val$blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    const/16 p3, 0xa

    invoke-direct {p2, p1, p0, p3}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3$1;->blurDrawer:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3$1;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget p2, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    const/16 p3, 0x10

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 2

    const-string v0, "paintChatActionText"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "paintChatActionText2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "paintChatActionBackground"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3$1;->this$1:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->access$502(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3$1;->blurDrawer:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3$1;->this$1:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->access$600(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->adapt(Z)Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaint(F)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3$1;->textPaint:Landroid/text/TextPaint;

    return-object p1
.end method
