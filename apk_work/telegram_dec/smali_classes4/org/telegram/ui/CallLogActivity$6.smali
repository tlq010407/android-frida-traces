.class Lorg/telegram/ui/CallLogActivity$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CallLogActivity;->showCallLinkSheet(Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputGroupCall;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$changed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$formatted:Ljava/lang/String;

.field final synthetic val$linkText:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$6;->val$changed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lorg/telegram/ui/CallLogActivity$6;->val$linkText:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iput-object p3, p0, Lorg/telegram/ui/CallLogActivity$6;->val$formatted:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$6;->val$changed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$6;->val$changed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$6;->val$linkText:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$6;->val$formatted:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
