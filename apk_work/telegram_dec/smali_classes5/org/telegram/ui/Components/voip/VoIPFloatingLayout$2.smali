.class Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$2;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->access$100(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->access$100(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->access$100(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)F

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout$3$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Outline;IIIIF)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->access$200(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p2, v1, v1, v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Outline;IIII)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->access$200(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v1, p1

    move v7, v1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout$3$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Outline;IIIIF)V

    :goto_2
    return-void
.end method
