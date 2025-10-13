.class Lorg/telegram/messenger/AndroidUtilities$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/AndroidUtilities;->applySpring(Landroid/animation/Animator;FFFJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$omega:D

.field final synthetic val$zeta:D


# direct methods
.method constructor <init>(DD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-wide p1, p0, Lorg/telegram/messenger/AndroidUtilities$15;->val$zeta:D

    iput-wide p3, p0, Lorg/telegram/messenger/AndroidUtilities$15;->val$omega:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 14

    iget-wide v0, p0, Lorg/telegram/messenger/AndroidUtilities$15;->val$zeta:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v4, p0, Lorg/telegram/messenger/AndroidUtilities$15;->val$omega:D

    mul-double v0, v0, v0

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double v4, v4, v0

    iget-wide v0, p0, Lorg/telegram/messenger/AndroidUtilities$15;->val$zeta:D

    neg-double v0, v0

    iget-wide v6, p0, Lorg/telegram/messenger/AndroidUtilities$15;->val$omega:D

    mul-double v0, v0, v6

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/messenger/AndroidUtilities$15;->val$zeta:D

    iget-wide v12, p0, Lorg/telegram/messenger/AndroidUtilities$15;->val$omega:D

    mul-double v10, v10, v12

    div-double/2addr v10, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v10, v10, v4

    add-double/2addr v8, v10

    mul-double v0, v0, v8

    sub-double/2addr v2, v0

    :goto_0
    double-to-float p1, v2

    return p1

    :cond_0
    neg-double v0, v0

    iget-wide v4, p0, Lorg/telegram/messenger/AndroidUtilities$15;->val$omega:D

    mul-double v0, v0, v4

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    add-double v4, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double v4, v4, v0

    sub-double/2addr v2, v4

    goto :goto_0
.end method
