.class Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->setLoading(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

.field final synthetic val$loading:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell$1;->this$0:Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    iput-boolean p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell$1;->val$loading:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell$1;->this$0:Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->access$2300(Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;)Landroid/widget/ImageView;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell$1;->val$loading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
