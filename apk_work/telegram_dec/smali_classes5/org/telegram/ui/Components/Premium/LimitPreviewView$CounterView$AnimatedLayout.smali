.class Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedLayout"
.end annotation


# instance fields
.field public direction:Z

.field progress:F

.field public replace:Z

.field staticLayouts:Ljava/util/ArrayList;

.field final synthetic this$1:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

.field valueAnimator:Landroid/animation/ValueAnimator;

.field x:F


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->this$1:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->staticLayouts:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;-><init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;)V

    return-void
.end method
