.class public abstract Lorg/telegram/ui/Adapters/BaseLocationAdapter;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;
    }
.end annotation


# instance fields
.field public final biz:Z

.field private currentAccount:I

.field private currentRequestNum:I

.field private delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

.field private dialogId:J

.field private lastFoundQuery:Ljava/lang/String;

.field private lastSearchLocation:Landroid/location/Location;

.field private lastSearchQuery:Ljava/lang/String;

.field protected locations:Ljava/util/ArrayList;

.field protected places:Ljava/util/ArrayList;

.field protected searchInProgress:Z

.field private searchRunnable:Ljava/lang/Runnable;

.field protected searched:Z

.field protected searching:Z

.field protected searchingLocations:Z

.field private searchingUser:Z

.field public final stories:Z


# direct methods
.method public static synthetic $r8$lambda$4Nt7Zy6Elg7WbJ6IxBLzGtKqjZs(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchBotUser$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9fAnmZcQFtCjpcrhZURpZa-sDmY(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchPlacesWithQuery$6(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A9lpV6QD6dmFP1uGkItVajDxhWE(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchBotUser$2(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UzOocwjEU5x3EeNBE12gwv-Gt9I(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Landroid/location/Location;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchDelayed$1(Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X38L9THsqmGcopAt-ll3U7NJl_0(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;Landroid/location/Location;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchPlacesWithQuery$5(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;Landroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZC2XbztLqEWm164HtZHxnT-S-S8(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchPlacesWithQuery$7(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gr5_sHZ3bA1F39V-YaMSAd-JTd0(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Landroid/location/Location;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchPlacesWithQuery$4(Landroid/location/Location;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y90nmaRIn-FalsuFNKur0trYb3U(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Landroid/location/Location;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchDelayed$0(Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->locations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->stories:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->biz:Z

    return-void
.end method

.method private synthetic lambda$searchBotUser$2(Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;Z)V

    return-void
.end method

.method private synthetic lambda$searchBotUser$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p1, :cond_0

    new-instance p2, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$searchDelayed$0(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;Z)V

    return-void
.end method

.method private synthetic lambda$searchDelayed$1(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Landroid/location/Location;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchPlacesWithQuery$4(Landroid/location/Location;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchingLocations:Z

    if-nez p1, :cond_0

    iput v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    iget-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchInProgress:Z

    iput-object p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastFoundQuery:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->locations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->locations:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->update(Z)V

    return-void
.end method

.method private synthetic lambda$searchPlacesWithQuery$5(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;Landroid/location/Location;Ljava/lang/String;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->biz:Z

    const/4 v4, 0x5

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    :goto_0
    new-instance v5, Landroid/location/Geocoder;

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v7, p1

    invoke-direct {v5, v6, v7}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-virtual {v5, v1, v4}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    iget-boolean v6, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->stories:Z

    if-eqz v6, :cond_1

    new-instance v6, Landroid/location/Geocoder;

    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v10, p3

    invoke-direct {v6, v9, v10}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-virtual {v6, v1, v4}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v10, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_39

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/Address;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_2

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/location/Address;

    goto :goto_3

    :cond_2
    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v11}, Landroid/location/Address;->hasLatitude()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v11}, Landroid/location/Address;->hasLongitude()Z

    move-result v13

    if-nez v13, :cond_4

    :cond_3
    move-object/from16 v16, v1

    move-object/from16 v17, v5

    move-object v1, v6

    move/from16 v18, v10

    move-object v5, v4

    :goto_4
    const/4 v4, 0x0

    goto/16 :goto_19

    :cond_4
    invoke-virtual {v11}, Landroid/location/Address;->getLatitude()D

    move-result-wide v13

    invoke-virtual {v11}, Landroid/location/Address;->getLongitude()D

    move-result-wide v8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual {v11}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v18

    :cond_5
    move-object/from16 v7, v18

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual {v12}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    :cond_6
    move/from16 v18, v10

    invoke-virtual {v11}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v20, v4

    const-string v4, ", "

    const/16 v21, 0x1

    if-nez v19, :cond_8

    move-object/from16 v19, v6

    :try_start_1
    invoke-virtual {v11}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_7

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_8
    move-object/from16 v19, v6

    :cond_9
    invoke-virtual {v11}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_a

    :goto_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_b
    invoke-virtual {v11}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_a

    goto :goto_5

    :goto_6
    const/4 v6, 0x0

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_e

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const/16 v22, 0x0

    goto :goto_8

    :cond_10
    const/16 v22, 0x1

    :goto_8
    invoke-virtual {v11}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_17

    move/from16 v23, v3

    const-string v3, "US"

    move-object/from16 v24, v7

    invoke-virtual {v11}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "AE"

    invoke-virtual {v11}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "GB"

    invoke-virtual {v11}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "en"

    invoke-virtual/range {p1 .. p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_9

    :cond_11
    move/from16 v25, v6

    move-object/from16 v26, v12

    move-object v12, v10

    goto :goto_c

    :cond_12
    :goto_9
    const-string v3, ""

    const-string v7, " "

    invoke-virtual {v10, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v25, v3

    array-length v3, v7

    move-object/from16 v26, v12

    move-object/from16 v12, v25

    move/from16 v25, v6

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v3, :cond_14

    move/from16 v27, v3

    aget-object v3, v7, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_13

    move-object/from16 v28, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto :goto_b

    :cond_13
    move-object/from16 v28, v7

    :goto_b
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v27

    move-object/from16 v7, v28

    goto :goto_a

    :cond_14
    :goto_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_15

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_16

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_17
    move/from16 v23, v3

    move/from16 v25, v6

    move-object/from16 v24, v7

    move-object/from16 v26, v12

    :goto_d
    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->biz:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v6, "pin"

    move-object v7, v1

    const-wide/16 v0, -0x1

    if-eqz v3, :cond_1a

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v12, 0x0

    :try_start_3
    invoke-virtual {v11, v12}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_18
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_19

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-wide v13, v5, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->query_id:J

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->icon:Ljava/lang/String;

    sget v0, Lorg/telegram/messenger/R$string;->PassportAddress:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    move-object/from16 v1, v19

    move-object/from16 v5, v20

    move/from16 v3, v23

    goto/16 :goto_4

    :cond_1a
    const/4 v12, 0x0

    if-eqz v5, :cond_2b

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2b

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v10, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-wide v13, v10, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->query_id:J

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->icon:Ljava/lang/String;

    if-eqz v25, :cond_1b

    sget v5, Lorg/telegram/messenger/R$string;->PassportCity:I

    goto :goto_e

    :cond_1b
    sget v5, Lorg/telegram/messenger/R$string;->PassportStreet1:I

    :goto_e
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    if-eqz v26, :cond_29

    new-instance v5, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geoAddress:Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->country_iso2:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    :cond_1c
    const/4 v6, 0x0

    :goto_f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v6

    :cond_1d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v6

    :cond_1e
    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_1f

    iget-object v12, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geoAddress:Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;

    iput-object v10, v12, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->state:Ljava/lang/String;

    iget v0, v12, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v12, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    :cond_1f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geoAddress:Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;

    iput-object v6, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->city:Ljava/lang/String;

    iget v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    :cond_20
    if-nez v25, :cond_29

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v24

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_21
    move-object/from16 v6, v24

    :cond_22
    const/4 v1, 0x0

    :goto_10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_23

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_23

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v1

    :cond_23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    :cond_24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_25

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_26
    const/4 v5, 0x0

    :goto_11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v12, 0x0

    :goto_12
    sget-object v0, Lorg/telegram/messenger/LocationController;->unnamedRoads:[Ljava/lang/String;

    array-length v1, v0

    if-ge v12, v1, :cond_28

    aget-object v0, v0, v12

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v12, 0x1

    goto :goto_13

    :cond_27
    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    :cond_28
    const/4 v12, 0x0

    :goto_13
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geoAddress:Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;

    iget v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->street:Ljava/lang/String;

    goto :goto_14

    :cond_29
    const/4 v12, 0x0

    :cond_2a
    :goto_14
    if-nez v12, :cond_2b

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move/from16 v3, v23

    if-lt v0, v3, :cond_2c

    goto/16 :goto_1a

    :cond_2b
    move/from16 v3, v23

    :cond_2c
    if-nez v22, :cond_34

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-wide v13, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->query_id:J

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    const-string v4, "https://ss3.4sqi.net/img/categories_v2/travel/hotel_64.png"

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->icon:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/LocationController;->countryCodeToEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->emoji:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget v4, Lorg/telegram/messenger/R$string;->PassportCity:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    if-eqz v26, :cond_31

    new-instance v4, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;-><init>()V

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geoAddress:Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->country_iso2:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    goto :goto_15

    :cond_2d
    move-object v5, v4

    :goto_15
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    :cond_2e
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v5

    :cond_2f
    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_30

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geoAddress:Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;

    iput-object v6, v7, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->state:Ljava/lang/String;

    iget v6, v7, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v7, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    :cond_30
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_32

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geoAddress:Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;

    iput-object v5, v6, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->city:Ljava/lang/String;

    iget v5, v6, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v6, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    goto :goto_16

    :cond_31
    const/4 v4, 0x0

    :cond_32
    :goto_16
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v3, :cond_35

    goto/16 :goto_1a

    :cond_33
    :goto_17
    const/4 v4, 0x0

    goto :goto_18

    :cond_34
    move-object/from16 v1, v19

    goto :goto_17

    :cond_35
    :goto_18
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_37

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v20

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-wide v13, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    const-wide/16 v6, -0x1

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->query_id:J

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    const-string v6, "https://ss3.4sqi.net/img/categories_v2/building/government_capitolbuilding_64.png"

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->icon:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/LocationController;->countryCodeToEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->emoji:Ljava/lang/String;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget v6, Lorg/telegram/messenger/R$string;->Country:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    if-eqz v26, :cond_36

    new-instance v6, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;

    invoke-direct {v6}, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;-><init>()V

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geoAddress:Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->country_iso2:Ljava/lang/String;

    :cond_36
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-lt v0, v3, :cond_38

    goto :goto_1a

    :cond_37
    move-object/from16 v5, v20

    :cond_38
    :goto_19
    add-int/lit8 v10, v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object v6, v1

    move-object v4, v5

    move-object/from16 v1, v16

    move-object/from16 v5, v17

    goto/16 :goto_2

    :catch_1
    :cond_39
    :goto_1a
    new-instance v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda5;

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Landroid/location/Location;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchPlacesWithQuery$6(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchInProgress:Z

    iput-object p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastFoundQuery:Ljava/lang/String;

    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_2

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v2, "venue"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->address:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->title:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://ss3.4sqi.net/img/categories_v2/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->venue_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_64.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->icon:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->venue_type:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_type:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->venue_id:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->provider:Ljava/lang/String;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->query_id:J

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->result_id:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;->didLoadSearchResult(Ljava/util/ArrayList;)V

    :cond_3
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->update(Z)V

    return-void
.end method

.method private synthetic lambda$searchPlacesWithQuery$7(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private searchBotUser()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchingUser:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchingUser:Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->stories:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->storyVenueSearchBot:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->venueSearchBot:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    :cond_0
    return-void
.end method

.method public getLastSearchString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastFoundQuery:Ljava/lang/String;

    return-object v0
.end method

.method public isSearching()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchInProgress:Z

    return v0
.end method

.method public searchDelayed(Ljava/lang/String;Landroid/location/Location;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchRunnable:Ljava/lang/Runnable;

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchInProgress:Z

    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Landroid/location/Location;)V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 p1, 0x190

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->locations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchInProgress:Z

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->update(Z)V

    :goto_1
    return-void
.end method

.method public searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;Z)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;ZZ)V

    return-void
.end method

.method public searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;ZZ)V
    .locals 10

    .line 0
    if-nez p2, :cond_0

    iget-boolean p4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->stories:Z

    if-eqz p4, :cond_1

    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    if-eqz p4, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p4

    const/high16 v0, 0x43480000    # 200.0f

    cmpg-float p4, p4, v0

    if-gez p4, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 p4, 0x0

    if-nez p2, :cond_3

    move-object v0, p4

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchQuery:Ljava/lang/String;

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    iput v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->stories:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->storyVenueSearchBot:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget v3, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->venueSearchBot:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v3, :cond_7

    if-eqz p3, :cond_6

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchBotUser()V

    :cond_6
    return-void

    :cond_7
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    const-string v3, ""

    if-nez p1, :cond_8

    move-object v4, v3

    goto :goto_2

    :cond_8
    move-object v4, p1

    :goto_2
    iput-object v4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    iget v4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iput-object v3, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    if-eqz p2, :cond_9

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    iget v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->flags:I

    or-int/2addr v0, v2

    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->flags:I

    :cond_9
    iget-wide v3, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->dialogId:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    :goto_3
    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_4

    :cond_a
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    goto :goto_3

    :goto_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->stories:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->biz:Z

    if-eqz v0, :cond_e

    :cond_b
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchingLocations:Z

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v5

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->stories:Z

    if-eqz v0, :cond_d

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p4

    const-string v0, "en"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_c

    move-object v7, v5

    goto :goto_5

    :cond_c
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    :cond_d
    move-object v7, p4

    :goto_5
    sget-object p4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda1;

    move-object v3, v0

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;Landroid/location/Location;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_e
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchingLocations:Z

    :goto_6
    if-nez p2, :cond_f

    return-void

    :cond_f
    iget p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p4, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->update(Z)V

    return-void
.end method

.method public setDelegate(JLorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;)V
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->dialogId:J

    iput-object p3, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    return-void
.end method

.method protected update(Z)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
