.class Lorg/telegram/ui/ThemePreviewActivity$3;
.super Lorg/telegram/ui/ThemePreviewActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity;->showFor(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$chatActivity:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$initialIsDark:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/graphics/Bitmap;ZZLorg/telegram/ui/ChatActivity;Z)V
    .locals 0

    iput-object p5, p0, Lorg/telegram/ui/ThemePreviewActivity$3;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    iput-boolean p6, p0, Lorg/telegram/ui/ThemePreviewActivity$3;->val$initialIsDark:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Ljava/lang/Object;Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method


# virtual methods
.method public onFragmentClosed()V
    .locals 5

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentClosed()V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$3;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentTheme()Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$3;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentWallpaper()Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/ThemePreviewActivity$3;->val$initialIsDark:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;)V

    return-void
.end method
