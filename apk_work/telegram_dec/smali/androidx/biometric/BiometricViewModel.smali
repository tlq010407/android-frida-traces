.class public Landroidx/biometric/BiometricViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricViewModel$NegativeButtonListener;,
        Landroidx/biometric/BiometricViewModel$CallbackListener;,
        Landroidx/biometric/BiometricViewModel$DefaultExecutor;
    }
.end annotation


# instance fields
.field private mAuthenticationCallbackProvider:Landroidx/biometric/AuthenticationCallbackProvider;

.field private mAuthenticationError:Landroidx/lifecycle/MutableLiveData;

.field private mAuthenticationHelpMessage:Landroidx/lifecycle/MutableLiveData;

.field private mAuthenticationResult:Landroidx/lifecycle/MutableLiveData;

.field private mCanceledFrom:I

.field private mCancellationSignalProvider:Landroidx/biometric/CancellationSignalProvider;

.field private mClientCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

.field private mClientExecutor:Ljava/util/concurrent/Executor;

.field private mCryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

.field private mFingerprintDialogHelpMessage:Landroidx/lifecycle/MutableLiveData;

.field private mFingerprintDialogPreviousState:I

.field private mFingerprintDialogState:Landroidx/lifecycle/MutableLiveData;

.field private mIsAuthenticationFailurePending:Landroidx/lifecycle/MutableLiveData;

.field private mIsAwaitingResult:Z

.field private mIsConfirmingDeviceCredential:Z

.field private mIsDelayingPrompt:Z

.field private mIsFingerprintDialogCancelPending:Landroidx/lifecycle/MutableLiveData;

.field private mIsFingerprintDialogDismissedInstantly:Z

.field private mIsIgnoringCancel:Z

.field private mIsNegativeButtonPressPending:Landroidx/lifecycle/MutableLiveData;

.field private mIsPromptShowing:Z

.field private mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNegativeButtonTextOverride:Ljava/lang/CharSequence;

.field private mPromptInfo:Landroidx/biometric/BiometricPrompt$PromptInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/biometric/BiometricViewModel;->mCanceledFrom:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/biometric/BiometricViewModel;->mIsFingerprintDialogDismissedInstantly:Z

    iput v0, p0, Landroidx/biometric/BiometricViewModel;->mFingerprintDialogPreviousState:I

    return-void
.end method

.method private static updateValue(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method getAllowedAuthenticators()I
    .locals 2

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mPromptInfo:Landroidx/biometric/BiometricPrompt$PromptInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/biometric/BiometricViewModel;->mCryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-static {v0, v1}, Landroidx/biometric/AuthenticatorUtils;->getConsolidatedAuthenticators(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getAuthenticationCallbackProvider()Landroidx/biometric/AuthenticationCallbackProvider;
    .locals 2

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationCallbackProvider:Landroidx/biometric/AuthenticationCallbackProvider;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/biometric/AuthenticationCallbackProvider;

    new-instance v1, Landroidx/biometric/BiometricViewModel$CallbackListener;

    invoke-direct {v1, p0}, Landroidx/biometric/BiometricViewModel$CallbackListener;-><init>(Landroidx/biometric/BiometricViewModel;)V

    invoke-direct {v0, v1}, Landroidx/biometric/AuthenticationCallbackProvider;-><init>(Landroidx/biometric/AuthenticationCallbackProvider$Listener;)V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationCallbackProvider:Landroidx/biometric/AuthenticationCallbackProvider;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationCallbackProvider:Landroidx/biometric/AuthenticationCallbackProvider;

    return-object v0
.end method

.method getAuthenticationError()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationError:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationError:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationError:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method getAuthenticationHelpMessage()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationHelpMessage:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationHelpMessage:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationHelpMessage:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method getAuthenticationResult()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationResult:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationResult:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationResult:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method getCanceledFrom()I
    .locals 1

    iget v0, p0, Landroidx/biometric/BiometricViewModel;->mCanceledFrom:I

    return v0
.end method

.method getCancellationSignalProvider()Landroidx/biometric/CancellationSignalProvider;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mCancellationSignalProvider:Landroidx/biometric/CancellationSignalProvider;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/biometric/CancellationSignalProvider;

    invoke-direct {v0}, Landroidx/biometric/CancellationSignalProvider;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mCancellationSignalProvider:Landroidx/biometric/CancellationSignalProvider;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mCancellationSignalProvider:Landroidx/biometric/CancellationSignalProvider;

    return-object v0
.end method

.method getClientCallback()Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mClientCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/biometric/BiometricViewModel$1;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricViewModel$1;-><init>(Landroidx/biometric/BiometricViewModel;)V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mClientCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mClientCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    return-object v0
.end method

.method getClientExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mClientExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/biometric/BiometricViewModel$DefaultExecutor;

    invoke-direct {v0}, Landroidx/biometric/BiometricViewModel$DefaultExecutor;-><init>()V

    :goto_0
    return-object v0
.end method

.method getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mCryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

    return-object v0
.end method

.method getDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mPromptInfo:Landroidx/biometric/BiometricPrompt$PromptInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getFingerprintDialogHelpMessage()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mFingerprintDialogHelpMessage:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mFingerprintDialogHelpMessage:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mFingerprintDialogHelpMessage:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method getFingerprintDialogPreviousState()I
    .locals 1

    iget v0, p0, Landroidx/biometric/BiometricViewModel;->mFingerprintDialogPreviousState:I

    return v0
.end method

.method getFingerprintDialogState()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mFingerprintDialogState:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mFingerprintDialogState:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mFingerprintDialogState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method getInferredAuthenticationResultType()I
    .locals 2

    invoke-virtual {p0}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    move-result v0

    invoke-static {v0}, Landroidx/biometric/AuthenticatorUtils;->isSomeBiometricAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method getNegativeButtonListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/biometric/BiometricViewModel$NegativeButtonListener;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricViewModel$NegativeButtonListener;-><init>(Landroidx/biometric/BiometricViewModel;)V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mNegativeButtonTextOverride:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mPromptInfo:Landroidx/biometric/BiometricPrompt$PromptInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mPromptInfo:Landroidx/biometric/BiometricPrompt$PromptInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mPromptInfo:Landroidx/biometric/BiometricPrompt$PromptInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method isAuthenticationFailurePending()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mIsAuthenticationFailurePending:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mIsAuthenticationFailurePending:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mIsAuthenticationFailurePending:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method isAwaitingResult()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/biometric/BiometricViewModel;->mIsAwaitingResult:Z

    return v0
.end method

.method isConfirmationRequired()Z
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mPromptInfo:Landroidx/biometric/BiometricPrompt$PromptInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo;->isConfirmationRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isConfirmingDeviceCredential()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/biometric/BiometricViewModel;->mIsConfirmingDeviceCredential:Z

    return v0
.end method

.method isDelayingPrompt()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/biometric/BiometricViewModel;->mIsDelayingPrompt:Z

    return v0
.end method

.method isFingerprintDialogCancelPending()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mIsFingerprintDialogCancelPending:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mIsFingerprintDialogCancelPending:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mIsFingerprintDialogCancelPending:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method isFingerprintDialogDismissedInstantly()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/biometric/BiometricViewModel;->mIsFingerprintDialogDismissedInstantly:Z

    return v0
.end method

.method isIgnoringCancel()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/biometric/BiometricViewModel;->mIsIgnoringCancel:Z

    return v0
.end method

.method isNegativeButtonPressPending()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mIsNegativeButtonPressPending:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mIsNegativeButtonPressPending:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mIsNegativeButtonPressPending:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method isPromptShowing()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/biometric/BiometricViewModel;->mIsPromptShowing:Z

    return v0
.end method

.method resetClientCallback()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mClientCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method setAuthenticationError(Landroidx/biometric/BiometricErrorData;)V
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationError:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationError:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationError:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0, p1}, Landroidx/biometric/BiometricViewModel;->updateValue(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    return-void
.end method

.method setAuthenticationFailurePending(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mIsAuthenticationFailurePending:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mIsAuthenticationFailurePending:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mIsAuthenticationFailurePending:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/biometric/BiometricViewModel;->updateValue(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    return-void
.end method

.method setAuthenticationHelpMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationHelpMessage:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationHelpMessage:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationHelpMessage:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0, p1}, Landroidx/biometric/BiometricViewModel;->updateValue(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    return-void
.end method

.method setAuthenticationResult(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationResult:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationResult:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationResult:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0, p1}, Landroidx/biometric/BiometricViewModel;->updateValue(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    return-void
.end method

.method setAwaitingResult(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/biometric/BiometricViewModel;->mIsAwaitingResult:Z

    return-void
.end method

.method setCanceledFrom(I)V
    .locals 0

    iput p1, p0, Landroidx/biometric/BiometricViewModel;->mCanceledFrom:I

    return-void
.end method

.method setClientCallback(Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 0

    iput-object p1, p0, Landroidx/biometric/BiometricViewModel;->mClientCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method setClientExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroidx/biometric/BiometricViewModel;->mClientExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method setConfirmingDeviceCredential(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/biometric/BiometricViewModel;->mIsConfirmingDeviceCredential:Z

    return-void
.end method

.method setCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 0

    iput-object p1, p0, Landroidx/biometric/BiometricViewModel;->mCryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

    return-void
.end method

.method setDelayingPrompt(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/biometric/BiometricViewModel;->mIsDelayingPrompt:Z

    return-void
.end method

.method setFingerprintDialogCancelPending(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mIsFingerprintDialogCancelPending:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mIsFingerprintDialogCancelPending:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mIsFingerprintDialogCancelPending:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/biometric/BiometricViewModel;->updateValue(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    return-void
.end method

.method setFingerprintDialogDismissedInstantly(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/biometric/BiometricViewModel;->mIsFingerprintDialogDismissedInstantly:Z

    return-void
.end method

.method setFingerprintDialogHelpMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mFingerprintDialogHelpMessage:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mFingerprintDialogHelpMessage:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mFingerprintDialogHelpMessage:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0, p1}, Landroidx/biometric/BiometricViewModel;->updateValue(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    return-void
.end method

.method setFingerprintDialogPreviousState(I)V
    .locals 0

    iput p1, p0, Landroidx/biometric/BiometricViewModel;->mFingerprintDialogPreviousState:I

    return-void
.end method

.method setFingerprintDialogState(I)V
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mFingerprintDialogState:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mFingerprintDialogState:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mFingerprintDialogState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/biometric/BiometricViewModel;->updateValue(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    return-void
.end method

.method setIgnoringCancel(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/biometric/BiometricViewModel;->mIsIgnoringCancel:Z

    return-void
.end method

.method setNegativeButtonPressPending(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mIsNegativeButtonPressPending:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mIsNegativeButtonPressPending:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mIsNegativeButtonPressPending:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/biometric/BiometricViewModel;->updateValue(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    return-void
.end method

.method setNegativeButtonTextOverride(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/biometric/BiometricViewModel;->mNegativeButtonTextOverride:Ljava/lang/CharSequence;

    return-void
.end method

.method setPromptInfo(Landroidx/biometric/BiometricPrompt$PromptInfo;)V
    .locals 0

    iput-object p1, p0, Landroidx/biometric/BiometricViewModel;->mPromptInfo:Landroidx/biometric/BiometricPrompt$PromptInfo;

    return-void
.end method

.method setPromptShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/biometric/BiometricViewModel;->mIsPromptShowing:Z

    return-void
.end method
