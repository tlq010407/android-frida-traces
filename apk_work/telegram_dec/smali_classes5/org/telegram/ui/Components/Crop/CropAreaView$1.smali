.class Lorg/telegram/ui/Components/Crop/CropAreaView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Crop/CropAreaView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Crop/CropAreaView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView$1;->this$0:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView$1;->this$0:Lorg/telegram/ui/Components/Crop/CropAreaView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->access$002(Lorg/telegram/ui/Components/Crop/CropAreaView;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
