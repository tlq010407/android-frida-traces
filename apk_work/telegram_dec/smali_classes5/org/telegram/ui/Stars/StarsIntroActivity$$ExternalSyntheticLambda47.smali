.class public final synthetic Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda47;->f$0:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda47;->f$0:Landroid/widget/TextView;

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->$r8$lambda$nohqGoANQgEG_-B5qbGgr_3XXaM(Landroid/widget/TextView;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V

    return-void
.end method
