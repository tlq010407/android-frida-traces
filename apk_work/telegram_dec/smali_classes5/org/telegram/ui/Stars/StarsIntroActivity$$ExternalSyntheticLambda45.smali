.class public final synthetic Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/BottomSheet;

.field public final synthetic f$2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda45;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda45;->f$1:Lorg/telegram/ui/ActionBar/BottomSheet;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda45;->f$2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda45;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda45;->f$1:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda45;->f$2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->$r8$lambda$vpIjOReXh8zTLIY2rdvSW-lDLes(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/view/View;)V

    return-void
.end method
