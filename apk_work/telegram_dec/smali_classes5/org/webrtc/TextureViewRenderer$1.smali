.class Lorg/webrtc/TextureViewRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/TextureViewRenderer;->setBackgroundRenderer(Landroid/view/TextureView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/TextureViewRenderer;


# direct methods
.method constructor <init>(Lorg/webrtc/TextureViewRenderer;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/TextureViewRenderer$1;->this$0:Lorg/webrtc/TextureViewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p2, p0, Lorg/webrtc/TextureViewRenderer$1;->this$0:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p2, p1}, Lorg/webrtc/TextureViewRenderer;->createBackgroundSurface(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    iget-object p1, p0, Lorg/webrtc/TextureViewRenderer$1;->this$0:Lorg/webrtc/TextureViewRenderer;

    invoke-static {p1}, Lorg/webrtc/TextureViewRenderer;->access$000(Lorg/webrtc/TextureViewRenderer;)Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/webrtc/EglRenderer;->releaseEglSurface(Ljava/lang/Runnable;Z)V

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
