.class public Lcom/stripe/android/net/RequestOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;
    }
.end annotation


# instance fields
.field private final mApiVersion:Ljava/lang/String;

.field private final mIdempotencyKey:Ljava/lang/String;

.field private final mPublishableApiKey:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/net/RequestOptions;->mApiVersion:Ljava/lang/String;

    iput-object p2, p0, Lcom/stripe/android/net/RequestOptions;->mIdempotencyKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/android/net/RequestOptions;->mPublishableApiKey:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/net/RequestOptions$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/net/RequestOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static builder(Ljava/lang/String;)Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;
    .locals 1

    new-instance v0, Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;

    invoke-direct {v0, p0}, Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getApiVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/android/net/RequestOptions;->mApiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getIdempotencyKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/android/net/RequestOptions;->mIdempotencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishableApiKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/android/net/RequestOptions;->mPublishableApiKey:Ljava/lang/String;

    return-object v0
.end method
