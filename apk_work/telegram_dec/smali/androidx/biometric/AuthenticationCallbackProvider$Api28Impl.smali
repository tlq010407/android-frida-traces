.class abstract Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/AuthenticationCallbackProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api28Impl"
.end annotation


# direct methods
.method static createCallback(Landroidx/biometric/AuthenticationCallbackProvider$Listener;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .locals 1

    new-instance v0, Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl$1;

    invoke-direct {v0, p0}, Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl$1;-><init>(Landroidx/biometric/AuthenticationCallbackProvider$Listener;)V

    return-object v0
.end method
