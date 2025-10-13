.class public final synthetic Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

.field public final synthetic f$1:Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

.field public final synthetic f$2:Lorg/telegram/messenger/VideoEditedInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$SendOptions;Lorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    iput-object p3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/messenger/VideoEditedInfo;

    return-void
.end method


# virtual methods
.method public final didSelectDate(ZI)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->$r8$lambda$PvR5gD-p0JGFKYftnV3ZirPNgDU(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$SendOptions;Lorg/telegram/messenger/VideoEditedInfo;ZI)V

    return-void
.end method
