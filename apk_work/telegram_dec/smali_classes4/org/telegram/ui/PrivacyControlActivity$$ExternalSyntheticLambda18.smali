.class public final synthetic Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PrivacyControlActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;

.field public final synthetic f$2:Lorg/telegram/tgnet/tl/TL_account$setGlobalPrivacySettings;

.field public final synthetic f$3:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;Lorg/telegram/tgnet/tl/TL_account$setGlobalPrivacySettings;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/ui/PrivacyControlActivity;

    iput-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda18;->f$1:Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;

    iput-object p3, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda18;->f$2:Lorg/telegram/tgnet/tl/TL_account$setGlobalPrivacySettings;

    iput-object p4, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda18;->f$3:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/ui/PrivacyControlActivity;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda18;->f$1:Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;

    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda18;->f$2:Lorg/telegram/tgnet/tl/TL_account$setGlobalPrivacySettings;

    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda18;->f$3:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/PrivacyControlActivity;->$r8$lambda$jDuWYXiikn2iCqeiBUFWQnjVZes(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;Lorg/telegram/tgnet/tl/TL_account$setGlobalPrivacySettings;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
