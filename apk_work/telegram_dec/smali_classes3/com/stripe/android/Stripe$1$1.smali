.class Lcom/stripe/android/Stripe$1$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/Stripe$1;->create(Lcom/stripe/android/model/Card;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/stripe/android/TokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/stripe/android/Stripe$1;

.field final synthetic val$callback:Lcom/stripe/android/TokenCallback;

.field final synthetic val$card:Lcom/stripe/android/model/Card;

.field final synthetic val$publishableKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/stripe/android/Stripe$1;Ljava/lang/String;Lcom/stripe/android/model/Card;Lcom/stripe/android/TokenCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/android/Stripe$1$1;->this$1:Lcom/stripe/android/Stripe$1;

    iput-object p2, p0, Lcom/stripe/android/Stripe$1$1;->val$publishableKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/android/Stripe$1$1;->val$card:Lcom/stripe/android/model/Card;

    iput-object p4, p0, Lcom/stripe/android/Stripe$1$1;->val$callback:Lcom/stripe/android/TokenCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/stripe/android/Stripe$ResponseWrapper;
    .locals 3

    .line 0
    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/stripe/android/Stripe$1$1;->val$publishableKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/android/net/RequestOptions;->builder(Ljava/lang/String;)Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/android/net/RequestOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/android/Stripe$1$1;->val$card:Lcom/stripe/android/model/Card;

    invoke-static {v1}, Lcom/stripe/android/util/StripeNetworkUtils;->hashMapFromCard(Lcom/stripe/android/model/Card;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/stripe/android/net/StripeApiHandler;->createToken(Ljava/util/Map;Lcom/stripe/android/net/RequestOptions;)Lcom/stripe/android/model/Token;

    move-result-object v0

    new-instance v1, Lcom/stripe/android/Stripe$ResponseWrapper;

    iget-object v2, p0, Lcom/stripe/android/Stripe$1$1;->this$1:Lcom/stripe/android/Stripe$1;

    iget-object v2, v2, Lcom/stripe/android/Stripe$1;->this$0:Lcom/stripe/android/Stripe;

    invoke-direct {v1, v2, v0, p1, p1}, Lcom/stripe/android/Stripe$ResponseWrapper;-><init>(Lcom/stripe/android/Stripe;Lcom/stripe/android/model/Token;Ljava/lang/Exception;Lcom/stripe/android/Stripe$1;)V
    :try_end_0
    .catch Lcom/stripe/android/exception/StripeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/stripe/android/Stripe$ResponseWrapper;

    iget-object v2, p0, Lcom/stripe/android/Stripe$1$1;->this$1:Lcom/stripe/android/Stripe$1;

    iget-object v2, v2, Lcom/stripe/android/Stripe$1;->this$0:Lcom/stripe/android/Stripe;

    invoke-direct {v1, v2, p1, v0, p1}, Lcom/stripe/android/Stripe$ResponseWrapper;-><init>(Lcom/stripe/android/Stripe;Lcom/stripe/android/model/Token;Ljava/lang/Exception;Lcom/stripe/android/Stripe$1;)V

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/stripe/android/Stripe$1$1;->doInBackground([Ljava/lang/Void;)Lcom/stripe/android/Stripe$ResponseWrapper;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/stripe/android/Stripe$ResponseWrapper;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/stripe/android/Stripe$1$1;->this$1:Lcom/stripe/android/Stripe$1;

    iget-object v0, v0, Lcom/stripe/android/Stripe$1;->this$0:Lcom/stripe/android/Stripe;

    iget-object v1, p0, Lcom/stripe/android/Stripe$1$1;->val$callback:Lcom/stripe/android/TokenCallback;

    invoke-static {v0, p1, v1}, Lcom/stripe/android/Stripe;->access$100(Lcom/stripe/android/Stripe;Lcom/stripe/android/Stripe$ResponseWrapper;Lcom/stripe/android/TokenCallback;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/stripe/android/Stripe$ResponseWrapper;

    invoke-virtual {p0, p1}, Lcom/stripe/android/Stripe$1$1;->onPostExecute(Lcom/stripe/android/Stripe$ResponseWrapper;)V

    return-void
.end method
