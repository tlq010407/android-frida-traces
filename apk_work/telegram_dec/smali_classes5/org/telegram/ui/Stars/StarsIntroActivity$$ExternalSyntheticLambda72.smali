.class public final synthetic Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;

.field public final synthetic f$2:I

.field public final synthetic f$3:[Lorg/telegram/ui/ActionBar/BottomSheet;

.field public final synthetic f$4:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$5:[Z

.field public final synthetic f$6:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[ZLandroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;->f$0:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;->f$1:Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;

    iput p3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;->f$3:[Lorg/telegram/ui/ActionBar/BottomSheet;

    iput-object p5, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;->f$4:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p6, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;->f$5:[Z

    iput-object p7, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;->f$6:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;->f$0:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;->f$1:Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;

    iget v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;->f$3:[Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;->f$4:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;->f$5:[Z

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;->f$6:Landroid/content/Context;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsIntroActivity;->$r8$lambda$ipbcP8b7a053N5xSEE2QTd_sqIg(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[ZLandroid/content/Context;Landroid/view/View;)V

    return-void
.end method
