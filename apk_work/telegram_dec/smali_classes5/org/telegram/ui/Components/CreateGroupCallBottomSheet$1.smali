.class Lorg/telegram/ui/Components/CreateGroupCallBottomSheet$1;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;JLorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet$1;->this$0:Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet$1;->this$0:Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->access$000(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet$1;->this$0:Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->access$100(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet$1;->this$0:Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->access$200(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
