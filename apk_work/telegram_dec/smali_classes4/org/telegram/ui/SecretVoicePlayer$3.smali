.class Lorg/telegram/ui/SecretVoicePlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretVoicePlayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretVoicePlayer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretVoicePlayer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer$3;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {p2, v1}, Landroidx/core/view/WindowInsetsCompat$Impl30$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SecretVoicePlayer$3;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v2}, Lorg/telegram/ui/SecretVoicePlayer;->access$1400(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Insets;)I

    move-result v3

    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/Insets;)I

    move-result v4

    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/Insets;)I

    move-result v5

    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/Insets;)I

    move-result v1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$3;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v1}, Lorg/telegram/ui/SecretVoicePlayer;->access$1400(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsets;)I

    move-result v2

    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsets;)I

    move-result v3

    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowInsets;)I

    move-result v4

    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/WindowInsets;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$3;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v1}, Lorg/telegram/ui/SecretVoicePlayer;->access$1500(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SecretVoicePlayer$3;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v2}, Lorg/telegram/ui/SecretVoicePlayer;->access$1400(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$3;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v3}, Lorg/telegram/ui/SecretVoicePlayer;->access$1400(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lorg/telegram/ui/SecretVoicePlayer$3;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v4}, Lorg/telegram/ui/SecretVoicePlayer;->access$1400(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lorg/telegram/ui/SecretVoicePlayer$3;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v5}, Lorg/telegram/ui/SecretVoicePlayer;->access$1400(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$3;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v1}, Lorg/telegram/ui/SecretVoicePlayer;->access$1600(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    if-lt p1, v0, :cond_1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Impl21$$ExternalSyntheticApiModelOutline6;->m(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
