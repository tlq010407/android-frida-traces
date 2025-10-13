.class Lorg/telegram/ui/Components/ThanosEffect$ToSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ThanosEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToSet"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public doneCallback:Ljava/lang/Runnable;

.field public durationMultiplier:F

.field public final matrix:Landroid/graphics/Matrix;

.field public startCallback:Ljava/lang/Runnable;

.field public final view:Landroid/view/View;

.field public final views:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->durationMultiplier:F

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->view:Landroid/view/View;

    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->views:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->startCallback:Ljava/lang/Runnable;

    iput-object p4, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->doneCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->matrix:Landroid/graphics/Matrix;

    iput-object p2, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->durationMultiplier:F

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->view:Landroid/view/View;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->views:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->startCallback:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->doneCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->bitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->durationMultiplier:F

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->view:Landroid/view/View;

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->views:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->startCallback:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->doneCallback:Ljava/lang/Runnable;

    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->matrix:Landroid/graphics/Matrix;

    return-void
.end method
