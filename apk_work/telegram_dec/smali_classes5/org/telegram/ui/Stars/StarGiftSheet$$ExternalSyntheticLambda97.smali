.class public final synthetic Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

.field public final synthetic f$1:Lorg/telegram/messenger/browser/Browser$Progress;

.field public final synthetic f$2:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda97;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda97;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda97;->f$2:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda97;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda97;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda97;->f$2:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->$r8$lambda$jlAeVxE44m3OoR1l1Zv7CTWYIe4(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    return-void
.end method
