.class public abstract Lcom/google/android/play/integrity/internal/j;
.super Lcom/google/android/play/integrity/internal/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/integrity/internal/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.play.core.integrity.protocol.IExpressIntegrityServiceCallback"

    invoke-direct {p0, v0}, Lcom/google/android/play/integrity/internal/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p3, 0x3

    if-eq p1, p3, :cond_2

    const/4 p3, 0x4

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/play/integrity/internal/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/play/integrity/internal/c;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lcom/google/android/play/integrity/internal/k;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/play/integrity/internal/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/play/integrity/internal/c;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lcom/google/android/play/integrity/internal/k;->d(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/play/integrity/internal/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/play/integrity/internal/c;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lcom/google/android/play/integrity/internal/k;->c(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/play/integrity/internal/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/play/integrity/internal/c;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lcom/google/android/play/integrity/internal/k;->e(Landroid/os/Bundle;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
