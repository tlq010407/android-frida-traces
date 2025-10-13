.class public final synthetic Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PrivacyControlActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PrivacyControlActivity;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/PrivacyControlActivity;

    iput p2, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda10;->f$1:I

    iput-boolean p3, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda10;->f$2:Z

    return-void
.end method


# virtual methods
.method public final didSelectUsers(ZZLjava/util/ArrayList;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/PrivacyControlActivity;

    iget v1, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda10;->f$1:I

    iget-boolean v2, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda10;->f$2:Z

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/PrivacyControlActivity;->$r8$lambda$ZKI-5f00qZPe0vv6KYbP_Jj-yKU(Lorg/telegram/ui/PrivacyControlActivity;IZZZLjava/util/ArrayList;)V

    return-void
.end method
