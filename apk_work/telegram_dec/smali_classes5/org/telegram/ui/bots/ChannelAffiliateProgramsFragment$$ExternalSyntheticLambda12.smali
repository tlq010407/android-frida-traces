.class public final synthetic Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/BottomSheet;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->$r8$lambda$RSMiA0pDgQwFzQxvPORVXXWPlFw(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;Landroid/view/View;)V

    return-void
.end method
