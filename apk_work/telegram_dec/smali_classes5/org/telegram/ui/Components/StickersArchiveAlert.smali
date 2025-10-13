.class public Lorg/telegram/ui/Components/StickersArchiveAlert;
.super Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;
    }
.end annotation


# instance fields
.field private currentType:I

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private stickerSets:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$HvtB8gRncxhFUS-9Z1QQczx7-F8(Lorg/telegram/ui/Components/StickersArchiveAlert;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersArchiveAlert;->lambda$new$1(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$snTsqwG1WYuQ92Ky4abb27Y5hI4(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/StickersArchiveAlert;->lambda$new$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V
    .locals 7

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iput v3, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->currentType:I

    sget v2, Lorg/telegram/messenger/R$string;->ArchivedMasksAlertTitle:I

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    :cond_0
    iput v0, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->currentType:I

    sget v2, Lorg/telegram/messenger/R$string;->ArchivedStickersAlertTitle:I

    goto :goto_0

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->stickerSets:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lorg/telegram/ui/Components/LayoutHelper;->getAbsoluteGravityStart()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p3, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v2, 0x41b80000    # 23.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p3, v4, v6, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->ArchivedMasksAlertInfo:I

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->ArchivedStickersAlertInfo:I

    goto :goto_2

    :goto_3
    const/4 v1, -0x2

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;-><init>(Lorg/telegram/ui/Components/StickersArchiveAlert;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p3, p1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    const p1, -0xa0909

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Lorg/telegram/messenger/R$string;->Close:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/StickersArchiveAlert$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lorg/telegram/ui/Components/StickersArchiveAlert$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_2

    sget p1, Lorg/telegram/messenger/R$string;->Settings:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/StickersArchiveAlert$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/StickersArchiveAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/StickersArchiveAlert;)V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/StickersArchiveAlert;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->stickerSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method private static synthetic lambda$new$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/telegram/ui/StickersActivity;

    iget v1, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->currentType:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method
