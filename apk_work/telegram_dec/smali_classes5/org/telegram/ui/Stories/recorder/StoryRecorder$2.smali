.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    invoke-static {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Impl21$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowInsets;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iget v1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Impl21$$ExternalSyntheticApiModelOutline4;->m(Landroid/view/WindowInsets;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Impl21$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsets;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iget p1, p1, Landroidx/core/graphics/Insets;->right:I

    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Impl21$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/WindowInsets;)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Impl21$$ExternalSyntheticApiModelOutline6;->m(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
