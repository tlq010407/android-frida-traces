.class public Lorg/webrtc/CameraEnumerationAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;,
        Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator;
    }
.end annotation


# static fields
.field static final COMMON_RESOLUTIONS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/webrtc/Size;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CameraEnumerationAndroid"


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lorg/webrtc/Size;

    const/16 v2, 0x78

    const/16 v3, 0xa0

    invoke-direct {v1, v3, v2}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v2, Lorg/webrtc/Size;

    const/16 v4, 0xf0

    invoke-direct {v2, v4, v3}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v3, Lorg/webrtc/Size;

    const/16 v5, 0x140

    invoke-direct {v3, v5, v4}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v6, Lorg/webrtc/Size;

    const/16 v7, 0x190

    invoke-direct {v6, v7, v4}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v4, Lorg/webrtc/Size;

    const/16 v7, 0x1e0

    invoke-direct {v4, v7, v5}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v5, Lorg/webrtc/Size;

    const/16 v8, 0x168

    const/16 v9, 0x280

    invoke-direct {v5, v9, v8}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v8, Lorg/webrtc/Size;

    invoke-direct {v8, v9, v7}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v10, Lorg/webrtc/Size;

    const/16 v11, 0x300

    invoke-direct {v10, v11, v7}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v11, Lorg/webrtc/Size;

    const/16 v12, 0x356

    invoke-direct {v11, v12, v7}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v7, Lorg/webrtc/Size;

    const/16 v12, 0x320

    const/16 v13, 0x258

    invoke-direct {v7, v12, v13}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v12, Lorg/webrtc/Size;

    const/16 v14, 0x21c

    const/16 v15, 0x3c0

    invoke-direct {v12, v15, v14}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v14, Lorg/webrtc/Size;

    invoke-direct {v14, v15, v9}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v9, Lorg/webrtc/Size;

    const/16 v15, 0x240

    const/16 v13, 0x400

    invoke-direct {v9, v13, v15}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v15, Lorg/webrtc/Size;

    move-object/from16 v17, v0

    const/16 v0, 0x258

    invoke-direct {v15, v13, v0}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v0, Lorg/webrtc/Size;

    const/16 v13, 0x2d0

    move-object/from16 v18, v15

    const/16 v15, 0x500

    invoke-direct {v0, v15, v13}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v13, Lorg/webrtc/Size;

    move-object/from16 v19, v0

    const/16 v0, 0x400

    invoke-direct {v13, v15, v0}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v0, Lorg/webrtc/Size;

    const/16 v15, 0x438

    move-object/from16 v16, v13

    const/16 v13, 0x780

    invoke-direct {v0, v13, v15}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v15, Lorg/webrtc/Size;

    move-object/from16 v20, v0

    const/16 v0, 0x5a0

    invoke-direct {v15, v13, v0}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v13, Lorg/webrtc/Size;

    move-object/from16 v21, v15

    const/16 v15, 0xa00

    invoke-direct {v13, v15, v0}, Lorg/webrtc/Size;-><init>(II)V

    new-instance v0, Lorg/webrtc/Size;

    const/16 v15, 0xf00

    move-object/from16 v22, v13

    const/16 v13, 0x870

    invoke-direct {v0, v15, v13}, Lorg/webrtc/Size;-><init>(II)V

    const/16 v13, 0x14

    new-array v13, v13, [Lorg/webrtc/Size;

    const/4 v15, 0x0

    aput-object v1, v13, v15

    const/4 v1, 0x1

    aput-object v2, v13, v1

    const/4 v1, 0x2

    aput-object v3, v13, v1

    const/4 v1, 0x3

    aput-object v6, v13, v1

    const/4 v1, 0x4

    aput-object v4, v13, v1

    const/4 v1, 0x5

    aput-object v5, v13, v1

    const/4 v1, 0x6

    aput-object v8, v13, v1

    const/4 v1, 0x7

    aput-object v10, v13, v1

    const/16 v1, 0x8

    aput-object v11, v13, v1

    const/16 v1, 0x9

    aput-object v7, v13, v1

    const/16 v1, 0xa

    aput-object v12, v13, v1

    const/16 v1, 0xb

    aput-object v14, v13, v1

    const/16 v1, 0xc

    aput-object v9, v13, v1

    const/16 v1, 0xd

    aput-object v18, v13, v1

    const/16 v1, 0xe

    aput-object v19, v13, v1

    const/16 v1, 0xf

    aput-object v16, v13, v1

    const/16 v1, 0x10

    aput-object v20, v13, v1

    const/16 v1, 0x11

    aput-object v21, v13, v1

    const/16 v1, 0x12

    aput-object v22, v13, v1

    const/16 v1, 0x13

    aput-object v0, v13, v1

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lorg/webrtc/CameraEnumerationAndroid;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClosestSupportedFramerateRange(Ljava/util/List;I)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;",
            ">;I)",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;"
        }
    .end annotation

    new-instance v0, Lorg/webrtc/CameraEnumerationAndroid$1;

    invoke-direct {v0, p1}, Lorg/webrtc/CameraEnumerationAndroid$1;-><init>(I)V

    invoke-static {p0, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    return-object p0
.end method

.method public static getClosestSupportedSize(Ljava/util/List;II)Lorg/webrtc/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/webrtc/Size;",
            ">;II)",
            "Lorg/webrtc/Size;"
        }
    .end annotation

    new-instance v0, Lorg/webrtc/CameraEnumerationAndroid$2;

    invoke-direct {v0, p1, p2}, Lorg/webrtc/CameraEnumerationAndroid$2;-><init>(II)V

    invoke-static {p0, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/webrtc/Size;

    return-object p0
.end method

.method static reportCameraResolution(Lorg/webrtc/Histogram;Lorg/webrtc/Size;)V
    .locals 1

    sget-object v0, Lorg/webrtc/CameraEnumerationAndroid;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/webrtc/Histogram;->addSample(I)V

    return-void
.end method
