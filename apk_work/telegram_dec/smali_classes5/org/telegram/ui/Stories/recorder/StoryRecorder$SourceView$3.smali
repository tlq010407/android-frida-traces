.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$3;
.super Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromFloatingButton(Landroid/widget/FrameLayout;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$floatingButton:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$vK7p6MauLr-RUA-8ryyHUL09lzo(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$3;->lambda$hide$0(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$3;->val$floatingButton:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;-><init>()V

    return-void
.end method

.method private static synthetic lambda$hide$0(Landroid/widget/FrameLayout;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected hide()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$3;->val$floatingButton:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$3$$ExternalSyntheticLambda0;-><init>(Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected show(Z)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$3;->val$floatingButton:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
