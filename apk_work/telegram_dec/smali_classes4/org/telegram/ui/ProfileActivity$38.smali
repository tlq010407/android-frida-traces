.class Lorg/telegram/ui/ProfileActivity$38;
.super Lorg/telegram/ui/Components/ShareAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->processOnClickOrPress(ILandroid/view/View;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public static synthetic $r8$lambda$JBnrRX5l3SXUu_XKQQ_x_TSxsgc(Lorg/telegram/ui/ProfileActivity$38;Landroidx/collection/LongSparseArray;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$38;->lambda$onSend$0(Landroidx/collection/LongSparseArray;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 7

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$38;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$onSend$0(Landroidx/collection/LongSparseArray;I)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$38;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$38;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$NestedFrameLayout;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    move v6, p2

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/BulletinFactory;->createInviteSentBulletin(Landroid/content/Context;Landroid/widget/FrameLayout;IJIII)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method


# virtual methods
.method protected onSend(Landroidx/collection/LongSparseArray;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    :cond_0
    new-instance p3, Lorg/telegram/ui/ProfileActivity$38$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$38$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileActivity$38;Landroidx/collection/LongSparseArray;I)V

    const-wide/16 p1, 0xfa

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
