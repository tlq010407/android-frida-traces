.class Lorg/telegram/ui/Stories/HwAvatarsImageView;
.super Lorg/telegram/ui/Components/AvatarsImageView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 0
    sget-boolean v0, Lorg/telegram/ui/Stories/HwFrameLayout;->hwEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/Stories/HwFrameLayout;->hwViews:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .line 0
    sget-boolean v0, Lorg/telegram/ui/Stories/HwFrameLayout;->hwEnabled:Z

    if-eqz v0, :cond_0

    sget-object p1, Lorg/telegram/ui/Stories/HwFrameLayout;->hwViews:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method
