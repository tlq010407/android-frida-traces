.class public final synthetic Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Gifts/SendGiftSheet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Gifts/SendGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    check-cast p1, Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, p1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->$r8$lambda$CqHN52cAUO2LkQlZAyc2gtKKXkg(Lorg/telegram/ui/Gifts/SendGiftSheet;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
