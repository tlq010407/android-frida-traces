.class Lorg/telegram/ui/Components/SwipeGestureSettingsView$1;
.super Lorg/telegram/ui/Components/NumberPicker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SwipeGestureSettingsView;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SwipeGestureSettingsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SwipeGestureSettingsView;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView$1;->this$0:Lorg/telegram/ui/Components/SwipeGestureSettingsView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v0, 0x41f80000    # 31.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v6, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView$1;->this$0:Lorg/telegram/ui/Components/SwipeGestureSettingsView;

    iget-object v1, v1, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->pickerDividersPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v5, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView$1;->this$0:Lorg/telegram/ui/Components/SwipeGestureSettingsView;

    iget-object v7, v2, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->pickerDividersPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v2, v0

    int-to-float v7, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v6, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView$1;->this$0:Lorg/telegram/ui/Components/SwipeGestureSettingsView;

    iget-object v8, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->pickerDividersPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
