.class public final synthetic Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda45;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda45;->f$1:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda45;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda45;->f$1:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->$r8$lambda$pW7Gk_bLSgcyRv8Y6DpX4EXbaPI(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
