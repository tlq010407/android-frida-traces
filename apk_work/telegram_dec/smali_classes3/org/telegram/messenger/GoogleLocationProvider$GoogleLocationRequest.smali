.class public final Lorg/telegram/messenger/GoogleLocationProvider$GoogleLocationRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/GoogleLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GoogleLocationRequest"
.end annotation


# instance fields
.field private request:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/location/LocationRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/GoogleLocationProvider$GoogleLocationRequest;->request:Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/LocationRequest;Lorg/telegram/messenger/GoogleLocationProvider$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/GoogleLocationProvider$GoogleLocationRequest;-><init>(Lcom/google/android/gms/location/LocationRequest;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/GoogleLocationProvider$GoogleLocationRequest;)Lcom/google/android/gms/location/LocationRequest;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/GoogleLocationProvider$GoogleLocationRequest;->request:Lcom/google/android/gms/location/LocationRequest;

    return-object p0
.end method


# virtual methods
.method public setFastestInterval(J)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/GoogleLocationProvider$GoogleLocationRequest;->request:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method public setInterval(J)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/GoogleLocationProvider$GoogleLocationRequest;->request:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method public setPriority(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/16 p1, 0x69

    goto :goto_0

    :cond_1
    const/16 p1, 0x68

    goto :goto_0

    :cond_2
    const/16 p1, 0x66

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/GoogleLocationProvider$GoogleLocationRequest;->request:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method
