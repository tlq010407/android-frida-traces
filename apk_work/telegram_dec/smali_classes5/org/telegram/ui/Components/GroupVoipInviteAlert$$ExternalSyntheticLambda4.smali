.class public final synthetic Lorg/telegram/ui/Components/GroupVoipInviteAlert$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/GroupVoipInviteAlert;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    iput p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    iget v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$$ExternalSyntheticLambda4;->f$1:I

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    check-cast p2, Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->$r8$lambda$97A0f2JrnYbpQIQJPkp6QdfE7Ak(Lorg/telegram/ui/Components/GroupVoipInviteAlert;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I

    move-result p1

    return p1
.end method
