.class public final synthetic Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/PasscodeView;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lorg/telegram/ui/Components/MotionBackgroundDrawable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/PasscodeView;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/Components/PasscodeView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda12;->f$1:Z

    iput-object p3, p0, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda12;->f$2:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/Components/PasscodeView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda12;->f$1:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda12;->f$2:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/PasscodeView;->$r8$lambda$ODjCPCt_gcwu6tuWtb2RZAcyXb0(Lorg/telegram/ui/Components/PasscodeView;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    return-void
.end method
