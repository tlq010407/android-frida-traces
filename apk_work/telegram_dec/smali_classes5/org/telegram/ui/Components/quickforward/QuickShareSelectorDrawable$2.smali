.class Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$2;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;)Ljava/lang/Float;
    .locals 0

    .line 0
    invoke-static {p1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->access$400(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$2;->get(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 0
    check-cast p1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$2;->setValue(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;F)V

    return-void
.end method

.method public setValue(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;F)V
    .locals 0

    .line 0
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->access$402(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;F)F

    invoke-static {p1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->access$500(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
