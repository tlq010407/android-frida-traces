.class public final synthetic Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LocationActivity;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:Landroid/opengl/GLSurfaceView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LocationActivity;Landroid/graphics/Bitmap;Landroid/opengl/GLSurfaceView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda34;->f$0:Lorg/telegram/ui/LocationActivity;

    iput-object p2, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda34;->f$1:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda34;->f$2:Landroid/opengl/GLSurfaceView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda34;->f$0:Lorg/telegram/ui/LocationActivity;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda34;->f$1:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda34;->f$2:Landroid/opengl/GLSurfaceView;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LocationActivity;->$r8$lambda$mVPryM4E6iJG32veaxI4K-4HPwA(Lorg/telegram/ui/LocationActivity;Landroid/graphics/Bitmap;Landroid/opengl/GLSurfaceView;)V

    return-void
.end method
