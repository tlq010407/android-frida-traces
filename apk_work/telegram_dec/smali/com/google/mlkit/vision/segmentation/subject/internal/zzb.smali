.class public final synthetic Lcom/google/mlkit/vision/segmentation/subject/internal/zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/vision/segmentation/subject/internal/zzb;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/segmentation/subject/internal/zzb;

    invoke-direct {v0}, Lcom/google/mlkit/vision/segmentation/subject/internal/zzb;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/segmentation/subject/internal/zzb;->zza:Lcom/google/mlkit/vision/segmentation/subject/internal/zzb;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/google/mlkit/vision/segmentation/subject/internal/zzc;

    const-class v1, Lcom/google/mlkit/vision/segmentation/subject/internal/zze;

    invoke-interface {p1, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/segmentation/subject/internal/zze;

    const-class v2, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    invoke-interface {p1, v2}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    invoke-direct {v0, v1, p1}, Lcom/google/mlkit/vision/segmentation/subject/internal/zzc;-><init>(Lcom/google/mlkit/vision/segmentation/subject/internal/zze;Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;)V

    return-object v0
.end method
