.class public final synthetic Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/GenericProvider;


# instance fields
.field public final synthetic f$0:Landroidx/dynamicanimation/animation/FloatValueHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda14;->f$0:Landroidx/dynamicanimation/animation/FloatValueHolder;

    return-void
.end method


# virtual methods
.method public final provide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda14;->f$0:Landroidx/dynamicanimation/animation/FloatValueHolder;

    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PasscodeView;->$r8$lambda$vudPI5KWfxjpDdhLX42Lk1slYC0(Landroidx/dynamicanimation/animation/FloatValueHolder;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
