.class Lorg/telegram/ui/TooManyCommunitiesActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/TooManyCommunitiesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$1;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$1;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    iget-object v0, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$1;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    iget-object v0, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$1;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    iget-object v0, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
