.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda94;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:[Z

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Bitmap;[ZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda94;->f$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda94;->f$1:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda94;->f$2:[Z

    iput-object p4, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda94;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda94;->f$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda94;->f$1:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda94;->f$2:[Z

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda94;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$YqNdV4jzV_Di3J8m_XHtBw408RQ(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Bitmap;[ZLjava/lang/Runnable;)V

    return-void
.end method
