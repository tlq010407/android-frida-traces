.class Lorg/telegram/ui/Components/PhotoCropView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoCropView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoCropView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoCropView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView$3;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAspectLock(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$3;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setAspectLock(Z)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$3;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    iput-boolean p1, v0, Lorg/telegram/ui/Components/PhotoCropView;->isReset:Z

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoCropView;->access$200(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$3;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoCropView;->access$200(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->onChange(Z)V

    :cond_0
    return-void
.end method

.method public onTapUp()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$3;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoCropView;->access$200(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$3;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoCropView;->access$200(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->onTapUp()V

    :cond_0
    return-void
.end method

.method public onUpdate()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$3;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoCropView;->access$200(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$3;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoCropView;->access$200(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->onUpdate()V

    :cond_0
    return-void
.end method
