.class public final synthetic Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/LocationController$SharingLocationInfo;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iput-wide p2, p0, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda16;->f$1:J

    return-void
.end method


# virtual methods
.method public final didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget-wide v1, p0, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda16;->f$1:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/FragmentContextView;->$r8$lambda$Yo0xWG_PRAE48MsEIrnguDACK-s(Lorg/telegram/messenger/LocationController$SharingLocationInfo;JLorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    return-void
.end method
