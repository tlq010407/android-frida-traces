.class Lorg/telegram/ui/ThemePreviewActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity;->showFor(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field forceDark:Z

.field final synthetic val$chatActivity:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$initialIsDark:Z


# direct methods
.method constructor <init>(ZLorg/telegram/ui/ChatActivity;)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity$4;->val$initialIsDark:Z

    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$4;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity$4;->forceDark:Z

    return-void
.end method


# virtual methods
.method public isDark()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity$4;->forceDark:Z

    return v0
.end method

.method public supportsAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public switchDayNight(Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity$4;->forceDark:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity$4;->forceDark:Z

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$4;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentTheme()Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$4;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentWallpaper()Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/ThemePreviewActivity$4;->forceDark:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;)V

    return-void
.end method
