.class Lorg/telegram/ui/ThemePreviewActivity$1;
.super Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$1;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    return-void
.end method


# virtual methods
.method public isDark()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$1;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->isDark()Z

    move-result v0

    return v0
.end method
