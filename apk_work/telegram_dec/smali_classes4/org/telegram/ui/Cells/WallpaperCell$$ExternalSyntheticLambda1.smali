.class public final synthetic Lorg/telegram/ui/Cells/WallpaperCell$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Cells/WallpaperCell;

.field public final synthetic f$1:Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Cells/WallpaperCell;Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/WallpaperCell$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Cells/WallpaperCell;

    iput-object p2, p0, Lorg/telegram/ui/Cells/WallpaperCell$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    iput p3, p0, Lorg/telegram/ui/Cells/WallpaperCell$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Cells/WallpaperCell;

    iget-object v1, p0, Lorg/telegram/ui/Cells/WallpaperCell$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    iget v2, p0, Lorg/telegram/ui/Cells/WallpaperCell$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Cells/WallpaperCell;->$r8$lambda$8dpyGrlVl1hGDs0tJ92aFiC74ww(Lorg/telegram/ui/Cells/WallpaperCell;Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
