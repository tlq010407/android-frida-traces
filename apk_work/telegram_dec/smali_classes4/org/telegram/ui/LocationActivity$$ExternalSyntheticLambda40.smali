.class public final synthetic Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LocationActivity;

.field public final synthetic f$1:Landroid/view/ViewGroup;

.field public final synthetic f$2:Landroid/opengl/GLSurfaceView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LocationActivity;Landroid/view/ViewGroup;Landroid/opengl/GLSurfaceView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda40;->f$0:Lorg/telegram/ui/LocationActivity;

    iput-object p2, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda40;->f$1:Landroid/view/ViewGroup;

    iput-object p3, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda40;->f$2:Landroid/opengl/GLSurfaceView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda40;->f$0:Lorg/telegram/ui/LocationActivity;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda40;->f$1:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda40;->f$2:Landroid/opengl/GLSurfaceView;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LocationActivity;->$r8$lambda$rf-gr6wGOgpiAzXAjUdt_UtoXC8(Lorg/telegram/ui/LocationActivity;Landroid/view/ViewGroup;Landroid/opengl/GLSurfaceView;)V

    return-void
.end method
