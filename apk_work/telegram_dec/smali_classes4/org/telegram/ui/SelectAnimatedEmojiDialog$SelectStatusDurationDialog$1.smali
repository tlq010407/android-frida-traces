.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Ljava/lang/Runnable;Landroid/view/View;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

.field final synthetic val$this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/content/Context;Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iput-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->val$this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$11600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$11700(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$11600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)[I

    move-result-object p2

    const/4 p3, 0x0

    aget p2, p2, p3

    iget-object p4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$11600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)[I

    move-result-object p4

    const/4 p5, 0x1

    aget p4, p4, p5

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$11600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)[I

    move-result-object v0

    aget p3, v0, p3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr p3, v0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$11600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)[I

    move-result-object v0

    aget p5, v0, p5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$11800(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$11700(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$10300(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$10700(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    return-void
.end method
