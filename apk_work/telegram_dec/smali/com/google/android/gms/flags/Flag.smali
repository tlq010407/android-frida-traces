.class public abstract Lcom/google/android/gms/flags/Flag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/flags/Flag$BooleanFlag;
    }
.end annotation


# instance fields
.field private final zza:I

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/Object;


# direct methods
.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/flags/zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/flags/Flag;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/flags/Flag;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/flags/Flag;->zzc:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/flags/Singletons;->flagRegistry()Lcom/google/android/gms/flags/FlagRegistry;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/flags/FlagRegistry;->zza(Lcom/google/android/gms/flags/Flag;)V

    return-void
.end method

.method public static define(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/flags/Flag$BooleanFlag;
    .locals 1

    new-instance v0, Lcom/google/android/gms/flags/Flag$BooleanFlag;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/flags/Flag$BooleanFlag;-><init>(ILjava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method
