.class public final synthetic Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda119;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

.field public final synthetic f$1:Lorg/telegram/messenger/browser/Browser$Progress;

.field public final synthetic f$2:[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda119;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda119;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda119;->f$2:[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda119;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda119;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda119;->f$2:[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->$r8$lambda$M4OQLdykqd0xT7CzHX7cde-qySw(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
