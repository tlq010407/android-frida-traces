.class final Lcom/stripe/android/net/StripeApiHandler$Parameter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/net/StripeApiHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Parameter"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/net/StripeApiHandler$Parameter;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/stripe/android/net/StripeApiHandler$Parameter;->value:Ljava/lang/String;

    return-void
.end method
