.class public final synthetic Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    check-cast p1, Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, p1}, Lorg/telegram/ui/LoginActivity$LoginPayView;->$r8$lambda$VmBcha3ffva3dNAg1bONCwKTYZ8(Lorg/telegram/messenger/Utilities$Callback;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
