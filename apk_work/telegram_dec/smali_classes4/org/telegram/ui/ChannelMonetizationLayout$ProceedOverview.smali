.class public Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelMonetizationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProceedOverview"
.end annotation


# instance fields
.field public amount:J

.field public amount2:J

.field public contains1:Z

.field public contains2:Z

.field public crypto_amount:J

.field public crypto_amount2:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

.field public crypto_currency:Ljava/lang/String;

.field public crypto_currency2:Ljava/lang/String;

.field public currency:Ljava/lang/String;

.field public text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->contains1:Z

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->ofStars(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_amount2:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    return-void
.end method

.method public static as(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;
    .locals 1

    .line 0
    new-instance v0, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    invoke-direct {v0}, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;-><init>()V

    iput-object p0, v0, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_currency:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static as(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;
    .locals 2

    .line 0
    new-instance v0, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    invoke-direct {v0}, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->contains1:Z

    iput-object p0, v0, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_currency:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_currency2:Ljava/lang/String;

    iput-object p2, v0, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->text:Ljava/lang/CharSequence;

    return-object v0
.end method
