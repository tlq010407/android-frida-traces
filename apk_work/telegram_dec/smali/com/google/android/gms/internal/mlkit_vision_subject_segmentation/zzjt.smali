.class final Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzjt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzjt;

.field private static final zzb:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzc:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzjt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzjt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzjt;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzjt;

    const-string v0, "options"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbz;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbz;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbz;->zzb()Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzcd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzjt;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "errorCode"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbz;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbz;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbz;->zzb()Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzcd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzjt;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    const/4 p1, 0x0

    throw p1
.end method
