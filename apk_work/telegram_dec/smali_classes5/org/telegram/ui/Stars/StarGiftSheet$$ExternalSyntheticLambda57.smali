.class public final synthetic Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarGiftSheet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda57;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda57;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->$r8$lambda$ooO3mfWNjFJm1t3YRb-gjhazdwA(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    return-void
.end method
