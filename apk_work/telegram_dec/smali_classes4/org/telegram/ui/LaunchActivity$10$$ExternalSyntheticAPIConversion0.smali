.class public abstract synthetic Lorg/telegram/ui/LaunchActivity$10$$ExternalSyntheticAPIConversion0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic m(Landroid/view/WindowManager;Lj$/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-static {p1}, Lj$/util/function/Consumer$Wrapper;->convert(Lj$/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/view/WindowManager;->addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    return-void
.end method
