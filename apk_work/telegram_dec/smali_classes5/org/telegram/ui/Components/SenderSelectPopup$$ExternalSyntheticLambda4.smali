.class public final synthetic Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/SenderSelectPopup;

.field public final synthetic f$1:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/SenderSelectPopup;Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Components/SenderSelectPopup;

    iput-object p2, p0, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda4;->f$1:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Components/SenderSelectPopup;

    iget-object v1, p0, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda4;->f$1:Landroidx/dynamicanimation/animation/SpringAnimation;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/SenderSelectPopup;->$r8$lambda$0CMYRGJDKKJJNmXV0oDI7fwmakE(Lorg/telegram/ui/Components/SenderSelectPopup;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method
