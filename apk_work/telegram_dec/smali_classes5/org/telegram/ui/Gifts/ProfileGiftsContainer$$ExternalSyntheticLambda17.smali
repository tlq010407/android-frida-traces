.class public final synthetic Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback0Return;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda17;->f$1:Landroid/view/View;

    iput-boolean p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda17;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda17;->f$1:Landroid/view/View;

    iget-boolean v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda17;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->$r8$lambda$21Rcy_NVbnMJoM6-VsA1RPFmwy8(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Landroid/view/View;Z)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0
.end method
