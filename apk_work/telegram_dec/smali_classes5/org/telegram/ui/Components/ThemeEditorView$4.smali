.class Lorg/telegram/ui/Components/ThemeEditorView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ThemeEditorView;->animateToBoundsMaybe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ThemeEditorView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$4;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$4;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView;->access$4700(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lorg/telegram/ui/ActionBar/Theme;->saveCurrentTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$4;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ThemeEditorView;->destroy()V

    return-void
.end method
