.class Lorg/telegram/ui/Stories/recorder/CropEditor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/CropEditor;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/CropEditor;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$3;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aspectRatioPressed()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$3;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CropEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->showAspectRatioDialog()V

    return-void
.end method

.method public mirror()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$3;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CropEditor;->contentView:Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$3;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CropEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->mirror()Z

    move-result v0

    return v0
.end method

.method public onChange(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$3;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CropEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropView;->setRotation(F)V

    return-void
.end method

.method public onEnd(F)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$3;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CropEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Crop/CropView;->onRotationEnded()V

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$3;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CropEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->onRotationBegan()V

    return-void
.end method

.method public rotate90Pressed()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$3;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CropEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView;->rotate(F)Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$3;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/CropEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Crop/CropView;->maximize(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$3;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/CropEditor;->contentView:Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return v0
.end method
