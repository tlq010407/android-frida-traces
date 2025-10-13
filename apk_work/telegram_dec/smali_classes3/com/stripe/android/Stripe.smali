.class public Lcom/stripe/android/Stripe;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/Stripe$TokenCreator;,
        Lcom/stripe/android/Stripe$ResponseWrapper;
    }
.end annotation


# instance fields
.field private defaultPublishableKey:Ljava/lang/String;

.field tokenCreator:Lcom/stripe/android/Stripe$TokenCreator;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/stripe/android/Stripe$1;

    invoke-direct {v0, p0}, Lcom/stripe/android/Stripe$1;-><init>(Lcom/stripe/android/Stripe;)V

    iput-object v0, p0, Lcom/stripe/android/Stripe;->tokenCreator:Lcom/stripe/android/Stripe$TokenCreator;

    invoke-virtual {p0, p1}, Lcom/stripe/android/Stripe;->setDefaultPublishableKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/stripe/android/Stripe;Lcom/stripe/android/Stripe$ResponseWrapper;Lcom/stripe/android/TokenCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/stripe/android/Stripe;->tokenTaskPostExecution(Lcom/stripe/android/Stripe$ResponseWrapper;Lcom/stripe/android/TokenCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/stripe/android/Stripe;Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/stripe/android/Stripe;->executeTokenTask(Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;)V

    return-void
.end method

.method private executeTokenTask(Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p2, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method private tokenTaskPostExecution(Lcom/stripe/android/Stripe$ResponseWrapper;Lcom/stripe/android/TokenCallback;)V
    .locals 1

    iget-object v0, p1, Lcom/stripe/android/Stripe$ResponseWrapper;->token:Lcom/stripe/android/model/Token;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lcom/stripe/android/TokenCallback;->onSuccess(Lcom/stripe/android/model/Token;)V

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lcom/stripe/android/Stripe$ResponseWrapper;->error:Ljava/lang/Exception;

    if-eqz p1, :cond_1

    :goto_0
    invoke-interface {p2, p1}, Lcom/stripe/android/TokenCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Somehow got neither a token response or an error response"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "sk_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/stripe/android/exception/AuthenticationException;

    const-string v2, "Invalid Publishable Key: You are using a secret key to create a token, instead of the publishable one. For more info, see https://stripe.com/docs/stripe.js"

    invoke-direct {p1, v2, v1, v0}, Lcom/stripe/android/exception/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/stripe/android/exception/AuthenticationException;

    const-string v2, "Invalid Publishable Key: You must use a valid publishable key to create a token.  For more info, see https://stripe.com/docs/stripe.js."

    invoke-direct {p1, v2, v1, v0}, Lcom/stripe/android/exception/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    throw p1
.end method


# virtual methods
.method public createToken(Lcom/stripe/android/model/Card;Lcom/stripe/android/TokenCallback;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/stripe/android/Stripe;->defaultPublishableKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/stripe/android/Stripe;->createToken(Lcom/stripe/android/model/Card;Ljava/lang/String;Lcom/stripe/android/TokenCallback;)V

    return-void
.end method

.method public createToken(Lcom/stripe/android/model/Card;Ljava/lang/String;Lcom/stripe/android/TokenCallback;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/stripe/android/Stripe;->createToken(Lcom/stripe/android/model/Card;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/stripe/android/TokenCallback;)V

    return-void
.end method

.method public createToken(Lcom/stripe/android/model/Card;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/stripe/android/TokenCallback;)V
    .locals 1

    .line 0
    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/stripe/android/Stripe;->validateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/Stripe;->tokenCreator:Lcom/stripe/android/Stripe$TokenCreator;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/stripe/android/Stripe$TokenCreator;->create(Lcom/stripe/android/model/Card;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/stripe/android/TokenCallback;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Required Parameter: \'callback\' is required to use the created token and handle errors"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Required Parameter: \'card\' is required to create a token"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/stripe/android/exception/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p4, p1}, Lcom/stripe/android/TokenCallback;->onError(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public setDefaultPublishableKey(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/android/Stripe;->validateKey(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/Stripe;->defaultPublishableKey:Ljava/lang/String;

    return-void
.end method
