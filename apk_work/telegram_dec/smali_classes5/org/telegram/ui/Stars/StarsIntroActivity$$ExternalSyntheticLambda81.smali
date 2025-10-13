.class public final synthetic Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback2;

.field public final synthetic f$2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field public final synthetic f$3:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field public final synthetic f$4:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field public final synthetic f$5:J

.field public final synthetic f$6:[Lorg/telegram/ui/ActionBar/BottomSheet;


# direct methods
.method public synthetic constructor <init>([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Components/OutlineTextContainerView;J[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;->f$0:[Z

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;->f$1:Lorg/telegram/messenger/Utilities$Callback2;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;->f$2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iput-object p4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;->f$3:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object p5, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;->f$4:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iput-wide p6, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;->f$5:J

    iput-object p8, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;->f$6:[Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 11

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;->f$0:[Z

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;->f$1:Lorg/telegram/messenger/Utilities$Callback2;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;->f$2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;->f$3:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;->f$4:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-wide v5, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;->f$5:J

    iget-object v7, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;->f$6:[Lorg/telegram/ui/ActionBar/BottomSheet;

    move-object v8, p1

    move v9, p2

    move-object v10, p3

    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/Stars/StarsIntroActivity;->$r8$lambda$ypYcT9B8YdOmQlO4X3-KW9loqHk([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Components/OutlineTextContainerView;J[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
