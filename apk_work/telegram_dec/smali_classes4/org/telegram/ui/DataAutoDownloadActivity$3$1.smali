.class Lorg/telegram/ui/DataAutoDownloadActivity$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DataAutoDownloadActivity$3;->didChangedSizeValue(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DataAutoDownloadActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DataAutoDownloadActivity$3;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3$1;->this$1:Lorg/telegram/ui/DataAutoDownloadActivity$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3$1;->this$1:Lorg/telegram/ui/DataAutoDownloadActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$animatorSet:[Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3$1;->this$1:Lorg/telegram/ui/DataAutoDownloadActivity$3;

    iget-object p1, p1, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$animatorSet:[Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    aput-object v0, p1, v1

    :cond_0
    return-void
.end method
