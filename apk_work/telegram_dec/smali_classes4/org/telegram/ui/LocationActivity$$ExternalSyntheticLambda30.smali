.class public final synthetic Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LocationActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda30;->f$0:Lorg/telegram/ui/LocationActivity;

    iput-object p2, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda30;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    return-void
.end method


# virtual methods
.method public final didSelectDate(ZI)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda30;->f$0:Lorg/telegram/ui/LocationActivity;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda30;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/LocationActivity;->$r8$lambda$iP4lSFKsbvTX-K4NuqsM-VrIG6I(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;ZI)V

    return-void
.end method
