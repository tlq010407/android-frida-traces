.class public final synthetic Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Runnable;

    check-cast p1, Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, p1}, Lorg/telegram/ui/PremiumPreviewFragment;->$r8$lambda$iQ6Pg9gLkBC7JhlQ881XtbHbjqY(Ljava/lang/Runnable;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
