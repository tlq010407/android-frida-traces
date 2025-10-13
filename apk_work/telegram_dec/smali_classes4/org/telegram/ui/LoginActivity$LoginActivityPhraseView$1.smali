.class Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$1;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method public static synthetic $r8$lambda$u_0WlR43Mv7HJkeeJ0DilRO6kkg(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$1;->lambda$onTextContextMenuItem$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$1;->val$this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onTextContextMenuItem$0()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$16702(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Z)Z

    return-void
.end method


# virtual methods
.method public onTextContextMenuItem(I)Z
    .locals 3

    const v0, 0x1020022

    if-eq p1, v0, :cond_0

    const v0, 0x1020031

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$16802(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$16702(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Z)Z

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$1;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method
