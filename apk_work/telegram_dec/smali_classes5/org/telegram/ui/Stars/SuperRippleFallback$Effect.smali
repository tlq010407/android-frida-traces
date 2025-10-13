.class public Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/SuperRippleFallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Effect"
.end annotation


# instance fields
.field public final animator:Landroid/animation/ValueAnimator;

.field public final cx:F

.field public final cy:F

.field public duration:F

.field public final intensity:F

.field public t:F


# direct methods
.method private constructor <init>(FFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;->cx:F

    iput p2, p0, Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;->cy:F

    iput p3, p0, Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;->intensity:F

    iput-object p4, p0, Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;->animator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method synthetic constructor <init>(FFFLandroid/animation/ValueAnimator;Lorg/telegram/ui/Stars/SuperRippleFallback$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;-><init>(FFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
