.class public final synthetic Lorg/telegram/ui/PhotoViewer$FirstFrameView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer$FirstFrameView;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer$FirstFrameView;ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$FirstFrameView$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$FirstFrameView$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$FirstFrameView$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FirstFrameView$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$FirstFrameView$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$FirstFrameView$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FirstFrameView;->$r8$lambda$5KotuDpBy2njR-QnBlD8CEbDxtk(Lorg/telegram/ui/PhotoViewer$FirstFrameView;ILandroid/graphics/Bitmap;)V

    return-void
.end method
