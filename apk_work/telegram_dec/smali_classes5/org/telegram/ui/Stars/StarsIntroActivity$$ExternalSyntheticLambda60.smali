.class public final synthetic Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field public final synthetic f$1:Lorg/telegram/ui/Components/EditTextBoldCursor;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/OutlineTextContainerView;Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda60;->f$0:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda60;->f$1:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda60;->f$0:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda60;->f$1:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->$r8$lambda$lFPNdaiqWJQZyV1okrpfshDzca4(Lorg/telegram/ui/Components/OutlineTextContainerView;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/view/View;Z)V

    return-void
.end method
