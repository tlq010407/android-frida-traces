.class public final synthetic Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PasscodeActivity;

.field public final synthetic f$1:Lorg/telegram/ui/Components/NumberPicker;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PasscodeActivity;Lorg/telegram/ui/Components/NumberPicker;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/ui/PasscodeActivity;

    iput-object p2, p0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda18;->f$1:Lorg/telegram/ui/Components/NumberPicker;

    iput p3, p0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda18;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/ui/PasscodeActivity;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda18;->f$1:Lorg/telegram/ui/Components/NumberPicker;

    iget v2, p0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda18;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->$r8$lambda$MxwQ1UkgFWAW5ZRJ7139VG_wKh0(Lorg/telegram/ui/PasscodeActivity;Lorg/telegram/ui/Components/NumberPicker;ILorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
