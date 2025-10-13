.class Lorg/telegram/messenger/AndroidUtilities$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/AndroidUtilities;->applySpring(Landroid/animation/Animator;DDDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$A:D

.field final synthetic val$B:D

.field final synthetic val$w0:D

.field final synthetic val$wd:D

.field final synthetic val$zeta:D


# direct methods
.method constructor <init>(DDDDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-wide p1, p0, Lorg/telegram/messenger/AndroidUtilities$14;->val$zeta:D

    iput-wide p3, p0, Lorg/telegram/messenger/AndroidUtilities$14;->val$w0:D

    iput-wide p5, p0, Lorg/telegram/messenger/AndroidUtilities$14;->val$A:D

    iput-wide p7, p0, Lorg/telegram/messenger/AndroidUtilities$14;->val$wd:D

    iput-wide p9, p0, Lorg/telegram/messenger/AndroidUtilities$14;->val$B:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 12

    iget-wide v0, p0, Lorg/telegram/messenger/AndroidUtilities$14;->val$zeta:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    neg-float v4, p1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v0

    iget-wide v0, p0, Lorg/telegram/messenger/AndroidUtilities$14;->val$w0:D

    mul-double v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    iget-wide v4, p0, Lorg/telegram/messenger/AndroidUtilities$14;->val$A:D

    iget-wide v6, p0, Lorg/telegram/messenger/AndroidUtilities$14;->val$wd:D

    float-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    iget-wide v6, p0, Lorg/telegram/messenger/AndroidUtilities$14;->val$B:D

    iget-wide v10, p0, Lorg/telegram/messenger/AndroidUtilities$14;->val$wd:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    :goto_0
    mul-double v0, v0, v4

    sub-double/2addr v2, v0

    double-to-float p1, v2

    return p1

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/AndroidUtilities$14;->val$A:D

    iget-wide v4, p0, Lorg/telegram/messenger/AndroidUtilities$14;->val$B:D

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    add-double/2addr v0, v4

    neg-float p1, p1

    float-to-double v4, p1

    iget-wide v6, p0, Lorg/telegram/messenger/AndroidUtilities$14;->val$w0:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    goto :goto_0
.end method
