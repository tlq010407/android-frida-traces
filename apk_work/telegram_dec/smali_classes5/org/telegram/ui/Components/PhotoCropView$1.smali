.class Lorg/telegram/ui/Components/PhotoCropView$1;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PhotoCropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoCropView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoCropView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView$1;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/Components/PhotoCropView;)Ljava/lang/Float;
    .locals 0

    .line 0
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView$1;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoCropView;->access$000(Lorg/telegram/ui/Components/PhotoCropView;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PhotoCropView$1;->get(Lorg/telegram/ui/Components/PhotoCropView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 0
    check-cast p1, Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/PhotoCropView$1;->setValue(Lorg/telegram/ui/Components/PhotoCropView;F)V

    return-void
.end method

.method public setValue(Lorg/telegram/ui/Components/PhotoCropView;F)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$1;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/PhotoCropView;->access$002(Lorg/telegram/ui/Components/PhotoCropView;F)F

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoCropView;->invalidate()V

    return-void
.end method
