.class public Lorg/telegram/ui/Components/PhonebookShareAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;,
        Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;,
        Lorg/telegram/ui/Components/PhonebookShareAlert$UserCell;
    }
.end annotation


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actionBarAnimation:Landroid/animation/AnimatorSet;

.field private actionBarShadow:Landroid/view/View;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private buttonTextView:Landroid/widget/TextView;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private delegate:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;

.field private inLayout:Z

.field private isImport:Z

.field private linearLayout:Landroid/widget/LinearLayout;

.field private listAdapter:Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;

.field private other:Ljava/util/ArrayList;

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private phoneEndRow:I

.field private phoneStartRow:I

.field private phones:Ljava/util/ArrayList;

.field private rowCount:I

.field private scrollOffsetY:I

.field private scrollView:Landroidx/core/widget/NestedScrollView;

.field private shadow:Landroid/view/View;

.field private shadowAnimation:Landroid/animation/AnimatorSet;

.field private userRow:I

.field private vcardEndRow:I

.field private vcardStartRow:I


# direct methods
.method public static synthetic $r8$lambda$0q02QGzTRbkO-sdoOwawtN2hNfc(Lorg/telegram/ui/Components/PhonebookShareAlert;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhonebookShareAlert;->lambda$new$5(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0yJdbdyMf-DT6h6Wc37h2HMKwFw(Lorg/telegram/ui/Components/PhonebookShareAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PhonebookShareAlert;->lambda$new$6(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4b-gC5FNcR05JMf4uE4y0FoRUGs(Lorg/telegram/ui/Components/PhonebookShareAlert;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/PhonebookShareAlert;->lambda$new$3(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AYTj5A1R0qJPqtXUdntYkwBLeYM(Lorg/telegram/ui/Components/PhonebookShareAlert;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PhonebookShareAlert;->lambda$new$4(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$GZmo8Akk5YzD0XT0SQIOZyUc6xs(Lorg/telegram/ui/Components/PhonebookShareAlert;Lorg/telegram/messenger/AndroidUtilities$VcardItem;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PhonebookShareAlert;->lambda$new$1(Lorg/telegram/messenger/AndroidUtilities$VcardItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l8nGAejL66A4uyCQoj72X36aHSU(Lorg/telegram/ui/Components/PhonebookShareAlert;Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/PhonebookShareAlert;->lambda$new$0(Landroidx/core/widget/NestedScrollView;IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$r26d4a8MgLGKUKEtG8-IXivMAX8(Lorg/telegram/ui/Components/PhonebookShareAlert;ILandroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PhonebookShareAlert;->lambda$new$2(ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/tgnet/TLRPC$User;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/PhonebookShareAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/tgnet/TLRPC$User;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/tgnet/TLRPC$User;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 0
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/PhonebookShareAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/tgnet/TLRPC$User;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/tgnet/TLRPC$User;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 15

    .line 0
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p9

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v5, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-static/range {p7 .. p8}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2, v3, v6, v8, v5}, Lorg/telegram/messenger/AndroidUtilities;->loadVCardFromStream(Landroid/net/Uri;IZLjava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    goto/16 :goto_1

    :cond_0
    if-eqz p5, :cond_1

    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2, v3, v6, v8, v5}, Lorg/telegram/messenger/AndroidUtilities;->loadVCardFromStream(Landroid/net/Uri;IZLjava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->delete()Z

    iput-boolean v7, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->isImport:Z

    goto :goto_1

    :cond_1
    const-string v2, "TEL;MOBILE:+"

    if-eqz v3, :cond_2

    new-instance v5, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v5}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    iput v6, v5, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    iget-object v10, v5, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->vcardData:Ljava/util/ArrayList;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v7, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->isImport:Z

    goto :goto_0

    :cond_2
    iget-object v3, v1, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2, v3, v7, v8, v5}, Lorg/telegram/messenger/AndroidUtilities;->loadVCardFromStream(Landroid/net/Uri;IZLjava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    :cond_3
    new-instance v3, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v3}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    iput v6, v3, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    iget-object v5, v3, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->vcardData:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    move-object v2, v9

    :goto_1
    if-nez p3, :cond_4

    if-eqz v1, :cond_4

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_2

    :cond_4
    move-object/from16 v1, p3

    :goto_2
    if-eqz v2, :cond_a

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    iget v10, v5, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    if-nez v10, :cond_7

    const/4 v10, 0x0

    :goto_4
    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-virtual {v11, v6}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iput-boolean v6, v5, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->checked:Z

    goto :goto_6

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    iget-object v10, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    :goto_5
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    iget-object v10, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    goto :goto_5

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    goto :goto_7

    :cond_9
    move-object/from16 v5, p7

    move-object/from16 v2, p8

    goto :goto_7

    :cond_a
    move-object/from16 v5, p7

    move-object/from16 v2, p8

    move-object v3, v9

    :goto_7
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_c

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v10, v8, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iput-wide v10, v8, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v2, v8, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iput-object v2, v8, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v2, v8, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v2, v8, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v1, v8, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v3, :cond_b

    iput-object v3, v8, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    :cond_b
    :goto_8
    move-object/from16 v1, p1

    goto :goto_9

    :cond_c
    iput-object v5, v8, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v2, v8, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    goto :goto_8

    :goto_9
    iput-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhonebookShareAlert;->updateRows()V

    new-instance v2, Lorg/telegram/ui/Components/PhonebookShareAlert$1;

    invoke-direct {v2, p0, v1, v1}, Lorg/telegram/ui/Components/PhonebookShareAlert$1;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;Landroid/content/Context;Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setWillNotDraw(Z)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    new-instance v3, Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;

    invoke-direct {v3, p0, v9}, Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;Lorg/telegram/ui/Components/PhonebookShareAlert$1;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->listAdapter:Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;

    new-instance v3, Lorg/telegram/ui/Components/PhonebookShareAlert$2;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Components/PhonebookShareAlert$2;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v5, 0x0

    const/high16 v8, 0x429a0000    # 77.0f

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/16 v11, 0x33

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 p1, v9

    move/from16 p2, v10

    move/from16 p3, v11

    move/from16 p4, v12

    move/from16 p5, v13

    move/from16 p6, v5

    move/from16 p7, v8

    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v5, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v8, 0x33

    invoke-static {v9, v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    new-instance v5, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;)V

    invoke-virtual {v3, v5}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->listAdapter:Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;->getItemCount()I

    move-result v3

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v3, :cond_10

    iget-object v8, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->listAdapter:Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;

    invoke-virtual {v8, v1, v5}, Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;->createView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v8

    iget-object v10, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v11, -0x2

    invoke-static {v9, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v10, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneStartRow:I

    if-lt v5, v10, :cond_d

    iget v10, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneEndRow:I

    if-lt v5, v10, :cond_e

    :cond_d
    iget v10, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardStartRow:I

    if-lt v5, v10, :cond_f

    iget v10, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardEndRow:I

    if-ge v5, v10, :cond_f

    :cond_e
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0, v5, v8}, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;ILandroid/view/View;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0, v5, v4, v1}, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_10
    new-instance v3, Lorg/telegram/ui/Components/PhonebookShareAlert$3;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Components/PhonebookShareAlert$3;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v3, v8, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v3, v8, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->isImport:Z

    if-eqz v3, :cond_11

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/messenger/R$string;->AddContactPhonebookTitle:I

    :goto_b
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/messenger/R$string;->ShareContactTitle:I

    goto :goto_b

    :goto_c
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v8, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v10, -0x40000000    # -2.0f

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v8, Lorg/telegram/ui/Components/PhonebookShareAlert$4;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/PhonebookShareAlert$4;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;)V

    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarShadow:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarShadow:Landroid/view/View;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v10, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarShadow:Landroid/view/View;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v9, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadow:Landroid/view/View;

    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadow:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v5, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadow:Landroid/view/View;

    const/4 v8, 0x0

    const/high16 v9, 0x429a0000    # 77.0f

    const/4 v10, -0x1

    const/16 v12, 0x53

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 p1, v10

    move/from16 p2, v11

    move/from16 p3, v12

    move/from16 p4, v13

    move/from16 p5, v14

    move/from16 p6, v8

    move/from16 p7, v9

    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    const/high16 v1, 0x42080000    # 34.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v3, v5, v6, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->isImport:Z

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->AddContactPhonebookTitle:I

    :goto_d
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->ShareContactTitle:I

    goto :goto_d

    :goto_e
    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-static {v3, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, -0x1

    const/high16 v7, 0x42400000    # 48.0f

    const/16 v8, 0x53

    const/high16 v9, 0x41600000    # 14.0f

    const/high16 v10, 0x41600000    # 14.0f

    move/from16 p1, v6

    move/from16 p2, v7

    move/from16 p3, v8

    move/from16 p4, v9

    move/from16 p5, v10

    move/from16 p6, v3

    move/from16 p7, v5

    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v4}, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/tgnet/TLRPC$User;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/PhonebookShareAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/tgnet/TLRPC$User;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhonebookShareAlert;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhonebookShareAlert;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PhonebookShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PhonebookShareAlert;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PhonebookShareAlert;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarShadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/PhonebookShareAlert;)Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->listAdapter:Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/PhonebookShareAlert;)Landroidx/core/widget/NestedScrollView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/PhonebookShareAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->inLayout:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PhonebookShareAlert;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/PhonebookShareAlert;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhonebookShareAlert;->updateLayout(Z)V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/PhonebookShareAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/PhonebookShareAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/PhonebookShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/PhonebookShareAlert;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/PhonebookShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/PhonebookShareAlert;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->linearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/PhonebookShareAlert;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/Components/PhonebookShareAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/Components/PhonebookShareAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->rowCount:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneStartRow:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneEndRow:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardStartRow:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->userRow:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/PhonebookShareAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PhonebookShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PhonebookShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PhonebookShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PhonebookShareAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->isImport:Z

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PhonebookShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->inLayout:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhonebookShareAlert;->updateLayout(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/messenger/AndroidUtilities$VcardItem;Landroid/content/DialogInterface;I)V
    .locals 1

    if-nez p3, :cond_0

    :try_start_0
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p3, "clipboard"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string p3, "label"

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->TextCopied:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(ILandroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 p3, 0x0

    const/4 v0, 0x1

    iget v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneStartRow:I

    if-lt p1, v1, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneEndRow:I

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    :goto_0
    sub-int v1, p1, v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    goto :goto_1

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardStartRow:I

    if-lt p1, v1, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardEndRow:I

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-boolean v2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->isImport:Z

    if-eqz v2, :cond_7

    iget p1, v1, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    if-nez p1, :cond_3

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.DIAL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/16 p3, 0x1f4

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_3
    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mailto:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    invoke-virtual {v1, p3}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "http"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "http://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object p2, v0, p3

    new-instance p2, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;Lorg/telegram/messenger/AndroidUtilities$VcardItem;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_5

    :cond_7
    iget-boolean v2, v1, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->checked:Z

    xor-int/2addr v2, v0

    iput-boolean v2, v1, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->checked:Z

    iget v2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneStartRow:I

    if-lt p1, v2, :cond_b

    iget v2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneEndRow:I

    if-ge p1, v2, :cond_b

    const/4 p1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    iget-boolean v2, v2, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->checked:Z

    if-eqz v2, :cond_8

    const/4 p3, 0x1

    goto :goto_3

    :cond_8
    add-int/2addr p1, v0

    goto :goto_2

    :cond_9
    :goto_3
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_a

    goto :goto_4

    :cond_a
    const p3, 0x7fffffff

    and-int/2addr p1, p3

    :goto_4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    check-cast p2, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;

    iget-boolean p1, v1, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->checked:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->setChecked(Z)V

    :goto_5
    return-void
.end method

.method private synthetic lambda$new$3(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Landroid/view/View;)Z
    .locals 2

    iget p4, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneStartRow:I

    if-lt p1, p4, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneEndRow:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    :goto_0
    sub-int/2addr p1, p4

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    goto :goto_1

    :cond_0
    iget p4, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardStartRow:I

    if-lt p1, p4, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardEndRow:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const/4 p4, 0x0

    if-nez p1, :cond_2

    return p4

    :cond_2
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {p1, p4}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object p4

    const-string v1, "label"

    invoke-static {v1, p4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object p4, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p4}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_6

    iget p4, p1, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    const/4 v1, 0x3

    if-ne p4, v1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_5

    :cond_3
    new-instance p4, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;

    invoke-direct {p4, p3, p2}, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget p1, p1, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    if-nez p1, :cond_4

    iget-object p1, p4, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget p2, Lorg/telegram/messenger/R$string;->PhoneCopied:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p4, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->imageView:Landroid/widget/ImageView;

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_calls:I

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_4
    if-ne p1, v0, :cond_5

    iget-object p1, p4, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget p2, Lorg/telegram/messenger/R$string;->EmailCopied:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p4, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->imageView:Landroid/widget/ImageView;

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_mention:I

    goto :goto_3

    :cond_5
    iget-object p1, p4, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget p2, Lorg/telegram/messenger/R$string;->TextCopied:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p4, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->imageView:Landroid/widget/ImageView;

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_info:I

    goto :goto_3

    :goto_4
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/FrameLayout;

    const/16 p2, 0x5dc

    invoke-static {p1, p4, p2}, Lorg/telegram/ui/Components/Bulletin;->make(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    goto :goto_2

    :cond_6
    :goto_5
    return v0
.end method

.method private synthetic lambda$new$4(ZI)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v4, 0x0

    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;->didSelectContact(Lorg/telegram/tgnet/TLRPC$User;ZIJZJ)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$5(Ljava/lang/Long;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;->didSelectContact(Lorg/telegram/tgnet/TLRPC$User;ZIJZJ)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$6(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 9

    const/4 p2, 0x0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->isImport:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->AddContactTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->CreateNewContact:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->AddToExistingContact:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v1, v3, p2

    aput-object v2, v3, v0

    new-instance p2, Lorg/telegram/ui/Components/PhonebookShareAlert$5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/PhonebookShareAlert$5;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;)V

    invoke-virtual {p1, v3, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_8

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$RestrictionReason;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->text:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v4}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, p2

    const-string v4, "BEGIN:VCARD\nVERSION:3.0\nFN:%1$s\nEND:VCARD"

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v3, "END:VCARD"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_1
    const-string v4, "\n"

    if-ltz v2, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    iget-boolean v6, v5, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->checked:Z

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-nez v7, :cond_3

    invoke-virtual {v5, p2}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    :cond_3
    const/4 v6, 0x0

    :goto_2
    iget-object v7, v5, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->vcardData:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->vcardData:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v6, v0

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v0

    :goto_4
    if-ltz p2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    iget-boolean v5, v2, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->checked:Z

    if-nez v5, :cond_6

    goto :goto_6

    :cond_6
    iget-object v5, v2, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->vcardData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v0

    :goto_5
    if-ltz v5, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->vcardData:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_7
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    new-instance p2, Lorg/telegram/tgnet/TLRPC$RestrictionReason;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$RestrictionReason;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->text:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->reason:Ljava/lang/String;

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->platform:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, p2, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_a

    check-cast p2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    new-instance p2, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;)V

    invoke-static {v0, v1, v2, p2, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_8

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_b

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide p1

    goto :goto_7

    :cond_b
    const-wide/16 p1, 0x0

    :goto_7
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v2, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;)V

    invoke-static {v1, p1, p2, v0, v2}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    :goto_8
    return-void
.end method

.method private updateLayout(Z)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-gtz v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-wide/16 v6, 0xb4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v5, :cond_2

    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3

    :cond_2
    if-nez v5, :cond_b

    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_b

    :cond_3
    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_2

    :cond_4
    move-object v12, v8

    :goto_2
    invoke-virtual {v11, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v8, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    :cond_5
    if-eqz p1, :cond_8

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    iget-object v12, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz v5, :cond_6

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    :goto_3
    new-array v15, v1, [F

    aput v14, v15, v3

    invoke-static {v12, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v14, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarShadow:Landroid/view/View;

    if-eqz v5, :cond_7

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    new-array v15, v1, [F

    aput v5, v15, v3

    invoke-static {v14, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/Animator;

    aput-object v12, v13, v3

    aput-object v5, v13, v1

    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v11, Lorg/telegram/ui/Components/PhonebookShareAlert$7;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/PhonebookShareAlert$7;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;)V

    invoke-virtual {v5, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_7

    :cond_8
    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_9

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_9
    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarShadow:Landroid/view/View;

    if-eqz v5, :cond_a

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v11, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_b
    :goto_7
    iget v5, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollOffsetY:I

    if-eq v5, v4, :cond_c

    iput v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollOffsetY:I

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    :cond_c
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-le v2, v4, :cond_d

    const/4 v2, 0x1

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_e

    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_f

    :cond_e
    if-nez v2, :cond_15

    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_15

    :cond_f
    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadow:Landroid/view/View;

    if-eqz v2, :cond_10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_9

    :cond_10
    move-object v5, v8

    :goto_9
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v8, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadowAnimation:Landroid/animation/AnimatorSet;

    :cond_11
    if-eqz p1, :cond_13

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadowAnimation:Landroid/animation/AnimatorSet;

    iget-object v5, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadow:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz v2, :cond_12

    const/high16 v9, 0x3f800000    # 1.0f

    :cond_12
    new-array v2, v1, [F

    aput v9, v2, v3

    invoke-static {v5, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v3

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadowAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/PhonebookShareAlert$8;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PhonebookShareAlert$8;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_a

    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadow:Landroid/view/View;

    if-eqz v2, :cond_14

    const/high16 v9, 0x3f800000    # 1.0f

    :cond_14
    invoke-virtual {v1, v9}, Landroid/view/View;->setAlpha(F)V

    :cond_15
    :goto_a
    return-void
.end method

.method private updateRows()V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->rowCount:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->userRow:I

    iget-object v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    if-gt v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneStartRow:I

    iput v2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneEndRow:I

    :goto_0
    iput v2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardStartRow:I

    iput v2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardEndRow:I

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneStartRow:I

    iput v2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneEndRow:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneStartRow:I

    iget-object v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneEndRow:I

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardStartRow:I

    iget-object v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardEndRow:I

    :goto_2
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onStart()V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/PhonebookShareAlert$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhonebookShareAlert$6;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;

    return-void
.end method
