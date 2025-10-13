.class public Lorg/telegram/messenger/LocationController;
.super Lorg/telegram/messenger/BaseController;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;
.implements Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/LocationController$GpsLocationListener;,
        Lorg/telegram/messenger/LocationController$FusedLocationListener;,
        Lorg/telegram/messenger/LocationController$SharingLocationInfo;,
        Lorg/telegram/messenger/LocationController$LocationFetchCallback;
    }
.end annotation


# static fields
.field private static final BACKGROUD_UPDATE_TIME:I = 0x7530

.field private static final FASTEST_INTERVAL:J = 0x3e8L

.field private static final FOREGROUND_UPDATE_TIME:I = 0x4e20

.field private static volatile Instance:[Lorg/telegram/messenger/LocationController; = null

.field private static final LOCATION_ACQUIRE_TIME:I = 0x2710

.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328

.field private static final SEND_NEW_LOCATION_TIME:I = 0x7d0

.field public static final TYPE_BIZ:I = 0x1

.field public static final TYPE_STORY:I = 0x2

.field private static final UPDATE_INTERVAL:J = 0x3e8L

.field private static final WATCH_LOCATION_TIMEOUT:I = 0xfde8

.field private static callbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/messenger/LocationController$LocationFetchCallback;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static unnamedRoads:[Ljava/lang/String;


# instance fields
.field private apiClient:Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;

.field private cacheRequests:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray;"
        }
    .end annotation
.end field

.field private fusedLocationListener:Lorg/telegram/messenger/LocationController$FusedLocationListener;

.field private gpsLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

.field private lastKnownLocation:Landroid/location/Location;

.field private lastLocationByMaps:Z

.field private lastLocationSendTime:J

.field private lastLocationStartTime:J

.field private lastReadLocationTime:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray;"
        }
    .end annotation
.end field

.field private locationEndWatchTime:J

.field private locationManager:Landroid/location/LocationManager;

.field private locationRequest:Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;

.field private locationSentSinceLastMapUpdate:Z

.field public locationsCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray;"
        }
    .end annotation
.end field

.field private networkLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

.field private passiveLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

.field private requests:Landroid/util/SparseIntArray;

.field private servicesAvailable:Ljava/lang/Boolean;

.field private sharingLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocationController$SharingLocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sharingLocationsMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray;"
        }
    .end annotation
.end field

.field private sharingLocationsMapUI:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray;"
        }
    .end annotation
.end field

.field public sharingLocationsUI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocationController$SharingLocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private started:Z

.field private wasConnectedToPlayServices:Z


# direct methods
.method public static synthetic $r8$lambda$-fMydX1I-jI9g5Ojys97tW-pHM0(Lorg/telegram/messenger/LocationController;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$onConnected$4(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$00GcIy1SsXUYRIfX834XEVps3-E(Lorg/telegram/messenger/LocationController;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LocationController;->lambda$removeSharingLocation$21(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$1z-X-ew2v6-e3YngrFa22Zg8CAY(Lorg/telegram/messenger/LocationController;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocationController;->lambda$loadLiveLocations$26(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$76q71xVK4DGJZTK_eI1dpowb8gA(Lorg/telegram/messenger/LocationController;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$startFusedLocationRequest$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$8YZMclP-Rl8CS73Y11teBmDPdsM(Lorg/telegram/messenger/LocationController;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$onConnected$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8phspgl9XnVUhi-I1NM3sbFuOEw(Lorg/telegram/messenger/LocationController$LocationFetchCallback;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Landroid/location/Location;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/messenger/LocationController;->lambda$fetchLocationAddress$28(Lorg/telegram/messenger/LocationController$LocationFetchCallback;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9svt2pR0d775rfQFl9OxM42g8bc(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$removeSharingLocation$20(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D0Lfh9XaiNeAf_QGgdQo7R90tII(Lorg/telegram/messenger/LocationController;Landroid/location/Location;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->setLastKnownLocation(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Goeaj7yXZ6YazmcgrSmewjMr8uU(Lorg/telegram/messenger/LocationController;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$loadSharingLocations$15(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GsEUhsuvS9JGxxf6OjwZ8ufMqpc(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$broadcastLastKnownLocation$6(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IDtraKDIvIYkRS1KEuIa0hFSZ5A(Lorg/telegram/messenger/LocationController;JLorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/LocationController;->lambda$loadLiveLocations$25(JLorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MKP7_mkjQPsoSXBedy8EW_dhcfM(Lorg/telegram/messenger/LocationController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LocationController;->lambda$removeSharingLocation$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NmuffCXRECMW5iBJma_m2ndR0i8(Lorg/telegram/messenger/LocationController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->lambda$setProximityLocation$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$OMzKD_pivxkqbjXGU2lrxSZ7RDs(Lorg/telegram/messenger/LocationController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->lambda$loadSharingLocations$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$QBUoyphjpl2dxL6KoLkTxdyqn2M(Lorg/telegram/messenger/LocationController;IJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/LocationController;->lambda$setProximityLocation$12(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$S1D2_9DO9mldCxMgoKpj1Cfj_O4(Lorg/telegram/messenger/LocationController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->lambda$onConnected$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$U8Its0TOah-EEH3WaaPh4B0PAYk(Lorg/telegram/messenger/LocationController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->lambda$removeAllLocationSharings$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZZK_8aaCElBZLKeeWa0hMPBZQI4(Lorg/telegram/messenger/LocationController;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$onConnected$2(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$byHPUtqKD7DOxpDgDfX4eweHrRY(Lorg/telegram/messenger/LocationController;ILorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LocationController;->lambda$saveSharingLocation$18(ILorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dntVPl2AneR1e4Rb6vfS45Oh2hE(Lorg/telegram/messenger/LocationController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LocationController;->lambda$markLiveLoactionsAsRead$27(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ggWCRmme1cBdxg9siYaFgmsWFOk(Lorg/telegram/messenger/LocationController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LocationController;->lambda$removeAllLocationSharings$22(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k-h-MNgORJn3Oaqu2rzEN5zjk9c(Lorg/telegram/messenger/LocationController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->lambda$cleanup$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$p_tJfi2cVIes5hLrqmOLgO9iIA4(Lorg/telegram/messenger/LocationController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/LocationController;->lambda$loadSharingLocations$16(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tGR7BsSrDeUFIS0L3ur5pP35EqM(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$update$8(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tXLSdVs9flIfYb3AuIg5sM6SKYk()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/messenger/LocationController;->lambda$setLastKnownLocation$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$tlUU8lHFc_rWHayxFAniRRtUDs0(Ljava/util/Locale;Landroid/location/Location;ILjava/util/Locale;Lorg/telegram/messenger/LocationController$LocationFetchCallback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocationController;->lambda$fetchLocationAddress$29(Ljava/util/Locale;Landroid/location/Location;ILjava/util/Locale;Lorg/telegram/messenger/LocationController$LocationFetchCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u7Vfv-f943owbh4DLfD1W3PzS5s(Lorg/telegram/messenger/LocationController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$v8Ht0AQbhKRtkO1VSmqUFEdI4sU(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LocationController;->lambda$addSharingLocation$11(Lorg/telegram/messenger/LocationController$SharingLocationInfo;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wD2Qm9c6BI1nbRlzchlcol08hQg(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;[ILorg/telegram/tgnet/TLRPC$TL_messages_editMessage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/LocationController;->lambda$broadcastLastKnownLocation$7(Lorg/telegram/messenger/LocationController$SharingLocationInfo;[ILorg/telegram/tgnet/TLRPC$TL_messages_editMessage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wzoJAnOPFazwA1t7LvgRnPh6twE(Lorg/telegram/messenger/LocationController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->lambda$removeAllLocationSharings$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$y8z2L73zRBnz0WR0IPE1JGbwPJM(Lorg/telegram/messenger/LocationController;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$loadSharingLocations$14(Ljava/util/ArrayList;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 20

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/telegram/messenger/LocationController;

    sput-object v0, Lorg/telegram/messenger/LocationController;->Instance:[Lorg/telegram/messenger/LocationController;

    const-string v18, "Strada senza nome"

    const-string v19, "Stra\u00dfe ohne Stra\u00dfennamen"

    const-string v1, "Unnamed Road"

    const-string/jumbo v2, "\u0412ulicya bez nazvi"

    const-string/jumbo v3, "\u041deizvestnaya doroga"

    const-string/jumbo v4, "\u0130simsiz Yol"

    const-string v5, "Ce\u013c\u0161 bez nosaukuma"

    const-string v6, "Kelias be pavadinimo"

    const-string v7, "Droga bez nazwy"

    const-string v8, "Cesta bez n\u00e1zvu"

    const-string v9, "Silnice bez n\u00e1zvu"

    const-string v10, "Drum f\u0103r\u0103 nume"

    const-string v11, "Route sans nom"

    const-string v12, "V\u00eda sin nombre"

    const-string v13, "Estrada sem nome"

    const-string/jumbo v14, "\u039fdos xoris onomasia"

    const-string v15, "Rrug\u00eb pa em\u00ebr"

    const-string/jumbo v16, "\u041fat bez ime"

    const-string/jumbo v17, "\u041deimenovani put"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/LocationController;->unnamedRoads:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/LocationController;->callbacks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->lastReadLocationTime:Landroidx/collection/LongSparseArray;

    new-instance p1, Lorg/telegram/messenger/LocationController$GpsLocationListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/telegram/messenger/LocationController$GpsLocationListener;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$1;)V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->gpsLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    new-instance p1, Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-direct {p1, p0, v0}, Lorg/telegram/messenger/LocationController$GpsLocationListener;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$1;)V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->networkLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    new-instance p1, Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-direct {p1, p0, v0}, Lorg/telegram/messenger/LocationController$GpsLocationListener;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$1;)V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->passiveLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    new-instance p1, Lorg/telegram/messenger/LocationController$FusedLocationListener;

    invoke-direct {p1, p0, v0}, Lorg/telegram/messenger/LocationController$FusedLocationListener;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$1;)V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->fusedLocationListener:Lorg/telegram/messenger/LocationController$FusedLocationListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/messenger/LocationController;->locationSentSinceLastMapUpdate:Z

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->cacheRequests:Landroidx/collection/LongSparseArray;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0, p0}, Lorg/telegram/messenger/ILocationServiceProvider;->onCreateLocationServicesAPI(Landroid/content/Context;Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;)Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->apiClient:Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/messenger/ILocationServiceProvider;->onCreateLocationRequest()Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->locationRequest:Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;->setPriority(I)V

    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->locationRequest:Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;

    const-wide/16 v0, 0x3e8

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;->setInterval(J)V

    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->locationRequest:Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;->setFastestInterval(J)V

    new-instance p1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda20;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->loadSharingLocations()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/LocationController;)Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/LocationController;)Lorg/telegram/messenger/LocationController$GpsLocationListener;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/LocationController;->networkLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/LocationController;)Lorg/telegram/messenger/LocationController$GpsLocationListener;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/LocationController;->passiveLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/LocationController;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/messenger/LocationController;->started:Z

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/LocationController;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->setLastKnownLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$702(Lorg/telegram/messenger/LocationController;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    return-wide p1
.end method

.method private broadcastLastKnownLocation(Z)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, v0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    :cond_2
    iget-object v1, v0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    const/4 v3, 0x1

    new-array v13, v3, [F

    const/4 v14, 0x0

    :goto_1
    iget-object v4, v0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_7

    iget-object v4, v0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget-object v4, v15, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    if-eqz v5, :cond_4

    iget v6, v15, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->lastSentProximityMeters:I

    iget v7, v15, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    if-ne v6, v7, :cond_4

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    :goto_2
    sub-int v4, v1, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v6, 0xa

    if-ge v4, v6, :cond_4

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iget-object v4, v0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    iget-object v4, v0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide/from16 v10, v16

    move-object v12, v13

    invoke-static/range {v4 .. v12}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v4, v13, v2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    goto/16 :goto_3

    :cond_4
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v15, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v5, v15, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->id:I

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->stopped:Z

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget-object v6, v0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v6

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget-object v6, v0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v6

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget-object v6, v0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->accuracy_radius:I

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->accuracy_radius:I

    if-eqz v7, :cond_5

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->flags:I

    or-int/2addr v7, v3

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->flags:I

    :cond_5
    iget v6, v15, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->lastSentProximityMeters:I

    iget v7, v15, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    if-eq v6, v7, :cond_6

    iput v7, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->proximity_notification_radius:I

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    :cond_6
    iget-object v6, v0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-static {v6}, Lorg/telegram/messenger/LocationController;->getHeading(Landroid/location/Location;)I

    move-result v6

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->heading:I

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    new-array v5, v3, [I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda22;

    invoke-direct {v7, v0, v15, v5, v4}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;[ILorg/telegram/tgnet/TLRPC$TL_messages_editMessage;)V

    invoke-virtual {v6, v4, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v4

    aput v4, v5, v2

    iget-object v5, v0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/LocationController;->shouldStopGps()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {v0, v2}, Lorg/telegram/messenger/LocationController;->stop(Z)V

    :cond_8
    return-void
.end method

.method private checkServices()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->servicesAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/ILocationServiceProvider;->checkServices()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->servicesAvailable:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->servicesAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static countryCodeToEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    const v4, -0x1f1a5

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static detectOcean(DD)Ljava/lang/String;
    .locals 11

    const-wide v0, 0x4050400000000000L    # 65.0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_0

    const-string p0, "Arctic Ocean"

    return-object p0

    :cond_0
    const-wide/high16 v0, -0x3faa000000000000L    # -88.0

    const-wide/16 v2, 0x0

    cmpl-double v4, p0, v0

    if-lez v4, :cond_1

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    cmpg-double v4, p0, v0

    if-gez v4, :cond_1

    cmpl-double v0, p2, v2

    if-gtz v0, :cond_2

    :cond_1
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, -0x3fb2000000000000L    # -60.0

    cmpl-double v6, p0, v4

    if-lez v6, :cond_3

    cmpg-double v6, p0, v0

    if-gez v6, :cond_3

    cmpg-double v6, p2, v2

    if-gtz v6, :cond_3

    :cond_2
    const-string p0, "Atlantic Ocean"

    return-object p0

    :cond_3
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const-wide v8, 0x4062c00000000000L    # 150.0

    cmpg-double v10, p2, v6

    if-gtz v10, :cond_4

    cmpl-double v6, p0, v0

    if-ltz v6, :cond_4

    cmpg-double v0, p0, v8

    if-gez v0, :cond_4

    const-string p0, "Indian Ocean"

    return-object p0

    :cond_4
    const-wide v0, 0x405a800000000000L    # 106.0

    cmpl-double v6, p0, v0

    if-gtz v6, :cond_5

    cmpg-double v0, p0, v4

    if-gez v0, :cond_6

    :cond_5
    cmpl-double v0, p2, v2

    if-gtz v0, :cond_9

    :cond_6
    cmpl-double v0, p0, v8

    if-gtz v0, :cond_7

    cmpg-double v0, p0, v4

    if-gez v0, :cond_8

    :cond_7
    cmpg-double p0, p2, v2

    if-gtz p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 p0, 0x0

    return-object p0

    :cond_9
    :goto_0
    const-string p0, "Pacific Ocean"

    return-object p0
.end method

.method public static fetchLocationAddress(Landroid/location/Location;ILorg/telegram/messenger/LocationController$LocationFetchCallback;)V
    .locals 8

    .line 0
    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/telegram/messenger/LocationController;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    sget-object v0, Lorg/telegram/messenger/LocationController;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez p0, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    invoke-interface/range {v1 .. v6}, Lorg/telegram/messenger/LocationController$LocationFetchCallback;->onLocationAddressAvailable(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Landroid/location/Location;)V

    return-void

    :cond_2
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :catch_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getSystemDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v5, v2

    goto :goto_2

    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object v5, v0

    :goto_2
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda18;

    move-object v1, v7

    move-object v3, p0

    move v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda18;-><init>(Ljava/util/Locale;Landroid/location/Location;ILjava/util/Locale;Lorg/telegram/messenger/LocationController$LocationFetchCallback;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v7, p0, p1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    sget-object p0, Lorg/telegram/messenger/LocationController;->callbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static fetchLocationAddress(Landroid/location/Location;Lorg/telegram/messenger/LocationController$LocationFetchCallback;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/LocationController;->fetchLocationAddress(Landroid/location/Location;ILorg/telegram/messenger/LocationController$LocationFetchCallback;)V

    return-void
.end method

.method public static getHeading(Landroid/location/Location;)I
    .locals 1

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/16 p0, 0x168

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    float-to-int p0, p0

    return p0
.end method

.method public static getInstance(I)Lorg/telegram/messenger/LocationController;
    .locals 3

    sget-object v0, Lorg/telegram/messenger/LocationController;->Instance:[Lorg/telegram/messenger/LocationController;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    const-class v1, Lorg/telegram/messenger/LocationController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/LocationController;->Instance:[Lorg/telegram/messenger/LocationController;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/LocationController;->Instance:[Lorg/telegram/messenger/LocationController;

    new-instance v2, Lorg/telegram/messenger/LocationController;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/LocationController;-><init>(I)V

    aput-object v2, v0, p0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static getLocationsCount()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private synthetic lambda$addSharingLocation$11(Lorg/telegram/messenger/LocationController$SharingLocationInfo;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    iget-wide v0, p2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {p1, v0, v1, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->startService()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$broadcastLastKnownLocation$6(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    iget-wide v1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->remove(J)V

    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->stopService()V

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$broadcastLastKnownLocation$7(Lorg/telegram/messenger/LocationController$SharingLocationInfo;[ILorg/telegram/tgnet/TLRPC$TL_messages_editMessage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "MESSAGE_ID_INVALID"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p3, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    iget-wide p4, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {p3, p4, p5}, Landroidx/collection/LongSparseArray;->remove(J)V

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/LocationController;->saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    iget-object p3, p0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    aget p2, p2, v1

    invoke-virtual {p3, p2}, Landroid/util/SparseIntArray;->delete(I)V

    new-instance p2, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_2

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$InputMedia;->proximity_notification_radius:I

    iput p2, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->lastSentProximityMeters:I

    :cond_2
    check-cast p4, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    iget-object p5, p4, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p2, p5, :cond_5

    iget-object p5, p4, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/tgnet/TLRPC$Update;

    instance-of v2, p5, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    if-eqz v2, :cond_3

    iget-object p3, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    check-cast p5, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    iget-object p5, p5, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    :goto_1
    iput-object p5, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 p3, 0x1

    goto :goto_2

    :cond_3
    instance-of v2, p5, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-eqz v2, :cond_4

    iget-object p3, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    check-cast p5, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    iget-object p5, p5, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_6

    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/LocationController;->saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p4, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private synthetic lambda$cleanup$9()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/LocationController;->locationEndWatchTime:J

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/LocationController;->setLastKnownLocation(Landroid/location/Location;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/LocationController;->stop(Z)V

    return-void
.end method

.method private static synthetic lambda$fetchLocationAddress$28(Lorg/telegram/messenger/LocationController$LocationFetchCallback;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Landroid/location/Location;)V
    .locals 1

    sget-object v0, Lorg/telegram/messenger/LocationController;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {p0 .. p5}, Lorg/telegram/messenger/LocationController$LocationFetchCallback;->onLocationAddressAvailable(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Landroid/location/Location;)V

    return-void
.end method

.method private static synthetic lambda$fetchLocationAddress$29(Ljava/util/Locale;Landroid/location/Location;ILjava/util/Locale;Lorg/telegram/messenger/LocationController$LocationFetchCallback;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "Unknown address (%f,%f)"

    const-string v7, "US"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;

    invoke-direct {v9}, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;-><init>()V

    new-instance v10, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;

    invoke-direct {v10}, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;-><init>()V

    const/4 v11, 0x0

    :try_start_0
    new-instance v12, Landroid/location/Geocoder;

    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v12, v13, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v15

    const/16 v17, 0x1

    invoke-virtual/range {v12 .. v17}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v12

    if-ne v1, v4, :cond_1

    if-ne v2, v0, :cond_0

    move-object v2, v12

    goto :goto_0

    :cond_0
    new-instance v13, Landroid/location/Geocoder;

    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v13, v14, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    const/16 v18, 0x1

    invoke-virtual/range {v13 .. v18}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v11

    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_41

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/location/Address;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-lt v13, v5, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    goto :goto_1

    :cond_2
    move-object v2, v11

    :goto_1
    const-string v13, ", "

    if-ne v1, v5, :cond_a

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    :try_start_2
    invoke-virtual {v12, v3}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-object v1, v11

    :goto_2
    :try_start_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v12}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :try_start_5
    invoke-virtual {v12}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :try_start_6
    invoke-virtual {v12}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :try_start_7
    invoke-virtual {v12}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :cond_3
    :try_start_8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :catch_4
    :goto_3
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v7, v2

    if-le v7, v5, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_5
    array-length v12, v2

    if-ge v7, v12, :cond_4

    aget-object v12, v2, v7

    invoke-virtual {v0, v1, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/2addr v1, v5

    add-int/2addr v7, v5

    goto :goto_5

    :cond_4
    add-int/2addr v1, v5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v1, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v7, "^\\s*\\d{4,}\\s*$"

    invoke-virtual {v2, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_7
    add-int/2addr v1, v5

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v0, v11

    goto :goto_7

    :cond_9
    invoke-static {v13, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    move-object v1, v0

    move-object/from16 v23, v10

    move-object v2, v11

    move-object v3, v2

    move-object v5, v3

    move-object/from16 v17, v5

    const/4 v4, 0x1

    goto/16 :goto_1d

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual {v12}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v17

    goto :goto_8

    :cond_b
    move-object/from16 v17, v11

    :goto_8
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-virtual {v12}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v17

    :cond_c
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-virtual {v12}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v17

    :cond_d
    move-object/from16 v3, v17

    if-eqz v2, :cond_11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v17

    goto :goto_9

    :cond_e
    move-object/from16 v17, v11

    :goto_9
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v17

    :cond_f
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-virtual {v2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v17

    :cond_10
    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v5, v19

    goto :goto_a

    :cond_11
    move-object v5, v11

    move-object/from16 v17, v5

    :goto_a
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-virtual {v12}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_12

    invoke-virtual {v12}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v12}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_12
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v12}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_13

    invoke-virtual {v12}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v11

    move-object/from16 p2, v0

    invoke-virtual {v12}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v12}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_13
    move-object/from16 p2, v0

    :cond_14
    move-object/from16 v0, p2

    :goto_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-virtual {v12}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_15

    invoke-virtual {v12}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v11

    move-object/from16 p2, v0

    invoke-virtual {v12}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v12}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_15
    move-object/from16 p2, v0

    :cond_16
    move-object/from16 v0, p2

    :goto_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_18

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_18

    invoke-virtual {v12}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_18

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_17

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_18
    const/4 v4, 0x0

    :goto_e
    if-eqz v2, :cond_21

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-virtual {v2}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_19

    invoke-virtual {v2}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {v2}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_19
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-virtual {v2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1a

    invoke-virtual {v2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v11

    move-object/from16 p2, v0

    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_1a
    move-object/from16 p2, v0

    :cond_1b
    move-object/from16 v0, p2

    :goto_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1c

    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v11

    move-object/from16 p2, v0

    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_1c
    move-object/from16 p2, v0

    :cond_1d
    move-object/from16 v0, p2

    :goto_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1f

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1f

    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1e

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_1f
    const/4 v8, 0x0

    :goto_12
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x0

    :goto_13
    sget-object v2, Lorg/telegram/messenger/LocationController;->unnamedRoads:[Ljava/lang/String;

    array-length v11, v2

    if-ge v0, v11, :cond_21

    aget-object v2, v2, v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v4, 0x0

    const/4 v8, 0x0

    goto :goto_14

    :cond_20
    const/4 v2, 0x1

    add-int/2addr v0, v2

    goto :goto_13

    :cond_21
    :goto_14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_22

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_24

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_23

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    const/4 v0, 0x0

    goto :goto_15

    :cond_25
    const/4 v0, 0x1

    :goto_15
    invoke-virtual {v12}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    goto :goto_16

    :cond_26
    const/4 v2, 0x0

    :goto_16
    invoke-virtual {v12}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    move/from16 p2, v0

    const-string v0, " "

    if-nez v11, :cond_28

    :try_start_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :cond_28
    if-nez v2, :cond_2c

    invoke-virtual {v12}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2a

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_29

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    invoke-virtual {v12}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2c

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_2b

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    invoke-virtual {v12}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2e

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_2d

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    invoke-virtual {v12}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_37

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_2f

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p3, v3

    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v5

    invoke-virtual {v12}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    move-object/from16 v22, v8

    const-string v8, "en"

    if-nez v5, :cond_30

    :try_start_a
    const-string v5, "AE"

    move-object/from16 v23, v10

    invoke-virtual {v12}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    goto :goto_17

    :cond_30
    move-object/from16 v23, v10

    :goto_17
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    const-string v5, "uk"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    const-string v5, "ru"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    :cond_31
    const-string v5, "GB"

    invoke-virtual {v12}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_18

    :cond_32
    invoke-virtual {v12}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v11, "USA"

    goto :goto_1a

    :cond_33
    :goto_18
    const-string v3, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    move-object v11, v3

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v5, :cond_35

    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_34

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_34
    const/4 v7, 0x1

    add-int/2addr v3, v7

    goto :goto_19

    :cond_35
    :goto_1a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_36

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_37
    move-object/from16 p3, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v8

    move-object/from16 v23, v10

    :goto_1b
    invoke-virtual {v12}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_38

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    invoke-virtual {v12}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3a

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    if-nez v2, :cond_3f

    invoke-virtual {v12}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3c

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3c
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    invoke-virtual {v12}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3e

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v4, :cond_40

    const/4 v3, 0x0

    goto :goto_1c

    :cond_40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1c
    move/from16 v4, p2

    move-object v11, v3

    move-object/from16 v5, v21

    move-object/from16 v8, v22

    move-object/from16 v3, p3

    :goto_1d
    move v7, v4

    move-object/from16 v4, v17

    goto :goto_1f

    :cond_41
    move-object/from16 v23, v10

    const/4 v0, 0x1

    if-ne v1, v0, :cond_42

    const/4 v0, 0x0

    goto :goto_1e

    :cond_42
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v4, v3

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v0, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x0

    :goto_1f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_46

    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    :try_start_b
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v14, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    iput-wide v12, v14, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    iput-wide v13, v12, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    const-wide/16 v12, -0x1

    iput-wide v12, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->query_id:J

    iput-object v2, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    if-eqz v7, :cond_43

    const-string v2, "https://ss3.4sqi.net/img/categories_v2/building/government_capitolbuilding_64.png"

    goto :goto_20

    :cond_43
    const-string v2, "https://ss3.4sqi.net/img/categories_v2/travel/hotel_64.png"

    :goto_20
    iput-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->icon:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/LocationController;->countryCodeToEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->emoji:Ljava/lang/String;

    if-eqz v7, :cond_44

    sget v2, Lorg/telegram/messenger/R$string;->Country:I

    goto :goto_21

    :cond_44
    sget v2, Lorg/telegram/messenger/R$string;->PassportCity:I

    :goto_21
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iput-object v9, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geoAddress:Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;

    iput-object v3, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->country_iso2:Ljava/lang/String;

    if-nez v7, :cond_47

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    iget v2, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    const/4 v7, 0x1

    or-int/2addr v2, v7

    iput v2, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    iput-object v5, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->state:Ljava/lang/String;

    :cond_45
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    iget v2, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    const/4 v7, 0x2

    or-int/2addr v2, v7

    iput v2, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    iput-object v4, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->city:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_22

    :catch_5
    const/4 v11, 0x0

    goto/16 :goto_27

    :cond_46
    const/4 v10, 0x0

    :cond_47
    :goto_22
    :try_start_c
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    const-string v7, "pin"

    if-nez v2, :cond_4b

    :try_start_d
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :try_start_e
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v9, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    iput-wide v12, v9, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    iput-wide v12, v9, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    const-wide/16 v12, -0x1

    iput-wide v12, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->query_id:J

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->icon:Ljava/lang/String;

    sget v9, Lorg/telegram/messenger/R$string;->PassportStreet1:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    move-object/from16 v9, v23

    iput-object v9, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geoAddress:Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;

    iput-object v3, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->country_iso2:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_48

    iget v3, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    const/4 v11, 0x1

    or-int/2addr v3, v11

    iput v3, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    iput-object v5, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->state:Ljava/lang/String;

    :cond_48
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_49

    iget v3, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    const/4 v5, 0x2

    or-int/2addr v3, v5

    iput v3, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    iput-object v4, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->city:Ljava/lang/String;

    :cond_49
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    iget v3, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->flags:I

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_geoPointAddress;->street:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    :cond_4a
    move-object v11, v2

    goto :goto_23

    :catch_6
    move-object v11, v2

    goto/16 :goto_27

    :cond_4b
    const/4 v11, 0x0

    :goto_23
    if-nez v10, :cond_4c

    if-nez v11, :cond_4c

    :try_start_f
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/LocationController;->detectOcean(DD)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4c

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    :try_start_10
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->query_id:J

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->icon:Ljava/lang/String;

    const-string/jumbo v2, "\ud83c\udf0a"

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->emoji:Ljava/lang/String;

    const-string v2, "Ocean"

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    move-object v4, v1

    move-object v5, v3

    move-object v6, v11

    move-object v3, v0

    goto :goto_28

    :catch_7
    move-object v10, v3

    goto :goto_27

    :catch_8
    move-object/from16 v20, v11

    move-object v11, v10

    goto :goto_26

    :cond_4c
    move-object v3, v0

    move-object v4, v1

    :goto_24
    move-object v5, v10

    move-object v6, v11

    goto :goto_28

    :catch_9
    move-object v11, v10

    :goto_25
    const/16 v20, 0x0

    goto :goto_26

    :catch_a
    const/4 v11, 0x0

    goto :goto_25

    :goto_26
    move-object v10, v11

    move-object/from16 v11, v20

    :goto_27
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v0, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move-object v4, v3

    goto :goto_24

    :goto_28
    new-instance v0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda10;

    move-object v1, v0

    move-object/from16 v2, p4

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/LocationController$LocationFetchCallback;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Landroid/location/Location;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadLiveLocations$25(JLorg/telegram/tgnet/TLObject;)V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->cacheRequests:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->delete(J)V

    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-nez v3, :cond_0

    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_0
    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v0, v0}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object v2, p0, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget p2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    invoke-virtual {p3, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadLiveLocations$26(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p4, :cond_0

    return-void

    :cond_0
    new-instance p4, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda26;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/messenger/LocationController;JLorg/telegram/tgnet/TLObject;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadSharingLocations$14(Ljava/util/ArrayList;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget-object v3, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    iget-wide v4, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v3, v4, v5, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->startService()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadSharingLocations$15(Ljava/util/ArrayList;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget-object v2, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    iget-wide v3, v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v2, v3, v4, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/messenger/LocationController;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadSharingLocations$16(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p3}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/LocationController;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$loadSharingLocations$17()V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "SELECT uid, mid, date, period, message, proximity FROM sharing_locations WHERE 1"

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    invoke-direct {v6}, Lorg/telegram/messenger/LocationController$SharingLocationInfo;-><init>()V

    invoke-virtual {v5, v7}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    iput-wide v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->stopTime:I

    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    iget v8, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    iput v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->account:I

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v9, Lorg/telegram/messenger/MessageObject;

    iget v10, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v8, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v11

    invoke-static {v8, v11, v7}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v11

    invoke-direct {v9, v10, v11, v7, v7}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v9, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x0

    invoke-static {v9, v3, v4, v10}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_1
    :goto_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-wide v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-wide v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v8, v4

    goto :goto_2

    :cond_2
    iget-wide v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-wide v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-wide v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v8, v3

    :goto_2
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const-string v6, ","

    invoke-static {v6, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v2}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda27;

    invoke-direct {v3, p0, v1, v2, v0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/messenger/LocationController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$markLiveLoactionsAsRead$27(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts:I

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts_count:I

    const/4 v1, -0x1

    invoke-virtual {p2, v1, v0, v1, p1}, Lorg/telegram/messenger/MessagesController;->processNewDifferenceParams(IIII)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private synthetic lambda$onConnected$1(Ljava/lang/Integer;)V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needShowPlayServicesAlert:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onConnected$2(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/LocationController;Ljava/lang/Integer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onConnected$3()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->servicesAvailable:Ljava/lang/Boolean;

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->apiClient:Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;

    invoke-interface {v0}, Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;->disconnect()V

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private synthetic lambda$onConnected$4(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/LocationController;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/LocationController;->startFusedLocationRequest(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$removeAllLocationSharings$22(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private synthetic lambda$removeAllLocationSharings$23()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->stopService()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$removeAllLocationSharings$24()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v1, v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->id:I

    iget v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->stopped:Z

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPointEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPointEmpty;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {v1, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/LocationController;->saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    invoke-direct {p0, v2}, Lorg/telegram/messenger/LocationController;->stop(Z)V

    new-instance v0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$removeSharingLocation$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private synthetic lambda$removeSharingLocation$20(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    iget-wide v1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->remove(J)V

    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->stopService()V

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$removeSharingLocation$21(J)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    if-eqz v0, :cond_0

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {p2, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget p2, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->id:I

    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit16 p2, p2, 0x4000

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$InputMedia;->stopped:Z

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPointEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPointEmpty;-><init>()V

    iput-object v2, p2, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v2, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {p2, p1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/LocationController;->saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    new-instance p1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0, v0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v1}, Lorg/telegram/messenger/LocationController;->stop(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$saveSharingLocation$18(ILorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "DELETE FROM sharing_locations WHERE 1"

    invoke-virtual {p1, p2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM sharing_locations WHERE uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_3

    :cond_2
    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    const-string v2, "REPLACE INTO sharing_locations VALUES(?, ?, ?, ?, ?, ?)"

    invoke-virtual {p1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v3, p2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    iget-object v3, p2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v2}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-wide v3, p2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {p1, v1, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    iget v1, p2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    iget v0, p2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->stopTime:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    iget v0, p2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    iget p2, p2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private static synthetic lambda$setLastKnownLocation$10()V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newLocationAvailable:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setProximityLocation$12(IJ)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE sharing_locations SET proximity = ? WHERE uid = ?"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setProximityLocation$13()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/LocationController;->broadcastLastKnownLocation(Z)V

    return-void
.end method

.method private synthetic lambda$startFusedLocationRequest$5(Z)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->servicesAvailable:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/ILocationServiceProvider;->getLastLocation(Landroidx/core/util/Consumer;)V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationRequest:Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;

    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->fusedLocationListener:Lorg/telegram/messenger/LocationController$FusedLocationListener;

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/ILocationServiceProvider;->requestLocationUpdates(Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$update$8(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    iget-wide v1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->remove(J)V

    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->stopService()V

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private loadSharingLocations()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/LocationController;ILorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setLastKnownLocation(Landroid/location/Location;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    if-eqz p1, :cond_1

    new-instance p1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda11;

    invoke-direct {p1}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private shouldSendLocationNow()Z
    .locals 6

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->shouldStopGps()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private shouldStopGps()Z
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/LocationController;->locationEndWatchTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private start()V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->started:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/LocationController;->lastLocationStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/LocationController;->started:Z

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->checkServices()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->apiClient:Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;

    invoke-interface {v0}, Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    iget-object v6, p0, Lorg/telegram/messenger/LocationController;->gpsLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_2
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    iget-object v6, p0, Lorg/telegram/messenger/LocationController;->networkLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    :try_start_3
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    const-string v2, "passive"

    iget-object v6, p0, Lorg/telegram/messenger/LocationController;->passiveLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    if-nez v0, :cond_2

    :try_start_4
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/LocationController;->setLastKnownLocation(Landroid/location/Location;)V

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/LocationController;->setLastKnownLocation(Landroid/location/Location;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    return-void
.end method

.method private startService()V
    .locals 4

    :try_start_0
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0}, Lorg/telegram/ui/Components/PermissionRequest;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0}, Lorg/telegram/ui/Components/PermissionRequest;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/LocationSharingService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private stop(Z)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/LocationController;->started:Z

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->checkServices()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/LocationController;->fusedLocationListener:Lorg/telegram/messenger/LocationController$FusedLocationListener;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/ILocationServiceProvider;->removeLocationUpdates(Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V

    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->apiClient:Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;

    invoke-interface {v1}, Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->gpsLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->networkLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->passiveLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    return-void
.end method

.method private stopService()V
    .locals 4

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/LocationSharingService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method protected addSharingLocation(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 6

    new-instance v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    invoke-direct {v0}, Lorg/telegram/messenger/LocationController$SharingLocationInfo;-><init>()V

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    iput-wide v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->period:I

    iput v2, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->proximity_notification_radius:I

    iput v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    iput v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->lastSentProximityMeters:I

    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    iput v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->account:I

    new-instance v1, Lorg/telegram/messenger/MessageObject;

    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget p1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_0

    iput v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->stopTime:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p1

    iget v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    add-int/2addr p1, v1

    iput p1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->stopTime:I

    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    iget-wide v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {p1, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v1, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, v3}, Lorg/telegram/messenger/LocationController;->saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x61a8

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->cacheRequests:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->lastReadLocationTime:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->stopService()V

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 12

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_8

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-nez p2, :cond_2

    return-void

    :cond_2
    aget-object p3, p3, v1

    check-cast p3, Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getFromChatId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v6

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-nez v10, :cond_3

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    add-int/2addr v4, v1

    goto :goto_1

    :cond_4
    iget-object v4, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    iget-object v6, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoProximityReached;

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0, v5, v6, v2, v2}, Lorg/telegram/messenger/LocationController;->setProximityLocation(JIZ)Z

    :cond_6
    :goto_3
    add-int/2addr v3, v1

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_16

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    iget v3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v3, v0, v1

    invoke-virtual {p2, p3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    if-ne p1, p2, :cond_f

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_16

    aget-object p1, p3, v2

    check-cast p1, Ljava/util/ArrayList;

    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_4
    iget-object v4, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    iget-object v4, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget-object v5, v4, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getChannelId()J

    move-result-wide v5

    goto :goto_5

    :cond_a
    const-wide/16 v5, 0x0

    :goto_5
    cmp-long v7, p2, v5

    if-eqz v7, :cond_b

    goto :goto_6

    :cond_b
    iget v5, v4, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_c
    iget-wide v4, v4, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_6
    add-int/2addr v3, v1

    goto :goto_4

    :cond_e
    if-eqz v0, :cond_16

    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/LocationController;->removeSharingLocation(J)V

    add-int/2addr v2, v1

    goto :goto_7

    :cond_f
    sget p2, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    if-ne p1, p2, :cond_16

    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result p2

    if-nez p2, :cond_10

    return-void

    :cond_10
    iget-object p2, p0, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-nez p2, :cond_11

    return-void

    :cond_11
    aget-object p3, p3, v1

    check-cast p3, Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_15

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    const/4 v6, 0x0

    :goto_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_14

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getFromChatId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v7

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-nez v11, :cond_13

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a

    :cond_12
    iget-object v4, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p2, v6, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_a
    const/4 v4, 0x1

    goto :goto_b

    :cond_13
    add-int/2addr v6, v1

    goto :goto_9

    :cond_14
    :goto_b
    add-int/2addr v3, v1

    goto :goto_8

    :cond_15
    if-eqz v4, :cond_16

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    iget v3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v3, v0, v1

    invoke-virtual {p2, p3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_16
    :goto_c
    return-void
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    return-object p1
.end method

.method public isSharingLocation(J)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadLiveLocations(J)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->cacheRequests:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->cacheRequests:Landroidx/collection/LongSparseArray;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/16 v1, 0x64

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;->limit:I

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/LocationController;J)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public markLiveLoactionsAsRead(J)V
    .locals 6

    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->lastReadLocationTime:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v3, v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x3c

    if-le v1, v3, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->lastReadLocationTime:Landroidx/collection/LongSparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    neg-long p1, p1

    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1, p2, v1}, Lorg/telegram/messenger/ChatObject;->isChannel(JI)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_readMessageContents;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_readMessageContents;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_readMessageContents;->id:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p1

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_readMessageContents;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    goto :goto_2

    :cond_4
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v2, p1, :cond_5

    iget-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;->id:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda29;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {p1, v1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_6
    :goto_3
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/messenger/LocationController;->wasConnectedToPlayServices:Z

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationRequest:Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/ILocationServiceProvider;->checkLocationSettings(Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;Landroidx/core/util/Consumer;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/LocationController;->startFusedLocationRequest(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->wasConnectedToPlayServices:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->servicesAvailable:Ljava/lang/Boolean;

    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->started:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/LocationController;->started:Z

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->start()V

    :cond_1
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method public removeAllLocationSharings()V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeSharingLocation(J)V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/LocationController;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMapLocation(Landroid/location/Location;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/LocationController;->lastLocationByMaps:Z

    const/4 v0, 0x0

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p2

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p2, p0, Lorg/telegram/messenger/LocationController;->locationSentSinceLastMapUpdate:Z

    if-eqz p2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    :goto_0
    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    iput-boolean v0, p0, Lorg/telegram/messenger/LocationController;->locationSentSinceLastMapUpdate:Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    goto :goto_0

    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->setLastKnownLocation(Landroid/location/Location;)V

    return-void
.end method

.method protected setNewLocationEndWatchTime()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xfde8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/LocationController;->locationEndWatchTime:J

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->start()V

    return-void
.end method

.method public setProximityLocation(JIZ)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    if-eqz v0, :cond_0

    iput p3, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3, p1, p2}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/LocationController;IJ)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    if-eqz p4, :cond_1

    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public startFusedLocationRequest(Z)V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/LocationController;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected update()V
    .locals 9

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    iget v5, v3, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->stopTime:I

    if-gt v5, v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    iget-wide v5, v3, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->remove(J)V

    invoke-direct {p0, v3, v2}, Lorg/telegram/messenger/LocationController;->saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    new-instance v4, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v3}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->started:Z

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->lastLocationByMaps:Z

    if-nez v0, :cond_2

    iget-wide v5, p0, Lorg/telegram/messenger/LocationController;->lastLocationStartTime:J

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    cmp-long v0, v5, v7

    if-gtz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->shouldSendLocationNow()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iput-boolean v1, p0, Lorg/telegram/messenger/LocationController;->lastLocationByMaps:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/LocationController;->locationSentSinceLastMapUpdate:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x7d0

    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-wide v3, p0, Lorg/telegram/messenger/LocationController;->lastLocationStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    invoke-direct {p0, v1}, Lorg/telegram/messenger/LocationController;->broadcastLastKnownLocation(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v0, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/LocationController;->lastLocationStartTime:J

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->start()V

    :cond_5
    :goto_1
    return-void
.end method
