.class public final Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/net/RequestOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestOptionsBuilder"
.end annotation


# instance fields
.field private apiVersion:Ljava/lang/String;

.field private idempotencyKey:Ljava/lang/String;

.field private publishableApiKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;->publishableApiKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/stripe/android/net/RequestOptions;
    .locals 5

    new-instance v0, Lcom/stripe/android/net/RequestOptions;

    iget-object v1, p0, Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;->apiVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;->idempotencyKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;->publishableApiKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/android/net/RequestOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/net/RequestOptions$1;)V

    return-object v0
.end method
