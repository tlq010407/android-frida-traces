.class public final synthetic Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ThemePreviewActivity;

    return-void
.end method


# virtual methods
.method public final didSetColor()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->$r8$lambda$mxPVSGvN3hJPwWs7u42kcNPav-8(Lorg/telegram/ui/ThemePreviewActivity;)V

    return-void
.end method

.method public synthetic onAnimationProgress(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate$-CC;->$default$onAnimationProgress(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;F)V

    return-void
.end method
