.class public Lcom/stripe/android/exception/InvalidRequestException;
.super Lcom/stripe/android/exception/StripeException;
.source "SourceFile"


# instance fields
.field private final param:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/stripe/android/exception/StripeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/stripe/android/exception/InvalidRequestException;->param:Ljava/lang/String;

    return-void
.end method
