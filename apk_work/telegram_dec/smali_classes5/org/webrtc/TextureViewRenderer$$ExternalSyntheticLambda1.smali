.class public final synthetic Lorg/webrtc/TextureViewRenderer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/webrtc/TextureViewRenderer;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/TextureViewRenderer;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/TextureViewRenderer$$ExternalSyntheticLambda1;->f$0:Lorg/webrtc/TextureViewRenderer;

    iput p2, p0, Lorg/webrtc/TextureViewRenderer$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lorg/webrtc/TextureViewRenderer$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer$$ExternalSyntheticLambda1;->f$0:Lorg/webrtc/TextureViewRenderer;

    iget v1, p0, Lorg/webrtc/TextureViewRenderer$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lorg/webrtc/TextureViewRenderer$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/webrtc/TextureViewRenderer;->$r8$lambda$yc_DZEyKpurrK-vjSc8Qvugm5-Q(Lorg/webrtc/TextureViewRenderer;II)V

    return-void
.end method
