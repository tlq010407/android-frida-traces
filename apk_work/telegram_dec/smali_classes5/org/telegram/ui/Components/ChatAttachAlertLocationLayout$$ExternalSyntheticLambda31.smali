.class public final synthetic Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

.field public final synthetic f$2:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda31;->f$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda31;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda31;->f$2:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final didSelectDate(ZI)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda31;->f$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda31;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda31;->f$2:Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->$r8$lambda$D_hE4LpjCKxCyPsVktRB_yALP3Q(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;Ljava/lang/Long;ZI)V

    return-void
.end method
