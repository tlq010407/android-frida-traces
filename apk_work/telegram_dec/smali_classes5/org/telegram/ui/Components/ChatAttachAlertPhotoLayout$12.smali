.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

.field final synthetic val$currentImage:Landroid/view/View;

.field final synthetic val$nextImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$12;->val$currentImage:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$12;->val$nextImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$6502(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$12;->val$currentImage:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$12;->val$nextImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method
