.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda112;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer;ZIZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda112;->f$0:Lorg/telegram/ui/PhotoViewer;

    iput-boolean p2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda112;->f$1:Z

    iput p3, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda112;->f$2:I

    iput-boolean p4, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda112;->f$3:Z

    iput-boolean p5, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda112;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda112;->f$0:Lorg/telegram/ui/PhotoViewer;

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda112;->f$1:Z

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda112;->f$2:I

    iget-boolean v3, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda112;->f$3:Z

    iget-boolean v4, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda112;->f$4:Z

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$nJ5-h_aba2j6eLpXpLWA2R7jFKc(Lorg/telegram/ui/PhotoViewer;ZIZZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
