.class public final synthetic Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

.field public final synthetic f$2:[Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;[Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda71;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda71;->f$1:Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda71;->f$2:[Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda71;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda71;->f$1:Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda71;->f$2:[Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->$r8$lambda$3-kAxU0JqkHWTuI-6ixi0Vv8KIE(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;[Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;)V

    return-void
.end method
