.class Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;
.super Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZ)V

    return-void
.end method


# virtual methods
.method public setTop(IIIIIIZZ)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$12500(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super/range {p0 .. p8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setTop(IIIIIIZZ)V

    return-void
.end method

.method public setTop(IIIZZ)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$12500(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setTop(IIIZZ)V

    return-void
.end method
