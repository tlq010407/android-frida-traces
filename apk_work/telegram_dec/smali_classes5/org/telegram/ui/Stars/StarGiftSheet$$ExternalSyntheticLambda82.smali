.class public final synthetic Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

.field public final synthetic f$1:[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

.field public final synthetic f$2:Ljava/lang/Long;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Ljava/lang/Long;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda82;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda82;->f$1:[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda82;->f$2:Ljava/lang/Long;

    iput-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda82;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda82;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda82;->f$1:[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda82;->f$2:Ljava/lang/Long;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda82;->f$3:Ljava/lang/Runnable;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarGiftSheet;->$r8$lambda$3hdOdeo94DD0TZdQLj6a933kq8s(Lorg/telegram/ui/Stars/StarGiftSheet;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Ljava/lang/Long;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
