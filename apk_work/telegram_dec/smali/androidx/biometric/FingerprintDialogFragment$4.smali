.class Landroidx/biometric/FingerprintDialogFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/FingerprintDialogFragment;->connectViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/biometric/FingerprintDialogFragment;


# direct methods
.method constructor <init>(Landroidx/biometric/FingerprintDialogFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/biometric/FingerprintDialogFragment$4;->this$0:Landroidx/biometric/FingerprintDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/CharSequence;)V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment$4;->this$0:Landroidx/biometric/FingerprintDialogFragment;

    iget-object v1, v0, Landroidx/biometric/FingerprintDialogFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Landroidx/biometric/FingerprintDialogFragment;->mResetDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment$4;->this$0:Landroidx/biometric/FingerprintDialogFragment;

    invoke-virtual {v0, p1}, Landroidx/biometric/FingerprintDialogFragment;->updateHelpMessageText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/biometric/FingerprintDialogFragment$4;->this$0:Landroidx/biometric/FingerprintDialogFragment;

    iget-object v0, p1, Landroidx/biometric/FingerprintDialogFragment;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/biometric/FingerprintDialogFragment;->mResetDialogRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/biometric/FingerprintDialogFragment$4;->onChanged(Ljava/lang/CharSequence;)V

    return-void
.end method
