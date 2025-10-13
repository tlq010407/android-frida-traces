.class public final Lcom/huawei/location/lite/common/http/Vw$yn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/lite/common/http/Vw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "yn"
.end annotation


# instance fields
.field E5:Ljavax/net/ssl/X509TrustManager;

.field FB:I

.field LW:I

.field Vw:Ljava/util/List;

.field d2:Ljavax/net/ssl/HostnameVerifier;

.field dC:Ljavax/net/ssl/SSLSocketFactory;

.field yn:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/Vw$yn;->yn:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/Vw$yn;->Vw:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Vw(I)Lcom/huawei/location/lite/common/http/Vw$yn;
    .locals 0

    iput p1, p0, Lcom/huawei/location/lite/common/http/Vw$yn;->LW:I

    return-object p0
.end method

.method public yn(I)Lcom/huawei/location/lite/common/http/Vw$yn;
    .locals 0

    iput p1, p0, Lcom/huawei/location/lite/common/http/Vw$yn;->FB:I

    return-object p0
.end method
