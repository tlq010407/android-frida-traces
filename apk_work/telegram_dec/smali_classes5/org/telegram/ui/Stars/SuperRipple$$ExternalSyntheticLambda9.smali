.class public final synthetic Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/SuperRipple;

.field public final synthetic f$1:Lorg/telegram/ui/Stars/SuperRipple$Effect;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/SuperRipple;Lorg/telegram/ui/Stars/SuperRipple$Effect;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/Stars/SuperRipple;

    iput-object p2, p0, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/ui/Stars/SuperRipple$Effect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/Stars/SuperRipple;

    iget-object v1, p0, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/ui/Stars/SuperRipple$Effect;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Stars/SuperRipple;->$r8$lambda$eNVcrL0I2Sm2OIqbhz-sSR7aUI8(Lorg/telegram/ui/Stars/SuperRipple;Lorg/telegram/ui/Stars/SuperRipple$Effect;Landroid/animation/ValueAnimator;)V

    return-void
.end method
