.class public final synthetic Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatEditActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/ChatEditActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/ChatEditActivity;

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatEditActivity;->$r8$lambda$qLEq78a9gqMz7X3Dlm-Y6PMHRQo(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method
